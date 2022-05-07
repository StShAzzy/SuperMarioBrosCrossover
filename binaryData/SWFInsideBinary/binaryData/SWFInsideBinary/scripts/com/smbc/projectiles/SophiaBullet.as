package com.smbc.projectiles
{
   import com.explodingRabbit.cross.gameplay.statusEffects.StatFxFlash;
   import com.explodingRabbit.cross.gameplay.statusEffects.StatusProperty;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.characters.Sophia;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.Cheats;
   import com.smbc.data.DamageValue;
   import com.smbc.data.PaletteTypes;
   import com.smbc.data.PickupInfo;
   import com.smbc.data.SoundNames;
   import com.smbc.enemies.Enemy;
   import com.smbc.graphics.SophiaExplosion;
   import com.smbc.ground.Brick;
   import com.smbc.ground.Ground;
   import com.smbc.interfaces.IAttackable;
   import com.smbc.interfaces.ICustomTimer;
   import com.smbc.level.Level;
   import com.smbc.main.AnimatedObject;
   import com.smbc.utils.GameLoopTimer;
   import flash.events.TimerEvent;
   
   public class SophiaBullet extends Projectile
   {
      
      private static const FL_CRUSHER_END:String = "crusherEnd";
      
      private static const FL_CRUSHER_START:String = "crusherStart";
      
      private static const FL_HYPER_START:String = "hyperStart";
      
      private static const FL_HYPER_END:String = "hyperEnd";
      
      private static const FL_MISSILE:String = "missile";
      
      private static const FL_MISSILE_FLAME_START:String = "missileFlameStart";
      
      private static const FL_MISSILE_FLAME_END:String = "missileFlameEnd";
      
      private static const FL_NORMAL_START:String = "normalStart";
      
      private static const FL_NORMAL_END:String = "normalEnd";
      
      private static const SH_CRUSHER:String = "crusher";
      
      private static const SH_HYPER:String = "hyper";
      
      private static const SH_NORMAL:String = "normal";
      
      public static const SH_HOMING_MISSILE:String = "homingMissile";
      
      public static const SH_MISSILE:String = "missile";
      
      private static const ST_ACTIVE:String = "active";
      
      private static const ST_INACTIVE:String = "inactive";
      
      private static const HORZ_X_OFS:int = 12;
      
      private static const HORZ_Y_OFS:int = 25;
      
      private static const UP_X_OFS:int = 8;
      
      private static const UP_Y_OFS:int = 50;
      
      private static const MAIN_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_FAST_TMR;
      
      private static const SPEED:int = 450;
      
      private static const MISSILE_MAX_SPEED:int = 425;
      
      private static const HOMING_MISSILE_ACCELERATION:int = 3000;
      
      private static const MISSILE_ACCELERATION:int = 700;
      
      private static const FRICTION:Number = 0.1;
      
      private static const FACING_RIGHT_ROTATION_NUM:int = 270;
      
      private static const FACING_LEFT_ROTATION_NUM:int = 90;
      
      private static const MISSILE_POS_TOP:String = "top";
      
      private static const MISSILE_POS_MID:String = "mid";
      
      private static const MISSILE_POS_BOT:String = "bot";
      
      private static const SHOT_DIR_UP:String = "up";
      
      private static const SHOT_DIR_RIGHT:String = "right";
      
      private static const SHOT_DIR_DOWN:String = "down";
      
      private static const SHOT_DIR_LEFT:String = "left";
      
      private static const PAL_ORDER_ARR:Array = [PaletteTypes.FLASH_GENERAL];
      
      private static const DEL_MISSILE_EXPIRE:int = 2000;
      
      private static const TRI_MISSILE_ANGLE_SPEED:int = 120;
      
      private static const FRICT_MISSILE:Number = 0.6;
       
      
      private var shotDir:String;
      
      private var missilePos:String;
      
      private var sophia:Sophia;
      
      public var shotType:String;
      
      private var enemyToTrack:Enemy;
      
      private var missileSpeed:Number = 0;
      
      private var missileExpireTmr:GameLoopTimer;
      
      private var missile:Boolean;
      
      public function SophiaBullet(param1:Sophia, param2:String = null, param3:String = null)
      {
         var _loc4_:StatusProperty = null;
         this.sophia = param1;
         super(param1,SOURCE_TYPE_PLAYER);
         this.missilePos = param3;
         for each(_loc4_ in Sophia.DEFAULT_PROPS_DCT)
         {
            addProperty(_loc4_);
         }
         defyGrav = true;
         stopAnim = false;
         mainAnimTmr = MAIN_ANIM_TMR;
         this.shotType = param2;
         this.setShotType();
         this.setDir();
         if(!this.missile)
         {
            addHitTestableItem(HT_GROUND_NON_BRICK);
            addHitTestableItem(HT_PLATFORM);
         }
         vxMax = MISSILE_MAX_SPEED;
         vyMax = MISSILE_MAX_SPEED;
         palOrderArr = PAL_ORDER_ARR.concat();
      }
      
      public static function launchMissiles(param1:Sophia) : void
      {
         var _loc2_:Level = Level.levelInstance;
         _loc2_.addToLevel(new SophiaBullet(param1,SH_MISSILE,MISSILE_POS_BOT));
         _loc2_.addToLevel(new SophiaBullet(param1,SH_MISSILE,MISSILE_POS_MID));
         _loc2_.addToLevel(new SophiaBullet(param1,SH_MISSILE,MISSILE_POS_TOP));
      }
      
      override public function setStats() : void
      {
         super.setStats();
         if(this.shotType == SH_HOMING_MISSILE)
         {
            this.getEnemyToTrack();
         }
      }
      
      private function setShotType() : void
      {
         if(this.shotType == SH_HOMING_MISSILE)
         {
            SND_MNGR.playSound(SoundNames.SFX_SOPHIA_MISSILE);
            removeHitTestableItem(HT_BRICK);
            setState(ST_ACTIVE);
            this.missile = true;
            gotoAndStop(FL_MISSILE_FLAME_START);
            _damageAmt = DamageValue.SOPHIA_MISSILE;
            destroyOffScreen = false;
            updateOffScreen = true;
            return;
         }
         if(this.shotType == SH_MISSILE)
         {
            SND_MNGR.playSound(SoundNames.SFX_SOPHIA_MISSILE);
            setState(ST_ACTIVE);
            this.missile = true;
            gotoAndStop(FL_MISSILE_FLAME_START);
            _damageAmt = DamageValue.SOPHIA_MISSILE;
            addProperty(new StatusProperty(PR_PIERCE_AGG,10));
            return;
         }
         if(this.sophia.upgradeIsActive(PickupInfo.SOPHIA_CRUSHER))
         {
            this.shotType = SH_CRUSHER;
         }
         else if(this.sophia.upgradeIsActive(PickupInfo.SOPHIA_HYPER))
         {
            this.shotType = SH_HYPER;
         }
         else
         {
            this.shotType = SH_NORMAL;
         }
         switch(this.shotType)
         {
            case SH_NORMAL:
               this.shotType = SH_NORMAL;
               gotoAndStop(FL_NORMAL_START);
               SND_MNGR.playSound(SoundNames.SFX_SOPHIA_SHOOT_NORMAL);
               _damageAmt = DamageValue.SOPHIA_BULLET_NORMAL;
               break;
            case SH_HYPER:
               this.shotType = SH_HYPER;
               gotoAndStop(FL_HYPER_START);
               SND_MNGR.playSound(SoundNames.SFX_SOPHIA_SHOOT_HYPER);
               _damageAmt = DamageValue.SOPHIA_BULLET_HYPER;
               break;
            case SH_CRUSHER:
               if(this.shotType == SH_CRUSHER)
               {
                  addStatusEffect(new StatFxFlash(this,AnimationTimers.DEL_FAST));
               }
               this.shotType = SH_CRUSHER;
               gotoAndStop(FL_CRUSHER_START);
               SND_MNGR.playSound(SoundNames.SFX_SOPHIA_SHOOT_CRUSHER);
               _damageAmt = DamageValue.SOPHIA_BULLET_CRUSER;
               break;
            default:
               throw new Error("Sophia\'s shot type must be set!");
         }
      }
      
      override protected function setDir() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.sophia.vertical)
         {
            _loc1_ = this.sophia.sophiaScaleX;
            scaleX = _loc1_;
            if(this.sophia.rotation == Sophia.ROT_WALL_BOT)
            {
               _loc2_ = 1;
            }
            else
            {
               _loc2_ = -1;
            }
            if(this.sophia.sophiaBase.currentLabel != Sophia.SHOOT_UP_FRAME)
            {
               vx = SPEED * _loc1_;
               x = this.sophia.nx + HORZ_X_OFS * _loc1_;
               y = this.sophia.ny - HORZ_Y_OFS * _loc2_;
            }
            else
            {
               if(scaleX > 0)
               {
                  rotation = FACING_RIGHT_ROTATION_NUM + this.sophia.rotation;
               }
               else
               {
                  rotation = FACING_LEFT_ROTATION_NUM + this.sophia.rotation;
               }
               x = this.sophia.nx - UP_X_OFS * _loc1_;
               vy = -SPEED * _loc2_;
               y = this.sophia.ny - UP_Y_OFS * _loc2_;
            }
         }
         else
         {
            _loc2_ = this.sophia.sophiaScaleX;
            scaleX = _loc2_;
            if(this.sophia.rotation == Sophia.ROT_WALL_LEFT)
            {
               _loc1_ = -1;
            }
            else
            {
               _loc1_ = 1;
            }
            if(this.sophia.sophiaBase.currentLabel != Sophia.SHOOT_UP_FRAME)
            {
               vy = SPEED * _loc2_;
               x = this.sophia.nx - HORZ_Y_OFS * _loc1_;
               y = this.sophia.ny + HORZ_X_OFS * _loc2_;
               rotation = -this.sophia.rotation * _loc1_;
            }
            else
            {
               if(scaleX > 0)
               {
                  rotation = FACING_RIGHT_ROTATION_NUM + this.sophia.rotation;
               }
               else
               {
                  rotation = FACING_LEFT_ROTATION_NUM + this.sophia.rotation;
               }
               vx = -SPEED * _loc1_;
               x = this.sophia.nx - UP_Y_OFS * _loc1_;
               y = this.sophia.ny - UP_X_OFS * _loc2_;
            }
         }
         if(this.shotType === SH_HOMING_MISSILE)
         {
            vx = 0;
            vy = 0;
            scaleX = 1;
         }
         else if(this.shotType == SH_MISSILE)
         {
            _loc3_ = 1;
            if(this.missilePos == MISSILE_POS_TOP)
            {
               _loc3_ = -1;
            }
            if(vy == 0)
            {
               if(vx > 0)
               {
                  this.shotDir = SHOT_DIR_RIGHT;
               }
               else
               {
                  this.shotDir = SHOT_DIR_LEFT;
               }
               if(this.missilePos != MISSILE_POS_MID)
               {
                  vy = TRI_MISSILE_ANGLE_SPEED * _loc3_;
               }
            }
            else if(vx == 0)
            {
               if(vy > 0)
               {
                  this.shotDir = SHOT_DIR_DOWN;
               }
               else
               {
                  this.shotDir = SHOT_DIR_UP;
               }
               if(this.missilePos != MISSILE_POS_MID)
               {
                  vx = TRI_MISSILE_ANGLE_SPEED * _loc3_;
               }
            }
            if(this.shotDir == SHOT_DIR_LEFT || this.shotDir == SHOT_DIR_RIGHT)
            {
               vx = 0;
            }
            else
            {
               vy = 0;
            }
         }
      }
      
      private function getEnemyToTrack() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:AnimatedObject = null;
         for each(_loc3_ in level.AO_STG_DCT)
         {
            if(!(!(_loc3_ is Enemy) || _loc3_.getProperty(PR_PIERCE_PAS) && !Cheats.allWeaponsPierce))
            {
               if(!this.enemyToTrack && !_loc3_.stopHit && _loc3_.onScreen)
               {
                  this.enemyToTrack = _loc3_ as Enemy;
                  _loc1_ = level.getDistance(hMidX,hMidY,_loc3_.hMidX,_loc3_.hMidY);
               }
               else if(!_loc3_.stopHit && _loc3_.onScreen)
               {
                  _loc2_ = level.getDistance(hMidX,hMidY,_loc3_.hMidX,_loc3_.hMidY);
                  if(_loc2_ < _loc1_)
                  {
                     this.enemyToTrack = _loc3_ as Enemy;
                  }
               }
            }
         }
         if(cState == ST_ACTIVE && !this.enemyToTrack)
         {
            this.deactivateMissile();
         }
         else if(cState == ST_INACTIVE && this.enemyToTrack)
         {
            this.reactivateMissile();
         }
      }
      
      override protected function updateStats() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         super.updateStats();
         if(this.shotType == SH_MISSILE)
         {
            if(this.shotDir == SHOT_DIR_RIGHT)
            {
               vx += MISSILE_ACCELERATION * dt;
               if(this.missilePos != MISSILE_POS_MID)
               {
                  vy *= Math.pow(FRICT_MISSILE,dt);
               }
            }
            else if(this.shotDir == SHOT_DIR_LEFT)
            {
               vx -= MISSILE_ACCELERATION * dt;
               if(this.missilePos != MISSILE_POS_MID)
               {
                  vy *= Math.pow(FRICT_MISSILE,dt);
               }
            }
            else if(this.shotDir == SHOT_DIR_DOWN)
            {
               vy += MISSILE_ACCELERATION * dt;
               if(this.missilePos != MISSILE_POS_MID)
               {
                  vx *= Math.pow(FRICT_MISSILE,dt);
               }
            }
            else if(this.shotDir == SHOT_DIR_UP)
            {
               vy -= MISSILE_ACCELERATION * dt;
               if(this.missilePos != MISSILE_POS_MID)
               {
                  vx *= Math.pow(FRICT_MISSILE,dt);
               }
            }
         }
         if(this.shotType != SH_HOMING_MISSILE)
         {
            return;
         }
         this.verifyEnemyToTrack();
         if(cState === ST_ACTIVE)
         {
            _loc1_ = this.enemyToTrack.hMidY - hMidY;
            _loc2_ = this.enemyToTrack.hMidX - hMidX;
            _loc3_ = Math.atan2(_loc1_,_loc2_);
            this.missileSpeed += HOMING_MISSILE_ACCELERATION * dt;
            vx += Math.cos(_loc3_) * this.missileSpeed * dt;
            vy += Math.sin(_loc3_) * this.missileSpeed * dt;
            vx *= Math.pow(FRICTION,dt);
            vy *= Math.pow(FRICTION,dt);
            rotation = _loc3_ * 180 / Math.PI;
         }
      }
      
      private function verifyEnemyToTrack() : void
      {
         if(this.enemyToTrack)
         {
            if(this.enemyToTrack.stopHit || !this.enemyToTrack.onScreen)
            {
               this.enemyToTrack = null;
               this.getEnemyToTrack();
            }
         }
         else
         {
            this.getEnemyToTrack();
         }
      }
      
      override protected function attackObjPiercing(param1:IAttackable) : void
      {
         super.attackObjPiercing(param1);
         if(param1 is Enemy && param1.health > 0)
         {
            SND_MNGR.playSound(SoundNames.SFX_SOPHIA_HIT_ENEMY);
         }
      }
      
      override protected function attackObjNonPiercing(param1:IAttackable) : void
      {
         super.attackObjNonPiercing(param1);
         level.addToLevel(new SophiaExplosion(this));
      }
      
      private function deactivateMissile() : void
      {
         stopAnim = true;
         this.enemyToTrack = null;
         destroyOffScreen = true;
         updateOffScreen = false;
         gotoAndStop(FL_MISSILE);
         setState(ST_INACTIVE);
         this.missileExpireTmr = new GameLoopTimer(DEL_MISSILE_EXPIRE,1);
         this.missileExpireTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.missileExpireTmrHandler,false,0,true);
         addTmr(this.missileExpireTmr);
         this.missileExpireTmr.start();
      }
      
      private function reactivateMissile() : void
      {
         stopAnim = false;
         destroyOffScreen = false;
         updateOffScreen = true;
         setState(ST_ACTIVE);
         this.missileExpireTmr.stop();
         this.missileExpireTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.missileExpireTmrHandler);
         removeTmr(this.missileExpireTmr);
         this.missileExpireTmr = null;
         this.getEnemyToTrack();
      }
      
      private function missileExpireTmrHandler(param1:TimerEvent) : void
      {
         this.missileExpireTmr.stop();
         this.missileExpireTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.missileExpireTmrHandler);
         removeTmr(this.missileExpireTmr);
         this.missileExpireTmr = null;
         level.addToLevel(new SophiaExplosion(this));
         destroy();
      }
      
      override public function hitGround(param1:Ground, param2:String) : void
      {
         if(!(param1 is Brick) || param1 is Brick && Brick(param1).disabled)
         {
            level.addToLevel(new SophiaExplosion(this));
            destroy();
         }
      }
      
      override public function animate(param1:ICustomTimer) : Boolean
      {
         if(!this.missile)
         {
            return super.animate(param1);
         }
         if(!stopAnim)
         {
            if(currentLabel === FL_MISSILE)
            {
               gotoAndStop(FL_MISSILE_FLAME_START);
            }
            else
            {
               gotoAndStop(FL_MISSILE);
            }
            return true;
         }
         return false;
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         if(this.missileExpireTmr)
         {
            this.missileExpireTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.missileExpireTmrHandler);
         }
      }
      
      override public function checkFrame() : void
      {
         var _loc1_:String = currentLabel;
         if((this.shotType == SH_HYPER || this.shotType == SH_CRUSHER) && _loc1_ == FL_CRUSHER_END)
         {
            gotoAndStop(FL_CRUSHER_START);
         }
         else if(this.shotType == SH_NORMAL && _loc1_ == FL_NORMAL_END)
         {
            gotoAndStop(FL_NORMAL_START);
         }
      }
   }
}
