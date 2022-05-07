package com.smbc.data
{
   public class MusicQuality
   {
      
      public static const LOW:int = 0;
      
      public static const MID:int = 1;
      
      public static const HIGH:int = 2;
      
      public static const MAX_VALUE:int = HIGH;
       
      
      public function MusicQuality()
      {
         super();
      }
      
      public static function convNumToName(param1:int) : String
      {
         switch(param1)
         {
            case LOW:
               return "low";
            case MID:
               return "mid";
            case HIGH:
               return "high";
            default:
               return null;
         }
      }
   }
}
