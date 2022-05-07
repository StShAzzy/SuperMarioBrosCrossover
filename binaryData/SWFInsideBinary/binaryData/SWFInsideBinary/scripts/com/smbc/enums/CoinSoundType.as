package com.smbc.enums
{
   import com.explodingRabbit.utils.Enum;
   
   public class CoinSoundType extends Enum
   {
      
      public static const Normal:CoinSoundType = new CoinSoundType();
      
      public static const Quiet:CoinSoundType = new CoinSoundType();
      
      public static const Off:CoinSoundType = new CoinSoundType();
      
      {
         initEnum(CoinSoundType);
      }
      
      public function CoinSoundType(param1:String = null)
      {
         super(param1);
      }
   }
}
