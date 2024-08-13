package com.smbc.projectiles
{
   import com.customClasses.*;
   import com.explodingRabbit.cross.gameplay.statusEffects.StatFxStop;
   import com.explodingRabbit.cross.gameplay.statusEffects.StatusProperty;
   import com.explodingRabbit.utils.CustomDictionary;
   import com.smbc.characters.*;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.PickupInfo;
   import com.smbc.data.SoundNames;
   import com.smbc.enemies.*;
   import com.smbc.interfaces.IAttackable;
   import com.smbc.pickups.Pickup;
   import com.smbc.sound.SoundContainer;
   
   public class LinkBoomerang extends Projectile
   {
       
      
      private var boomType:String;
      
      private var totDist:Number;
      
      private var fDist:Number;
      
      public var followPlayer:Boolean;
      
      private var applyFric:Boolean;
      
      private var startX:Number;
      
      private var startY:Number;
      
      private var yDif:Number;
      
      private var axy:Number;
      
      private var fxy:Number;
      
      private const MIN_FRIC_DIST:int = 30;
      
      private const MIN_MOVE_DIST:int = 80;
      
      private const ACCELERATION:int = 2500;
      
      private var accelerate:Boolean;
      
      private const CHANGE_DIR_SPEED:int = 100;
      
      private var link:Link;
      
      private const GRABBED_ITEMS_DCT:CustomDictionary = new CustomDictionary(true);
      
      private const SFX_LINK_BOOMERANG:String = SoundNames.SFX_LINK_BOOMERANG;
      
      public function LinkBoomerang(param1:Link)
      {
         this.link = param1;
         super(param1,SOURCE_TYPE_PLAYER);
         addProperty(new StatusProperty(PR_STOP_AGG,0,new StatFxStop(null,3000,false)));
         addProperty(new StatusProperty(PR_PIERCE_AGG,10));
         param1.boomerang = this;
         destroyOffScreen = true;
         speed = 500;
         this.fxy = 0.000001;
         this.axy = 500;
         mainAnimTmr = AnimationTimers.ANIM_FAST_TMR;
         this.fDist = 100;
         addProperty(new StatusProperty(PR_PASSTHROUGH_ALWAYS));
         defyGrav = true;
         this.determineBoomType();
         this.setDir();
         SND_MNGR.playSound(this.SFX_LINK_BOOMERANG);
         hitTestTypesDct.addItem(HT_PROJECTILE_ENEMY);
         hitTestTypesDct.addItem(HT_CHARACTER);
         removeAllHitTestableItems();
         addHitTestableItem(HT_PICKUP);
         addHitTestableItem(HT_ENEMY);
      }
      
      private function determineBoomType() : void
      {
         if(!this.link.upgradeIsActive(PickupInfo.LINK_MAGIC_BOOMERANG))
         {
            this.boomType = "yellow";
            gotoAndStop("yellowStart");
            this.fDist = 150;
            speed = 300;
            this.axy = 25;
         }
         else
         {
            this.boomType = "blue";
            gotoAndStop("blueStart");
            this.fDist = 270;
            speed = 400;
            this.axy = 60;
         }
         vxMax = speed;
         vyMax = speed;
      }
      
      override protected function setDir() : void
      {
         var _loc1_:Number = NaN;
         _loc1_ = 0.75;
         if(this.link.upBtn && !this.link.rhtBtn && !this.link.lftBtn)
         {
            vy = -speed;
            x = this.link.nx;
            y = this.link.ny - this.link.hHeight;
         }
         else if(this.link.upBtn && this.link.rhtBtn)
         {
            vy = -speed * _loc1_;
            vx = speed * _loc1_;
            x = this.link.nx + this.link.hWidth / 2;
            y = this.link.ny - this.link.hHeight;
         }
         else if(this.link.upBtn && this.link.lftBtn)
         {
            vy = -speed * _loc1_;
            vx = -speed * _loc1_;
            x = this.link.nx - this.link.hWidth / 2;
            y = this.link.ny - this.link.hHeight;
         }
         else if(this.link.scaleX > 0 && !this.link.upBtn && !this.link.dwnBtn)
         {
            vx = speed;
            x = this.link.nx + this.link.hWidth / 2;
            y = this.link.ny - this.link.hHeight / 2;
         }
         else if(this.link.scaleX < 0 && !this.link.upBtn && !this.link.dwnBtn)
         {
            vx = -speed;
            x = this.link.nx - this.link.hWidth / 2;
            y = this.link.ny - this.link.hHeight / 2;
         }
         else if(this.link.dwnBtn && this.link.rhtBtn)
         {
            vx = speed * _loc1_;
            vy = speed * _loc1_;
            x = this.link.nx + this.link.hWidth / 2;
            y = this.link.ny;
         }
         else if(this.link.dwnBtn && this.link.lftBtn)
         {
            vx = -speed * _loc1_;
            vy = speed * _loc1_;
            x = this.link.nx - this.link.hWidth / 2;
            y = this.link.ny;
         }
         else if(this.link.dwnBtn && !this.link.lftBtn && !this.link.rhtBtn)
         {
            vy = speed;
            x = this.link.nx;
            y = this.link.ny;
         }
         this.startX = x;
         this.startY = y;
      }
      
      override protected function updateStats() : void
      {
         if(this.link.cState == "pipe")
         {
            stopHit = true;
            stopAnim = true;
            stopUpdate = true;
            return;
         }
         super.updateStats();
         this.checkDist();
      }
      
      override public function drawObj() : void
      {
         super.drawObj();
         this.movePickups();
      }
      
      private function checkDist() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(level.getDistance(this.startX,this.startY,nx,ny) > this.fDist && !this.applyFric && !this.followPlayer && this.boomType == "yellow")
         {
            this.applyFric = true;
         }
         if(this.applyFric)
         {
            vx *= Math.pow(this.fxy,dt);
            vy *= Math.pow(this.fxy,dt);
            if(vx > 0 && vx < this.CHANGE_DIR_SPEED)
            {
               this.changeDir();
            }
            else if(vx < 0 && vx > -this.CHANGE_DIR_SPEED)
            {
               this.changeDir();
            }
            else if(vy > 0 && vy < this.CHANGE_DIR_SPEED)
            {
               this.changeDir();
            }
            else if(vy < 0 && vy > -this.CHANGE_DIR_SPEED)
            {
               this.changeDir();
            }
         }
         else if(this.accelerate)
         {
            if(vx > 0 && vx < vxMax)
            {
               this.speedUp();
            }
            else if(vx < 0 && vx > -vxMax)
            {
               this.speedUp();
            }
            else if(vy > 0 && vy < vyMax)
            {
               this.speedUp();
            }
            else if(vy < 0 && vy > -vyMax)
            {
               this.speedUp();
            }
         }
         if(this.followPlayer)
         {
            _loc1_ = this.link.hMidX;
            _loc2_ = this.link.hMidY;
            _loc3_ = false;
            _loc4_ = false;
            _loc5_ = nx - _loc1_;
            if(_loc5_ < 0)
            {
               _loc5_ = -_loc5_;
            }
            _loc6_ = ny - _loc2_;
            if(_loc6_ < 0)
            {
               _loc6_ = -_loc6_;
            }
            if(nx > _loc1_)
            {
               vx -= _loc5_ * this.axy * dt;
            }
            else if(nx < _loc1_)
            {
               vx += _loc5_ * this.axy * dt;
            }
            if(ny > _loc2_)
            {
               vy -= _loc6_ * this.axy * dt;
            }
            else if(ny < _loc2_)
            {
               vy += _loc6_ * this.axy * dt;
            }
            if(_loc5_ <= this.MIN_FRIC_DIST)
            {
               vx *= Math.pow(this.fxy,dt);
               _loc3_ = true;
            }
            if(_loc6_ <= this.MIN_FRIC_DIST)
            {
               vy *= Math.pow(this.fxy,dt);
               _loc4_ = true;
            }
            if(level.getDistance(nx,ny,this.link.hMidX,this.link.hMidY) < this.MIN_MOVE_DIST)
            {
               if(nx > _loc1_)
               {
                  vx -= this.ACCELERATION * dt;
               }
               else if(nx < _loc1_)
               {
                  vx += this.ACCELERATION * dt;
               }
               if(ny > _loc2_)
               {
                  vy -= this.ACCELERATION * dt;
               }
               else if(ny < _loc2_)
               {
                  vy += this.ACCELERATION * dt;
               }
            }
         }
      }
      
      override public function confirmedHit(param1:IAttackable, param2:Boolean = true) : void
      {
      }
      
      private function movePickups() : void
      {
         var _loc1_:Pickup = null;
         var _loc2_:Number = NaN;
         for each(_loc1_ in this.GRABBED_ITEMS_DCT)
         {
            _loc2_ = _loc1_.height * 0.5;
            _loc1_.nx = nx;
            _loc1_.ny = ny + _loc2_;
            _loc1_.x = nx;
            _loc1_.y = ny + _loc2_;
         }
      }
      
      private function speedUp() : void
      {
         vx /= Math.pow(this.fxy,dt);
         vy /= Math.pow(this.fxy,dt);
         this.accelerate = false;
      }
      
      public function changeDir() : void
      {
         if(!this.followPlayer)
         {
            this.followPlayer = true;
            addHitTestableItem(HT_CHARACTER);
            this.applyFric = false;
            vx = -vx;
            vy = -vy;
         }
      }
      
      override public function checkLoc() : void
      {
         if(globY - hHeight * 0.5 <= GLOB_STG_TOP)
         {
            this.changeDir();
         }
         else if(globY + hHeight * 0.5 >= GLOB_STG_BOT)
         {
            this.changeDir();
         }
         else if(globX + hWidth * 0.5 >= GLOB_STG_RHT)
         {
            this.changeDir();
         }
         else if(globX - hWidth * 0.5 <= GLOB_STG_LFT)
         {
            this.changeDir();
         }
      }
      
      override public function hitEnemy(param1:Enemy, param2:String) : void
      {
         if(param1 is Bowser)
         {
            HIT_OBJS_DCT.addItem(param1);
         }
         this.changeDir();
         SND_MNGR.playSound(SoundNames.SFX_LINK_HIT_ENEMY);
         super.hitEnemy(param1,param2);
      }
      
      override public function hitCharacter(param1:Character, param2:String) : void
      {
         var _loc3_:Pickup = null;
         if(this.followPlayer)
         {
            destroy();
            for each(_loc3_ in this.GRABBED_ITEMS_DCT)
            {
               this.link.hitPickup(_loc3_);
               this.GRABBED_ITEMS_DCT.removeItem(_loc3_);
            }
         }
         super.hitCharacter(param1,param2);
      }
      
      override public function checkFrame() : void
      {
         if(this.boomType == "yellow" && currentFrame >= getLabNum("yellowEnd") + 1)
         {
            gotoAndStop("yellowStart");
         }
         else if(this.boomType == "blue" && currentFrame >= getLabNum("blueEnd") + 1)
         {
            gotoAndStop("blueStart");
         }
      }
      
      override public function hitPickup(param1:Pickup, param2:Boolean = true) : void
      {
         if(param1.boomerangGrabbable && !param1.destroyed && !this.GRABBED_ITEMS_DCT[param1])
         {
            this.GRABBED_ITEMS_DCT.addItem(param1);
            param1.stopHit = true;
         }
      }
      
      override public function cleanUp() : void
      {
         var _loc2_:Pickup = null;
         super.cleanUp();
         this.link.boomerang = null;
         var _loc1_:SoundContainer = SND_MNGR.findSound(this.SFX_LINK_BOOMERANG);
         if(_loc1_)
         {
            _loc1_.pauseSound();
            SND_MNGR.removeSnd(_loc1_);
         }
         for each(_loc2_ in this.GRABBED_ITEMS_DCT)
         {
            _loc2_.destroy();
         }
      }
   }
}
