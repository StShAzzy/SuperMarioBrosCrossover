package com.explodingRabbit.utils
{
   public class ByteArrayUtils
   {
      
      public static const SAMPLE_RATE:int = 44100;
      
      public static const NUM_BYTES_PER_CHANNEL:int = 4;
      
      public static const NUM_BYTES_PER_SAMPLE:int = NUM_BYTES_PER_CHANNEL * 2;
      
      public static const NUM_BYTES_PER_SECOND:int = SAMPLE_RATE * NUM_BYTES_PER_SAMPLE;
       
      
      public function ByteArrayUtils()
      {
         super();
      }
      
      public static function bytesToMs(param1:uint) : int
      {
         return Math.round(param1 / NUM_BYTES_PER_SECOND * 1000);
      }
      
      public static function msToBytes(param1:int, param2:int = 8.0) : uint
      {
         var _loc3_:int = Math.round(param1 / 1000 * NUM_BYTES_PER_SECOND);
         var _loc4_:int;
         if((_loc4_ = _loc3_ % param2) < param2 / 2)
         {
            _loc3_ -= _loc4_;
         }
         else
         {
            _loc3_ += param2 - _loc4_;
         }
         return _loc3_;
      }
   }
}
