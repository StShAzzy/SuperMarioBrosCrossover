package com.explodingRabbit.utils
{
   public class ColorUtils
   {
       
      
      public function ColorUtils()
      {
         super();
      }
      
      public static function luminance(param1:uint) : uint
      {
         var _loc2_:* = param1 >> 16 & 0xFF;
         var _loc3_:* = param1 >> 8 & 0xFF;
         var _loc4_:* = param1 & 0xFF;
         return 0.3 * _loc2_ + 0.59 * _loc3_ + 0.11 * _loc4_;
      }
   }
}
