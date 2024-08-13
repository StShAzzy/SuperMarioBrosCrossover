package com.smbc.enums
{
   import com.explodingRabbit.utils.Enum;
   import com.smbc.data.MapDifficulty;
   
   public class BeatGameStatus extends Enum
   {
      
      public static const None:BeatGameStatus = new BeatGameStatus();
      
      public static const Easy:BeatGameStatus = new BeatGameStatus();
      
      public static const Normal:BeatGameStatus = new BeatGameStatus();
      
      public static const Hard:BeatGameStatus = new BeatGameStatus();
      
      {
         initEnum(BeatGameStatus);
      }
      
      public function BeatGameStatus(param1:String = null)
      {
         super(param1);
      }
      
      public static function GetStatus(param1:int) : BeatGameStatus
      {
         switch(param1)
         {
            case MapDifficulty.EASY:
               return Easy;
            case MapDifficulty.NORMAL:
               return Normal;
            case MapDifficulty.HARD:
               return Hard;
            default:
               return None;
         }
      }
      
      public static function GetMapDifficulty(param1:BeatGameStatus) : int
      {
         switch(param1)
         {
            case Easy:
               return MapDifficulty.EASY;
            case Normal:
               return MapDifficulty.NORMAL;
            case Hard:
               return MapDifficulty.HARD;
            default:
               return -1;
         }
      }
   }
}
