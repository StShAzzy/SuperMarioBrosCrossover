package com.explodingRabbit.utils
{
   import com.smbc.data.GameSettings;
   import flash.utils.*;
   
   public class Enum
   {
      
      private static var _pendingDb:Object = {};
      
      private static var _enumDb:Object = {};
       
      
      private var _name:String = null;
      
      private var _niceName:String = null;
      
      private var _index:int = -1;
      
      private var _enums:Array;
      
      public function Enum(param1:String = null)
      {
         super();
         var _loc2_:String = getQualifiedClassName(this);
         if(_enumDb[_loc2_] != null)
         {
            throw new Error("Enum constants can only be constructed as static consts " + "in their own enum class " + "(bad type=\'" + _loc2_ + "\')");
         }
         var _loc3_:Array = _pendingDb[_loc2_];
         if(_loc3_ == null)
         {
            _pendingDb[_loc2_] = _loc3_ = [];
         }
         this._index = _loc3_.length;
         this._enums = _loc3_;
         this._niceName = param1;
         _loc3_.push(this);
      }
      
      public static function GetConstants(param1:Class) : Vector.<Enum>
      {
         var _loc2_:EnumConstants = _enumDb[getQualifiedClassName(param1)];
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.ByIndex.slice();
      }
      
      public static function GetCount(param1:Class) : int
      {
         var _loc2_:EnumConstants = _enumDb[getQualifiedClassName(param1)];
         if(_loc2_ == null)
         {
            return 0;
         }
         return _loc2_.ByIndex.length;
      }
      
      public static function GetNames(param1:Class, param2:Boolean = false) : Vector.<String>
      {
         var _loc5_:Enum = null;
         var _loc3_:EnumConstants = _enumDb[getQualifiedClassName(param1)];
         if(_loc3_ == null)
         {
            return null;
         }
         var _loc4_:Vector.<String> = new Vector.<String>();
         for each(_loc5_ in _loc3_.ByIndex)
         {
            if(param2)
            {
               _loc4_.push(_loc5_._niceName);
            }
            else
            {
               _loc4_.push(_loc5_._name);
            }
         }
         return _loc4_;
      }
      
      public static function ParseConstant(param1:Class, param2:String, param3:Boolean = false) : Enum
      {
         var _loc4_:EnumConstants;
         if((_loc4_ = _enumDb[getQualifiedClassName(param1)]) == null)
         {
            return null;
         }
         var _loc5_:Enum = _loc4_.ByName[param2.toLowerCase()];
         if(param3 && _loc5_ != null && param2 != _loc5_.Name)
         {
            return null;
         }
         return _loc5_;
      }
      
      protected static function initEnum(param1:Class) : void
      {
         var _loc5_:XML = null;
         var _loc6_:Enum = null;
         var _loc7_:* = undefined;
         var _loc2_:String = getQualifiedClassName(param1);
         if(_enumDb[_loc2_] != null)
         {
            throw new Error("Can\'t initialize enum twice (type=\'" + _loc2_ + "\')");
         }
         var _loc3_:Array = _pendingDb[_loc2_];
         if(_loc3_ == null)
         {
            throw new Error("Can\'t have an enum without any constants (type=\'" + _loc2_ + "\')");
         }
         var _loc4_:XML = describeType(param1);
         for each(_loc5_ in _loc4_.constant)
         {
            _loc6_ = param1[_loc5_.@name];
            if((_loc7_ = Object(_loc6_).constructor) != param1)
            {
               throw new Error("Constant type \'" + _loc7_ + "\' " + "does not match its enum class \'" + param1 + "\'");
            }
            _loc6_._name = _loc5_.@name;
         }
         _pendingDb[_loc2_] = null;
         _enumDb[_loc2_] = new EnumConstants(Vector.<Enum>(_loc3_));
      }
      
      public function get Name() : String
      {
         return this._name;
      }
      
      public function get Index() : int
      {
         return this._index;
      }
      
      public function get NiceName() : String
      {
         if(this._niceName == null)
         {
            return this._name;
         }
         return this._niceName;
      }
      
      public function toString() : String
      {
         return this.Name;
      }
      
      public function GetAtIndex(param1:int, param2:Boolean = false) : Enum
      {
         var _loc3_:int = this._enums.length;
         if(param1 >= 0)
         {
            if(param1 >= _loc3_)
            {
               throw new Error("Index out of range.");
            }
            return this._enums[param1] as Enum;
         }
         if(param1 == GameSettings.DECREASE_SETTING_NUM)
         {
            param1 = this._index - 1;
            if(param1 < 0)
            {
               param1 = _loc3_ - 1;
            }
         }
         else if(param1 == GameSettings.INCREASE_SETTING_NUM)
         {
            param1 = this._index + 1;
            if(param1 >= _loc3_)
            {
               param1 = 0;
            }
         }
         return this._enums[param1] as Enum;
      }
   }
}

import com.explodingRabbit.utils.Enum;

class EnumConstants
{
    
   
   public var ByIndex:Vector.<Enum>;
   
   public var ByName:Object;
   
   function EnumConstants(param1:Vector.<Enum>)
   {
      var _loc3_:Enum = null;
      this.ByName = {};
      super();
      this.ByIndex = param1;
      var _loc2_:int = 0;
      while(_loc2_ < this.ByIndex.length)
      {
         _loc3_ = this.ByIndex[_loc2_];
         this.ByName[_loc3_.Name.toLowerCase()] = _loc3_;
         _loc2_++;
      }
   }
}
