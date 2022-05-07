package com.smbc.level
{
   import com.smbc.data.BackgroundNames;
   import com.smbc.data.LevelDataTranscoder;
   import com.smbc.data.MapPack;
   import com.smbc.graphics.Background;
   import com.smbc.graphics.BackgroundInfo;
   import com.smbc.managers.GraphicsManager;
   
   public class LevelData
   {
      
      private static const SmbXmlData:Class = LevelData_SmbXmlData;
      
      private static const SmbXml:XML = XML(new SmbXmlData());
      
      private static const SpecialXmlData:Class = LevelData_SpecialXmlData;
      
      private static const SpecialXml:XML = XML(new SpecialXmlData());
      
      private static const DEF_WATER_BG:String = BackgroundNames.WATER_SKY + BackgroundNames.CORAL_AND_ROCKS + BackgroundNames.WATER_DISTORTION + BackgroundNames.WATER_HAZE;
      
      private static const IND_DEF_SKIN_VEC_MUSIC:int = 0;
      
      private static const IND_DEF_SKIN_VEC_BACKGROUND:int = 1;
      
      private static const IND_DEF_SKIN_VEC_FOREGROUND:int = 2;
       
      
      private var xml:XML;
      
      private var levelObject:Level;
      
      public var curFullLevStr:String;
      
      private var map:Array;
      
      private var pickups:Array;
      
      public var bgStrVec:Vector.<String>;
      
      public var fgStrVec:Vector.<String>;
      
      private var music:int;
      
      private var area:String;
      
      private var _type:String;
      
      private var worldLevNum:String;
      
      private var theme:int;
      
      private var _hwArea:String;
      
      private var _lockedCheckpoint:Boolean;
      
      private var _timeLeftTot:uint;
      
      private var mainArea:String;
      
      private var mapPack:MapPack;
      
      public function LevelData(param1:MapPack)
      {
         super();
         this.mapPack = param1;
         this.xml = this.getXml(param1);
      }
      
      private function getXml(param1:MapPack) : XML
      {
         switch(param1)
         {
            case MapPack.Smb:
               return SmbXml;
            case MapPack.Special:
               return SpecialXml;
            default:
               return null;
         }
      }
      
      public function getCurrentLevel(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:LevelDataTranscoder = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:uint = 0;
         var _loc8_:XML = null;
         var _loc9_:XML = null;
         var _loc10_:String = null;
         this.curFullLevStr = param1;
         this.worldLevNum = param1.substring(0,3);
         if(param1.length > 3)
         {
            this.area = param1.charAt(3);
         }
         else
         {
            this.area = "a";
         }
         loop0:
         for each(_loc8_ in this.xml.*)
         {
            if(_loc8_.@ID == this.worldLevNum)
            {
               for each(_loc9_ in _loc8_.*)
               {
                  if(_loc9_.@ID == this.area)
                  {
                     this._hwArea = _loc8_.@HW_AREA;
                     this._lockedCheckpoint = this.stringToBool(_loc8_.@LOCKED_CP);
                     this.mainArea = _loc8_.@MAIN_AREA;
                     this._timeLeftTot = int(_loc8_.@TIME);
                     _loc2_ = _loc9_.MAP;
                     _loc3_ = _loc9_.PICKUPS;
                     this._type = _loc9_.@TYPE;
                     if((_loc10_ = _loc9_.@MUSIC) == "night")
                     {
                        _loc10_ = "overworld";
                     }
                     this.music = LevelDataTranscoder.MUSIC_OBJ[_loc10_];
                     break loop0;
                  }
               }
            }
         }
         _loc5_ = new Array();
         _loc6_ = new Array();
         _loc5_ = _loc2_.split("],");
         _loc6_ = _loc3_.split("],");
         this.map = new Array();
         _loc7_ = 0;
         while(_loc7_ < _loc5_.length)
         {
            this.map[_loc7_] = _loc5_[_loc7_].split(",");
            _loc7_++;
         }
      }
      
      private function stringToBool(param1:String) : Boolean
      {
         return param1 == "True";
      }
      
      public function getSpecificLevelMusic(param1:String) : int
      {
         return this.getMusic(param1);
      }
      
      public function get hwArea() : String
      {
         return this._hwArea;
      }
      
      public function get lockedCheckpoint() : Boolean
      {
         return this._lockedCheckpoint;
      }
      
      public function gettimeLeftTot(param1:String = null) : uint
      {
         this.checkGetCurrentLevel(param1);
         return this._timeLeftTot;
      }
      
      public function getMap() : Array
      {
         return this.map;
      }
      
      public function getPickups() : Array
      {
         return this.pickups;
      }
      
      public function getMusic(param1:String = null) : int
      {
         this.checkGetCurrentLevel(param1);
         return this.music;
      }
      
      public function getBGVec(param1:String = null) : Vector.<Background>
      {
         var _loc4_:int = 0;
         var _loc5_:Background = null;
         this.checkGetCurrentLevel(param1);
         var _loc2_:Vector.<Background> = new Vector.<Background>();
         var _loc3_:int = this.bgStrVec.length;
         while(_loc4_ < _loc3_)
         {
            if(_loc5_ = BackgroundInfo.OBJ[GraphicsManager.INSTANCE.cMapNum + BackgroundInfo.SEP + this.bgStrVec[_loc4_]])
            {
               _loc2_[_loc4_] = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function getFGVec(param1:String = null) : Vector.<Background>
      {
         var _loc4_:int = 0;
         var _loc5_:Background = null;
         this.checkGetCurrentLevel(param1);
         var _loc2_:Vector.<Background> = new Vector.<Background>();
         var _loc3_:int = this.fgStrVec.length;
         while(_loc4_ < _loc3_)
         {
            if(_loc5_ = BackgroundInfo.OBJ[GraphicsManager.INSTANCE.cMapNum.toString() + BackgroundInfo.SEP + this.fgStrVec[_loc4_]])
            {
               _loc2_[_loc4_] = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function getWorldLevNum() : String
      {
         return this.worldLevNum;
      }
      
      public function getArea() : String
      {
         return this.area;
      }
      
      public function getTheme(param1:String = null) : int
      {
         this.checkGetCurrentLevel(param1);
         return this.theme;
      }
      
      public function getMainArea(param1:String = null) : String
      {
         this.checkGetCurrentLevel(param1);
         return this.mainArea;
      }
      
      private function checkGetCurrentLevel(param1:String) : void
      {
         if(param1 && this.curFullLevStr != param1)
         {
            this.getCurrentLevel(param1);
         }
      }
      
      public function getType(param1:String = null) : String
      {
         this.checkGetCurrentLevel(param1);
         return this._type;
      }
   }
}
