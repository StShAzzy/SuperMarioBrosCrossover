package com.smbc.projectiles
{
   import com.explodingRabbit.cross.gameplay.statusEffects.StatFxFreeze;
   import com.explodingRabbit.cross.gameplay.statusEffects.StatusProperty;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.characters.Character;
   import com.smbc.characters.Samus;
   import com.smbc.data.DamageValue;
   import com.smbc.data.PickupInfo;
   import com.smbc.data.SoundNames;
   import com.smbc.enemies.Enemy;
   import com.smbc.graphics.SamusSimpleGraphics;
   import com.smbc.ground.Brick;
   import com.smbc.ground.Ground;
   import com.smbc.interfaces.IAttackable;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class SamusShot extends Projectile
   {
      
      public static const SHOT_TYPE_NORMAL:String = "normal";
      
      public static const SHOT_TYPE_ICE:String = "ice";
      
      public static const SHOT_TYPE_WAVE:String = "wave";
      
      public static const SHOT_TYPE_MISSILE:String = "missile";
      
      private static const FL_NORMAL:String = "normal";
      
      private static const FL_ICE:String = "ice";
      
      private static const FL_WAVE:String = "wave";
      
      private static const FL_MISSILE:String = "missile";
      
      private static const INVERTED_WAVE_NUM:int = 1;
      
      private static const NORMAL_BEAM_SPEED:int = 500;
      
      private static const ICE_BEAM_SPEED:int = 500;
      
      private static const WAVE_BEAM_SPEED:int = 400;
      
      private static const SHORT_BEAM_DISTANCE:int = 100;
      
      private static const X_OFFSET:int = 25;
      
      private static const X_OFFSET_UP:int = 4;
      
      private static const Y_OFFSET_STAND:int = 44;
      
      private static const Y_OFFSET_STAND_UP:int = 72;
      
      private static const Y_OFS_WALK_GB:int = 52;
      
      private static const X_OFFSET_CROUCH:int = 25;
      
      private static const Y_OFFSET_CROUCH:int = 25;
      
      private static const Y_OFFSET_JUMP:int = 30;
       
      
      private const DESTROY_TMR:CustomTimer = new CustomTimer(50,1);
      
      private var _shotType:String;
      
      private var shotDist:Number = 0;
      
      private var angle:Number = 0;
      
      private var centerX:Number;
      
      private var centerY:Number;
      
      private var waveRange:Number = 30;
      
      private var shootUp:Boolean;
      
      private var waveSpeed:uint = 25;
      
      private var waveAngle:Number = 0;
      
      private var invertedWave:Boolean;
      
      private var short:Boolean;
      
      private var testTmr:Timer;
      
      private var samus:Samus;
      
      public function SamusShot(param1:Samus, param2:String = null)
      {
         var _loc3_:StatusProperty = null;
         this.testTmr = new Timer(1000);
         this.samus = param1;
         this._shotType = param2;
         super(param1,SOURCE_TYPE_PLAYER);
         for each(_loc3_ in Samus.DEFAULT_PROPS_DCT)
         {
            addProperty(_loc3_);
         }
         stopAnim = true;
         mainAnimTmr = null;
         defyGrav = true;
         this.determineShotType();
         if(this._shotType != SHOT_TYPE_WAVE)
         {
            addAllGroundToHitTestables();
         }
         this.setDir();
         this.DESTROY_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.destroyTmrHandler,false,0,true);
         addTmr(this.DESTROY_TMR);
         addProperty(new StatusProperty(PR_PASSTHROUGH_ALWAYS));
      }
      
      private function testTmrHandler(param1:TimerEvent) : void
      {
         gotoAndStop(currentFrame + 1);
      }
      
      override protected function updateStats() : void
      {
         super.updateStats();
         if(this.short)
         {
            this.checkDist();
         }
         if(this._shotType == SHOT_TYPE_WAVE)
         {
            this.formWavePattern();
         }
      }
      
      private function determineShotType() : void
      {
         if(this._shotType == SHOT_TYPE_MISSILE)
         {
            this.missile();
            return;
         }
         if(!this.samus.upgradeIsActive(PickupInfo.SAMUS_LONG_BEAM))
         {
            this.short = true;
         }
         if(this.samus.upgradeIsActive(PickupInfo.SAMUS_ICE_BEAM))
         {
            this.iceBeam();
         }
         else if(this.samus.upgradeIsActive(PickupInfo.SAMUS_WAVE_BEAM))
         {
            this.waveBeam();
         }
         else
         {
            this.normalBeam();
         }
      }
      
      private function missile() : void
      {
         this.gotoAndStop(FL_MISSILE);
         this._shotType = SHOT_TYPE_MISSILE;
         SND_MNGR.playSound(SoundNames.SFX_SAMUS_SHOOT_MISSILE);
         _damageAmt = DamageValue.SAMUS_MISSILE;
         speed = NORMAL_BEAM_SPEED;
         addProperty(new StatusProperty(PR_PIERCE_AGG,10));
      }
      
      private function normalBeam() : void
      {
         gotoAndStop(FL_NORMAL);
         this._shotType = SHOT_TYPE_NORMAL;
         if(this.short)
         {
            if(this.samus.skinShootSound)
            {
               SND_MNGR.playSound(this.samus.skinShootSound);
            }
            else
            {
               SND_MNGR.playSound(SoundNames.SFX_SAMUS_SHORT_BEAM);
            }
         }
         else if(this.samus.skinShootSound)
         {
            SND_MNGR.playSound(this.samus.skinShootSound);
         }
         else
         {
            SND_MNGR.playSound(SoundNames.SFX_SAMUS_LONG_BEAM);
         }
         _damageAmt = DamageValue.SAMUS_SHORT_BEAM;
         speed = NORMAL_BEAM_SPEED;
      }
      
      private function iceBeam() : void
      {
         this._shotType = SHOT_TYPE_ICE;
         gotoAndStop(FL_ICE);
         if(this.samus.skinShootSound)
         {
            SND_MNGR.playSound(this.samus.skinShootSound);
         }
         else
         {
            SND_MNGR.playSound(SoundNames.SFX_SAMUS_ICE_BEAM);
         }
         _damageAmt = DamageValue.SAMUS_ICE_BEAM;
         speed = ICE_BEAM_SPEED;
         addProperty(new StatusProperty(StatusProperty.TYPE_FREEZE_AGG,0,new StatFxFreeze(null,Samus.FREEZE_DUR)));
      }
      
      private function waveBeam() : void
      {
         this._shotType = SHOT_TYPE_WAVE;
         gotoAndStop(FL_WAVE);
         if(this.samus.skinShootSound)
         {
            SND_MNGR.playSound(this.samus.skinShootSound);
         }
         else
         {
            SND_MNGR.playSound(SoundNames.SFX_SAMUS_WAVE_BEAM);
         }
         _damageAmt = DamageValue.SAMUS_WAVE_BEAM;
         speed = WAVE_BEAM_SPEED;
         if(this.samus.invertedWaveBeam)
         {
            this.samus.invertedWaveBeam = false;
         }
         else
         {
            this.samus.invertedWaveBeam = true;
         }
         this.invertedWave = this.samus.invertedWaveBeam;
      }
      
      override protected function setDir() : void
      {
         if(this.samus.upBtn)
         {
            vy = -speed;
            this.rotation = 270;
            if(this.samus.scaleX > 0)
            {
               x = this.samus.nx + X_OFFSET_UP;
            }
            else
            {
               x = this.samus.nx - X_OFFSET_UP;
            }
            y = this.samus.ny - Y_OFFSET_STAND_UP;
            this.shootUp = true;
         }
         else if(this.samus.scaleX > 0)
         {
            vx = speed;
            x = this.samus.nx + X_OFFSET;
            if(this.samus.onGround)
            {
               if(this.samus.cState == Character.ST_CROUCH)
               {
                  y = this.samus.ny - Y_OFFSET_CROUCH;
               }
               else
               {
                  y = this.samus.ny - Y_OFFSET_STAND + this.samus.skinShootHeightOffset;
               }
            }
            else
            {
               y = this.samus.ny - Y_OFFSET_JUMP;
            }
         }
         else
         {
            vx = -speed;
            scaleX = -1;
            x = this.samus.nx - X_OFFSET;
            if(this.samus.onGround)
            {
               if(this.samus.cState == Character.ST_CROUCH)
               {
                  y = this.samus.ny - Y_OFFSET_CROUCH;
               }
               else
               {
                  y = this.samus.ny - Y_OFFSET_STAND + this.samus.skinShootHeightOffset;
               }
            }
            else
            {
               y = this.samus.ny - Y_OFFSET_JUMP;
            }
         }
         if(this.samus.repositionWalkingBullets())
         {
            y = this.samus.ny - Y_OFS_WALK_GB;
         }
         this.centerX = x;
         this.centerY = y;
      }
      
      private function formWavePattern() : void
      {
         if(this.shootUp)
         {
            if(!this.invertedWave)
            {
               nx = this.centerX + Math.sin(this.waveAngle) * this.waveRange;
               this.waveAngle -= this.waveSpeed * dt;
            }
            else
            {
               nx = this.centerX + Math.sin(this.waveAngle) * this.waveRange;
               this.waveAngle += this.waveSpeed * dt;
            }
         }
         else if(!this.invertedWave)
         {
            ny = this.centerY + Math.sin(this.waveAngle) * this.waveRange;
            this.waveAngle -= this.waveSpeed * dt;
         }
         else
         {
            ny = this.centerY + Math.sin(this.waveAngle) * this.waveRange;
            this.waveAngle += this.waveSpeed * dt;
         }
      }
      
      private function checkDist() : void
      {
         this.shotDist += speed * dt;
         if(this.shotDist >= SHORT_BEAM_DISTANCE)
         {
            destroy();
         }
      }
      
      override public function confirmedHit(param1:IAttackable, param2:Boolean = true) : void
      {
         this.blowUp();
         super.confirmedHit(param1,param2);
      }
      
      override protected function attackObjPiercing(param1:IAttackable) : void
      {
         super.attackObjPiercing(param1);
         if(param1 is Enemy)
         {
            SND_MNGR.playSound(SoundNames.SFX_SAMUS_HIT_ENEMY);
         }
      }
      
      override protected function attackObjNonPiercing(param1:IAttackable) : void
      {
         super.attackObjNonPiercing(param1);
         SND_MNGR.playSound(SoundNames.SFX_SAMUS_BULLET_PROOF);
      }
      
      override public function hitGround(param1:Ground, param2:String) : void
      {
         if(!(param1 is Brick) || param1 is Brick && Brick(param1).disabled)
         {
            this.blowUp();
         }
         super.hitGround(param1,param2);
      }
      
      public function blowUp() : void
      {
         if(this._shotType == SHOT_TYPE_MISSILE)
         {
            level.addToLevel(new SamusSimpleGraphics(this,SamusSimpleGraphics.TYPE_MISSILE_EXPLOSION));
            destroy();
            return;
         }
         if(this.DESTROY_TMR.running)
         {
            return;
         }
         gotoAndStop(currentFrame + 1);
         vx = 0;
         vy = 0;
         stopHit = true;
         stopAnim = true;
         stopUpdate = true;
         this.DESTROY_TMR.start();
      }
      
      private function destroyTmrHandler(param1:TimerEvent) : void
      {
         this.DESTROY_TMR.stop();
         destroy();
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         this.DESTROY_TMR.removeEventListener(TimerEvent.TIMER_COMPLETE,this.destroyTmrHandler);
      }
      
      override public function cleanUp() : void
      {
         super.cleanUp();
         this.samus.BULLET_DCT.removeItem(this);
      }
      
      public function get shotType() : String
      {
         return this._shotType;
      }
   }
}
