package com.smbc.data
{
   import com.explodingRabbit.utils.CustomDictionary;
   import com.smbc.characters.Samus;
   import com.smbc.characters.Simon;
   import com.smbc.events.CustomEvents;
   import com.smbc.level.Level;
   import com.smbc.managers.MessageBoxManager;
   import com.smbc.managers.SoundManager;
   import com.smbc.managers.StatManager;
   import com.smbc.managers.TutorialManager;
   import com.smbc.messageBoxes.MenuBoxItems;
   import com.smbc.messageBoxes.MessageBoxMessages;
   import flash.events.Event;
   import flash.utils.describeType;
   
   public class Cheats
   {
      
      private static const IND_VALUE:int = 0;
      
      private static const IND_LOCKED:int = 1;
      
      private static const IND_NAME:int = 2;
      
      private static const IND_UNLOCK_CONDITIONS_MESSAGE:int = 3;
      
      private static const PRE_CHAR:String = "_";
      
      public static const SN_ACTIVATE_CHEAT:String = SoundNames.SFX_GAME_NEW_LIFE;
      
      private static const _allHammerBros:Array = [false,true,MenuBoxItems.ALL_HAMMER_BROS,MessageBoxMessages.LOCKED_CHEAT_ALL_HAMMER_BROS];
      
      private static const _allWeaponsPierce:Array = [false,true,MenuBoxItems.ALL_WEAPONS_PIERCE,MessageBoxMessages.LOCKED_CHEAT_ALL_WEAPONS_PIERCE];
      
      private static const _allGroundIsBricks:Array = [false,true,MenuBoxItems.ALL_GROUND_IS_BRICKS,MessageBoxMessages.LOCKED_CHEAT_ALL_GROUND_IS_BRICKS];
      
      private static const _alwaysBreakBricks:Array = [false,true,MenuBoxItems.ALWAYS_BREAK_BRICKS,MessageBoxMessages.LOCKED_CHEAT_ALWAYS_BREAK_BRICKS];
      
      private static const _bouncyPits:Array = [false,true,MenuBoxItems.BOUNCY_PITS,MessageBoxMessages.LOCKED_CHEAT_BOUNCY_PITS];
      
      private static const _classicSamus:Array = [false,false,MenuBoxItems.CLASSIC_SAMUS,null];
      
      private static const _classicScreenScroll:Array = [false,false,MenuBoxItems.CLASSIC_SCREEN_SCROLL,null];
      
      private static const _classicSimon:Array = [false,false,MenuBoxItems.CLASSIC_SIMON,null];
      
      private static const _everyoneCanStomp:Array = [false,false,MenuBoxItems.EVERYONE_CAN_STOMP,null];
      
      private static const _evilHammerBros:Array = [false,true,MenuBoxItems.EVIL_HAMMER_BROS,MessageBoxMessages.LOCKED_CHEAT_EVIL_HAMMER_BROS];
      
      private static const _extraCheckpoints:Array = [false,true,MenuBoxItems.EXTRA_CHECKPOINTS,MessageBoxMessages.LOCKED_CHEAT_EXTRA_CHECKPOINTS];
      
      private static const _infiniteAmmo:Array = [false,true,MenuBoxItems.INFINITE_AMMO,MessageBoxMessages.LOCKED_CHEAT_INFINITE_AMMO];
      
      private static const _infiniteLives:Array = [false,true,MenuBoxItems.INFINITE_LIVES,MessageBoxMessages.LOCKED_CHEAT_INFINITE_LIVES];
      
      private static const _infiniteTime:Array = [false,true,MenuBoxItems.INFINITE_TIME,MessageBoxMessages.LOCKED_CHEAT_INFINITE_TIME];
      
      private static const _invincible:Array = [false,true,MenuBoxItems.INVINCIBLE,MessageBoxMessages.LOCKED_CHEAT_INVINCIBLE];
      
      private static const _levelSelect:Array = [false,true,MenuBoxItems.LEVEL_SELECT,MessageBoxMessages.LOCKED_CHEAT_LEVEL_SELECT];
      
      private static const _waterMode:Array = [false,true,MenuBoxItems.WATER_MODE,MessageBoxMessages.LOCKED_CHEAT_WATER_MODE];
      
      private static const LOCK_DCT:CustomDictionary = new CustomDictionary();
      
      private static var strVec:Vector.<String>;
      
      private static var numCheats:int;
       
      
      public function Cheats()
      {
         super();
      }
      
      public static function activateDebugCheats() : void
      {
         var _loc1_:int = IND_VALUE;
         _invincible[_loc1_] = true;
      }
      
      public static function unlockCheat(param1:String, param2:Array = null) : Vector.<String>
      {
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:Boolean = false;
         var _loc8_:Level = null;
         var _loc9_:TutorialManager = null;
         if(!param2)
         {
            param2 = [];
         }
         if(param1)
         {
            param2.push(param1);
         }
         var _loc3_:Vector.<String> = new Vector.<String>();
         var _loc4_:int = int(param2.length);
         while(_loc5_ < _loc4_)
         {
            _loc6_ = param2[_loc5_] as String;
            _loc7_ = getLockStatus(_loc6_);
            LOCK_DCT[_loc6_][IND_LOCKED] = false;
            if(GameSettings.cheatNotify && _loc7_ == true)
            {
               _loc3_.push(MessageBoxMessages.UNLOCKED_CHEAT_PRETEXT + _loc6_ + MessageBoxMessages.UNLOCKED_CHEAT_POSTTEXT);
            }
            _loc5_++;
         }
         if(_loc3_.length)
         {
            _loc8_ = Level.levelInstance;
            _loc9_ = TutorialManager.TUT_MNGR;
            if(_loc9_.checkTutorial(_loc9_.TYPE_CHEAT))
            {
               _loc3_ = _loc3_.concat(_loc9_.getStoredMessages());
            }
            if(Boolean(_loc8_) && _loc8_.LOOP_TMR.running)
            {
               if(!strVec)
               {
                  strVec = new Vector.<String>();
               }
               strVec = strVec.concat(_loc3_);
               _loc8_.addEventListener(CustomEvents.GAME_LOOP_END,gameLoopEndHandler,false,0,true);
            }
            else
            {
               MessageBoxManager.INSTANCE.createMessageBoxSeries(_loc3_,false,true);
            }
         }
         return _loc3_;
      }
      
      private static function gameLoopEndHandler(param1:Event) : void
      {
         var _loc2_:Level = Level.levelInstance;
         if(_loc2_)
         {
            _loc2_.removeEventListener(CustomEvents.GAME_LOOP_END,gameLoopEndHandler);
         }
         if(strVec)
         {
            MessageBoxManager.INSTANCE.createMessageBoxSeries(strVec,true,true);
         }
         strVec = null;
      }
      
      public static function getLockStatus(param1:String) : Boolean
      {
         return LOCK_DCT[param1][IND_LOCKED];
      }
      
      public static function getUnlockConditionsMessage(param1:String) : String
      {
         var _loc4_:String = null;
         var _loc2_:String = LOCK_DCT[param1][IND_UNLOCK_CONDITIONS_MESSAGE];
         var _loc3_:int = int(_loc2_.lastIndexOf(MessageBoxMessages.LOCKED_CHEAT_COUNT_VAR_KEY));
         if(_loc3_ != -1)
         {
            _loc4_ = _loc2_.substring(_loc3_ + MessageBoxMessages.LOCKED_CHEAT_COUNT_VAR_KEY_LEN);
            _loc2_ = _loc2_.substr(0,_loc3_) + StatManager.STAT_MNGR[_loc4_].toString();
         }
         return _loc2_;
      }
      
      public static function unlockAllCheats() : void
      {
         var _loc1_:Array = null;
         for each(_loc1_ in LOCK_DCT)
         {
            _loc1_[IND_LOCKED] = false;
         }
      }
      
      public static function setUpCheats() : void
      {
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Array = null;
         var _loc1_:XMLList = describeType(Cheats)..accessor;
         var _loc2_:int = int(_loc1_.length());
         while(_loc3_ < _loc2_)
         {
            _loc4_ = _loc1_[_loc3_].@name;
            _loc5_ = Cheats[PRE_CHAR + _loc4_];
            if(_loc5_)
            {
               _loc6_ = _loc5_ as Array;
               LOCK_DCT.addItem(_loc6_[IND_NAME],_loc6_);
            }
            _loc3_++;
         }
         numCheats = LOCK_DCT.length;
      }
      
      public static function prepareLoadSave() : Vector.<Array>
      {
         var arr:Array = null;
         var sortArrAlphabet:Function = null;
         sortArrAlphabet = function(param1:Array, param2:Array):int
         {
            var _loc3_:String = param1[IND_NAME];
            var _loc4_:String = param2[IND_NAME];
            if(_loc3_ < _loc4_)
            {
               return -1;
            }
            if(_loc3_ > _loc4_)
            {
               return 1;
            }
            return 0;
         };
         var vec:Vector.<Array> = new Vector.<Array>();
         for each(arr in LOCK_DCT)
         {
            vec.push(arr);
         }
         vec.sort(sortArrAlphabet);
         return vec;
      }
      
      public static function loadData(param1:Array) : void
      {
         var _loc4_:int = 0;
         var _loc5_:Array = null;
         var _loc2_:Vector.<Array> = prepareLoadSave();
         var _loc3_:int = int(_loc2_.length);
         if(param1.length != numCheats * 2)
         {
            throw new Error("incorrect number of data for cheats");
         }
         while(_loc4_ < _loc3_)
         {
            (_loc5_ = _loc2_[_loc4_])[IND_VALUE] = Boolean(param1.shift());
            _loc5_[IND_LOCKED] = Boolean(param1.shift());
            _loc4_++;
         }
      }
      
      public static function saveData() : Array
      {
         var _loc4_:int = 0;
         var _loc5_:Array = null;
         var _loc1_:Vector.<Array> = prepareLoadSave();
         var _loc2_:int = int(_loc1_.length);
         var _loc3_:Array = [];
         while(_loc4_ < _loc2_)
         {
            _loc5_ = _loc1_[_loc4_];
            _loc3_.push(int(_loc5_[IND_VALUE]).toString());
            _loc3_.push(int(_loc5_[IND_LOCKED]).toString());
            _loc4_++;
         }
         return _loc3_;
      }
      
      public static function get waterMode() : Boolean
      {
         return _waterMode[IND_VALUE];
      }
      
      public static function set waterMode(param1:Boolean) : void
      {
         _waterMode[IND_VALUE] = param1;
      }
      
      public static function get invincible() : Boolean
      {
         return _invincible[IND_VALUE];
      }
      
      public static function set invincible(param1:Boolean) : void
      {
         _invincible[IND_VALUE] = param1;
      }
      
      public static function get infiniteLives() : Boolean
      {
         return _infiniteLives[IND_VALUE];
      }
      
      public static function set infiniteLives(param1:Boolean) : void
      {
         _infiniteLives[IND_VALUE] = param1;
      }
      
      public static function get infiniteAmmo() : Boolean
      {
         return _infiniteAmmo[IND_VALUE];
      }
      
      public static function set infiniteAmmo(param1:Boolean) : void
      {
         _infiniteAmmo[IND_VALUE] = param1;
      }
      
      public static function get infiniteTime() : Boolean
      {
         return _infiniteTime[IND_VALUE];
      }
      
      public static function set infiniteTime(param1:Boolean) : void
      {
         _infiniteTime[IND_VALUE] = param1;
         StatManager.STAT_MNGR.setTimeLeftVisibility(param1);
      }
      
      public static function get extraCheckpoints() : Boolean
      {
         return _extraCheckpoints[IND_VALUE];
      }
      
      public static function set extraCheckpoints(param1:Boolean) : void
      {
         _extraCheckpoints[IND_VALUE] = param1;
      }
      
      public static function get allHammerBros() : Boolean
      {
         return _allHammerBros[IND_VALUE];
      }
      
      public static function set allHammerBros(param1:Boolean) : void
      {
         _allHammerBros[IND_VALUE] = param1;
      }
      
      public static function get evilHammerBros() : Boolean
      {
         return _evilHammerBros[IND_VALUE];
      }
      
      public static function set evilHammerBros(param1:Boolean) : void
      {
         _evilHammerBros[IND_VALUE] = param1;
      }
      
      public static function get bouncyPits() : Boolean
      {
         return _bouncyPits[IND_VALUE];
      }
      
      public static function set bouncyPits(param1:Boolean) : void
      {
         _bouncyPits[IND_VALUE] = param1;
      }
      
      public static function get classicSimon() : Boolean
      {
         return _classicSimon[IND_VALUE];
      }
      
      public static function set classicSimon(param1:Boolean) : void
      {
         _classicSimon[IND_VALUE] = param1;
         Simon.classicMode = param1;
      }
      
      public static function get classicSamus() : Boolean
      {
         return _classicSamus[IND_VALUE];
      }
      
      public static function set classicSamus(param1:Boolean) : void
      {
         _classicSamus[IND_VALUE] = param1;
         Samus.classicMode = param1;
      }
      
      public static function get everyoneCanStomp() : Boolean
      {
         return _everyoneCanStomp[IND_VALUE];
      }
      
      public static function set everyoneCanStomp(param1:Boolean) : void
      {
         _everyoneCanStomp[IND_VALUE] = param1;
      }
      
      public static function get classicScreenScroll() : Boolean
      {
         return _classicScreenScroll[IND_VALUE];
      }
      
      public static function get allWeaponsPierce() : Boolean
      {
         return _allWeaponsPierce[IND_VALUE];
      }
      
      public static function set allWeaponsPierce(param1:Boolean) : void
      {
         _allWeaponsPierce[IND_VALUE] = param1;
      }
      
      public static function get alwaysBreakBricks() : Boolean
      {
         return _alwaysBreakBricks[IND_VALUE];
      }
      
      public static function set alwaysBreakBricks(param1:Boolean) : void
      {
         _alwaysBreakBricks[IND_VALUE] = param1;
      }
      
      public static function get allGroundIsBricks() : Boolean
      {
         return _allGroundIsBricks[IND_VALUE];
      }
      
      public static function set allGroundIsBricks(param1:Boolean) : void
      {
         _allGroundIsBricks[IND_VALUE] = param1;
      }
      
      public static function set classicScreenScroll(param1:Boolean) : void
      {
         _classicScreenScroll[IND_VALUE] = param1;
         var _loc2_:Level = Level.levelInstance;
         if(_loc2_)
         {
            _loc2_.changeScreenScrollsLeftSetting();
         }
      }
      
      public static function get levelSelect() : Boolean
      {
         return _levelSelect[IND_VALUE];
      }
      
      public static function set levelSelect(param1:Boolean) : void
      {
         _levelSelect[IND_VALUE] = param1;
      }
      
      public static function get allUnlocked() : Boolean
      {
         var _loc1_:Array = null;
         for each(_loc1_ in LOCK_DCT)
         {
            if(_loc1_[IND_LOCKED])
            {
               return false;
            }
         }
         if(!GameSettings.DEBUG_MODE && SoundManager.SND_MNGR.sfxPlayer != null)
         {
            SoundManager.SND_MNGR.sfxPlayer.freeEmu(true);
            SoundManager.SND_MNGR.sfxPlayer = null;
         }
         return true;
      }
   }
}
