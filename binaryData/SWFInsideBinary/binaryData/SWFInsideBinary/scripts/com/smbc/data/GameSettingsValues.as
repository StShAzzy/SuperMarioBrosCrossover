package com.smbc.data
{
   import com.explodingRabbit.utils.CustomDictionary;
   import flash.utils.describeType;
   
   public class GameSettingsValues
   {
      
      private static const IND_VALUE:int = 0;
      
      private static const IND_NAME:int = 1;
      
      private static var paletteTargetCtr:int = -1;
      
      public static const PALETTE_TARGET_PREFIX:String = "paletteTarget";
      
      private static const _paletteTargetAll:Array = [paletteTargetCtr = paletteTargetCtr + 1,MenuBoxValues.PALETTE_TARGET_ALL];
      
      private static const _paletteTarget8Bit:Array = [paletteTargetCtr = paletteTargetCtr + 1,MenuBoxValues.PALETTE_TARGET_8BIT];
      
      private static const _paletteTarget16Bit:Array = [paletteTargetCtr = paletteTargetCtr + 1,MenuBoxValues.PALETTE_TARGET_16BIT];
      
      public static const PALETTE_TARGET_MAX_VALUE:int = _paletteTarget16Bit[IND_VALUE];
      
      public static const paletteTargetVec:Vector.<String> = new Vector.<String>(PALETTE_TARGET_MAX_VALUE + 1,true);
      
      public static const paletteTargetObj:Object = {};
      
      public static var mapSkinMaxValue:int = 0;
      
      public static var mapSkinLimitedMaxValue:int = -1;
      
      public static var enemySkinMaxValue:int = 1;
      
      public static var enemySkinLimitedMaxValue:int = -1;
      
      public static var interfaceSkinMaxValue:int = 1;
      
      public static var interfaceSkinLimitedMaxValue:int = -1;
       
      
      public function GameSettingsValues()
      {
         super();
      }
      
      public static function initiate() : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc6_:Array = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc1_:XMLList = describeType(GameSettingsValues)..accessor;
         var _loc2_:int = _loc1_.length();
         if(!_loc2_)
         {
            throw new Error("cannot initiate");
         }
         while(_loc3_ < _loc2_)
         {
            _loc4_ = _loc1_[_loc3_].@name;
            _loc5_ = GameSettingsValues["_" + _loc4_];
            if(_loc4_.indexOf(PALETTE_TARGET_PREFIX) != -1 && _loc5_)
            {
               _loc7_ = (_loc6_ = _loc5_ as Array)[IND_NAME];
               _loc8_ = _loc6_[IND_VALUE];
               paletteTargetVec[_loc8_] = _loc7_;
               paletteTargetObj[_loc7_] = _loc8_;
            }
            _loc3_++;
         }
         return true;
      }
      
      public static function nameToNum(param1:String, param2:String) : int
      {
         return paletteTargetObj[param2];
      }
      
      public static function numToName(param1:String, param2:int) : String
      {
         return paletteTargetVec[param2];
      }
      
      public static function calcSkinMaxValue(... rest) : Array
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = LevelDataTranscoder.SKINS_VEC.length;
         var _loc3_:CustomDictionary = new CustomDictionary();
         var _loc4_:int = 0;
         while(_loc4_ <= _loc2_)
         {
            _loc3_.addItem(_loc4_);
            _loc4_++;
         }
         if(rest)
         {
            for each(_loc7_ in rest)
            {
               _loc3_.removeItem(_loc7_);
            }
         }
         for each(_loc7_ in _loc3_)
         {
            _loc5_ = Math.max(_loc5_,_loc7_);
         }
         _loc6_ = Math.min(_loc2_,_loc5_);
         mapSkinMaxValue += _loc6_;
         mapSkinLimitedMaxValue += _loc6_;
         enemySkinMaxValue += _loc6_;
         enemySkinLimitedMaxValue += _loc6_;
         interfaceSkinMaxValue += _loc6_;
         interfaceSkinLimitedMaxValue += _loc6_;
         return rest;
      }
      
      public static function get paletteTarget8Bit() : int
      {
         return _paletteTarget8Bit[IND_VALUE];
      }
      
      public static function get paletteTarget16Bit() : int
      {
         return _paletteTarget16Bit[IND_VALUE];
      }
      
      public static function get paletteTargetAll() : int
      {
         return _paletteTargetAll[IND_VALUE];
      }
   }
}
