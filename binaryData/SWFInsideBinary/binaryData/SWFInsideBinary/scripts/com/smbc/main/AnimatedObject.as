package com.smbc.main
{
   import com.smbc.characters.Character;
   import com.smbc.data.ARect;
   import com.smbc.data.Cheats;
   import com.smbc.data.HRect;
   import com.smbc.data.SecondaryHRect;
   import com.smbc.enemies.Enemy;
   import com.smbc.ground.Ground;
   import com.smbc.ground.Platform;
   import com.smbc.ground.SpringObj;
   import com.smbc.interfaces.IAttackable;
   import com.smbc.pickups.FlagPole;
   import com.smbc.pickups.Pickup;
   import com.smbc.projectiles.Projectile;
   import com.smbc.projectiles.SamusBomb;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class AnimatedObject extends LevObj
   {
      
      private static const COORDINATE_PRECISION:int = 2;
      
      private static const VY_BOUNCY_PITS_DEF:int = -1000;
       
      
      protected var bouncyPitsVy:Number = -1000;
      
      public var onGround:Boolean = true;
      
      public var lastOnGround:Boolean;
      
      public var onPlatform:Platform;
      
      public var onSpring:Boolean;
      
      public var lastOnSpring:Boolean;
      
      public var gravity:Number = 500;
      
      public var ahTop:Number;
      
      public var ahBot:Number;
      
      public var ahLft:Number;
      
      public var ahRht:Number;
      
      public var ahMidX:Number;
      
      public var ahMidY:Number;
      
      public var ahWidth:Number;
      
      public var ahHeight:Number;
      
      public var hitCeiling:Boolean;
      
      public var behindGround:Boolean;
      
      public var afterGround:Boolean;
      
      public var bottomAo:Boolean;
      
      public var vyMax:Number;
      
      public var vyMaxPsv:Number;
      
      public var vyMaxNgv:Number;
      
      public var vyMaxNgvDef:Number;
      
      public var vxMax:Number;
      
      public var vxMaxDef:Number;
      
      public var vxMin:int;
      
      public var vyMin:int;
      
      public var ax:Number = 400;
      
      public var fx:Number = 0.8;
      
      public var fy:Number = 0.8;
      
      public var sx:Number;
      
      public var sy:Number;
      
      public var xSpeed:Number;
      
      public var ySpeed:Number;
      
      public var speed:Number;
      
      public var defyGrav:Boolean;
      
      public var projLoc:Point;
      
      public var wallOnRight:Boolean;
      
      public var wallOnLeft:Boolean;
      
      public var jumpPwr:uint = 400;
      
      public var hRect:HRect;
      
      public var ahRect:ARect;
      
      public var hRect2:SecondaryHRect;
      
      public var lastStuckInWall:Boolean;
      
      public var checkAtkRect:Boolean;
      
      public var stuckInEnemy:Boolean;
      
      public var lvx:Number;
      
      public var lvy:Number;
      
      public var sortInt:int = 0;
      
      public var nyPlatform:Number;
      
      public var dxPlatform:Number;
      
      public var sprVX:Number;
      
      public var sprNX:Number;
      
      public var onFallingPlatform:Boolean;
      
      public var changeColorThisCycle:Boolean;
      
      public var platformAttachedTo:Platform;
      
      public var skinMask2:Sprite;
      
      public function AnimatedObject()
      {
         super();
      }
      
      override public function initiate() : void
      {
         super.initiate();
         this.getRects();
         this.setStats();
         this.setSortInt();
         drawObj();
      }
      
      override protected function addedToStageHandler(param1:Event) : void
      {
         level.AO_STG_DCT.addItem(this);
         super.addedToStageHandler(param1);
      }
      
      override protected function removedLsr(param1:Event) : void
      {
         level.AO_STG_DCT.removeItem(this);
         super.removedLsr(param1);
      }
      
      public function setStats() : void
      {
         this.lvx = 0;
         this.lvy = 0;
         if(this.hRect)
         {
            this.hRect.getHitPoints(lx,ly,scaleX);
            lhTop = this.hRect.hTop;
            lhBot = this.hRect.hBot;
            lhLft = this.hRect.hLft;
            lhRht = this.hRect.hRht;
            lhMidX = this.hRect.hMidX;
            lhMidY = this.hRect.hMidY;
            lhWidth = this.hRect.hWidth;
            lhHeight = this.hRect.hHeight;
            hTop = lhTop;
            hBot = lhBot;
            hLft = lhLft;
            hRht = lhRht;
            hMidX = lhMidX;
            hMidY = lhMidY;
            hWidth = lhWidth;
            hHeight = lhHeight;
         }
         nx = x;
         ny = y;
      }
      
      private function getRects() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:DisplayObject = null;
         if(numChildren > 0)
         {
            _loc1_ = 0;
            while(_loc1_ < numChildren)
            {
               _loc2_ = DisplayObject(getChildAt(_loc1_));
               if(_loc2_ is ARect)
               {
                  this.ahRect = ARect(_loc2_);
               }
               else if(_loc2_ is SecondaryHRect)
               {
                  this.hRect2 = SecondaryHRect(_loc2_);
               }
               else if(_loc2_ is HRect && !(_loc2_ is ARect) && !(_loc2_ is SecondaryHRect))
               {
                  this.hRect = HRect(_loc2_);
               }
               if(this is FlagPole)
               {
               }
               _loc1_++;
            }
         }
      }
      
      private function setSortInt() : void
      {
         if(this is Character)
         {
            this.sortInt = 9;
         }
      }
      
      override public function updateObj() : void
      {
         super.updateObj();
         this.updateStats();
         updateStatusEffects();
         if(!this.defyGrav)
         {
            this.gravityPull();
         }
         this.updateLoc();
         this.setHitPoints();
         this.lastStuckInWall = stuckInWall;
         stuckInWall = false;
         this.hitCeiling = false;
         this.wallOnLeft = false;
         this.wallOnRight = false;
         this.onPlatform = null;
         this.onFallingPlatform = false;
         this.lastOnSpring = this.onSpring;
         this.onSpring = false;
      }
      
      protected function updateStats() : void
      {
         this.lvx = vx;
         this.lvy = vy;
         if(this.onFallingPlatform)
         {
            ny += 8;
         }
         if(this.hRect)
         {
            lhTop = this.hRect.hTop;
            lhBot = this.hRect.hBot;
            lhLft = this.hRect.hLft;
            lhRht = this.hRect.hRht;
            lhMidX = this.hRect.hMidX;
            lhMidY = this.hRect.hMidY;
            lhWidth = this.hRect.hWidth;
            lhHeight = this.hRect.hHeight;
         }
      }
      
      override protected function prepareSkins() : void
      {
         super.prepareSkins();
      }
      
      protected function changeLastStatsToCurrent() : void
      {
         this.lvx = vx;
         this.lvy = vy;
         if(this.hRect)
         {
            lhTop = this.hRect.hTop;
            lhBot = this.hRect.hBot;
            lhLft = this.hRect.hLft;
            lhRht = this.hRect.hRht;
            lhMidX = this.hRect.hMidX;
            lhMidY = this.hRect.hMidY;
            lhWidth = this.hRect.hWidth;
            lhHeight = this.hRect.hHeight;
         }
      }
      
      protected function copyLastStatsFromObject(param1:AnimatedObject) : void
      {
         this.lvx = param1.lvx;
         this.lvy = param1.lvy;
         if(this.hRect && param1.hRect)
         {
            lhTop = param1.hRect.hTop;
            lhBot = param1.hRect.hBot;
            lhLft = param1.hRect.hLft;
            lhRht = param1.hRect.hRht;
            lhMidX = param1.hRect.hMidX;
            lhMidY = param1.hRect.hMidY;
            lhWidth = param1.hRect.hWidth;
            lhHeight = param1.hRect.hHeight;
         }
      }
      
      public function updateLoc() : void
      {
         if(this.vxMax)
         {
            if(vx > this.vxMax)
            {
               vx = this.vxMax;
            }
            if(vx < -this.vxMax)
            {
               vx = -this.vxMax;
            }
         }
         if(this.vxMin && vx < this.vxMin && vx > -this.vxMin)
         {
            vx = 0;
         }
         if(this.vyMin && vy < this.vyMin && vy > -this.vyMin)
         {
            vy = 0;
         }
         if(this.vyMaxPsv && vy > this.vyMaxPsv)
         {
            vy = this.vyMaxPsv;
         }
         if(this.vyMaxNgv && vy < -this.vyMaxNgv)
         {
            vy = -this.vyMaxNgv;
         }
         if(this.vyMax)
         {
            if(vy > this.vyMax)
            {
               vy = this.vyMax;
            }
            else if(vy < -this.vyMax)
            {
               vy = -this.vyMax;
            }
         }
         nx += vx * dt;
         ny += vy * dt;
      }
      
      public function gravityPull() : void
      {
         if(!this.onGround)
         {
            vy += this.gravity * dt;
         }
         this.lastOnGround = this.onGround;
         this.onGround = false;
      }
      
      protected function getPreciseCoordinates(param1:Number) : Number
      {
         var _loc2_:String = param1.toString();
         var _loc3_:int = _loc2_.indexOf(".");
         if(_loc3_ < 0)
         {
            return param1;
         }
         _loc2_ = _loc2_.substr();
         if(_loc2_.length <= COORDINATE_PRECISION)
         {
            return param1;
         }
         return correctFloatingPointError(param1,_loc3_ + COORDINATE_PRECISION);
      }
      
      public function setHitPoints() : void
      {
         nx = this.getPreciseCoordinates(nx);
         ny = this.getPreciseCoordinates(ny);
         if(this.hRect)
         {
            this.hRect.getHitPoints(nx,ny,scaleX);
            hTop = this.hRect.hTop;
            hBot = this.hRect.hBot;
            hLft = this.hRect.hLft;
            hRht = this.hRect.hRht;
            hMidX = this.hRect.hMidX;
            hMidY = this.hRect.hMidY;
            hWidth = this.hRect.hWidth;
            hHeight = this.hRect.hHeight;
         }
         else if(this is Projectile)
         {
            hMidX = nx;
            hMidY = ny;
         }
         else
         {
            hTop = ny - this.height;
            hBot = ny;
            hLft = nx - width / 2;
            hRht = nx + width / 2;
         }
         if(this.hRect2)
         {
            this.hRect2.getHitPoints(nx,ny,scaleX);
         }
         if(this.checkAtkRect)
         {
            this.ahRect.getHitPoints(nx,ny,scaleX);
            this.ahTop = this.ahRect.hTop;
            this.ahBot = this.ahRect.hBot;
            this.ahLft = this.ahRect.hLft;
            this.ahRht = this.ahRect.hRht;
            this.ahMidX = this.ahRect.hMidX;
            this.ahMidY = this.ahRect.hMidY;
            this.ahWidth = this.ahRect.hWidth;
            this.ahHeight = this.ahRect.hHeight;
            if(this is SamusBomb)
            {
               hTop = this.ahRect.hTop;
               hBot = this.ahRect.hBot;
               hLft = this.ahRect.hLft;
               hRht = this.ahRect.hRht;
               hMidX = this.ahRect.hMidX;
               hMidY = this.ahRect.hMidY;
               hWidth = this.ahRect.hWidth;
               hHeight = this.ahRect.hHeight;
            }
         }
      }
      
      override public function hit(param1:LevObj, param2:String) : void
      {
         super.hit(param1,param2);
         if(param1 is Ground)
         {
            this.hitGround(param1 as Ground,param2);
         }
         else if(param1 is Projectile)
         {
            this.hitProj(param1 as Projectile);
         }
         else if(param1 is Enemy)
         {
            this.hitEnemy(param1 as Enemy,param2);
         }
         else if(param1 is Pickup)
         {
            this.hitPickup(param1 as Pickup);
         }
         else if(param2 == "attack")
         {
            this.hitAttack();
         }
         else if(param1 is Character)
         {
            this.hitCharacter(param1 as Character,param2);
         }
      }
      
      public function hitAttack() : void
      {
      }
      
      public function hitCharacter(param1:Character, param2:String) : void
      {
      }
      
      public function hitPickup(param1:Pickup, param2:Boolean = true) : void
      {
      }
      
      public function hitProj(param1:Projectile) : void
      {
      }
      
      public function hitGround(param1:Ground, param2:String) : void
      {
         if(!(this is Projectile) || (this as Projectile).needsAccurateGroundHits)
         {
            switch(param2)
            {
               case "top":
                  this.groundAbove(param1);
                  break;
               case "bottom":
                  if(param1.visible)
                  {
                     this.groundBelow(param1);
                  }
                  break;
               case "left":
                  if(param1.visible)
                  {
                     this.groundOnSide(param1,param2);
                  }
                  break;
               case "right":
                  if(param1.visible)
                  {
                     this.groundOnSide(param1,param2);
                  }
                  break;
               case "neutral":
            }
         }
      }
      
      public function hitEnemy(param1:Enemy, param2:String) : void
      {
      }
      
      public function gBounceHit(param1:Ground) : void
      {
      }
      
      public function groundBelow(param1:Ground) : void
      {
         if(!(param1 is SpringObj))
         {
            this.onGround = true;
         }
         vy = 0;
         if(param1 is Platform)
         {
            this.onPlatform = param1 as Platform;
            if(this.onPlatform.platType != "pully")
            {
               if(this.onPlatform.useVy)
               {
                  vy = this.onPlatform.vy;
               }
               else if(this.onPlatform.vertical)
               {
                  this.nyPlatform = this.onPlatform.ny;
               }
               else if(!this.onPlatform.vertical)
               {
                  this.dxPlatform = this.onPlatform.dx;
               }
            }
            if(this.onPlatform.platType == "falling" || this.onPlatform.platType == "constantFall")
            {
               this.onFallingPlatform = true;
            }
            if(this is Character)
            {
               this.onPlatform.setCharOnPlat();
            }
         }
         else if(param1 is SpringObj)
         {
            if(!this.lastOnSpring)
            {
               this.sprVX = vx;
               this.sprNX = nx;
            }
            vx = 0;
            nx = this.sprNX;
            SpringObj(param1).sprBounce();
            SpringObj(param1).SPRING_OBJS_DCT.addItem(this);
            this.onSpring = true;
         }
         ny = param1.hTop;
         this.setHitPoints();
         hBot = param1.hTop;
      }
      
      public function groundAbove(param1:Ground) : void
      {
         this.setHitPoints();
      }
      
      public function groundOnSide(param1:Ground, param2:String) : void
      {
         this.setHitPoints();
      }
      
      protected function checkState() : void
      {
      }
      
      override public function rearm() : void
      {
         super.rearm();
         this.setHitPoints();
      }
      
      override public function checkStgPos() : void
      {
         if(Cheats.bouncyPits && ny > GLOB_STG_BOT && vy >= 0 && cState != ST_DIE)
         {
            this.activateBouncyPit();
         }
         if(nx > level.locStgLft - TILE_SIZE * 2 && nx < level.locStgRht + TILE_SIZE * 2)
         {
            if(dosTop || dosBot)
            {
               this.checkDosSides();
            }
            if(parent != level)
            {
               level.addChild(this);
            }
         }
         else if(parent == level && !updateOffScreen)
         {
            level.removeChild(this);
         }
         if(destroyOffScreen || dosTop || dosBot || dosLft || dosRht)
         {
            this.checkDosSides();
         }
      }
      
      protected function activateBouncyPit() : void
      {
         ny = GLOB_STG_BOT;
         y = ny;
         this.setHitPoints();
         vy = this.bouncyPitsVy;
      }
      
      override public function cleanUp() : void
      {
         super.cleanUp();
         if(level)
         {
            level.AO_DCT.removeItem(this);
            level.AO_STG_DCT.removeItem(this);
         }
      }
      
      override protected function checkDosSides() : void
      {
         if(dosBot)
         {
            if(scaleY > 0 && ny - height > locStgBot)
            {
               destroy();
            }
            else if(scaleY < 0 && ny > locStgBot)
            {
               destroy();
            }
         }
         if(dosTop)
         {
            if(scaleY > 0 && ny < locStgTop)
            {
               destroy();
            }
            else if(scaleY < 0 && ny + height < locStgTop)
            {
               destroy();
            }
         }
         if(dosLft && nx + width * 0.5 < level.locStgLft)
         {
            destroy();
         }
         if(dosRht && nx - width * 0.5 > level.locStgRht)
         {
            destroy();
         }
      }
      
      protected function attackObjNonPiercing(param1:IAttackable) : void
      {
      }
      
      protected function attackObjPiercing(param1:IAttackable) : void
      {
      }
      
      protected function hitIsAllowed(param1:IAttackable) : Boolean
      {
         return false;
      }
   }
}
