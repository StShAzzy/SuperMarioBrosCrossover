package com.smbc.errors
{
   public class SingletonError extends Error
   {
       
      
      public function SingletonError(param1:String = "You can only create one instance of a Singleton.", param2:int = 0)
      {
         super(param1,param2);
      }
   }
}
