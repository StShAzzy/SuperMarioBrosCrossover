package com.smbc.enums
{
   import com.explodingRabbit.utils.Enum;
   
   public class SamusWeapon extends Enum
   {
      
      public static const IceBeam:SamusWeapon = new SamusWeapon("Ice Beam");
      
      public static const WaveBeam:SamusWeapon = new SamusWeapon("Wave Beam");
      
      {
         initEnum(SamusWeapon);
      }
      
      public function SamusWeapon(param1:String = null)
      {
         super(param1);
      }
   }
}
