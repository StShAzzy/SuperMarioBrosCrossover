package com.smbc.enums
{
   import com.explodingRabbit.utils.Enum;
   
   public class SimonSpecialWeapon extends Enum
   {
      
      public static const Dagger:SimonSpecialWeapon = new SimonSpecialWeapon();
      
      public static const Axe:SimonSpecialWeapon = new SimonSpecialWeapon();
      
      public static const HolyWater:SimonSpecialWeapon = new SimonSpecialWeapon("Holy Water");
      
      public static const Cross:SimonSpecialWeapon = new SimonSpecialWeapon();
      
      public static const Stopwatch:SimonSpecialWeapon = new SimonSpecialWeapon();
      
      {
         initEnum(SimonSpecialWeapon);
      }
      
      public function SimonSpecialWeapon(param1:String = null)
      {
         super(param1);
      }
   }
}
