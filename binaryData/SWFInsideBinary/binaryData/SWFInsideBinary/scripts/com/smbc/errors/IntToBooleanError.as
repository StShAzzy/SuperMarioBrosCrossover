package com.smbc.errors
{
   public class IntToBooleanError extends Error
   {
       
      
      public function IntToBooleanError(param1:* = "value must be -1, 0, or 1 for conversion to Boolean type", param2:* = 0)
      {
         super(param1,param2);
      }
   }
}
