package com.explodingRabbit.utils
{
   public class SortingFunctions
   {
       
      
      public function SortingFunctions()
      {
         super();
      }
      
      public static function sortStrings(param1:String, param2:String) : int
      {
         if(param1 < param2)
         {
            return -1;
         }
         if(param1 > param2)
         {
            return 1;
         }
         return 0;
      }
      
      public static function sortNums(param1:Number, param2:Number) : int
      {
         if(param1 < param2)
         {
            return -1;
         }
         if(param1 > param2)
         {
            return 1;
         }
         return 0;
      }
   }
}
