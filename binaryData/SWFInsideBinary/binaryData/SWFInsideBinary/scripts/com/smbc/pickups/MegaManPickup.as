package com.smbc.pickups
{
   import com.explodingRabbit.utils.CustomDictionary;
   import com.smbc.data.PickupInfo;
   
   public class MegaManPickup extends Pickup
   {
      
      private static const INITIAL_VY:int = -200;
      
      private static var playTypesArr:Array = [PickupInfo.MEGA_MAN_WEAPON_ENERGY_BIG,PickupInfo.MEGA_MAN_WEAPON_ENERGY_SMALL,PickupInfo.MEGA_MAN_ENERGY_BALANCER];
      
      private static const PLAY_TYPES:CustomDictionary = new CustomDictionary();
      
      {
         function():void
         {
            var _loc1_:* = undefined;
            for each(_loc1_ in playTypesArr)
            {
               PLAY_TYPES.addItem(_loc1_);
            }
            playTypesArr = null;
         }();
      }
      
      public function MegaManPickup(param1:String = null)
      {
         super(param1);
      }
      
      override public function initiate() : void
      {
         super.initiate();
         if(!inBox)
         {
            defyGrav = false;
            vy = INITIAL_VY;
         }
         if(PLAY_TYPES[type])
         {
            stopAnim = false;
         }
         addAllGroundToHitTestables();
      }
      
      override public function checkFrame() : void
      {
         if(previousFrameLabelIs(mainFrameLabel + "End"))
         {
            gotoAndStop(mainFrameLabel);
         }
      }
   }
}
