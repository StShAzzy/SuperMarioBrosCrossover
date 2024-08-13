package com.smbc.enums
{
   import com.explodingRabbit.utils.Enum;
   
   public class MegaManSpecialWeapon extends Enum
   {
      
      public static const SuperArm:MegaManSpecialWeapon = new MegaManSpecialWeapon("Super Arm");
      
      public static const MetalBlade:MegaManSpecialWeapon = new MegaManSpecialWeapon("Metal Blade");
      
      public static const HardKnuckle:MegaManSpecialWeapon = new MegaManSpecialWeapon("Hard Knuckle");
      
      public static const PharaohShot:MegaManSpecialWeapon = new MegaManSpecialWeapon("Pharaoh Shot");
      
      public static const ChargeKick:MegaManSpecialWeapon = new MegaManSpecialWeapon("Charge Kick");
      
      public static const FlameBlast:MegaManSpecialWeapon = new MegaManSpecialWeapon("Flame Blast");
      
      public static const MagmaBazooka:MegaManSpecialWeapon = new MegaManSpecialWeapon("Magma Bazooka");
      
      public static const WaterShield:MegaManSpecialWeapon = new MegaManSpecialWeapon("Water Shield");
      
      public static const ScrewCrusher:MegaManSpecialWeapon = new MegaManSpecialWeapon("Screw Crusher");
      
      {
         initEnum(MegaManSpecialWeapon);
      }
      
      public function MegaManSpecialWeapon(param1:String = null)
      {
         super(param1);
      }
   }
}
