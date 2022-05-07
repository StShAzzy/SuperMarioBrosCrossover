package com.smbc.data
{
   import com.explodingRabbit.cross.games.Games;
   import flash.utils.describeType;
   import flash.utils.getDefinitionByName;
   
   public class CharacterInfo
   {
      
      private static const CHAR_PATH:String = "com.smbc.characters.";
      
      private static var indCtr:int = -1;
      
      public static const IND_CHAR_NUM:int = indCtr = indCtr + 1;
      
      public static const IND_CHAR_NAME:int = indCtr = indCtr + 1;
      
      public static const IND_CHAR_NAME_CLASS:int = indCtr = indCtr + 1;
      
      public static const IND_CHAR_NAME_CAPS:int = indCtr = indCtr + 1;
      
      public static const IND_CHAR_NAME_MENUS:int = indCtr = indCtr + 1;
      
      public static const IND_CHAR_NAME_FULL:int = indCtr = indCtr + 1;
      
      public static const IND_CHAR_NAME_DIALOG:int = indCtr = indCtr + 1;
      
      public static const IND_BASE_CLASS_NAME:int = indCtr = indCtr + 1;
      
      public static const IND_GAMES:int = indCtr = indCtr + 1;
      
      private static var charCtr:int = -1;
      
      public static const Bass:Array = [charCtr = charCtr + 1,"bass","Bass","BASS","Bass","Bass","Bass","MegaManBase",[Games.megaMan10]];
      
      public static const Bill:Array = [charCtr = charCtr + 1,"bill","Bill","BILL","Bill","Bill Rizer","Bill",null,[Games.contra,Games.superC,Games.operationC,Games.contraForce,Games.contraHardCorps,Games.contra3Gb,Games.contra3Snes]];
      
      public static const Link:Array = [charCtr = charCtr + 1,"link","Link","LINK","Link","Link","Link","Link",[Games.zelda,Games.zeldaAdventureOfLink,Games.zeldaLinksAwakening,Games.zeldaLinkToThePast,Games.zeldaOracleOfAges,Games.zeldaOracleOfSeasons]];
      
      public static const Luigi:Array = [charCtr = charCtr + 1,"luigi","Luigi","LUIGI","Luigi","Luigi","Luigi","MarioBase",[Games.superMarioBrosLostLevels,Games.superMarioBros,Games.superMarioBros2,Games.superMarioBros3,Games.superMarioAllStars]];
      
      public static const Mario:Array = [charCtr = charCtr + 1,"mario","Mario","MARIO","Mario","Mario","Mario","MarioBase",[Games.superMarioBros,Games.superMarioBrosLostLevels,Games.superMarioBros2,Games.superMarioBros3,Games.superMarioLand,Games.superMarioWorld,Games.superMarioLand2,Games.superMarioAllStars]];
      
      public static const MegaMan:Array = [charCtr = charCtr + 1,"megaMan","MegaMan","MEGA_MAN","Mega Man","Mega Man","Mega Man","MegaManBase",[Games.megaMan,Games.megaMan5,Games.megaMan2,Games.megaMan3,Games.megaMan4,Games.megaMan6,Games.megaMan7,Games.megaManAndBass,Games.megaManGb,Games.megaMan2Gb,Games.megaMan3Gb,Games.megaMan4Gb,Games.megaMan5Gb,Games.megaManWilyWars,Games.megaMan9,Games.megaMan10]];
      
      public static const Ryu:Array = [charCtr = charCtr + 1,"ryu","Ryu","RYU","Ryu","Ryu Hayabusa","Ryu",null,[Games.ninjaGaiden,Games.ninjaGaiden2,Games.ninjaGaiden3,Games.ninjaGaidenShadow,Games.ninjaGaidenTrilogy,Games.ninjaGaidenGg,Games.ninjaGaidenSms]];
      
      public static const Samus:Array = [charCtr = charCtr + 1,"samus","Samus","SAMUS","Samus","Samus Aran","Samus",null,[Games.metroid,Games.metroid2,Games.superMetroid]];
      
      public static const Simon:Array = [charCtr = charCtr + 1,"simon","Simon","SIMON","Simon","Simon Belmont","Simon",null,[Games.castlevania,Games.castlevania2,Games.castlevania3,Games.castlevaniaBelmontsRevenge,Games.castlevaniaAdventure,Games.castlevaniaBloodlines,Games.castlevaniaDraculaX,Games.castlevaniaLegends,Games.superCastlevania4,Games.vampireKiller]];
      
      public static const Sophia:Array = [charCtr = charCtr + 1,"sophia","Sophia","SOPHIA","Sophia III","Sophia III","Jason",null,[Games.blasterMaster,Games.blasterMasterEnemyBelow]];
      
      private static const _CHAR_ARR:Vector.<Array> = new Vector.<Array>();
       
      
      public function CharacterInfo()
      {
         super();
      }
      
      public static function initiate() : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:Object = null;
         var _loc1_:XMLList = describeType(CharacterInfo)..constant;
         var _loc2_:int = _loc1_.length();
         if(!_loc2_)
         {
            throw new Error("cannot initiate");
         }
         while(_loc3_ < _loc2_)
         {
            _loc4_ = _loc1_[_loc3_].@name;
            _loc5_ = _loc1_[_loc3_].@type;
            _loc6_ = CharacterInfo[_loc4_];
            if(_loc5_ == "Array")
            {
               _CHAR_ARR.push(_loc6_);
            }
            _loc3_++;
         }
         _CHAR_ARR.sort(sortCharArr);
         return true;
      }
      
      private static function sortCharArr(param1:Array, param2:Array) : int
      {
         var _loc3_:int = param1[IND_CHAR_NUM];
         var _loc4_:int = param2[IND_CHAR_NUM];
         if(_loc3_ < _loc4_)
         {
            return -1;
         }
         if(_loc3_ > _loc4_)
         {
            return 1;
         }
         return 0;
      }
      
      public static function convNameToNum(param1:String) : int
      {
         var _loc4_:String = null;
         var _loc2_:int = NUM_CHARACTERS;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if((_loc4_ = CHAR_ARR[_loc3_][IND_CHAR_NAME]) === param1)
            {
               return _loc3_;
            }
            _loc3_++;
         }
         return -1;
      }
      
      public static function convNumToName(param1:int) : String
      {
         return CHAR_ARR[param1][IND_CHAR_NAME];
      }
      
      public static function getCharClassName(param1:int, param2:Boolean = false) : String
      {
         var _loc3_:String = null;
         if(param2)
         {
            _loc3_ = CHAR_ARR[param1][IND_BASE_CLASS_NAME];
         }
         if(!_loc3_)
         {
            _loc3_ = CHAR_ARR[param1][IND_CHAR_NAME_CLASS];
         }
         return _loc3_;
      }
      
      public static function getCharClassFromNum(param1:int, param2:Boolean = false) : Class
      {
         var _loc3_:String = null;
         if(param2)
         {
            _loc3_ = CHAR_ARR[param1][IND_BASE_CLASS_NAME];
         }
         if(!_loc3_)
         {
            _loc3_ = CHAR_ARR[param1][IND_CHAR_NAME_CLASS];
         }
         return getDefinitionByName(CHAR_PATH + _loc3_) as Class;
      }
      
      public static function get NUM_CHARACTERS() : int
      {
         return CHAR_ARR.length;
      }
      
      public static function get CHAR_ARR() : Vector.<Array>
      {
         if(!_CHAR_ARR.length)
         {
            initiate();
         }
         return _CHAR_ARR;
      }
   }
}
