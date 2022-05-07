package com.smbc.data
{
   import com.smbc.main.GlobalFunctions;
   import flash.utils.describeType;
   
   public final class MusicSets
   {
      
      public static const SWAP_ORDER_VEC:Vector.<int> = new Vector.<int>();
      
      public static var ctr:int = -1;
      
      public static const CHARACTER:int = ctr = ctr + 1;
      
      public static const MAP:int = ctr = ctr + 1;
      
      public static const RANDOM:int = ctr = ctr + 1;
      
      public static const MAX_NORMAL:int = MAP;
      
      public static const MAX_VALUE:int = ctr;
       
      
      public function MusicSets()
      {
         super();
      }
      
      public static function setUpSwapOrder() : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:XMLList = describeType(MusicSets)..constant;
         var _loc2_:int = _loc1_.length();
         while(_loc3_ < _loc2_)
         {
            if(_loc4_ = MusicSets[_loc1_[_loc3_].@name] as int)
            {
               SWAP_ORDER_VEC.push(_loc4_);
            }
            _loc3_++;
         }
         SWAP_ORDER_VEC.sort(GlobalFunctions.sortNums);
      }
      
      public static function convNumToStr(param1:int) : String
      {
         switch(param1)
         {
            case CHARACTER:
               return "character";
            case MAP:
               return "map";
            case RANDOM:
               return "random";
            default:
               return null;
         }
      }
   }
}
