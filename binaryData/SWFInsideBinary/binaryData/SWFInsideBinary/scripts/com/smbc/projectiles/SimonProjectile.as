package com.smbc.projectiles
{
   import com.explodingRabbit.cross.gameplay.statusEffects.StatusProperty;
   import com.smbc.characters.Character;
   import com.smbc.characters.Simon;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.DamageValue;
   import com.smbc.data.SoundNames;
   import com.smbc.enemies.Enemy;
   import com.smbc.graphics.SimonSimpleGraphics;
   import com.smbc.ground.Ground;
   import com.smbc.interfaces.IAttackable;
   import com.smbc.main.LevObj;
   import com.smbc.sound.SoundContainer;
   import com.smbc.utils.GameLoopTimer;
   
   public class SimonProjectile extends Projectile
   {
      
      public static const TYPE_AXE:String = "axe";
      
      public static const TYPE_DAGGER:String = "dagger";
      
      public static const TYPE_HOLY_WATER:String = "holyWater";
      
      public static const TYPE_CROSS:String = "cross";
      
      private static const FL_AXE_END:String = "axeEnd";
      
      private static const FL_AXE_START:String = "axeStart";
      
      private static const FL_CROSS_END:String = "crossEnd";
      
      private static const FL_CROSS_START:String = "crossStart";
      
      private static const FL_DAGGER:String = "dagger";
      
      private static const FL_HOLY_WATER_BOTTLE:String = "holyWaterBottle";
      
      private static const FL_HOLY_WATER_FLAME_END:String = "holyWaterFlameEnd";
      
      private static const FL_HOLY_WATER_FLAME_START:String = "holyWaterFlameStart";
       
      
      private const FL_SIMON_THROW_CROUCH:String = "crouchThrowEnd";
      
      private const FL_SIMON_THROW_STAND:String = "throwEnd";
      
      private const Y_OFFSET_CROUCH:int = 30;
      
      private const Y_OFFSET_STAND:int = 50;
      
      private const X_OFFSET:int = 22;
      
      private const SFX_SIMON_AXE:String = SoundNames.SFX_SIMON_AXE;
      
      private const VY_MAX_PSV:int = 900;
      
      private const AXE_GRAVITY:int = 1500;
      
      private const AXE_VX:int = 250;
      
      private const AXE_VY:int = 560;
      
      private const CROSS_AX:int = 700;
      
      private const CROSS_VX:int = 200;
      
      private const CROSS_DISTANCE:int = 220;
      
      private const HOLY_WATER_GRAVITY:int = 1200;
      
      private const HOLY_WATER_VX:int = 250;
      
      private const HOLY_WATER_VY:int = 100;
      
      private const DAGGER_VX:int = 500;
      
      private var crossEndX:Number;
      
      private var crossDirStart:int;
      
      private var simon:Simon;
      
      private var type:String;
      
      public function SimonProjectile(param1:Simon, param2:String)
      {
         var _loc3_:StatusProperty = null;
         super(param1,SOURCE_TYPE_PLAYER);
         this.simon = param1;
         this.type = param2;
         for each(_loc3_ in Simon.DEFAULT_PROPS_DCT)
         {
            addProperty(_loc3_);
         }
         this.setType();
         destroyOffScreen = false;
         dosRht = true;
         dosLft = true;
         dosBot = true;
      }
      
      private function setType() : void
      {
         switch(this.type)
         {
            case TYPE_AXE:
               gotoAndStop(FL_AXE_START);
               stopAnim = false;
               this.setStartPos();
               gravity = this.AXE_GRAVITY;
               addProperty(new StatusProperty(PR_PASSTHROUGH_ALWAYS));
               vx = this.AXE_VX * scaleX;
               vy = -this.AXE_VY;
               vyMaxPsv = this.VY_MAX_PSV;
               _damageAmt = DamageValue.SIMON_AXE;
               SND_MNGR.playSound(this.SFX_SIMON_AXE);
               break;
            case TYPE_CROSS:
               gotoAndStop(FL_CROSS_START);
               stopAnim = false;
               defyGrav = true;
               this.setStartPos();
               vx = this.CROSS_VX * scaleX;
               _damageAmt = DamageValue.SIMON_CROSS;
               addProperty(new StatusProperty(PR_PASSTHROUGH_ALWAYS));
               this.crossEndX = x + this.CROSS_DISTANCE * scaleX;
               ax = NaN;
               this.crossDirStart = scaleX;
               vxMax = Math.abs(vx);
               SND_MNGR.playSound(SoundNames.SFX_SIMON_CROSS);
               break;
            case TYPE_DAGGER:
               gotoAndStop(FL_DAGGER);
               stopAnim = true;
               defyGrav = true;
               this.setStartPos();
               vx = this.DAGGER_VX * scaleX;
               _damageAmt = DamageValue.SIMON_DAGGER;
               SND_MNGR.playSound(SoundNames.SFX_SIMON_THROW_DAGGER);
               break;
            case TYPE_HOLY_WATER:
               gotoAndStop(FL_HOLY_WATER_BOTTLE);
               stopAnim = true;
               accurateAnimTmr = new GameLoopTimer(AnimationTimers.DEL_SLOWEST);
               this.setStartPos();
               addProperty(new StatusProperty(PR_PASSTHROUGH_ALWAYS));
               addProperty(new StatusProperty(PR_PIERCE_AGG,PIERCE_STR_ARMOR_PIERCING));
               vx = this.HOLY_WATER_VX * scaleX;
               vy = -this.HOLY_WATER_VY;
               gravity = this.HOLY_WATER_GRAVITY;
               addAllGroundToHitTestables();
               _damageAmt = DamageValue.SIMON_HOLY_WATER_BOTTLE;
         }
      }
      
      private function setStartPos() : void
      {
         var _loc2_:int = 0;
         var _loc1_:String = this.simon.currentLabel;
         _loc2_ = this.simon.scaleX;
         x = this.simon.nx + this.X_OFFSET * _loc2_;
         scaleX = _loc2_;
         if(_loc1_ == this.FL_SIMON_THROW_CROUCH)
         {
            y = this.simon.ny - this.Y_OFFSET_CROUCH;
         }
         else
         {
            y = this.simon.ny - this.Y_OFFSET_STAND;
         }
      }
      
      override public function updateObj() : void
      {
         super.updateObj();
         if(this.type == TYPE_CROSS)
         {
            if(isNaN(ax))
            {
               if(scaleX > 0 && nx > this.crossEndX || scaleX < 0 && nx < this.crossEndX)
               {
                  ax = -this.crossDirStart * this.CROSS_AX;
               }
            }
            else
            {
               vx += ax * dt;
               if(!hitTestTypesDct[HT_PROJECTILE_ENEMY] && (this.crossDirStart > 0 && vx < 0 || this.crossDirStart < 0 && vx > 0))
               {
                  this.crossReverse();
               }
            }
         }
      }
      
      private function holyWaterExplode() : void
      {
         gotoAndStop(FL_HOLY_WATER_FLAME_START);
         stopAnim = false;
         vx = 0;
         vy = 0;
         defyGrav = true;
         destroyOffScreen = true;
         _damageAmt = DamageValue.SIMON_HOLY_WATER_FLAME;
         C_HIT_DCT.clear();
         L_HIT_DCT.clear();
         clearHitsAfterTime = Simon.HIT_DEL;
         removeHitTestableItem(HT_GROUND_NON_BRICK);
         removeHitTestableItem(HT_PLATFORM);
         SND_MNGR.playSound(SoundNames.SFX_SIMON_HOLY_WATER_EXPLODE);
      }
      
      private function crossReverse(param1:Boolean = false) : void
      {
         if(param1)
         {
            vx = -vxMax * this.crossDirStart;
         }
         if(hitTestTypesDct[HT_PROJECTILE_ENEMY])
         {
            return;
         }
         scaleX = -this.crossDirStart;
         addHitTestableItem(HT_CHARACTER);
         hitTestTypesDct.addItem(HT_PROJECTILE_ENEMY);
      }
      
      override public function checkLoc() : void
      {
         super.checkLoc();
         if(this.type == TYPE_CROSS && !hitTestTypesDct[HT_PROJECTILE_ENEMY])
         {
            if(globX + hWidth * 0.5 >= GLOB_STG_RHT)
            {
               this.crossReverse(true);
            }
            else if(globX - hWidth * 0.5 <= GLOB_STG_LFT)
            {
               this.crossReverse(true);
            }
         }
      }
      
      override public function hitCharacter(param1:Character, param2:String) : void
      {
         super.hitCharacter(param1,param2);
         if(this.type == TYPE_CROSS)
         {
            destroy();
         }
      }
      
      override protected function attackObjPiercing(param1:IAttackable) : void
      {
         super.attackObjPiercing(param1);
         if(param1 is Enemy)
         {
            level.addToLevel(new SimonSimpleGraphics(param1 as LevObj,SimonSimpleGraphics.TYPE_WHIP_SPARK,this));
            if(this.simon.skinNum == Simon.SKIN_SIMON_CV2_NES)
            {
               if(param1.health <= 0)
               {
                  SND_MNGR.playSound(SoundNames.SFX_SIMON_KILL_ENEMY_C2);
               }
               else
               {
                  SND_MNGR.playSound(SoundNames.SFX_SIMON_HIT_ENEMY_C2);
               }
            }
            else
            {
               SND_MNGR.playSound(SoundNames.SFX_SIMON_HIT_ENEMY);
            }
         }
      }
      
      override public function hitGround(param1:Ground, param2:String) : void
      {
         if(this.type == TYPE_HOLY_WATER && currentLabel == FL_HOLY_WATER_BOTTLE)
         {
            this.holyWaterExplode();
         }
         super.hitGround(param1,param2);
      }
      
      override public function checkFrame() : void
      {
         if(this.type == TYPE_AXE && currentFrame == convFrameToInt(FL_AXE_END) + 1)
         {
            gotoAndStop(FL_AXE_START);
         }
         else if(this.type == TYPE_CROSS && currentFrame == convFrameToInt(FL_CROSS_END) + 1)
         {
            gotoAndStop(FL_CROSS_START);
         }
         else if(this.type == TYPE_HOLY_WATER && currentFrame == convFrameToInt(FL_HOLY_WATER_FLAME_END) + 1)
         {
            destroy();
         }
      }
      
      override public function cleanUp() : void
      {
         var _loc1_:String = null;
         var _loc2_:Projectile = null;
         var _loc3_:SoundContainer = null;
         super.cleanUp();
         if(this.type == TYPE_AXE || this.type == TYPE_CROSS)
         {
            if(this.type == TYPE_AXE)
            {
               _loc1_ = this.SFX_SIMON_AXE;
            }
            else if(this.type == TYPE_CROSS)
            {
               _loc1_ = SoundNames.SFX_SIMON_CROSS;
            }
            for each(_loc2_ in level.PLAYER_PROJ_DCT)
            {
               if(_loc2_ is SimonProjectile && (_loc2_ as SimonProjectile).type == this.type && _loc2_ != this)
               {
                  return;
               }
            }
            _loc3_ = SND_MNGR.findSound(_loc1_);
            if(_loc3_)
            {
               _loc3_.pauseSound();
               SND_MNGR.removeSnd(_loc3_);
            }
         }
      }
   }
}
