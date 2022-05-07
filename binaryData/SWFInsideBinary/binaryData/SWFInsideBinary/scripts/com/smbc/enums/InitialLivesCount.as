package com.smbc.enums
{
   import com.explodingRabbit.utils.Enum;
   
   public class InitialLivesCount extends Enum
   {
      
      public static const One:InitialLivesCount = new InitialLivesCount("1");
      
      public static const Three:InitialLivesCount = new InitialLivesCount("3");
      
      public static const Five:InitialLivesCount = new InitialLivesCount("5");
      
      public static const Seven:InitialLivesCount = new InitialLivesCount("7");
      
      public static const Ten:InitialLivesCount = new InitialLivesCount("10");
      
      {
         initEnum(InitialLivesCount);
      }
      
      public function InitialLivesCount(param1:String = null)
      {
         super(param1);
      }
      
      public function get lifeCount() : int
      {
         return int(NiceName);
      }
   }
}
