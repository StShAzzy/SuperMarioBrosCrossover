package com.smbc.enums
{
   import com.explodingRabbit.utils.Enum;
   
   public class GoombaReplacementType extends Enum
   {
      
      public static const Goomba:GoombaReplacementType = new GoombaReplacementType("Off");
      
      public static const BuzzyBeetle:GoombaReplacementType = new GoombaReplacementType("Buzzy Beetle");
      
      public static const Spiney:GoombaReplacementType = new GoombaReplacementType();
      
      public static const SpikeTop:GoombaReplacementType = new GoombaReplacementType("Spike Top");
      
      {
         initEnum(GoombaReplacementType);
      }
      
      public function GoombaReplacementType(param1:String = null)
      {
         super(param1);
      }
   }
}
