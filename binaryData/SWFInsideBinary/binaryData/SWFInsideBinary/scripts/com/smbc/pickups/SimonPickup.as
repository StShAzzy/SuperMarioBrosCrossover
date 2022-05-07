package com.smbc.pickups
{
   import com.smbc.data.PickupInfo;
   
   public class SimonPickup extends Pickup
   {
      
      private static const SMALL_HEART_FALL_SPEED:int = 100;
      
      private static const TYPE_SIMON_HEART_SMALL:String = PickupInfo.SIMON_HEART_SMALL;
      
      private static const WAVE_RANGE:int = 30;
      
      private static const WAVE_SPEED:int = 5;
       
      
      private var centerX:Number;
      
      private var waveAngle:Number = 0;
      
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
         if(type == PickupInfo.SIMON_HEART_SMALL)
         {
            this.smallHeartFall();
         }
      }
      
      private function smallHeartFall() : void
      {
         this.centerX = x;
         vyMaxPsv = SMALL_HEART_FALL_SPEED;
         vy = vyMaxPsv;
      }
      
      override protected function updateStats() : void
      {
         super.updateStats();
         if(type == TYPE_SIMON_HEART_SMALL && !onGround)
         {
            nx = this.centerX + Math.sin(this.waveAngle) * WAVE_RANGE;
            this.waveAngle += WAVE_SPEED * dt;
         }
      }
   }
}
