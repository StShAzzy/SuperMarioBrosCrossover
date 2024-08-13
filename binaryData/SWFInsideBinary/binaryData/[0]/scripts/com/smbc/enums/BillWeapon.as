package com.smbc.enums
{
   import com.explodingRabbit.utils.Enum;
   
   public class BillWeapon extends Enum
   {
      
      public static const Flare:BillWeapon = new BillWeapon();
      
      public static const Laser:BillWeapon = new BillWeapon();
      
      public static const MachineGun:BillWeapon = new BillWeapon("Machine Gun");
      
      public static const Spread:BillWeapon = new BillWeapon();
      
      {
         initEnum(BillWeapon);
      }
      
      public function BillWeapon(param1:String = null)
      {
         super(param1);
      }
   }
}
