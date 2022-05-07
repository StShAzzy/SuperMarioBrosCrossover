package com.explodingRabbit.cross.gameplay.statusEffects
{
   import com.smbc.main.LevObj;
   
   public class StatusEffect
   {
      
      private static const PRE_TYPE:String = "StatFx_";
      
      public static const TYPE_KNOCK_BACK:String = PRE_TYPE + "knockBack";
      
      public static const TYPE_INVULNERABLE:String = PRE_TYPE + "invulnerable";
      
      public static const TYPE_STOP:String = PRE_TYPE + "stop";
      
      public static const TYPE_FLASH:String = PRE_TYPE + "flash";
      
      public static const TYPE_FREEZE:String = PRE_TYPE + "freeze";
      
      public static const TYPE_TRANSPARENT:String = PRE_TYPE + "transparent";
       
      
      protected var _type:String;
      
      protected var _target:LevObj;
      
      private var _destroyed:Boolean;
      
      protected var reason:String;
      
      private var _applied:Boolean;
      
      public function StatusEffect(param1:String, param2:LevObj)
      {
         super();
         this._type = param1;
         this._target = param2;
      }
      
      public function apply() : void
      {
         this._applied = true;
      }
      
      public function targetUpdate() : void
      {
      }
      
      public function clone(param1:LevObj, param2:LevObj = null) : StatusEffect
      {
         return new StatusEffect(this._type,param1);
      }
      
      public function checkIfReplaceWithSameType(param1:StatusEffect) : Boolean
      {
         this.destroy();
         return true;
      }
      
      public function destroy() : void
      {
         this._destroyed = true;
         if(this._target.getStatusEffect(this._type))
         {
            this._target.removeStatusEffect(this._type);
         }
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get destroyed() : Boolean
      {
         return this._destroyed;
      }
      
      public function get applied() : Boolean
      {
         return this._applied;
      }
   }
}
