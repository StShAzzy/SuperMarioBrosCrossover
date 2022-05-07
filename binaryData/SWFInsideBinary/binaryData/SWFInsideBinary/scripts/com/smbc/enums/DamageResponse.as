package com.smbc.enums
{
   import com.explodingRabbit.utils.Enum;
   
   public class DamageResponse extends Enum
   {
      
      public static const LoseSomeUpgrades:DamageResponse = new DamageResponse("Lose Some Upgrades");
      
      public static const LoseAllUpgrades:DamageResponse = new DamageResponse("Lose All Upgrades");
      
      public static const KeepUpgrades:DamageResponse = new DamageResponse("Keep Most Upgrades");
      
      public static const InstantDeath:DamageResponse = new DamageResponse("Instant Death");
      
      {
         initEnum(DamageResponse);
      }
      
      public function DamageResponse(param1:String = null)
      {
         super(param1);
      }
   }
}
