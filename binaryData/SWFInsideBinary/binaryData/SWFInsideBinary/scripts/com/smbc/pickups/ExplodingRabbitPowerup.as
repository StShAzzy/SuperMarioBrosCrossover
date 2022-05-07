package com.smbc.pickups
{
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.PickupInfo;
   
   public class ExplodingRabbitPowerup extends Pickup
   {
       
      
      private const MAIN_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_MODERATE_TMR;
      
      public function ExplodingRabbitPowerup()
      {
         super(PickupInfo.EXPLODING_RABBIT);
         mainAnimTmr = this.MAIN_ANIM_TMR;
         stopAnim = false;
      }
   }
}
