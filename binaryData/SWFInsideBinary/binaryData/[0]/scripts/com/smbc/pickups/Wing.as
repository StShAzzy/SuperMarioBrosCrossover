package com.smbc.pickups
{
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.PickupInfo;
   
   public class Wing extends Pickup
   {
      
      public static const SCORE_VALUE:int = 1000;
       
      
      private const MAIN_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_MODERATE_TMR;
      
      public function Wing()
      {
         super(PickupInfo.WING);
         mainAnimTmr = this.MAIN_ANIM_TMR;
         stopAnim = false;
         playsRegularSound = true;
      }
   }
}
