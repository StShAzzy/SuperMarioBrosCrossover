package com.smbc.pickups
{
   public class RyuPickup extends Pickup
   {
       
      
      public function RyuPickup(param1:String = null)
      {
         super(param1);
      }
      
      override public function initiate() : void
      {
         super.initiate();
         if(!inBox)
         {
            defyGrav = false;
            addAllGroundToHitTestables();
            level.checkCollisions(this);
            traceHitItems();
         }
      }
   }
}
