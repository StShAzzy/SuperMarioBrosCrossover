package com.smbc.enums
{
   import com.explodingRabbit.utils.Enum;
   
   public class ItemDropRate extends Enum
   {
      
      public static const VeryLow:ItemDropRate = new ItemDropRate(-0.05,"Very Low");
      
      public static const Low:ItemDropRate = new ItemDropRate(-0.025,"Low");
      
      public static const Normal:ItemDropRate = new ItemDropRate(0,"Normal");
      
      public static const High:ItemDropRate = new ItemDropRate(0.075,"High");
      
      public static const VeryHigh:ItemDropRate = new ItemDropRate(0.15,"Very High");
      
      {
         initEnum(ItemDropRate);
      }
      
      private var _dropRateOffset:Number;
      
      public function ItemDropRate(param1:Number, param2:String = null)
      {
         super(param2);
         this._dropRateOffset = param1;
      }
      
      public function get dropRateOffset() : Number
      {
         return this._dropRateOffset;
      }
   }
}
