package com.smbc.pickups
{
   import com.smbc.characters.Character;
   import com.smbc.data.PickupInfo;
   import com.smbc.level.Level;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol147")]
   public class LevelExit extends Pickup
   {
       
      
      public function LevelExit()
      {
         super(PickupInfo.LEVEL_EXIT);
         defyGrav = true;
         stopAnim = true;
         hitDistOver = Level.GLOB_STG_BOT / 2;
      }
      
      override public function initiate() : void
      {
         super.initiate();
         var _loc1_:int = Level.GLOB_STG_BOT;
         setChildPoperty(hRect,"height",_loc1_);
         setChildPoperty(hRect,"y",-_loc1_);
         ny = _loc1_;
         y = ny;
         setHitPoints();
      }
      
      override public function hitCharacter(param1:Character, param2:String) : void
      {
      }
      
      override public function touchPlayer(param1:Character) : void
      {
      }
   }
}
