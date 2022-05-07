package com.smbc.pickups
{
   import com.smbc.characters.Character;
   import com.smbc.data.PickupInfo;
   
   public class LinkPickup extends Pickup
   {
       
      
      public function LinkPickup(param1:String)
      {
         super(param1);
      }
      
      override public function touchPlayer(param1:Character) : void
      {
         if(mainType != MAIN_TYPE_UPGRADE && type != PickupInfo.MUSHROOM && type != PickupInfo.LINK_BOMB_AMMO)
         {
            destroy();
         }
      }
   }
}
