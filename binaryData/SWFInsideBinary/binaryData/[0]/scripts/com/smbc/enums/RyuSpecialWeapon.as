package com.smbc.enums
{
   import com.explodingRabbit.utils.Enum;
   
   public class RyuSpecialWeapon extends Enum
   {
      
      public static const Shuriken:RyuSpecialWeapon = new RyuSpecialWeapon();
      
      public static const WindmillShuriken:RyuSpecialWeapon = new RyuSpecialWeapon("Windmill Shuriken");
      
      public static const JumpSlash:RyuSpecialWeapon = new RyuSpecialWeapon("Jump Slash");
      
      public static const ArtOfFireWheel:RyuSpecialWeapon = new RyuSpecialWeapon("Art of Fire Wheel");
      
      public static const FireDragonBall:RyuSpecialWeapon = new RyuSpecialWeapon("Fire Dragon Ball");
      
      {
         initEnum(RyuSpecialWeapon);
      }
      
      public function RyuSpecialWeapon(param1:String = null)
      {
         super(param1);
      }
   }
}
