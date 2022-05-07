package com.explodingRabbit.cross.gameplay.statusEffects
{
   import com.explodingRabbit.utils.CustomDictionary;
   import com.smbc.main.LevObj;
   
   public class StatusProperty
   {
      
      private static const AGG_TYPE:String = "Agg_";
      
      private static const PAS_TYPE:String = "Pas_";
      
      private static const TYPE_DCT:CustomDictionary = new CustomDictionary();
      
      public static const TYPE_FLASH_AGG:String = addType(AGG_TYPE + "flash");
      
      public static const TYPE_FREEZE_AGG:String = addType(AGG_TYPE + "freeze");
      
      public static const TYPE_UNFREEZE_AGG:String = addType(AGG_TYPE + "unfreeze");
      
      public static const TYPE_INVULNERABLE_AGG:String = addType(AGG_TYPE + "invulnerable");
      
      public static const TYPE_STOP_AGG:String = addType(AGG_TYPE + "stop");
      
      public static const TYPE_KNOCK_BACK_AGG:String = addType(AGG_TYPE + "knockBack");
      
      public static const TYPE_PIERCE_AGG:String = addType(AGG_TYPE + "pierce");
      
      public static const TYPE_PASS_THROUGH_DEFEAT_AGG:String = addType(AGG_TYPE + "passThroughDefeat");
      
      public static const TYPE_PASS_THROUGH_ALWAYS_AGG:String = addType(AGG_TYPE + "passThroughAlways");
      
      public static const TYPE_TRANSPARENT_AGG:String = addType(AGG_TYPE + "transparent");
      
      public static const TYPE_DAMAGES_PLAYER_AGG:String = addType(AGG_TYPE + "damagesPlayer");
      
      public static const TYPE_STOP_ALL_ENEMIES_ACTIVE_AGG:String = addType(AGG_TYPE + "stopAllEnemiesActive");
      
      public static const TYPE_INSTANT_KILL_AGG:String = addType(AGG_TYPE + "instantKill");
      
      public static const TYPE_FREEZE_PAS:String = addType(PAS_TYPE + "freeze");
      
      public static const TYPE_PIERCE_PAS:String = addType(PAS_TYPE + "pierce");
      
      public static const TYPE_STOP_PAS:String = addType(PAS_TYPE + "stop");
      
      public static const TYPE_KNOCK_BACK_PAS:String = addType(PAS_TYPE + "knockBack");
      
      public static const TYPE_INSTANT_KILL_PAS:String = addType(PAS_TYPE + "instantKill");
      
      public static const TYPE_STOMPABLE_PAS:String = addType(PAS_TYPE + "stompable");
      
      public static const TYPE_SUPER_ARM_GRABBABLE_PAS:String = addType(PAS_TYPE + "superArmGrabbable");
      
      public static const TYPE_PULLABLE_PAS:String = addType(PAS_TYPE + "pullable");
      
      public static const PROP_ORDER:Vector.<String> = Vector.<String>([TYPE_PIERCE_AGG,TYPE_STOP_AGG,TYPE_KNOCK_BACK_AGG,TYPE_INVULNERABLE_AGG,TYPE_TRANSPARENT_AGG,TYPE_FLASH_AGG]);
       
      
      private var _type:String;
      
      private var _strength:int;
      
      private var _passive:Boolean;
      
      private var _value;
      
      public function StatusProperty(param1:String, param2:int = 0, param3:* = undefined)
      {
         super();
         this._type = param1;
         this._strength = param2;
         this._value = param3;
         this._passive = getPassiveFromType(param1);
      }
      
      public static function getOpposingType(param1:String) : String
      {
         if(param1 == TYPE_STOP_ALL_ENEMIES_ACTIVE_AGG)
         {
            return TYPE_STOP_PAS;
         }
         var _loc2_:Boolean = getPassiveFromType(param1);
         var _loc3_:String = getPassiveStringFromBoolean(!_loc2_) + getMainType(param1);
         var _loc4_:String;
         if(_loc4_ = TYPE_DCT[_loc3_])
         {
            return _loc4_;
         }
         return null;
      }
      
      private static function addType(param1:String) : String
      {
         TYPE_DCT.addItem(param1);
         return param1;
      }
      
      private static function getMainType(param1:String) : String
      {
         if(!hasPassiveString(param1))
         {
            throw new Error("doesn\'t have passive string");
         }
         return param1.substr(PAS_TYPE.length);
      }
      
      public static function getPassiveFromType(param1:String) : Boolean
      {
         if(!hasPassiveString(param1))
         {
            throw new Error("doesn\'t have passive string");
         }
         if(param1.substr(0,PAS_TYPE.length) == PAS_TYPE)
         {
            return true;
         }
         return false;
      }
      
      private static function addPassiveToMainType(param1:String, param2:Boolean) : String
      {
         if(hasPassiveString(param1))
         {
            throw new Error("already has passive string");
         }
         return getPassiveStringFromBoolean(param2) + param1;
      }
      
      private static function getPassiveStringFromBoolean(param1:Boolean) : String
      {
         if(param1)
         {
            return PAS_TYPE;
         }
         return AGG_TYPE;
      }
      
      private static function hasPassiveString(param1:String) : Boolean
      {
         var _loc2_:String = param1.substr(0,PAS_TYPE.length);
         if(_loc2_ == PAS_TYPE || _loc2_ == AGG_TYPE)
         {
            return true;
         }
         return false;
      }
      
      public function getStatusEffectFromValue(param1:LevObj, param2:LevObj) : StatusEffect
      {
         if(!(this.value is StatusEffect))
         {
            return null;
         }
         return StatusEffect(this.value).clone(param1,param2);
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get strength() : int
      {
         return this._strength;
      }
      
      public function get value() : *
      {
         return this._value;
      }
      
      public function get passive() : Boolean
      {
         return this._passive;
      }
   }
}
