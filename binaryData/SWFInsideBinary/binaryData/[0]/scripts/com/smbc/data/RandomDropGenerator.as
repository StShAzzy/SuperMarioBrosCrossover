package com.smbc.data
{
   import com.smbc.characters.Bass;
   import com.smbc.characters.Character;
   import com.smbc.characters.MegaMan;
   import com.smbc.ground.Brick;
   import com.smbc.level.CharacterSelect;
   import com.smbc.level.Level;
   import com.smbc.level.TitleLevel;
   import com.smbc.main.LevObj;
   import com.smbc.managers.StatManager;
   import com.smbc.pickups.Pickup;
   
   public class RandomDropGenerator extends PickupInfo
   {
      
      private static const IND_DR:int = 0;
      
      private static const IND_PU_TYPE:int = 1;
      
      private static const DROP_RATE_NAME:String = "_DROP_RATE";
      
      private static const DROPS_ARR_NAME:String = "_DROPS_ARR";
      
      private static const FL_SAMUS_MISSILE_END:String = "samusMissileEnd";
      
      private static const LINK_DROP_RATE:Number = 0.25;
      
      private static const MEGA_MAN_DROP_RATE:Number = 0.25;
      
      private static const RYU_DROP_RATE:Number = 0.25;
      
      private static const SAMUS_DROP_RATE:Number = 0.25;
      
      private static const SIMON_DROP_RATE:Number = 0.25;
      
      private static const SOPHIA_DROP_RATE:Number = 0.25;
      
      private static const DROP_RATE_BRICK_MULTIPLIER:Number = 0.25;
      
      private static const DROP_RATE_COIN_BLOCK_MULTIPLIER:Number = 0.5;
       
      
      public function RandomDropGenerator()
      {
         super();
      }
      
      public static function checkDropItem(param1:String, param2:LevObj) : Boolean
      {
         var _loc9_:String = null;
         if(param1 == Bass.CHAR_NAME_CAPS)
         {
            param1 = MegaMan.CHAR_NAME_CAPS;
         }
         var _loc3_:Level = Level.levelInstance;
         if(_loc3_ == null)
         {
            return false;
         }
         var _loc4_:Character = _loc3_.player;
         if(_loc4_ == null)
         {
            return false;
         }
         var _loc5_:Number = _loc4_.dropRate + GameSettings.itemDropRate.dropRateOffset;
         if(param2 is Brick)
         {
            if((param2 as Brick).item == null)
            {
               _loc5_ *= DROP_RATE_BRICK_MULTIPLIER;
            }
            else
            {
               _loc5_ *= DROP_RATE_COIN_BLOCK_MULTIPLIER;
            }
         }
         if(GameSettings.DEBUG_MODE && GameSettings.ALWAYS_DROP_ITEMS)
         {
            _loc5_ = 1;
         }
         var _loc6_:Number = Math.random();
         if(_loc6_ > _loc5_ || _loc3_ is CharacterSelect || _loc3_ is TitleLevel)
         {
            return false;
         }
         var _loc7_:Array = _loc4_.dropArr;
         if(!_loc7_ || !_loc7_.length)
         {
            return false;
         }
         var _loc8_:int = int(_loc7_.length);
         _loc6_ = Math.random();
         var _loc10_:int = _loc8_ - 1;
         while(_loc10_ >= 0)
         {
            if(_loc6_ >= _loc7_[_loc10_][IND_DR])
            {
               _loc9_ = _loc7_[_loc10_][IND_PU_TYPE];
               break;
            }
            _loc10_--;
         }
         var _loc11_:Class = getPickupClass(StatManager.STAT_MNGR.curCharNum);
         var _loc12_:Pickup;
         (_loc12_ = new _loc11_(_loc9_)).appearFromObject(param2);
         _loc3_.addToLevel(_loc12_);
         return true;
      }
   }
}
