package com.smbc.graphics
{
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.AnimationTimers;
   import com.smbc.projectiles.BowserFireBall;
   import com.smbc.projectiles.Projectile;
   
   public class BowserFireBallSpark extends Projectile
   {
      
      private static const MAIN_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_SLOWEST_TMR;
      
      private static const FL_END:String = "end";
      
      private static const FL_START:String = "start";
      
      private static const FALL_SPEED:int = 60;
       
      
      public function BowserFireBallSpark(param1:BowserFireBall)
      {
         super(param1,SOURCE_TYPE_NEUTRAL);
         defyGrav = true;
         stopAnim = false;
         mainAnimTmr = MAIN_ANIM_TMR;
         gotoAndStop(FL_START);
         x = param1.x + param1.width / 2;
         y = param1.y;
      }
      
      override public function updateObj() : void
      {
         super.updateObj();
         ny += FALL_SPEED * dt;
      }
      
      override public function checkFrame() : void
      {
         if(currentLabel == FL_END)
         {
            destroy();
         }
      }
   }
}
