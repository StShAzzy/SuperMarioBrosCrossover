package com.smbc.pickups
{
   import com.smbc.data.PickupInfo;
   
   public class SimonPickup extends Pickup
   {
      
      private static const SMALL_HEART_FALL_SPEED:int = 100;
      
      public static const TYPE_SIMON_HEART_SMALL:String = PickupInfo.SIMON_HEART_SMALL;
      
      private static const WAVE_RANGE:int = 30;
      
      private static const WAVE_SPEED:int = 5;
       
      
      private var centerX:Number;
      
      private var waveAngle:Number = 0;
      
      private var heartStopWaving:Boolean;
      
      public function SimonPickup(param1:String)
      {
         super(param1);
      }
      
      override public function initiate() : void
      {
         super.initiate();
         if(!inBox)
         {
            defyGrav = false;
         }
         addAllGroundToHitTestables();
      }
   }
}
