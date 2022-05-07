package com.smbc.pickups
{
   import com.smbc.characters.Character;
   import com.smbc.data.SoundNames;
   
   public class SophiaPickup extends Pickup
   {
       
      
      public function SophiaPickup(param1:String = null)
      {
         super(param1);
      }
      
      override public function touchPlayer(param1:Character) : void
      {
         super.touchPlayer(param1);
         SND_MNGR.playSound(SoundNames.SFX_SOPHIA_GET_PICKUP);
      }
   }
}
