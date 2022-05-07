package com.smbc.data
{
   import com.smbc.messageBoxes.MenuBoxItems;
   
   public class CampaignModes
   {
      
      private static const _SURVIVAL:Array = [0,MenuBoxItems.SURVIVAL];
      
      private static const _ALL_CHARACTERS:Array = [1,MenuBoxItems.ALL_CHARACTERS];
      
      private static const _SINGLE_CHARACTER:Array = [2,MenuBoxItems.SINGLE_CHARACTER];
      
      private static const _SINGLE_CHARACTER_RANDOM:Array = [3,MenuBoxItems.SINGLE_CHARACTER_RANDOM];
      
      private static const VEC:Vector.<Array> = Vector.<Array>([_SURVIVAL,_ALL_CHARACTERS,_SINGLE_CHARACTER,_SINGLE_CHARACTER_RANDOM]);
      
      private static const IND_VALUE:int = 0;
      
      private static const IND_NAME:int = 1;
      
      public static const MAX_VALUE:int = VEC.length - 1;
       
      
      public function CampaignModes()
      {
         super();
      }
      
      public static function swapNumAndName(param1:*) : *
      {
         var _loc2_:Array = null;
         if(param1 is int)
         {
            return VEC[param1][IND_NAME];
         }
         if(param1 is String)
         {
            for each(_loc2_ in VEC)
            {
               if(param1 == _loc2_[IND_NAME])
               {
                  return _loc2_[IND_VALUE];
               }
            }
         }
         throw new Error("improper conversion input");
      }
      
      public static function get SURVIVAL() : int
      {
         return _SURVIVAL[IND_VALUE];
      }
      
      public static function get ALL_CHARACTERS() : int
      {
         return _ALL_CHARACTERS[IND_VALUE];
      }
      
      public static function get SINGLE_CHARACTER() : int
      {
         return _SINGLE_CHARACTER[IND_VALUE];
      }
      
      public static function get SINGLE_CHARACTER_RANDOM() : int
      {
         return _SINGLE_CHARACTER_RANDOM[IND_VALUE];
      }
   }
}
