package com.explodingRabbit.utils
{
   import flash.utils.Dictionary;
   
   public class ArrayUtils
   {
       
      
      public function ArrayUtils()
      {
         super();
      }
      
      private static function writeNestedArrayWithOptions(param1:Array, param2:*, param3:Boolean, param4:Array) : Array
      {
         var _loc8_:int = 0;
         var _loc9_:Array = null;
         var _loc10_:Array = null;
         var _loc5_:int = param4.length - 1;
         var _loc6_:Array;
         (_loc6_ = [])[0] = param1;
         var _loc7_:int = 0;
         while(_loc7_ < _loc5_)
         {
            _loc8_ = param4[_loc7_];
            if(!(_loc9_ = _loc6_[_loc7_][_loc8_]))
            {
               _loc9_ = [];
               _loc6_[_loc7_][_loc8_] = _loc9_;
            }
            _loc6_[_loc7_ + 1] = _loc9_;
            _loc7_++;
         }
         if(!param3)
         {
            _loc6_[_loc5_][param4[_loc5_]] = param2;
            return null;
         }
         if(_loc10_ = _loc6_[_loc5_][param4[_loc5_]])
         {
            return _loc10_;
         }
         _loc10_ = [];
         _loc6_[_loc5_][param4[_loc5_]] = _loc10_;
         return _loc10_;
      }
      
      public static function readNestedArr(param1:Array, ... rest) : *
      {
         var _loc6_:int = 0;
         var _loc7_:Array = null;
         var _loc3_:int = rest.length - 1;
         var _loc4_:Array;
         (_loc4_ = [])[0] = param1;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = rest[_loc5_];
            if(!(_loc7_ = _loc4_[_loc5_][_loc6_]))
            {
               return null;
            }
            _loc4_[_loc5_ + 1] = _loc7_;
            _loc5_++;
         }
         return _loc4_[_loc3_][rest[_loc3_]];
      }
      
      public static function writeNestedArray(param1:Array, param2:*, ... rest) : void
      {
         writeNestedArrayWithOptions(param1,param2,false,rest);
      }
      
      public static function readWriteNestedArr(param1:Array, ... rest) : *
      {
         return writeNestedArrayWithOptions(param1,null,true,rest);
      }
      
      public static function convArrayToDct(param1:Array, param2:Boolean = false) : Dictionary
      {
         var _loc4_:Object = null;
         var _loc3_:Dictionary = new Dictionary(param2);
         for each(_loc4_ in param1)
         {
            _loc3_[_loc4_] = _loc4_;
         }
         return _loc3_;
      }
      
      public static function maxValue(param1:Array) : int
      {
         var _loc3_:int = 0;
         var _loc2_:int = param1[0];
         for each(_loc3_ in param1)
         {
            if(_loc3_ > _loc2_)
            {
               _loc2_ = _loc3_;
            }
         }
         return _loc2_;
      }
      
      public static function minValue(param1:Array) : int
      {
         var _loc3_:int = 0;
         var _loc2_:int = param1[0];
         for each(_loc3_ in param1)
         {
            if(_loc3_ < _loc2_)
            {
               _loc2_ = _loc3_;
            }
         }
         return _loc2_;
      }
   }
}
