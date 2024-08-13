package com.smbc.data
{
   import com.explodingRabbit.cross.games.Game;
   import com.explodingRabbit.cross.games.Games;
   import com.smbc.graphics.ThemeGroup;
   import com.smbc.level.CharacterSelect;
   import com.smbc.level.Level;
   import flash.utils.Dictionary;
   
   public class Themes
   {
      
      public static const NORMAL:int = 1;
      
      public static const SNOW:int = 2;
      
      public static const UNDER_GROUND:int = 3;
      
      public static const WATER:int = 4;
      
      public static const DUNGEON:int = 5;
      
      public static const PLATFORM:int = 6;
      
      public static const COIN_HEAVEN:int = 7;
      
      public static const CUSTOM_1:int = 8;
      
      public static const CUSTOM_2:int = 9;
      
      public static const IND_THEME:int = 0;
      
      public static const IND_SET:int = 1;
      
      public static const IND_PRIORITY:int = 2;
      
      private static const THEME_TYPE_MAP:int = 0;
      
      private static const THEME_TYPE_ENEMY:int = 1;
      
      private static const THEME_TYPE_INTERFACE:int = 2;
      
      private static const MIN_SKIN:int = Games.superMarioBros.skinSetNum;
      
      private static const storedThemesVec:Vector.<ThemeGroup> = new Vector.<ThemeGroup>(3,true);
      
      public static var var_1:int;
      
      public static const MIN_THEME:int = 1;
      
      public static const MAX_THEMES:int = 16;
       
      
      public function Themes()
      {
         super();
      }
      
      public static function getMapTheme(param1:Boolean = false, param2:String = null, param3:String = null) : ThemeGroup
      {
         if(param1)
         {
            return storedThemesVec[THEME_TYPE_MAP];
         }
         if(Level.levelInstance is CharacterSelect)
         {
            return determineTheme(CharacterSelect.instance.levelIdForTheme.fullName,CharacterSelect.instance.levTypeForTheme,THEME_TYPE_MAP);
         }
         return determineTheme(param2,param3,THEME_TYPE_MAP);
      }
      
      public static function getEnemyTheme(param1:Boolean = false, param2:String = null, param3:String = null) : ThemeGroup
      {
         if(param1)
         {
            return storedThemesVec[THEME_TYPE_ENEMY];
         }
         return determineTheme(param2,param3,THEME_TYPE_ENEMY);
      }
      
      public static function getInterfaceTheme(param1:Boolean = false, param2:String = null, param3:String = null) : ThemeGroup
      {
         if(param1)
         {
            return storedThemesVec[THEME_TYPE_INTERFACE];
         }
         return determineTheme(param2,param3,THEME_TYPE_INTERFACE);
      }
      
      public static function getThemeBySkinNum(param1:int, param2:String = null, param3:String = null) : ThemeGroup
      {
         return determineTheme(param2,param3,-1,param1);
      }
      
      private static function determineTheme(param1:String, param2:String, param3:int, param4:int = -1) : ThemeGroup
      {
         var _loc7_:Dictionary = null;
         var _loc12_:String = null;
         var _loc13_:ThemeGroup = null;
         var _loc5_:Level = Level.levelInstance;
         if(_loc5_)
         {
            if(!param1)
            {
               param1 = _loc5_.id.fullName;
            }
            if(!param2)
            {
               param2 = _loc5_.type;
            }
         }
         if(param3 >= 0)
         {
            if(param3 == THEME_TYPE_MAP)
            {
               param4 = GameSettings.getMapSkinLimited();
            }
            else if(param3 == THEME_TYPE_ENEMY)
            {
               param4 = GameSettings.getEnemySkinLimited();
            }
            else
            {
               if(param3 != THEME_TYPE_INTERFACE)
               {
                  throw new Error("cannot get theme for this bmcType");
               }
               param4 = GameSettings.getInterfaceSkinLimited();
            }
         }
         if(GameSettings.FORCE_THEME_GROUP)
         {
            return GameSettings.FORCE_THEME_GROUP;
         }
         var _loc6_:Game = Games.getGameFromSkinSetNum(param4);
         if(_loc6_)
         {
            _loc7_ = _loc6_.getThemeLevelInfo();
         }
         if(!_loc7_)
         {
            throw new Error("game doesn\'t have themeInfoDct");
         }
         var _loc8_:LevelID = LevelID.Create(param1);
         var _loc9_:Array = [param1,_loc8_.world.toString() + param2,param2];
         var _loc10_:int = int(_loc9_.length);
         var _loc11_:int = 0;
         while(_loc11_ < _loc10_)
         {
            _loc12_ = _loc9_[_loc11_];
            _loc13_ = _loc7_[_loc12_];
            if(_loc13_)
            {
               return setTheme(_loc13_,param3);
            }
            _loc11_++;
         }
         _loc7_ = _loc6_.getThemeLevelInfo(false);
         _loc11_ = 0;
         while(_loc11_ < _loc10_)
         {
            _loc12_ = _loc9_[_loc11_];
            _loc13_ = _loc7_[_loc12_];
            if(_loc13_)
            {
               return setTheme(_loc13_,param3);
            }
            _loc11_++;
         }
         throw new Error("Theme not found");
      }
      
      private static function setTheme(param1:ThemeGroup, param2:int) : ThemeGroup
      {
         if(param2 >= MIN_SKIN)
         {
            storedThemesVec[param2] = param1;
         }
         return param1;
      }
   }
}
