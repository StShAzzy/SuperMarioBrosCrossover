package com.smbc.projectiles
{
   import com.explodingRabbit.cross.gameplay.statusEffects.StatusProperty;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.characters.Bill;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.DamageValue;
   import com.smbc.data.PickupInfo;
   import com.smbc.data.SoundNames;
   import com.smbc.enemies.Enemy;
   import com.smbc.interfaces.IAttackable;
   import com.smbc.level.Level;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   
   public class BillBullet extends Projectile
   {
      
      private static const MAIN_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_FAST_TMR;
      
      public static const OFS_ARR:Array = [];
      
      public static const OFS_CHAR_DEF_IND:int = 0;
      
      public static const OFS_CHAR_GB_IND:int = 1;
      
      public static const OFS_CHAR_LANCE_GB_IND:int = 2;
      
      public static const TYPE_FLARE:String = "flare";
      
      public static const TYPE_FLARE_CENTER:String = "flareCenter";
      
      public static const TYPE_NORMAL:String = "normal";
      
      public static const TYPE_LASER:String = "laser";
      
      public static const TYPE_MACHINE:String = "machine";
      
      public static const TYPE_SPREAD:String = "spread";
      
      private static const SPREAD_SEP:int = 60;
      
      private static const DIAG_SPR_SEP:int = 50;
      
      private static const SPREAD_OFS:int = 6;
      
      private static const ROT_INC:int = 45;
      
      private static const FL_FLARE:String = "flare";
      
      private static const FL_NORMAL:String = "normal";
      
      private static const FL_RED:String = "red";
      
      private static const FL_END:String = "end";
      
      private static const FL_LASER:String = "laser";
      
      private static var ctr:int = -1;
      
      private static const IND_OFS_PT_UP:int = ctr = ctr + 1;
      
      private static const IND_OFS_PT_DIAG_UP:int = ctr = ctr + 1;
      
      private static const IND_OFS_PT_STAND:int = ctr = ctr + 1;
      
      private static const IND_OFS_PT_DIAG_DWN:int = ctr = ctr + 1;
      
      private static const IND_OFS_PT_CROUCH:int = ctr = ctr + 1;
      
      private static const IND_OFS_FLIP_TOP_Y:int = ctr = ctr + 1;
      
      private static const IND_OFS_FLIP_TOP_DIAG_X_Y:int = ctr = ctr + 1;
      
      private static const IND_OFS_FLIP_MID_VERT:int = ctr = ctr + 1;
      
      private static const IND_OFS_FLIP_RIGHT:int = ctr = ctr + 1;
      
      private static const IND_OFS_FLIP_BOT:int = ctr = ctr + 1;
      
      private static const IND_OFS_FALL_TOP_Y:int = ctr = ctr + 1;
      
      private static const IND_OFS_FALL_DIAG_UP_Y:int = ctr = ctr + 1;
      
      private static const IND_OFS_FALL_RIGHT_X:int = ctr = ctr + 1;
      
      private static const IND_OFS_FALL_BOT:int = ctr = ctr + 1;
      
      private static const IND_OFS_FALL_MID_VERT:int = ctr = ctr + 1;
      
      private static const RAPID_SPEED_MULT:Number = 0.1;
      
      private static const NORMAL_BULLET_SPEED:int = 320 - 320 * RAPID_SPEED_MULT;
      
      private static const MACHINE_GUN_BULLET_SPEED:int = 350 - 350 * RAPID_SPEED_MULT;
      
      private static const LASER_SPEED:int = 370 - 370 * RAPID_SPEED_MULT;
      
      private static const SPREAD_BULLET_SPEED:int = 370 - 370 * RAPID_SPEED_MULT;
      
      private static const FLARE_SPEED:int = 235 - 235 * RAPID_SPEED_MULT;
      
      private static const FLARE_RADIUS:int = 32;
      
      private static const FLARE_ROT_SPEED:int = 22;
      
      private static const LASER_APPEAR_OFS:int = 6;
      
      private static const LASER_SEP:int = 26;
      
      private static const LASER_SEP_ROTATED:int = 18;
      
      private static const LASER_NUM_SEGMENTS:int = 4;
      
      {
         (function():void
         {
            OFS_ARR[OFS_CHAR_DEF_IND] = [new Point(9,93),new Point(27,69),new Point(35,45),new Point(30,26),new Point(36,15),45,6,25,25,0,78,61,25,26,45];
            OFS_ARR[OFS_CHAR_GB_IND] = [new Point(7,77),new Point(28,60),new Point(33,34),new Point(25,20),new Point(36,10),45,6,25,25,0,68,61,25,26,45];
         })();
      }
      
      private var spreadSep:int = 0;
      
      private var diagSprSep:int = 0;
      
      private var spreadOffset:int = 0;
      
      private const DESTROY_TMR:CustomTimer = new CustomTimer(50,1);
      
      private var flareCenter:BillBullet;
      
      private var flareAngle:Number = -1;
      
      private var flareRotDir:int = 1;
      
      public var laserAppearPnt:Point;
      
      private var bill:Bill;
      
      private var type:String;
      
      public function BillBullet(param1:Bill, param2:String)
      {
         super(param1,SOURCE_TYPE_PLAYER);
         this.bill = param1;
         this.type = param2;
         stopAnim = true;
         defyGrav = true;
         mainAnimTmr = MAIN_ANIM_TMR;
         xSpeed = 300;
         this.determineShotType();
         this.DESTROY_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.destroyTmrHandler,false,0,true);
         addTmr(this.DESTROY_TMR);
         mainAnimTmr = null;
         addProperty(new StatusProperty(PR_PASSTHROUGH_ALWAYS));
      }
      
      private static function getOfs(param1:int, param2:int, param3:Boolean = true) : int
      {
         var _loc4_:Object = OFS_ARR[param1][param2];
         if(!(_loc4_ is Point))
         {
            return int(_loc4_);
         }
         var _loc5_:Point = _loc4_ as Point;
         if(param3)
         {
            return _loc5_.x;
         }
         return _loc5_.y;
      }
      
      public static function createLaser(param1:Bill) : void
      {
         var _loc3_:Projectile = null;
         var _loc4_:BillBullet = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BillBullet = null;
         var _loc2_:Level = Level.levelInstance;
         for each(_loc3_ in _loc2_.PLAYER_PROJ_DCT)
         {
            _loc3_.destroy();
         }
         _loc4_ = new BillBullet(param1,TYPE_LASER);
         _loc4_.laserActivate();
         _loc2_.addToLevel(_loc4_);
         _loc5_ = Math.abs(_loc4_.vx) / _loc4_.vx;
         _loc6_ = Math.abs(_loc4_.vy) / _loc4_.vy;
         _loc7_ = LASER_SEP;
         if(_loc4_.rotation != 0 && _loc4_.rotation != ROT_INC * 2)
         {
            _loc7_ = LASER_SEP_ROTATED;
         }
         var _loc8_:int = LASER_NUM_SEGMENTS - 1;
         _loc9_ = 0;
         while(_loc9_ < _loc8_)
         {
            _loc10_ = new BillBullet(param1,TYPE_LASER);
            _loc10_.x -= _loc7_ * _loc5_ * (_loc9_ + 1);
            _loc10_.y -= _loc7_ * _loc6_ * (_loc9_ + 1);
            _loc10_.laserAppearPnt = new Point(_loc4_.x - _loc5_ * LASER_APPEAR_OFS,_loc4_.y - _loc6_ * LASER_APPEAR_OFS);
            _loc2_.addToLevel(_loc10_);
            _loc9_++;
         }
      }
      
      override protected function removedLsr(param1:Event) : void
      {
         super.removedLsr(param1);
      }
      
      private function determineShotType() : void
      {
         switch(this.type)
         {
            case TYPE_FLARE_CENTER:
               this.flareCenterInit();
               break;
            case TYPE_FLARE:
               this.flare();
               break;
            case TYPE_LASER:
               this.laser();
               break;
            case TYPE_MACHINE:
               this.machineGun();
               break;
            case TYPE_NORMAL:
               this.normal();
               break;
            case TYPE_SPREAD:
               this.spread();
         }
      }
      
      private function getRealSpeed(param1:int) : int
      {
         var _loc2_:Number = 0;
         if(this.bill.upgradeIsActive(PickupInfo.BILL_RAPID_1))
         {
            _loc2_ += RAPID_SPEED_MULT;
         }
         if(this.bill.upgradeIsActive(PickupInfo.BILL_RAPID_2))
         {
            _loc2_ += RAPID_SPEED_MULT;
         }
         return param1 + param1 * _loc2_;
      }
      
      private function flareCenterInit() : void
      {
         visible = false;
         stopHit = true;
         removeAllHitTestableItems();
         xSpeed = this.getRealSpeed(FLARE_SPEED);
         destroyOffScreen = false;
         this.setDir();
      }
      
      private function flare() : void
      {
         this.flareCenter = new BillBullet(this.bill,TYPE_FLARE_CENTER);
         level.addToLevelNow(this.flareCenter);
         xSpeed = this.getRealSpeed(FLARE_SPEED);
         if(this.bill.scaleX < 0)
         {
            this.flareAngle *= Math.PI / 2;
            this.flareRotDir = -this.flareRotDir;
         }
         gotoAndStop(FL_FLARE);
         SND_MNGR.playSound(SoundNames.SFX_BILL_FLARE);
         _damageAmt = DamageValue.BILL_FLARE;
         this.setDir();
         addProperty(new StatusProperty(PR_PIERCE_AGG,PIERCE_STR_ARMOR_PIERCING));
      }
      
      private function laser() : void
      {
         xSpeed = this.getRealSpeed(LASER_SPEED);
         gotoAndStop(FL_LASER);
         SND_MNGR.playSound(SoundNames.SFX_BILL_LASER);
         _damageAmt = DamageValue.BILL_LASER;
         this.laserActivate(true);
         this.setDir();
      }
      
      public function laserActivate(param1:Boolean = false) : void
      {
         visible = !param1;
         stopHit = param1;
      }
      
      override public function updateObj() : void
      {
         super.updateObj();
         if(this.type == TYPE_SPREAD)
         {
            scaleX += 0.018;
            scaleY += 0.018;
            if(scaleX > 1.6)
            {
               scaleX = 1.6;
            }
            if(scaleY > 1.6)
            {
               scaleY = 1.6;
            }
         }
         else if(this.type == TYPE_LASER && stopHit)
         {
            if(vx == 0 || vx > 0 && nx >= this.laserAppearPnt.x || vx < 0 && nx <= this.laserAppearPnt.x)
            {
               if(vy == 0 || vy > 0 && ny >= this.laserAppearPnt.y || vy < 0 && ny <= this.laserAppearPnt.y)
               {
                  this.laserActivate();
               }
            }
         }
         else if(this.type == TYPE_FLARE)
         {
            nx = this.flareCenter.x + Math.cos(this.flareAngle) * FLARE_RADIUS;
            ny = this.flareCenter.y + Math.sin(this.flareAngle) * FLARE_RADIUS;
            this.flareAngle += FLARE_ROT_SPEED * dt * this.flareRotDir;
         }
      }
      
      private function normal() : void
      {
         xSpeed = this.getRealSpeed(NORMAL_BULLET_SPEED);
         gotoAndStop(FL_NORMAL);
         SND_MNGR.playSound(SoundNames.SFX_BILL_NORMAL_SHOT);
         _damageAmt = DamageValue.BILL_NORMAL_SHOT;
         this.setDir();
      }
      
      private function machineGun() : void
      {
         xSpeed = this.getRealSpeed(MACHINE_GUN_BULLET_SPEED);
         gotoAndStop(FL_RED);
         SND_MNGR.playSound(SoundNames.SFX_BILL_MACHINE_GUN);
         _damageAmt = DamageValue.BILL_MACHINE_GUN;
         this.setDir();
      }
      
      private function spread() : void
      {
         xSpeed = this.getRealSpeed(SPREAD_BULLET_SPEED);
         this.type = TYPE_SPREAD;
         gotoAndStop(FL_RED);
         SND_MNGR.playSound(SoundNames.SFX_BILL_SPREAD);
         _damageAmt = DamageValue.BILL_SPREAD;
         this.spreadSep = SPREAD_SEP;
         this.diagSprSep = DIAG_SPR_SEP;
         this.spreadOffset = SPREAD_OFS;
      }
      
      public function setSpread(param1:Number) : void
      {
         this.spreadSep *= param1;
         this.diagSprSep *= param1;
         this.spreadOffset *= Math.abs(param1);
         this.setDir();
      }
      
      public function blowUp() : void
      {
         gotoAndStop(FL_END);
         vx = 0;
         vy = 0;
         stopHit = true;
         stopAnim = true;
         stopUpdate = true;
         scaleX = 1;
         scaleY = 1;
         this.DESTROY_TMR.start();
      }
      
      override protected function setDir() : void
      {
         var _loc1_:int = this.bill.getOfsCharInd();
         var _loc2_:Number = 0.75;
         var _loc3_:Number = 0.75;
         if(this.bill.upBtn && !this.bill.rhtBtn && !this.bill.lftBtn)
         {
            vy = -xSpeed;
            vx = this.spreadSep;
            if(!this.bill.onGround)
            {
               x = this.bill.nx;
            }
            else if(this.bill.scaleX > 0)
            {
               x = this.bill.nx + getOfs(_loc1_,IND_OFS_PT_UP,true);
            }
            else
            {
               x = this.bill.nx - getOfs(_loc1_,IND_OFS_PT_UP,true);
            }
            if(this.bill.onGround)
            {
               y = this.bill.ny - getOfs(_loc1_,IND_OFS_PT_UP,false);
            }
            else if(this.bill.jumped)
            {
               y = this.bill.ny - getOfs(_loc1_,IND_OFS_FLIP_TOP_Y);
            }
            else
            {
               y = this.bill.ny - getOfs(_loc1_,IND_OFS_FALL_TOP_Y);
            }
            y += this.spreadOffset;
         }
         else if(this.bill.upBtn && (this.bill.rhtBtn || this.bill.lftBtn))
         {
            if(this.bill.rhtBtn)
            {
               vx = xSpeed * _loc2_ + this.diagSprSep;
               if(this.bill.onGround)
               {
                  x = this.bill.nx + getOfs(_loc1_,IND_OFS_PT_DIAG_UP,true);
               }
               else if(this.bill.jumped)
               {
                  x = this.bill.nx + getOfs(_loc1_,IND_OFS_FLIP_RIGHT) - getOfs(_loc1_,IND_OFS_FLIP_TOP_DIAG_X_Y);
               }
               else
               {
                  x = this.bill.nx + getOfs(_loc1_,IND_OFS_FALL_RIGHT_X);
               }
               x -= this.spreadOffset;
            }
            else if(this.bill.lftBtn)
            {
               vx = -xSpeed * _loc2_ - this.diagSprSep;
               if(this.bill.onGround)
               {
                  x = this.bill.nx - getOfs(_loc1_,IND_OFS_PT_DIAG_UP,true);
               }
               else if(this.bill.jumped)
               {
                  x = this.bill.nx - getOfs(_loc1_,IND_OFS_FLIP_RIGHT) + getOfs(_loc1_,IND_OFS_FLIP_TOP_DIAG_X_Y);
               }
               else
               {
                  x = this.bill.nx - getOfs(_loc1_,IND_OFS_FALL_RIGHT_X);
               }
               x += this.spreadOffset;
            }
            vy = -xSpeed * _loc3_ + this.diagSprSep;
            if(this.bill.onGround)
            {
               y = this.bill.ny - getOfs(_loc1_,IND_OFS_PT_DIAG_UP,false);
            }
            else if(this.bill.jumped)
            {
               y = this.bill.ny - getOfs(_loc1_,IND_OFS_FLIP_TOP_Y) + getOfs(_loc1_,IND_OFS_FLIP_TOP_DIAG_X_Y);
            }
            else
            {
               y = this.bill.ny - getOfs(_loc1_,IND_OFS_FALL_DIAG_UP_Y);
            }
            y += this.spreadOffset;
         }
         else if(!this.bill.upBtn && !this.bill.dwnBtn)
         {
            if(this.bill.scaleX > 0)
            {
               vx = xSpeed;
               if(this.bill.onGround)
               {
                  x = this.bill.nx + getOfs(_loc1_,IND_OFS_PT_STAND,true);
               }
               else if(this.bill.jumped)
               {
                  x = this.bill.nx + getOfs(_loc1_,IND_OFS_FLIP_RIGHT);
               }
               else
               {
                  x = this.bill.nx + getOfs(_loc1_,IND_OFS_FALL_RIGHT_X);
               }
               x -= this.spreadOffset;
            }
            else
            {
               vx = -xSpeed;
               if(this.bill.onGround)
               {
                  x = this.bill.nx - getOfs(_loc1_,IND_OFS_PT_STAND,true);
               }
               else if(this.bill.jumped)
               {
                  x = this.bill.nx - getOfs(_loc1_,IND_OFS_FLIP_RIGHT);
               }
               else
               {
                  x = this.bill.nx - getOfs(_loc1_,IND_OFS_FALL_RIGHT_X);
               }
               x += this.spreadOffset;
            }
            vy = this.spreadSep;
            if(this.bill.onGround)
            {
               y = this.bill.ny - getOfs(_loc1_,IND_OFS_PT_STAND,false);
            }
            else if(this.bill.jumped)
            {
               y = this.bill.ny - getOfs(_loc1_,IND_OFS_FLIP_MID_VERT);
            }
            else
            {
               y = this.bill.ny - getOfs(_loc1_,IND_OFS_FALL_MID_VERT);
            }
         }
         else if(this.bill.dwnBtn && (this.bill.rhtBtn || this.bill.lftBtn))
         {
            if(this.bill.rhtBtn)
            {
               vx = xSpeed * _loc3_ - this.diagSprSep;
               if(this.bill.onGround)
               {
                  x = this.bill.nx + getOfs(_loc1_,IND_OFS_PT_DIAG_DWN,true);
               }
               else if(this.bill.jumped)
               {
                  x = this.bill.nx + getOfs(_loc1_,IND_OFS_FLIP_RIGHT) - getOfs(_loc1_,IND_OFS_FLIP_TOP_DIAG_X_Y);
               }
               else
               {
                  x = this.bill.nx + getOfs(_loc1_,IND_OFS_FALL_RIGHT_X);
               }
               x -= this.spreadOffset;
            }
            else if(this.bill.lftBtn)
            {
               vx = -xSpeed * _loc3_ + this.diagSprSep;
               if(this.bill.onGround)
               {
                  x = this.bill.nx - getOfs(_loc1_,IND_OFS_PT_DIAG_DWN,true);
               }
               else if(this.bill.jumped)
               {
                  x = this.bill.nx - getOfs(_loc1_,IND_OFS_FLIP_RIGHT) + getOfs(_loc1_,IND_OFS_FLIP_TOP_DIAG_X_Y);
               }
               else
               {
                  x = this.bill.nx - getOfs(_loc1_,IND_OFS_FALL_RIGHT_X);
               }
               x += this.spreadOffset;
            }
            vy = xSpeed * _loc2_ + this.diagSprSep;
            if(this.bill.onGround)
            {
               y = this.bill.ny - getOfs(_loc1_,IND_OFS_PT_DIAG_DWN,false);
            }
            else if(this.bill.jumped)
            {
               y = this.bill.ny - getOfs(_loc1_,IND_OFS_FLIP_BOT) - getOfs(_loc1_,IND_OFS_FLIP_TOP_DIAG_X_Y);
            }
            else
            {
               y = this.bill.ny - getOfs(_loc1_,IND_OFS_FALL_BOT);
            }
            y -= this.spreadOffset;
         }
         else if(this.bill.dwnBtn && !this.bill.lftBtn && !this.bill.rhtBtn)
         {
            if(this.bill.onGround)
            {
               if(this.bill.scaleX > 0)
               {
                  vx = xSpeed;
                  vy = this.spreadSep;
                  x = this.bill.nx + getOfs(_loc1_,IND_OFS_PT_CROUCH,true) - this.spreadOffset;
                  y = this.bill.ny - getOfs(_loc1_,IND_OFS_PT_CROUCH,false);
               }
               else
               {
                  vx = -xSpeed;
                  vy = this.spreadSep;
                  x = this.bill.nx - getOfs(_loc1_,IND_OFS_PT_CROUCH,true);
                  this.spreadOffset;
                  y = this.bill.ny - getOfs(_loc1_,IND_OFS_PT_CROUCH,false);
               }
            }
            else if(this.bill.jumped)
            {
               vx = this.spreadSep;
               vy = xSpeed;
               x = this.bill.nx;
               y = this.bill.ny - getOfs(_loc1_,IND_OFS_FLIP_BOT) - this.spreadOffset;
            }
            else
            {
               if(this.bill.scaleX > 0)
               {
                  vx = xSpeed;
                  if(this.bill.onGround)
                  {
                     x = this.bill.nx + getOfs(_loc1_,IND_OFS_PT_STAND,true);
                  }
                  else if(this.bill.jumped)
                  {
                     x = this.bill.nx + getOfs(_loc1_,IND_OFS_FLIP_RIGHT);
                  }
                  else
                  {
                     x = this.bill.nx + getOfs(_loc1_,IND_OFS_FALL_RIGHT_X);
                  }
                  x -= this.spreadOffset;
               }
               else
               {
                  vx = -xSpeed;
                  if(this.bill.onGround)
                  {
                     x = this.bill.nx - getOfs(_loc1_,IND_OFS_PT_STAND,true);
                  }
                  else if(this.bill.jumped)
                  {
                     x = this.bill.nx - getOfs(_loc1_,IND_OFS_FLIP_RIGHT);
                  }
                  else
                  {
                     x = this.bill.nx - getOfs(_loc1_,IND_OFS_FALL_RIGHT_X);
                  }
                  x += this.spreadOffset;
               }
               vy = this.spreadSep;
               if(this.bill.onGround)
               {
                  y = this.bill.ny - getOfs(_loc1_,IND_OFS_PT_STAND,false);
               }
               else if(this.bill.jumped)
               {
                  y = this.bill.ny - getOfs(_loc1_,IND_OFS_FLIP_MID_VERT);
               }
               else
               {
                  y = this.bill.ny - getOfs(_loc1_,IND_OFS_FALL_MID_VERT);
               }
            }
         }
         if(this.type == TYPE_LASER && vy != 0)
         {
            if(vx == 0)
            {
               rotation = ROT_INC * 2;
            }
            else if(vx > 0)
            {
               if(vy < 0)
               {
                  rotation = ROT_INC * 3;
               }
               else
               {
                  rotation = ROT_INC;
               }
            }
            else if(vy < 0)
            {
               rotation = ROT_INC;
            }
            else
            {
               rotation = ROT_INC * 3;
            }
         }
      }
      
      override public function confirmedHit(param1:IAttackable, param2:Boolean = true) : void
      {
         super.confirmedHit(param1,param2);
         this.blowUp();
      }
      
      override protected function attackObjPiercing(param1:IAttackable) : void
      {
         super.attackObjPiercing(param1);
         if(param1 is Enemy)
         {
            SND_MNGR.playSound(SoundNames.SFX_BILL_SHOT_HIT);
         }
      }
      
      override public function cleanUp() : void
      {
         super.cleanUp();
         if(this.flareCenter)
         {
            this.flareCenter.destroy();
         }
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
   }
}
