package com.smbc.pickups
{
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.PickupInfo;
   import com.smbc.ground.Ground;
   
   public class Star extends Pickup
   {
       
      
      private const MAIN_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_FAST_TMR;
      
      public var color:String;
      
      public function Star()
      {
         super(PickupInfo.STAR);
         playsRegularSound = true;
         xSpeed = DEFAULT_X_SPEED;
         ySpeed = 500;
         mainAnimTmr = this.MAIN_ANIM_TMR;
         stopAnim = false;
         addAllGroundToHitTestables();
      }
      
      override protected function updateStats() : void
      {
         super.updateStats();
         touchedWall = false;
         hitCeiling = false;
         if(onGround && !inBox)
         {
            vy = -ySpeed;
         }
      }
      
      override protected function exitBrickEnd() : void
      {
         super.exitBrickEnd();
         vx = xSpeed;
         defyGrav = false;
      }
      
      override public function groundOnSide(param1:Ground, param2:String) : void
      {
         if(!touchedWall)
         {
            if(param2 == "left")
            {
               if(vx < 0)
               {
                  vx = -vx;
               }
               nx = param1.hRht + hWidth / 2;
               wallOnLeft = true;
            }
            else if(param2 == "right")
            {
               if(vx > 0)
               {
                  vx = -vx;
               }
               wallOnRight = true;
               nx = param1.hLft - hWidth / 2;
            }
            super.groundOnSide(param1,param2);
         }
         touchedWall = true;
      }
      
      override public function groundAbove(param1:Ground) : void
      {
         hitCeiling = true;
         ny = param1.hBot + hHeight;
         if(!onGround)
         {
            vy = 0;
         }
         super.groundAbove(param1);
      }
      
      override public function checkFrame() : void
      {
         if(currentFrame >= totalFrames)
         {
            gotoAndStop(1);
         }
      }
   }
}
