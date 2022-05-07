package com.explodingRabbit.cross.gameplay.statusEffects
{
   import com.smbc.enemies.Enemy;
   import com.smbc.ground.Ground;
   import com.smbc.main.AnimatedObject;
   import com.smbc.main.LevObj;
   
   public class StatFxKnockBack extends StatusEffect
   {
      
      public static const DIR_UP:String = "up";
      
      public static const DIR_DOWN:String = "down";
      
      public static const DIR_LEFT:String = "left";
      
      public static const DIR_RIGHT:String = "right";
      
      private static const SPEED:int = 500;
      
      private static const DISTANCE:int = 64;
       
      
      private var vxStart:Number;
      
      private var vxNew:Number;
      
      private var vyStart:Number;
      
      private var vyNew:Number;
      
      private var attacker:LevObj;
      
      private var boostEndX:Number;
      
      private var boostEndY:Number;
      
      private var boostDirX:int;
      
      private var boostDirY:int;
      
      private var dir:String;
      
      public function StatFxKnockBack(param1:LevObj, param2:LevObj)
      {
         super(TYPE_KNOCK_BACK,param1);
         this.attacker = param2;
      }
      
      override public function clone(param1:LevObj, param2:LevObj = null) : StatusEffect
      {
         var _loc3_:StatFxKnockBack = new StatFxKnockBack(param1,param2);
         _loc3_.setDir(this.dir);
         return _loc3_;
      }
      
      override public function apply() : void
      {
         super.apply();
         _target.addReasonOvRd(LevObj.NAME_STOP_UPDATE,true,TYPE_KNOCK_BACK);
         if(this.dir)
         {
            if(this.dir == DIR_UP)
            {
               this.boostDirY = -1;
            }
            else if(this.dir == DIR_DOWN)
            {
               this.boostDirY = 1;
            }
            else if(this.dir == DIR_LEFT)
            {
               this.boostDirX = -1;
            }
            else if(this.dir == DIR_RIGHT)
            {
               this.boostDirX = 1;
            }
         }
         else if(this.attacker.nx > _target.nx)
         {
            this.boostDirX = -1;
         }
         else
         {
            this.boostDirX = 1;
         }
         if(this.boostDirX != 0)
         {
            this.vxStart = _target.vx;
            this.vyStart = _target.vy;
            _target.vy = 0;
            this.vxNew = SPEED * this.boostDirX;
            _target.vx = this.vxNew;
            this.boostEndX = _target.nx + DISTANCE * this.boostDirX;
         }
         else
         {
            this.vyStart = _target.vy;
            this.vxStart = _target.vx;
            _target.vx = 0;
            this.vyNew = SPEED * this.boostDirY;
            _target.vy = this.vyNew;
            this.boostEndY = _target.ny + DISTANCE * this.boostDirY;
         }
      }
      
      public function setDir(param1:String) : void
      {
         this.dir = param1;
      }
      
      public function setDirFromSpeed(param1:Number, param2:Number) : void
      {
         if(param1 > 0)
         {
            this.setDir(DIR_RIGHT);
         }
         else if(param1 < 0)
         {
            this.setDir(DIR_LEFT);
         }
         else if(param2 > 0)
         {
            this.setDir(DIR_DOWN);
         }
         else if(param2 < 0)
         {
            this.setDir(DIR_UP);
         }
      }
      
      public function hitWall(param1:Ground, param2:String) : void
      {
      }
      
      public function hitEnemy(param1:Enemy, param2:String) : void
      {
      }
      
      override public function targetUpdate() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         super.targetUpdate();
         if(this.boostDirX != 0)
         {
            _loc1_ = _target.nx;
            if(this.boostDirX > 0 && _loc1_ > this.boostEndX || this.boostDirX < 0 && _loc1_ < this.boostEndX)
            {
               _target.nx = this.boostEndX;
               this.destroy();
            }
            else if(_target.vx != this.vxNew)
            {
               this.destroy();
            }
         }
         else if(this.boostDirY != 0)
         {
            _loc2_ = _target.ny;
            if(this.boostDirY > 0 && _loc2_ > this.boostEndY || this.boostDirY < 0 && _loc2_ < this.boostEndY)
            {
               _target.ny = this.boostEndY;
               this.destroy();
            }
            else if(_target.vy != this.vyNew)
            {
               this.destroy();
            }
         }
         AnimatedObject(_target).updateLoc();
      }
      
      override public function destroy() : void
      {
         super.destroy();
         _target.removeReasonOvRd(LevObj.NAME_STOP_UPDATE,true,TYPE_KNOCK_BACK);
         _target.vx = this.vxStart;
         _target.vy = this.vyStart;
         if(this.dir == DIR_UP)
         {
            _target.vy = 0;
         }
      }
   }
}
