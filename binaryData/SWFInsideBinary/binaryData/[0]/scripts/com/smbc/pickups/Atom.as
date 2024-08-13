package com.smbc.pickups
{
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.PickupInfo;
   
   public class Atom extends Pickup
   {
      
      public static const SCORE_VALUE:int = 1000;
       
      
      private const MAIN_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_MODERATE_TMR;
      
      public function Atom()
      {
         super(PickupInfo.ATOM);
         mainAnimTmr = this.MAIN_ANIM_TMR;
         stopAnim = false;
         playsRegularSound = true;
      }
   }
}
