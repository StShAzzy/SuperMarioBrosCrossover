package com.smbc.enums
{
   import com.explodingRabbit.utils.Enum;
   
   public class PowerupMode extends Enum
   {
      
      public static const Classic:PowerupMode = new PowerupMode("Classic");
      
      public static const Modern:PowerupMode = new PowerupMode("Modern");
      
      {
         initEnum(PowerupMode);
      }
      
      public function PowerupMode(param1:String = null)
      {
         super(param1);
      }
   }
}
