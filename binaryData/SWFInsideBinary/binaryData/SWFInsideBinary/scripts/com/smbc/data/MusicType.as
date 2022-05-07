package com.smbc.data
{
   import flash.utils.Dictionary;
   import flash.utils.describeType;
   
   public class MusicType
   {
      
      public static const LT_CASTLE:String = LevelTypes.CASTLE;
      
      public static const LT_CHEEP_CHEEP:String = LevelTypes.CHEEP_CHEEP;
      
      public static const LT_COIN_HEAVEN:String = LevelTypes.COIN_HEAVEN;
      
      public static const LT_INTRO:String = LevelTypes.INTRO;
      
      public static const LT_NORMAL:String = LevelTypes.NORMAL;
      
      public static const LT_PIPE_BONUS:String = LevelTypes.PIPE_BONUS;
      
      public static const LT_PLATFORM:String = LevelTypes.PLATFORM;
      
      public static const LT_UNDER_GROUND:String = LevelTypes.UNDER_GROUND;
      
      public static const LT_WATER:String = LevelTypes.WATER;
      
      public static const MT_DARK_EPIC:String = "darkEpic";
      
      public static const BOSS:String = "BOSS";
      
      public static const CHAR_SEL:String = "CHAR_SEL";
      
      public static const CHOOSE_CHARACTER:String = "INTRO_LEVEL";
      
      public static const CREDITS:String = "CREDITS";
      
      public static const DIE:String = "DIE";
      
      public static const FINAL_BOSS:String = "FINAL_BOSS";
      
      public static const GAME_OVER:String = "GAME_OVER";
      
      public static const HURRY:String = "HURRY";
      
      public static const STAR:String = "STAR";
      
      public static const TITLE_SCREEN:String = "TITLE_SCREEN";
      
      public static const WIN:String = "WIN";
      
      public static const WIN_CASTLE:String = "WIN_CASTLE";
      
      public static const DCT:Dictionary = new Dictionary();
       
      
      public function MusicType()
      {
         super();
      }
      
      public static function initiate() : void
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:XMLList = describeType(MusicType)..constant;
         var _loc2_:int = _loc1_.length();
         while(_loc3_ < _loc2_)
         {
            _loc4_ = String(_loc1_[_loc3_].@name);
            _loc5_ = String(MusicType[_loc4_]);
            if(_loc4_ != "DCT")
            {
               DCT[_loc4_] = _loc5_;
            }
            _loc3_++;
         }
      }
   }
}
