package com.smbc.enums
{
   import com.explodingRabbit.utils.Enum;
   
   public class ClassicDamageResponse extends Enum
   {
      
      public static const InstantDeath:ClassicDamageResponse = new ClassicDamageResponse("Instant Death");
      
      public static const LoseEverything:ClassicDamageResponse = new ClassicDamageResponse("Lose Everything");
      
      public static const LoseCurrent:ClassicDamageResponse = new ClassicDamageResponse("Previous State");
      
      {
         initEnum(ClassicDamageResponse);
      }
      
      public function ClassicDamageResponse(param1:String = null)
      {
         super(param1);
      }
   }
}
