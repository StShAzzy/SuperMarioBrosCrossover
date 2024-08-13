package com.smbc.enums
{
   import com.explodingRabbit.utils.Enum;
   
   public class LinkWeapon extends Enum
   {
      
      public static const Bomb:LinkWeapon = new LinkWeapon("Bomb");
      
      public static const BowAndArrow:LinkWeapon = new LinkWeapon("Bow and Arrow");
      
      {
         initEnum(LinkWeapon);
      }
      
      public function LinkWeapon(param1:String = null)
      {
         super(param1);
      }
   }
}
