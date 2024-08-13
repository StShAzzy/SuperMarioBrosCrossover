package com.smbc.enums
{
   import com.explodingRabbit.utils.Enum;
   
   public class AttackStrength extends Enum
   {
      
      public static const VeryWeak:AttackStrength = new AttackStrength(0.66,"Very Weak");
      
      public static const Weak:AttackStrength = new AttackStrength(0.75);
      
      public static const Normal:AttackStrength = new AttackStrength(1);
      
      public static const Strong:AttackStrength = new AttackStrength(1.75);
      
      public static const VeryStrong:AttackStrength = new AttackStrength(3,"Very Strong");
      
      {
         initEnum(AttackStrength);
      }
      
      private var _strength:Number;
      
      public function AttackStrength(param1:Number, param2:String = null)
      {
         super(param2);
         this._strength = param1;
      }
      
      public function get strength() : Number
      {
         return this._strength;
      }
   }
}
