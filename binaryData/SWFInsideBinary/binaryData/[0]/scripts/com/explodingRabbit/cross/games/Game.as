package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.sound.Song;
   import com.explodingRabbit.utils.ArrayUtils;
   import com.explodingRabbit.utils.CustomDictionary;
   import com.smbc.data.GameSettings;
   import com.smbc.data.MapPack;
   import com.smbc.data.MusicType;
   import com.smbc.graphics.ThemeGroup;
   import flash.utils.Dictionary;
   import flash.utils.describeType;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   
   public class Game
   {
      
      public static var numSongs:int;
      
      protected static const IND_TG_THEME:int = 0;
      
      protected static const IND_TG_SET:int = 1;
      
      public static const IND_THEME_PL_SONG:int = 0;
      
      public static const IND_THEME_PL_LEVEL_TYPES:int = 1;
      
      protected static const LT_CASTLE:String = MusicType.LT_CASTLE;
      
      protected static const LT_CHEEP_CHEEP:String = MusicType.LT_CHEEP_CHEEP;
      
      protected static const LT_COIN_HEAVEN:String = MusicType.LT_COIN_HEAVEN;
      
      protected static const LT_INTRO:String = MusicType.LT_INTRO;
      
      protected static const LT_NORMAL:String = MusicType.LT_NORMAL;
      
      protected static const LT_PIPE_BONUS:String = MusicType.LT_PIPE_BONUS;
      
      protected static const LT_PLATFORM:String = MusicType.LT_PLATFORM;
      
      protected static const LT_UNDER_GROUND:String = MusicType.LT_UNDER_GROUND;
      
      protected static const LT_WATER:String = MusicType.LT_WATER;
      
      protected static const MT_DARK_EPIC:String = MusicType.MT_DARK_EPIC;
      
      protected static const BOSS:String = MusicType.BOSS;
      
      protected static const CHAR_SEL:String = MusicType.CHAR_SEL;
      
      protected static const CHOOSE_CHARACTER:String = MusicType.CHOOSE_CHARACTER;
      
      protected static const CREDITS:String = MusicType.CREDITS;
      
      protected static const DIE:String = MusicType.DIE;
      
      protected static const FINAL_BOSS:String = MusicType.FINAL_BOSS;
      
      protected static const GAME_OVER:String = MusicType.GAME_OVER;
      
      protected static const HURRY:String = MusicType.HURRY;
      
      protected static const STAR:String = MusicType.STAR;
      
      protected static const TITLE_SCREEN:String = MusicType.TITLE_SCREEN;
      
      protected static const WIN:String = MusicType.WIN;
      
      protected static const WIN_CASTLE:String = MusicType.WIN_CASTLE;
       
      
      public var creditsGame:Game;
      
      private var _publisher:String;
      
      private var _fullName:String;
      
      private var _shortName:String;
      
      private var _console:String;
      
      private var songDct:Dictionary;
      
      private var _gameNum:int;
      
      private var _skinSetNum:int;
      
      private var typePlayListDct:Dictionary;
      
      private var themePlayListArr:Array;
      
      private var themeLevelInfo:Dictionary;
      
      public var gameToUseAsPlayList:Game;
      
      private var overridableMusicTypes:CustomDictionary;
      
      private var themeGroupDct:CustomDictionary;
      
      private var hurrySongsDct:Dictionary;
      
      protected var themeMapPack:MapPack = null;
      
      public function Game(param1:String, param2:String, param3:String, param4:int, param5:String = null, param6:int = -1)
      {
         super();
         this._fullName = param1;
         this._shortName = param5;
         this._publisher = param2;
         this._console = param3;
         this._gameNum = param4;
         this._skinSetNum = param6;
         this.creditsGame = this;
      }
      
      final protected function addSong(param1:Class, param2:int = -1, param3:Game = null, param4:int = 100, param5:int = 0, param6:int = 0, param7:int = 0, param8:int = 0) : Song
      {
         if(!this.songDct)
         {
            this.songDct = new Dictionary();
         }
         var _loc9_:Song = new Song(param1,param2,param3,param4,param5,param6,param7,param8);
         this.songDct[_loc9_] = _loc9_;
         ++numSongs;
         return _loc9_;
      }
      
      public function initiate() : void
      {
         var _loc4_:int = 0;
         var _loc5_:Object = null;
         var _loc6_:ThemeGroup = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:Song = null;
         var _loc1_:Object = getDefinitionByName(getQualifiedClassName(this));
         var _loc2_:XMLList = describeType(this)..constant;
         var _loc3_:int = int(_loc2_.length());
         while(_loc4_ < _loc3_)
         {
            _loc7_ = String(_loc2_[_loc4_].@name);
            _loc8_ = this[_loc7_];
            if(_loc7_.indexOf("Sng") != -1)
            {
               this.songDct[_loc8_] = _loc7_;
            }
            _loc4_++;
         }
         for(_loc5_ in this.songDct)
         {
            (_loc9_ = _loc5_ as Song).name = this.songDct[_loc5_];
            _loc9_.game = this;
         }
         for each(_loc6_ in this.themeGroupDct)
         {
            _loc6_.game = this;
         }
         this.songDct = null;
         this.setUpLevelThemes();
         this.createPlayList();
         if(Boolean(this.typePlayListDct) && !this.gameToUseAsPlayList)
         {
            this.verifyTypePlayList();
         }
         else
         {
            this.overridableMusicTypes = null;
         }
      }
      
      protected function setUpLevelThemes() : void
      {
      }
      
      protected function createPlayList() : void
      {
      }
      
      private function verifyTypePlayList() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Dictionary = null;
         var _loc3_:String = null;
         for(_loc1_ in this.typePlayListDct)
         {
            if(this.typePlayListDct[_loc1_] == null)
            {
               this.typePlayListDct[_loc1_] = Song.EMPTY_SONG;
            }
         }
         _loc2_ = MusicType.DCT;
         for each(_loc3_ in _loc2_)
         {
            if(!this.typePlayListDct[_loc3_])
            {
               throw new Error("MusicType " + _loc3_ + " is missing from " + this.fullName + " playlist");
            }
         }
      }
      
      protected function addToTypePlayList(param1:String, ... rest) : void
      {
         if(!this.typePlayListDct)
         {
            this.typePlayListDct = new Dictionary();
         }
         this.typePlayListDct[param1] = rest;
      }
      
      public function getSongFromTypePlayList(param1:String) : Song
      {
         if(Boolean(this.typePlayListDct) && Boolean(this.typePlayListDct[param1]))
         {
            return this.typePlayListDct[param1][0];
         }
         return null;
      }
      
      protected function addToThemePlayList(param1:ThemeGroup, param2:Song, param3:Array) : void
      {
         if(!this.themePlayListArr)
         {
            this.themePlayListArr = [];
         }
         var _loc4_:Array;
         (_loc4_ = [])[IND_THEME_PL_SONG] = param2;
         _loc4_[IND_THEME_PL_LEVEL_TYPES] = ArrayUtils.convArrayToDct(param3);
         ArrayUtils.writeNestedArray(this.themePlayListArr,_loc4_,param1.theme,param1.setNum);
      }
      
      public function getSongFromThemePlayList(param1:int, param2:int, param3:String) : Song
      {
         if(!this.themePlayListArr)
         {
            return null;
         }
         var _loc4_:Array = ArrayUtils.readNestedArr(this.themePlayListArr,param1,param2);
         if(!_loc4_)
         {
            return null;
         }
         var _loc5_:Dictionary = _loc4_[IND_THEME_PL_LEVEL_TYPES];
         if(!_loc5_[param3])
         {
            return null;
         }
         return _loc4_[IND_THEME_PL_SONG];
      }
      
      public function getHurryVersionOfSong(param1:Song) : Song
      {
         if(this.hurrySongsDct)
         {
            return this.hurrySongsDct[param1];
         }
         return null;
      }
      
      protected function addHurryVersionOfSong(param1:Song, param2:Song) : void
      {
         if(!this.hurrySongsDct)
         {
            this.hurrySongsDct = new Dictionary();
         }
         this.hurrySongsDct[param1] = param2;
      }
      
      protected function setGameToUseAsPlayList(param1:Game) : void
      {
         if(!param1.typePlayListDct)
         {
            param1.typePlayListDct = new Dictionary();
         }
         if(!param1.hurrySongsDct)
         {
            param1.hurrySongsDct = new Dictionary();
         }
         this.hurrySongsDct = param1.hurrySongsDct;
         this.typePlayListDct = param1.typePlayListDct;
         if(!param1.themePlayListArr)
         {
            param1.themePlayListArr = [];
         }
         this.themePlayListArr = param1.themePlayListArr;
         this.gameToUseAsPlayList = param1;
      }
      
      public function getThemeLevelInfo(param1:Boolean = true) : Dictionary
      {
         var _loc2_:Dictionary = this.themeLevelInfo[GameSettings.mapPack];
         if(_loc2_ == null || !param1)
         {
            _loc2_ = this.themeLevelInfo;
         }
         return _loc2_;
      }
      
      protected function addOverridableMusicTypes(... rest) : void
      {
         var _loc2_:String = null;
         if(!this.overridableMusicTypes)
         {
            this.overridableMusicTypes = new CustomDictionary();
         }
         for each(_loc2_ in rest)
         {
            this.overridableMusicTypes.addItem(_loc2_);
         }
      }
      
      public function getOverridedMusicType(param1:ThemeGroup, param2:String) : String
      {
         if(!this.overridableMusicTypes || !this.overridableMusicTypes[param2] || !param1.musicType || param1.game == this)
         {
            return param2;
         }
         return param1.musicType;
      }
      
      protected function addThemeGroup(param1:int, param2:int, param3:String = null) : ThemeGroup
      {
         if(!this.themeGroupDct)
         {
            this.themeGroupDct = new CustomDictionary();
         }
         var _loc4_:ThemeGroup = new ThemeGroup(param1,param2,param3);
         this.themeGroupDct.addItem(_loc4_);
         return _loc4_;
      }
      
      protected function addToThemeInfoGeneral(param1:ThemeGroup, ... rest) : void
      {
         var _loc3_:String = null;
         var _loc4_:Dictionary = null;
         if(!this.themeLevelInfo)
         {
            this.themeLevelInfo = new Dictionary();
         }
         if(!rest || !rest.length)
         {
            throw new Error("no keys specified");
         }
         for each(_loc3_ in rest)
         {
            _loc4_ = this.themeLevelInfo;
            if(this.themeMapPack != null)
            {
               _loc4_ = this.addDictionaryIfNull(this.themeLevelInfo,this.themeMapPack);
            }
            if(_loc4_[_loc3_])
            {
               throw new Error(_loc3_ + " is already set as a key");
            }
            _loc4_[_loc3_] = param1;
         }
      }
      
      private function addDictionaryIfNull(param1:Dictionary, param2:MapPack) : Dictionary
      {
         var _loc3_:Dictionary = param1[param2];
         if(_loc3_ == null)
         {
            _loc3_ = new Dictionary();
            param1[param2] = _loc3_;
         }
         return _loc3_;
      }
      
      protected function addToThemeInfoWorld(param1:int, param2:ThemeGroup, ... rest) : void
      {
         var _loc7_:String = null;
         if(param1 < 0 || param1 > GameSuperMarioBrosLostLevels.NUM_WORLDS)
         {
            throw new Error("invalid world number");
         }
         var _loc4_:int = int(rest.length);
         var _loc5_:String = param1.toString();
         var _loc6_:int = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = rest[_loc6_];
            this.addToThemeInfoGeneral(param2,_loc5_ + _loc7_);
            _loc6_++;
         }
      }
      
      public function get console() : String
      {
         return this._console;
      }
      
      public function get fullName() : String
      {
         return this._fullName;
      }
      
      public function get shortName() : String
      {
         return this._shortName;
      }
      
      public function get gameNum() : int
      {
         return this._gameNum;
      }
      
      public function get skinSetNum() : int
      {
         return this._skinSetNum;
      }
      
      public function get publisher() : String
      {
         return this._publisher;
      }
   }
}
