package com.smbc.pickups
{
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.PickupInfo;
   
   public class HudsonBee extends Pickup
   {
      
      public static const SCORE_VALUE:int = 8000;
       
      
      private const MAIN_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_MODERATE_TMR;
      
      public function HudsonBee()
      {
         super(PickupInfo.HUDSON_BEE);
         mainAnimTmr = this.MAIN_ANIM_TMR;
         stopAnim = false;
         playsRegularSound = true;
      }
   }
}
