package com.smbc.errors
{
   public class InitiateError extends Error
   {
       
      
      public function InitiateError(param1:String = "An object can only be initiated once.", param2:int = 0)
      {
         super(param1,param2);
      }
   }
}
