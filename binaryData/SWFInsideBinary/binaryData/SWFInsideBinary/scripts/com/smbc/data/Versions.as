package com.smbc.data
{
   public class Versions
   {
      
      public static const V_2_0:Number = 2;
      
      public static const V_2_0_2:Number = 2.02;
      
      public static const V_2_0_3:Number = 2.03;
      
      public static const V_2_0_31:Number = 2.031;
      
      public static const V_2_1:Number = 2.1;
      
      public static const V_2_1_1:Number = 2.11;
      
      public static const V_2_1_11:Number = 2.111;
      
      public static const V_3_0:Number = 3;
      
      public static const V_3_01:Number = 3.01;
      
      private static const arr:Array = [V_2_0,V_2_0_2,V_2_0_3,V_2_0_31,V_2_1,V_2_1_1,V_2_1_11,V_3_0,V_3_01];
       
      
      public function Versions()
      {
         super();
      }
      
      public static function toInt(param1:Number) : int
      {
         return arr.indexOf(param1);
      }
      
      public static function toNum(param1:int) : Number
      {
         return arr[param1];
      }
      
      public static function toString(param1:Number) : String
      {
         switch(param1)
         {
            case V_2_0:
               return "2.0";
            case V_2_0_2:
               return "2.02";
            case V_2_0_3:
               return "2.03";
            case V_2_0_31:
               return "2.031";
            case V_2_1:
               return "2.1";
            case V_2_1_1:
               return "2.1.1";
            case V_2_1_11:
               return "2.1.11";
            case V_3_0:
               return "3.0";
            case V_3_01:
               return "3.01";
            default:
               throw new Error("string not written for this version");
         }
      }
   }
}
