package com.explodingRabbit.utils
{
   public class MathUtils
   {
       
      
      public function MathUtils()
      {
         super();
      }
      
      public static function isEven(param1:Number) : Boolean
      {
         return !(param1 & 1);
      }
   }
}
