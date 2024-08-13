package com.smbc.enums
{
   import com.explodingRabbit.utils.Enum;
   
   public class MegaManShootType extends Enum
   {
      
      public static const Primary:MegaManShootType = new MegaManShootType();
      
      public static const Secondary:MegaManShootType = new MegaManShootType();
      
      {
         initEnum(MegaManShootType);
      }
      
      public function MegaManShootType(param1:String = null)
      {
         super(param1);
      }
   }
}
