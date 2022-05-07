package com.smbc.enums
{
   import com.explodingRabbit.utils.Enum;
   
   public class ScrollingIndicatorDirection extends Enum
   {
      
      public static const Down:ScrollingIndicatorDirection = new ScrollingIndicatorDirection();
      
      public static const Up:ScrollingIndicatorDirection = new ScrollingIndicatorDirection();
      
      {
         initEnum(ScrollingIndicatorDirection);
      }
      
      public function ScrollingIndicatorDirection()
      {
         super();
      }
   }
}
