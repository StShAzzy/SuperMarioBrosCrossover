package com.smbc.pickups
{
   public class BillPickup extends Pickup
   {
      
      private static const SMALL_STR:String = "Small";
      
      private static const RAPID_BASE:String = "rapid";
       
      
      public function BillPickup(param1:String = null)
      {
         super(param1);
         if(mainFrameLabel.indexOf(RAPID_BASE) != -1)
         {
            mainFrameLabel = RAPID_BASE;
         }
         gotoAndStop(mainFrameLabel + SMALL_STR);
      }
      
      override protected function exitBrickEnd() : void
      {
         super.exitBrickEnd();
         gotoAndStop(mainFrameLabel);
      }
   }
}
