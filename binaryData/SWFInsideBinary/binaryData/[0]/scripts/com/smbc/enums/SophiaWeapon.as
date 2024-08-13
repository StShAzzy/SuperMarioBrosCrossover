package com.smbc.enums
{
   import com.explodingRabbit.utils.Enum;
   
   public class SophiaWeapon extends Enum
   {
      
      public static const TripleMissile:SophiaWeapon = new SophiaWeapon("Triple Missile");
      
      public static const HomingMissile:SophiaWeapon = new SophiaWeapon("Homing Missile");
      
      {
         initEnum(SophiaWeapon);
      }
      
      public function SophiaWeapon(param1:String = null)
      {
         super(param1);
      }
   }
}
