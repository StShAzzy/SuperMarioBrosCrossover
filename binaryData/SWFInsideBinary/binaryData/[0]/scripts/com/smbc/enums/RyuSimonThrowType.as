package com.smbc.enums
{
   import com.explodingRabbit.utils.Enum;
   
   public class RyuSimonThrowType extends Enum
   {
      
      public static const Default:RyuSimonThrowType = new RyuSimonThrowType();
      
      public static const Extra:RyuSimonThrowType = new RyuSimonThrowType();
      
      {
         initEnum(RyuSimonThrowType);
      }
      
      public function RyuSimonThrowType(param1:String = null)
      {
         super(param1);
      }
   }
}
