package com.smbc.managers
{
   import com.explodingRabbit.utils.CustomDictionary;
   import com.explodingRabbit.utils.CustomTimer;
   import com.explodingRabbit.utils.Enum;
   import com.smbc.characters.Bass;
   import com.smbc.characters.Bill;
   import com.smbc.characters.Character;
   import com.smbc.characters.Link;
   import com.smbc.characters.Luigi;
   import com.smbc.characters.Mario;
   import com.smbc.characters.MegaMan;
   import com.smbc.characters.Samus;
   import com.smbc.characters.Sophia;
   import com.smbc.characters.WarriorOfLight;
   import com.smbc.characters.base.MarioBase;
   import com.smbc.data.CampaignModes;
   import com.smbc.data.CharacterInfo;
   import com.smbc.data.Cheats;
   import com.smbc.data.DamageValue;
   import com.smbc.data.Difficulties;
   import com.smbc.data.GameSettings;
   import com.smbc.data.GameStates;
   import com.smbc.data.MapPack;
   import com.smbc.data.PickupInfo;
   import com.smbc.data.ScoreValue;
   import com.smbc.data.SoundNames;
   import com.smbc.data.Versions;
   import com.smbc.enums.BeatGameStatus;
   import com.smbc.errors.SingletonError;
   import com.smbc.events.CustomEvents;
   import com.smbc.graphics.TopScreenText;
   import com.smbc.graphics.skins.BmdSkinCont;
   import com.smbc.level.CharacterSelect;
   import com.smbc.level.TitleLevel;
   import com.smbc.main.*;
   import com.smbc.messageBoxes.MenuBox;
   import com.smbc.messageBoxes.MenuBoxItems;
   import com.smbc.messageBoxes.MessageBoxMessages;
   import com.smbc.messageBoxes.PlainMessageBox;
   import com.smbc.pickups.Pickup;
   import com.smbc.sound.SoundContainer;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.net.FileFilter;
   import flash.net.FileReference;
   
   public final class StatManager extends MainManager
   {
      
      private static const LEV_NUM_MIN:int = 1;
      
      private static const LEV_NUM_MAX:int = 4;
      
      private static const WORLD_NUM_MIN:int = 1;
      
      private static const WORLD_NUM_MAX:int = 4;
      
      private static const NUM_COINS_MIN:int = 0;
      
      private static const NUM_COINS_MAX:int = 99;
      
      private static const NUM_LIVES_MIN:int = 1;
      
      private static const NUM_LIVES_MAX:int = 99;
      
      private static const P_STATE_MIN:int = 1;
      
      private static const P_STATE_MAX:int = 3;
      
      private static const SCORE_MIN:int = 0;
      
      private static const SCORE_MAX:int = 9999999;
      
      private static const UNDEFINED_NUM:int = -1;
      
      public static const NUM_AMMO_PICKUPS_TO_COLLECT:int = 200;
      
      public static const NUM_CHEEP_CHEEPS_TO_DEFEAT:int = 300;
      
      public static const NUM_ENEMIES_TO_DEFEAT:int = 1000;
      
      public static const NUM_ENEMIES_TO_STOMP:int = 200;
      
      public static const NUM_BRICKS_TO_BREAK:int = 1000;
      
      public static const NUM_ARMORED_ENEMIES_TO_DEFEAT:int = 200;
      
      public static const NUM_HAMMER_BROS_TO_DEFEAT:int = 50;
      
      private static const STAT_MAX_DEF:int = 999999;
      
      private static const STAT_MIN_DEF:int = 0;
      
      public static const STAT_MNGR:StatManager = new StatManager();
      
      private static var instantiated:Boolean;
      
      public static const DROP_RATE_MOD_VERY_EASY:Number = 0.15;
      
      public static const DROP_RATE_MOD_EASY:Number = 0.075;
      
      private static const PLYR_STATS_IND_CHAR_NUM:int = 0;
      
      private static const PLYR_STATS_IND_P_STATE:int = 1;
      
      private static const PLYR_STATS_IND_P_EXIT:int = 2;
      
      private static const CHAR_SKIN_ORDER_VEC:Vector.<Vector.<int>> = new Vector.<Vector.<int>>(Character.NUM_CHARACTERS,true);
      
      private static const DEF_COLOR_VEC:Vector.<int> = new Vector.<int>();
      
      private static const DEF_P_ST_ARR:Array = [];
      
      public static const DEF_P_ST_ARR_SURVIVAL:Array = [];
      
      public static const TIME_PT_VAL:int = ScoreValue.TIME_REMAINING;
      
      public static const SFX_GAME_COIN:String = SoundNames.SFX_GAME_COIN;
      
      public static const SFX_GAME_NEW_LIFE:String = SoundNames.SFX_GAME_NEW_LIFE;
      
      public static const SFX_GAME_POINTS:String = SoundNames.SFX_GAME_POINTS;
      
      private static const IND_LOAD_SAVE_ARR_VALUE:int = 0;
      
      private static const IND_LOAD_SAVE_ARR_NAME:int = 1;
      
      private static const IND_LOAD_SAVE_ARR_CLASS:int = 2;
       
      
      private var FIRST_LEVEL:String;
      
      public const LAST_WORLD:int = 8;
      
      private var _numCheepCheepsDefeated:int;
      
      private var _numEnemiesDefeated:int;
      
      private var _numHammerBrosDefeated:int;
      
      private var _numEnemiesStomped:int;
      
      private var _numAmmoPickupsCollected:int;
      
      private var _numContinuesUsed:int;
      
      private var _numArmoredEnemiesDefeated:int;
      
      private var _numBricksBroken:int;
      
      public const NUM_LEVS_PER_WORLD:int = 4;
      
      private var _numCoins:uint;
      
      private const NUM_COINS_FOR_NEW_LIFE:uint = 100;
      
      public const DUNGEON_LEVEL_NUM:int = 4;
      
      private const DEF_NUM_COINS:int = 0;
      
      private var _numLives:uint;
      
      public const NUM_LIVES_GAME_OVER:int = 0;
      
      private const DEF_NUM_LIVES:int = 3;
      
      private const DEF_NUM_LIVES_SUPER_EASY:int = 10;
      
      private const DEF_NUM_LIVES_EASY:int = 5;
      
      private const DEF_SCORE:int = 0;
      
      private const PLAYER_DIE_TIME:int = 0;
      
      public const SECONDS_LEFT_START_TIME:int = 99;
      
      private const TIME_MIN:int = 0;
      
      private var _allowCharacterRevival:Boolean;
      
      private var _score:int;
      
      private var _timeLeft:int;
      
      public var passedHw:Boolean;
      
      private const TIME_LEFT_INT:uint = 397;
      
      private const EXTRA_TIME_SUPER_EASY:int = 200;
      
      private const EXTRA_TIME_EASY:int = 100;
      
      private var tsTxt:TopScreenText;
      
      private var _plyrStatsArr:Array;
      
      private const MASTER_AVAILABLE_UPGRADES_VEC:Vector.<Vector.<CustomDictionary>> = new Vector.<Vector.<CustomDictionary>>(Character.NUM_CHARACTERS,true);
      
      private const DEF_AVAILABLE_UPGRADES_VEC:Vector.<CustomDictionary> = new Vector.<CustomDictionary>(Character.NUM_CHARACTERS,true);
      
      private const DEF_PLYR_STATS_ARR:Array = [0,1,0,false];
      
      private var DEF_TIER_VEC:Vector.<int>;
      
      private const SUB_WEAPON_VEC:Vector.<String> = new Vector.<String>(Character.NUM_CHARACTERS,true);
      
      private var DEF_OBTAINED_UPGRADES_VEC:Vector.<CustomDictionary>;
      
      private const availableUpgradesVec:Vector.<CustomDictionary> = new Vector.<CustomDictionary>(Character.NUM_CHARACTERS,true);
      
      private const obtainedUpgradesVec:Vector.<CustomDictionary> = new Vector.<CustomDictionary>(Character.NUM_CHARACTERS,true);
      
      public const storedUpgradesVec:Vector.<CustomDictionary> = new Vector.<CustomDictionary>(Character.NUM_CHARACTERS,true);
      
      public const storedViewedUpgradesVec:Vector.<CustomDictionary> = new Vector.<CustomDictionary>(Character.NUM_CHARACTERS,true);
      
      private const viewedUpgradesVec:Vector.<CustomDictionary> = new Vector.<CustomDictionary>(Character.NUM_CHARACTERS,true);
      
      public const storedTierVec:Vector.<int> = new Vector.<int>(Character.NUM_CHARACTERS,true);
      
      private const SINGLE_UPGRADES_VEC:Vector.<CustomDictionary> = new Vector.<CustomDictionary>(Character.NUM_CHARACTERS,true);
      
      private const ICON_ORDER_VEC:Vector.<Vector.<String>> = new Vector.<Vector.<String>>(Character.NUM_CHARACTERS,true);
      
      private const DEF_AMMO_VEC:Vector.<Array> = new Vector.<Array>(Character.NUM_CHARACTERS,true);
      
      private const ammoVec:Vector.<Array> = new Vector.<Array>(Character.NUM_CHARACTERS,true);
      
      private var tierVec:Vector.<int>;
      
      private var _pStateVec:Vector.<int>;
      
      public var skinVec:Vector.<int>;
      
      private var DEF_SKIN_VEC:Vector.<int>;
      
      private var colorVec:Vector.<int>;
      
      private var _levStatsVec:Vector.<Array>;
      
      private const COIN_PT_VAL:int = 200;
      
      private var _curCharNum:int;
      
      private var _curFullLevStr:String;
      
      private var curWorldNum:int;
      
      private var curLevNum:int;
      
      private var _newLev:Boolean = true;
      
      private var timeScoreConverterTmr:CustomTimer;
      
      private const TIME_SCORE_CONVERTER_TMR_INT:int = 10;
      
      public var loadingData:Boolean;
      
      private const IND_SLS_NUM_LIVES:int = 0;
      
      private const IND_SLS_NUM_COINS:int = 1;
      
      private const IND_SLS_SCORE:int = 2;
      
      private const IND_SLS_OBTAINED_UPGRADES_VEC:int = 3;
      
      private const IND_SLS_AVAILABLE_UPGRADES_VEC:int = 4;
      
      private const IND_SLS_VIEWED_UPGRADES_VEC:int = 5;
      
      private const IND_SLS_STORED_UPGRADES_VEC:int = 6;
      
      private const IND_SLS_STORED_VIEWED_UPGRADES_VEC:int = 7;
      
      private const IND_SLS_AMMO_VEC:int = 8;
      
      private const IND_SLS_P_STATE_VEC:int = 9;
      
      private const SAVE_OFS_LEVEL:int = 327;
      
      private const SAVE_OFS_STATS:int = 68;
      
      private const SAVE_OFS_P_STATE:int = 31;
      
      private const SAVE_OFS_BTNS:int = 77;
      
      private const SAVE_DATA_STR_DIVIDER:String = ",";
      
      private var startLevelStats:Array;
      
      private var timeLeftBeatLevel:String;
      
      private const SAVE_FILE_NAME:String = "smbc_save_data.txt";
      
      private const SAVE_DATA_PREFIX_STR:String = "<smbc_save_data>";
      
      private const SAVE_DATA_SUFFIX_STR:String = "</smbc_save_data>";
      
      private const MAX_LOAD_DATA_STRING_LENGTH:int = 50;
      
      private var _fileRef:FileReference;
      
      public var secondsLeft:Boolean;
      
      private var _showTimeUpScrn:Boolean;
      
      private var timePassed:Number = 0;
      
      private var _runTimeLeft:Boolean;
      
      private var _numSophiaMissiles:int;
      
      public var sophiaWallGrapple:Boolean;
      
      public const STAT_NUM_SAMUS_MISSILES:String = "numSamusMissiles";
      
      public const NUM_SAMUS_MISSILES_MAX:int = 50;
      
      public const NUM_SAMUS_MISSILES_MIN:int = 0;
      
      private var _numSamusMissiles:int;
      
      public const STAT_NUM_SOPHIA_MISSILES:String = "numSophiaMissiles";
      
      public const NUM_SOPHIA_MISSILES_MAX:int = 20;
      
      public const NUM_SOPHIA_MISSILES_MIN:int = 0;
      
      private const CONST_SEP:String = "_";
      
      private const MAX_STR:String = "_MAX";
      
      private const MIN_STR:String = "_MIN";
      
      private const LOAD_DATA_REQ_LENGTH:int = 86;
      
      public var currentWarriorType:String;
      
      private const beatGameStatusVec:Vector.<BeatGameStatus> = new Vector.<BeatGameStatus>();
      
      public var pitTransArr:Array;
      
      public function StatManager()
      {
         this._plyrStatsArr = [];
         this.DEF_TIER_VEC = new Vector.<int>(Character.NUM_CHARACTERS,true);
         this.DEF_OBTAINED_UPGRADES_VEC = new Vector.<CustomDictionary>(Character.NUM_CHARACTERS,true);
         this.tierVec = new Vector.<int>(Character.NUM_CHARACTERS,true);
         this._pStateVec = new Vector.<int>(Character.NUM_CHARACTERS,true);
         this.skinVec = new Vector.<int>(Character.NUM_CHARACTERS,true);
         this.DEF_SKIN_VEC = new Vector.<int>();
         this.colorVec = new Vector.<int>(Character.NUM_CHARACTERS,true);
         this._levStatsVec = new Vector.<Array>();
         this._curCharNum = GameSettings.DEFAULT_CHARACTER;
         this.startLevelStats = [];
         this.currentWarriorType = WarriorOfLight.TYPE_FIGHTER;
         super();
         if(instantiated)
         {
            throw new SingletonError();
         }
         instantiated = true;
      }
      
      override public function initiate() : void
      {
         this.FIRST_LEVEL = GameSettings.FIRST_LEVEL;
         super.initiate();
         this.setUpDefaultVecs();
         this.changeDifficulty();
         this.resetAllStats(true);
         this.prepareLoadSaveStats();
      }
      
      private function setUpDefaultVecs() : void
      {
         var _loc1_:int = CharacterInfo.NUM_CHARACTERS;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.DEF_SKIN_VEC.push(GameSettings.DEF_CHAR_SKIN_NUM);
            DEF_COLOR_VEC.push(0);
            DEF_P_ST_ARR.push(Character.PS_NORMAL);
            DEF_P_ST_ARR_SURVIVAL.push(Character.PS_FALLEN);
            this.MASTER_AVAILABLE_UPGRADES_VEC[_loc2_] = Character.getAvailableUpgrades(_loc2_);
            this.DEF_AVAILABLE_UPGRADES_VEC[_loc2_] = this.MASTER_AVAILABLE_UPGRADES_VEC[_loc2_][0];
            this.DEF_OBTAINED_UPGRADES_VEC[_loc2_] = new CustomDictionary();
            this.SINGLE_UPGRADES_VEC[_loc2_] = Character.getSingleObjVec(_loc2_);
            this.DEF_TIER_VEC[_loc2_] = 0;
            this.ICON_ORDER_VEC[_loc2_] = Vector.<String>(CharacterInfo.getCharClassFromNum(_loc2_)[Character.ICON_ORDER_ARR_PROP_NAME]);
            this.SUB_WEAPON_VEC[_loc2_] = null;
            this.DEF_AMMO_VEC[_loc2_] = Character.getAmmoVec(_loc2_);
            CHAR_SKIN_ORDER_VEC[_loc2_] = Character.getSkinOrderVec(_loc2_);
            _loc2_++;
         }
         this.skinVec = this.DEF_SKIN_VEC.concat();
         _loc2_ = 0;
         while(_loc2_ < Enum.GetCount(BeatGameStatus))
         {
            this.beatGameStatusVec[_loc2_] = BeatGameStatus.None;
            _loc2_++;
         }
      }
      
      public function addCoin() : void
      {
         sndMngr.playSound(SFX_GAME_COIN);
         if(gsMngr.gameState == GameStates.CHARACTER_SELECT)
         {
            return;
         }
         ++this._numCoins;
         if(this._numCoins >= this.NUM_COINS_FOR_NEW_LIFE)
         {
            this.addLife();
            this._numCoins = 0;
         }
         this.tsTxt.updCoinDispTxt(this._numCoins.toString());
         this.addPoints(this.COIN_PT_VAL);
      }
      
      public function resetAllStats(param1:Boolean = true) : void
      {
         var _loc4_:CustomDictionary = null;
         var _loc5_:String = null;
         if(GameSettings.campaignMode == CampaignModes.SURVIVAL)
         {
            this._pStateVec = Vector.<int>(DEF_P_ST_ARR_SURVIVAL).concat();
         }
         else
         {
            this._pStateVec = Vector.<int>(DEF_P_ST_ARR).concat();
         }
         var _loc2_:int = CharacterInfo.NUM_CHARACTERS;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.availableUpgradesVec[_loc3_] = this.DEF_AVAILABLE_UPGRADES_VEC[_loc3_].clone();
            this.obtainedUpgradesVec[_loc3_] = this.DEF_OBTAINED_UPGRADES_VEC[_loc3_].clone();
            this.viewedUpgradesVec[_loc3_] = new CustomDictionary();
            this.storedViewedUpgradesVec[_loc3_] = null;
            this.storedUpgradesVec[_loc3_] = null;
            this.storedTierVec[_loc3_] = null;
            this.ammoVec[_loc3_] = this.DEF_AMMO_VEC[_loc3_].concat();
            if(GameSettings.DEBUG_MODE && GameSettings.allUpgrades)
            {
               _loc4_ = Character.getAllUpgradesDct(_loc3_);
               for each(_loc5_ in _loc4_)
               {
                  this.addCharUpgrade(_loc3_,_loc5_);
               }
            }
            if(GameSettings.startWithMushroom)
            {
               if(_loc3_ != Bill.CHAR_NUM)
               {
                  this.addCharUpgrade(_loc3_,PickupInfo.MUSHROOM);
                  for each(_loc5_ in Character.getMushroomUpgrades(_loc3_))
                  {
                     this.addCharUpgrade(_loc3_,_loc5_);
                  }
               }
            }
            _loc3_++;
         }
         this.tierVec = this.DEF_TIER_VEC.concat();
         this.colorVec = DEF_COLOR_VEC.concat();
         this.resetPlayerStats();
         this.resetLevelStats();
         this._numLives = GameSettings.initialLivesCount.lifeCount;
         this._score = this.DEF_SCORE;
         this._numCoins = this.DEF_NUM_COINS;
         DamageValue.dmgMult = GameSettings.attackStrength.strength;
         this.sophiaWallGrapple = false;
         if(param1)
         {
            this._curFullLevStr = this.FIRST_LEVEL;
         }
         this._newLev = true;
         this.passedHw = false;
      }
      
      public function changeToFirstWorldLevel() : void
      {
         this._curFullLevStr = this._curFullLevStr.charAt(0) + "-1a";
      }
      
      public function startNewLevel() : void
      {
         this.updateVars();
         this._showTimeUpScrn = false;
         this.timePassed = 0;
         this.startTimeLeft();
         if(level.newLev)
         {
            this._timeLeft = level.timeLeftTot;
            if(!(player is MarioBase) && (level.fullLevStr == "8-1" || level.fullLevStr == "8-3"))
            {
               this._timeLeft += 100;
            }
            if(GameSettings.difficulty == Difficulties.VERY_EASY)
            {
               this._timeLeft += this.EXTRA_TIME_SUPER_EASY;
            }
            else if(GameSettings.difficulty == Difficulties.EASY)
            {
               this._timeLeft += this.EXTRA_TIME_EASY;
            }
            if(GameSettings.DEBUG_MODE && GameSettings.OVERRIDE_TIME_LEFT)
            {
               this._timeLeft = GameSettings.OVERRIDE_TIME_LEFT;
            }
            this.saveStartLevelStats();
            this.secondsLeft = false;
            if(player is Sophia)
            {
               Sophia(player).setMaxHover();
            }
         }
         else if(this.secondsLeft)
         {
            eventMngr.secondsLeftStart();
         }
         this.tsTxt.updTimeDispTxt(this._timeLeft.toString());
         this.tsTxt.updCoinDispTxt(this._numCoins.toString());
         this.tsTxt.updScoreDisp(this._score.toString());
      }
      
      private function saveStartLevelStats() : void
      {
         var _loc1_:int = CharacterInfo.NUM_CHARACTERS;
         var _loc2_:Vector.<CustomDictionary> = this.availableUpgradesVec.concat();
         var _loc3_:Vector.<CustomDictionary> = this.obtainedUpgradesVec.concat();
         var _loc4_:Vector.<CustomDictionary> = this.viewedUpgradesVec.concat();
         var _loc5_:Vector.<CustomDictionary> = this.storedViewedUpgradesVec.concat();
         var _loc6_:Vector.<CustomDictionary> = this.storedUpgradesVec.concat();
         var _loc7_:Vector.<Array> = this.ammoVec.concat();
         var _loc8_:int = 0;
         while(_loc8_ < _loc1_)
         {
            _loc2_[_loc8_] = this.availableUpgradesVec[_loc8_].clone();
            _loc3_[_loc8_] = this.obtainedUpgradesVec[_loc8_].clone();
            _loc4_[_loc8_] = this.viewedUpgradesVec[_loc8_].clone();
            _loc5_[_loc8_] = this.storedViewedUpgradesVec[_loc8_];
            if(this.storedViewedUpgradesVec[_loc8_])
            {
               _loc5_[_loc8_] = this.storedViewedUpgradesVec[_loc8_].clone();
            }
            _loc6_[_loc8_] = this.storedUpgradesVec[_loc8_];
            if(this.storedUpgradesVec[_loc8_])
            {
               _loc6_[_loc8_] = this.storedUpgradesVec[_loc8_].clone();
            }
            _loc7_[_loc8_] = this.ammoVec[_loc8_].concat();
            _loc8_++;
         }
         this.startLevelStats[this.IND_SLS_NUM_LIVES] = this._numLives;
         this.startLevelStats[this.IND_SLS_NUM_COINS] = this._numCoins;
         this.startLevelStats[this.IND_SLS_SCORE] = this._score;
         this.startLevelStats[this.IND_SLS_OBTAINED_UPGRADES_VEC] = _loc3_;
         this.startLevelStats[this.IND_SLS_AVAILABLE_UPGRADES_VEC] = _loc2_;
         this.startLevelStats[this.IND_SLS_VIEWED_UPGRADES_VEC] = _loc4_;
         this.startLevelStats[this.IND_SLS_STORED_UPGRADES_VEC] = _loc6_;
         this.startLevelStats[this.IND_SLS_STORED_VIEWED_UPGRADES_VEC] = _loc5_;
         this.startLevelStats[this.IND_SLS_AMMO_VEC] = _loc7_;
         this.startLevelStats[this.IND_SLS_P_STATE_VEC] = this._pStateVec.concat();
      }
      
      public function touchFlag() : void
      {
         this.timeLeftBeatLevel = this.tsTxt.timeRemaining;
         this.stopTimeLeft();
      }
      
      public function convertTimeToScore() : void
      {
         if(Cheats.infiniteTime)
         {
            level.raiseFlag();
            return;
         }
         level.pauseMainTmrs();
         sndMngr.playSoundNow(SFX_GAME_POINTS);
         this.timeScoreConverterTmr = new CustomTimer(this.TIME_SCORE_CONVERTER_TMR_INT);
         this.timeScoreConverterTmr.addEventListener(TimerEvent.TIMER,this.timeScoreConverterTmrLsr,false,0,true);
         this.timeScoreConverterTmr.start();
      }
      
      private function timeScoreConverterTmrLsr(param1:TimerEvent) : void
      {
         var _loc2_:SoundContainer = null;
         var _loc3_:String = null;
         if(this._timeLeft > 0)
         {
            --this._timeLeft;
            this.addPoints(TIME_PT_VAL);
            this.tsTxt.updTimeDispTxt(this._timeLeft.toString());
         }
         else
         {
            this.timeScoreConverterTmr.stop();
            this.timeScoreConverterTmr.removeEventListener(TimerEvent.TIMER,this.timeScoreConverterTmrLsr);
            this.timeScoreConverterTmr = null;
            _loc2_ = sndMngr.findSound(SFX_GAME_POINTS);
            if(_loc2_)
            {
               _loc2_.pauseSound();
               sndMngr.removeSnd(_loc2_);
            }
            level.resumeMainTmrs();
            _loc3_ = this.timeLeftBeatLevel.charAt(this.timeLeftBeatLevel.length - 1);
            if(_loc3_ == "1" || _loc3_ == "3" || _loc3_ == "6")
            {
               level.fireworksRemaining = int(_loc3_);
               level.raiseFlag();
            }
            else
            {
               level.raiseFlag();
               this.timeLeftBeatLevel = null;
            }
            this.timeLeftBeatLevel = null;
         }
      }
      
      public function calcTimeLeft() : void
      {
         var _loc1_:Number = level.dt * 1000;
         this.timePassed += _loc1_;
         if(this.timePassed >= this.TIME_LEFT_INT)
         {
            this.timePassed -= this.TIME_LEFT_INT;
            if(level != null && !level.watchModeOverride)
            {
               --this.timeLeft;
            }
         }
      }
      
      public function setTimeLeftVisibility(param1:Boolean) : void
      {
         if(this.tsTxt)
         {
            if(param1)
            {
               this.tsTxt.hideTime();
               statMngr.secondsLeft = false;
            }
            else
            {
               this.tsTxt.showTime();
               if(this._timeLeft < this.SECONDS_LEFT_START_TIME)
               {
                  this._timeLeft = this.SECONDS_LEFT_START_TIME + 1;
                  this.tsTxt.updTimeDispTxt(this._timeLeft.toString());
               }
            }
         }
      }
      
      public function startNewGameHandler() : void
      {
         this.resetAllStats();
         this._allowCharacterRevival = true;
      }
      
      public function characterSelectStartHandler() : void
      {
         this._allowCharacterRevival = false;
      }
      
      public function beatLevelHandler(param1:int, param2:int) : void
      {
         if(param2 == LEV_NUM_MAX || param1 == this.LAST_WORLD && param2 == 3)
         {
            this._allowCharacterRevival = true;
         }
      }
      
      public function beatGameHandler() : void
      {
         var _loc1_:Array = [];
         this.setBeatGameStatus(GameSettings.mapPack,GameSettings.mapDifficulty);
         if(this._numCheepCheepsDefeated >= NUM_CHEEP_CHEEPS_TO_DEFEAT)
         {
            _loc1_.push(MenuBoxItems.WATER_MODE);
         }
         if(GameSettings.mapPack == MapPack.Smb)
         {
            _loc1_.push(MenuBoxItems.ALL_GROUND_IS_BRICKS);
         }
         if(GameSettings.mapPack == MapPack.Special)
         {
            _loc1_.push(MenuBoxItems.ALL_HAMMER_BROS);
         }
         if(this.allMapPacksBeatOnHard)
         {
            _loc1_.push(MenuBoxItems.LEVEL_SELECT);
         }
         if(this._numContinuesUsed == 0)
         {
            _loc1_.push(MenuBoxItems.INFINITE_LIVES);
         }
         if(this._numEnemiesStomped >= NUM_ENEMIES_TO_STOMP)
         {
            _loc1_.push(MenuBoxItems.BOUNCY_PITS);
         }
         if(this._numEnemiesDefeated >= NUM_ENEMIES_TO_DEFEAT)
         {
            _loc1_.push(MenuBoxItems.INVINCIBLE);
         }
         if(this._numAmmoPickupsCollected >= NUM_AMMO_PICKUPS_TO_COLLECT)
         {
            _loc1_.push(MenuBoxItems.INFINITE_AMMO);
         }
         var _loc2_:Vector.<String> = Cheats.unlockCheat(null,_loc1_);
         if(_loc2_.length)
         {
            MessageBoxManager.INSTANCE.addEventListener(CustomEvents.MESSAGE_BOX_SERIES_END,this.beatGameMsgBoxEndHandler,false,0,true);
         }
         else
         {
            eventMngr.restartGame();
         }
      }
      
      private function get allMapPacksBeatOnHard() : Boolean
      {
         var _loc1_:MapPack = null;
         for each(_loc1_ in Enum.GetConstants(MapPack))
         {
            if(this.getBeatGameStatus(_loc1_) != BeatGameStatus.Hard)
            {
               return false;
            }
         }
         return true;
      }
      
      public function continueAfterDyingHandler() : void
      {
         ++this.numContinuesUsed;
         this.resetAllStats(false);
         this.changeToFirstWorldLevel();
         this._allowCharacterRevival = true;
      }
      
      public function warpPipeHandler() : void
      {
         this._allowCharacterRevival = true;
      }
      
      private function beatGameMsgBoxEndHandler(param1:Event) : void
      {
         MessageBoxManager.INSTANCE.removeEventListener(CustomEvents.MESSAGE_BOX_SERIES_END,this.beatGameMsgBoxEndHandler);
         eventMngr.restartGame();
      }
      
      public function stopTimeLeft() : void
      {
         this._runTimeLeft = false;
      }
      
      public function startTimeLeft() : void
      {
         this._runTimeLeft = true;
      }
      
      public function setRandomCharNum() : void
      {
         this.curCharNum = int(Math.random() * Character.NUM_CHARACTERS);
      }
      
      public function saveAreaStats(param1:String, param2:String, param3:String, param4:Array) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = false;
         var _loc8_:int = 0;
         var _loc9_:String = null;
         var _loc7_:Array = [];
         if(this._levStatsVec.length == 0)
         {
            this._levStatsVec.push(param4);
            if(param2 == param3)
            {
               _loc7_ = param4;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < this._levStatsVec.length)
            {
               if((_loc9_ = this._levStatsVec[_loc8_][0]) == param2)
               {
                  this._levStatsVec[_loc8_] = param4;
                  _loc5_ = true;
               }
               if(_loc9_ == param3)
               {
                  _loc7_ = this._levStatsVec[_loc8_];
                  _loc6_ = true;
               }
               _loc8_++;
            }
            if(!_loc5_)
            {
               this._levStatsVec.push(param4);
            }
            if(!_loc6_)
            {
               _loc7_ = [];
            }
         }
         return _loc7_;
      }
      
      public function prepareLoadSaveStats() : Array
      {
         return [[int(this._curFullLevStr.substr(0,1)),"curWorldNum"],[int(this._curFullLevStr.substr(2,1)),"curLevNum"],[this.startLevelStats[this.IND_SLS_NUM_LIVES],"numLives"],[this.startLevelStats[this.IND_SLS_NUM_COINS],"numCoins"],[this.startLevelStats[this.IND_SLS_SCORE],"score"],[this.numEnemiesDefeated,"numEnemiesDefeated"],[this.numEnemiesStomped,"numEnemiesStomped"],[this.numCheepCheepsDefeated,"numCheepCheepsDefeated"],[this.numHammerBrosDefeated,"numHammerBrosDefeated"],[this.numContinuesUsed,"numContinuesUsed"],[this.numAmmoPickupsCollected,"numAmmoPickupsCollected"],[this.numArmoredEnemiesDefeated,"numArmoredEnemiesDefeated"],[this.numBricksBroken,"_numBricksBroken"],[this.curCharNum,"curCharNum"],[this.beatGameStatusVec,"beatGameStatusVec",Vector.<Enum>],[this.startLevelStats[this.IND_SLS_OBTAINED_UPGRADES_VEC],"obtainedUpgradesVec",Vector.<CustomDictionary>],[this.startLevelStats[this.IND_SLS_AVAILABLE_UPGRADES_VEC],"availableUpgradesVec",Vector.<CustomDictionary>],[this.startLevelStats[this.IND_SLS_VIEWED_UPGRADES_VEC],"viewedUpgradesVec",Vector.<CustomDictionary>],[this.startLevelStats[this.IND_SLS_STORED_UPGRADES_VEC],"storedUpgradesVec",Vector.<CustomDictionary>],[this.startLevelStats[this.IND_SLS_STORED_VIEWED_UPGRADES_VEC],"storedViewedUpgradesVec",Vector.<CustomDictionary>],[this.startLevelStats[this.IND_SLS_AMMO_VEC],"ammoVec",Vector.<Array>],[this.skinVec,"skinVec",Vector.<int>],[this.startLevelStats[this.IND_SLS_P_STATE_VEC],"_pStateVec",Vector.<int>]];
      }
      
      private function saveStats() : Array
      {
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:Object = null;
         var _loc1_:Array = this.prepareLoadSaveStats();
         var _loc2_:Array = [];
         var _loc3_:int = _loc1_.length;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = _loc1_[_loc4_][IND_LOAD_SAVE_ARR_NAME];
            if((_loc6_ = _loc1_[_loc4_][IND_LOAD_SAVE_ARR_VALUE]) is int || _loc6_ is Boolean)
            {
               _loc2_.push(int(_loc1_[_loc4_][IND_LOAD_SAVE_ARR_VALUE]));
            }
            else
            {
               if(!(_loc6_ is Vector.<*> || _loc6_ is Vector.<int>))
               {
                  throw new Error("unknown type");
               }
               _loc2_ = _loc2_.concat(this.saveVector(Vector.<Object>(_loc6_)));
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      private function loadStats(param1:Array) : void
      {
         var _loc4_:int = 0;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:int = 0;
         var _loc2_:Array = this.prepareLoadSaveStats();
         var _loc3_:int = _loc2_.length;
         while(_loc4_ < _loc3_)
         {
            _loc6_ = (_loc5_ = _loc2_[_loc4_])[IND_LOAD_SAVE_ARR_NAME];
            _loc7_ = param1[0];
            if(_loc5_[IND_LOAD_SAVE_ARR_CLASS] == undefined)
            {
               this[_loc6_] = param1.shift();
            }
            else
            {
               this.loadVectorNestedStuff(param1,_loc5_);
            }
            _loc4_++;
         }
         this._curFullLevStr = this.curWorldNum.toString() + "-" + this.curLevNum.toString() + "a";
      }
      
      private function saveVector(param1:Vector.<Object>) : Array
      {
         var _loc5_:Object = null;
         if(!param1)
         {
            return [UNDEFINED_NUM];
         }
         if(!param1.length)
         {
            return [0];
         }
         var _loc2_:int = param1.length;
         var _loc3_:Array = [_loc2_];
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            if((_loc5_ = param1[_loc4_]) is Array)
            {
               _loc3_ = _loc3_.concat(this.saveVector(Vector.<Object>(_loc5_)));
            }
            else if(_loc5_ is CustomDictionary)
            {
               _loc3_ = _loc3_.concat(this.saveCustomDictionary(_loc5_ as CustomDictionary));
            }
            else if(_loc5_ is int || _loc5_ is Boolean)
            {
               _loc3_.push(int(_loc5_));
            }
            else if(_loc5_ is Enum)
            {
               _loc3_.push(Enum(_loc5_).Index);
            }
            else
            {
               if(_loc5_ != null)
               {
                  throw new Error("cannot save this type");
               }
               _loc3_.push(UNDEFINED_NUM);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      private function loadVectorNestedStuff(param1:Array, param2:Array) : void
      {
         var _loc3_:Class = param2[IND_LOAD_SAVE_ARR_CLASS];
         var _loc4_:String = param2[IND_LOAD_SAVE_ARR_NAME];
         var _loc5_:Object = this[_loc4_];
         var _loc6_:int;
         if((_loc6_ = param1.shift()) == 0)
         {
            return;
         }
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(_loc3_ == Vector.<CustomDictionary>)
            {
               _loc5_[_loc7_] = this.loadSingleCustomDictionary(param1);
            }
            else if(_loc3_ == Vector.<Array>)
            {
               _loc5_[_loc7_] = this.loadSingleArray(param1);
            }
            else if(_loc3_ == Vector.<int>)
            {
               _loc5_[_loc7_] = param1.shift();
            }
            else
            {
               if(_loc3_ != Vector.<Enum>)
               {
                  throw new Error("unknown type");
               }
               _loc5_[_loc7_] = Enum(_loc5_[_loc7_]).GetAtIndex(param1.shift());
            }
            _loc7_++;
         }
      }
      
      private function loadSingleArray(param1:Array) : Array
      {
         var _loc2_:Array = [];
         var _loc3_:int = param1.shift();
         if(_loc3_ == UNDEFINED_NUM)
         {
            return null;
         }
         if(_loc3_ == 0)
         {
            return _loc2_;
         }
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_.push(param1.shift());
            _loc4_++;
         }
         return _loc2_;
      }
      
      private function loadSingleCustomDictionary(param1:Array) : CustomDictionary
      {
         var _loc5_:String = null;
         var _loc2_:CustomDictionary = new CustomDictionary();
         var _loc3_:int = param1.shift();
         if(_loc3_ == UNDEFINED_NUM)
         {
            return null;
         }
         if(_loc3_ == 0)
         {
            return _loc2_;
         }
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = PickupInfo.convToString(param1.shift());
            _loc2_.addItem(_loc5_);
            _loc4_++;
         }
         return _loc2_;
      }
      
      private function saveCustomDictionary(param1:CustomDictionary) : Array
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         if(!param1)
         {
            return [UNDEFINED_NUM];
         }
         if(!param1.length)
         {
            return [0];
         }
         var _loc2_:Array = [param1.length];
         for each(_loc3_ in param1)
         {
            _loc4_ = param1[_loc3_];
            if(_loc3_ != _loc4_)
            {
               throw new Error("can only handle matching key/value pairs");
            }
            if(_loc4_ is int || _loc4_ is Boolean)
            {
               _loc2_.push(_loc4_);
            }
            else
            {
               if(!(_loc4_ is String))
               {
                  throw new Error("only set up for ints");
               }
               _loc2_.push(PickupInfo.convToInt(_loc4_ as String));
            }
         }
         return _loc2_;
      }
      
      public function saveData() : void
      {
         var _loc4_:int = 0;
         var _loc1_:Array = [Versions.toInt(GameSettings.VERSION_NUMBER)].concat(this.saveStats(),btnMngr.keyCodesVec,GameSettings.saveData(),tutMngr.saveData(),Cheats.saveData());
         var _loc2_:String = this.SAVE_DATA_PREFIX_STR;
         var _loc3_:int = _loc1_.length;
         while(_loc4_ < _loc3_)
         {
            _loc2_ += _loc1_[_loc4_].toString();
            _loc2_ += this.SAVE_DATA_STR_DIVIDER;
            _loc4_++;
         }
         _loc2_ = _loc2_.substr(0,_loc2_.length - 1);
         _loc2_ += this.SAVE_DATA_SUFFIX_STR;
         this._fileRef = new FileReference();
         this._fileRef.addEventListener(Event.COMPLETE,this.fileRefSaveCompleteHandler,false,0,true);
         this._fileRef.addEventListener(Event.CANCEL,this.fileRefCancelHandler,false,0,true);
         this._fileRef.save(_loc2_,this.SAVE_FILE_NAME);
      }
      
      private function fileRefLoadCompleteHandler(param1:Event) : void
      {
         var _loc7_:int = 0;
         this._fileRef.removeEventListener(Event.COMPLETE,this.fileRefLoadCompleteHandler);
         btnMngr.relBtns();
         var _loc2_:String = this._fileRef.data.readUTFBytes(this._fileRef.data.length);
         this._fileRef = null;
         var _loc3_:int = _loc2_.indexOf(this.SAVE_DATA_PREFIX_STR);
         var _loc4_:int = _loc2_.indexOf(this.SAVE_DATA_SUFFIX_STR);
         if(_loc3_ == -1 || _loc4_ == -1)
         {
            MenuBox.activeMenu.nextMsgBxToCreate = new PlainMessageBox(MessageBoxMessages.LOAD_GAME_ERROR);
            MessageBoxManager.INSTANCE.writeNextMainMenu(MenuBox.activeMenu.nextMsgBxToCreate);
            MenuBox.activeMenu.cancel();
            return;
         }
         _loc3_ += this.SAVE_DATA_PREFIX_STR.length;
         _loc2_ = _loc2_.substring(_loc3_,_loc4_);
         var _loc5_:Array;
         var _loc6_:int = (_loc5_ = _loc2_.split(this.SAVE_DATA_STR_DIVIDER)).length;
         while(_loc7_ < _loc6_)
         {
            _loc5_[_loc7_] = int(_loc5_[_loc7_]);
            _loc7_++;
         }
         var _loc8_:Number;
         if((_loc8_ = Versions.toNum(_loc5_.shift())) < GameSettings.VERSION_SAVE_FILE_COMPAT_MIN || _loc6_ < this.LOAD_DATA_REQ_LENGTH)
         {
            MenuBox.activeMenu.nextMsgBxToCreate = new PlainMessageBox(MessageBoxMessages.LOAD_GAME_VERSION_ERROR);
            MessageBoxManager.INSTANCE.writeNextMainMenu(MenuBox.activeMenu.nextMsgBxToCreate);
            MenuBox.activeMenu.cancel();
            return;
         }
         this.loadingData = true;
         this.resetAllStats();
         this.loadStats(_loc5_);
         _loc6_ = btnMngr.keyCodesVec.length;
         btnMngr.keyCodesVec = Vector.<int>(_loc5_.slice(0,_loc6_));
         btnMngr.writeKeyCodesFromVec();
         _loc5_.splice(0,_loc6_);
         GameSettings.loadData(_loc5_);
         tutMngr.loadData(_loc5_);
         Cheats.loadData(_loc5_);
         if(_loc5_.length)
         {
            throw new Error("extra data on load");
         }
         _loc5_ = null;
         this.loadingData = false;
         DamageValue.dmgMult = GameSettings.attackStrength.strength;
         eventMngr.loadGame();
      }
      
      public function loadSaveData() : void
      {
         this._fileRef = new FileReference();
         var _loc1_:FileFilter = new FileFilter("saveData","*.txt");
         this._fileRef.addEventListener(Event.SELECT,this.fileRefLoadSelect,false,0,true);
         this._fileRef.addEventListener(Event.CANCEL,this.fileRefCancelHandler,false,0,true);
         this._fileRef.browse([_loc1_]);
      }
      
      private function fileRefCancelHandler(param1:Event) : void
      {
         this._fileRef.removeEventListener(Event.CANCEL,this.fileRefCancelHandler);
         this._fileRef = null;
         btnMngr.relBtns();
      }
      
      private function fileRefSaveCompleteHandler(param1:Event) : void
      {
         this._fileRef.removeEventListener(Event.COMPLETE,this.fileRefSaveCompleteHandler);
         this._fileRef = null;
         btnMngr.relBtns();
      }
      
      private function fileRefLoadSelect(param1:Event) : void
      {
         this._fileRef.removeEventListener(Event.SELECT,this.fileRefLoadSelect);
         this._fileRef.addEventListener(Event.COMPLETE,this.fileRefLoadCompleteHandler,false,0,true);
         this._fileRef.load();
      }
      
      public function resetLevelStats() : void
      {
         this._levStatsVec.length = 0;
         scrnMngr.resetAreaStats();
      }
      
      public function writePlayerStats(param1:int, param2:uint, param3:int) : void
      {
         this._plyrStatsArr = [param1,param2,param3];
         this._pStateVec[param1] = param2;
      }
      
      public function updatePStateVec(param1:int, param2:int) : void
      {
         this._pStateVec[param1] = param2;
      }
      
      public function getCharPState(param1:int) : int
      {
         return this._pStateVec[param1];
      }
      
      public function getCurrentBmc(param1:int = -1) : BmdSkinCont
      {
         var _loc2_:GraphicsManager = GraphicsManager.INSTANCE;
         if(param1 < 0)
         {
            param1 = this.curCharNum;
         }
         var _loc3_:int = STAT_MNGR.skinVec[param1];
         return _loc2_.CLEAN_BMC_VEC_CHARACTER[param1][_loc3_];
      }
      
      public function getSkinName(param1:Boolean = false) : String
      {
         var _loc2_:Array = this.getCurrentBmc().namesArr;
         if(_loc2_)
         {
            if(param1)
            {
               return _loc2_[BmdSkinCont.IND_NAME_ARR_FULL];
            }
            return _loc2_[BmdSkinCont.IND_NAME_ARR_SHORT];
         }
         return null;
      }
      
      public function setCharSkinNum(param1:int, param2:int) : void
      {
         this.skinVec[param1] = param2;
      }
      
      public function getCharSkinNum(param1:int) : int
      {
         return this.skinVec[param1];
      }
      
      public function getRandomCharSkin(param1:int) : int
      {
         var _loc2_:Vector.<int> = Character.getSkinOrderVec(param1);
         var _loc3_:int = int(Math.random() * _loc2_.length);
         return _loc2_[_loc3_];
      }
      
      public function getCharSkinOrder(param1:int) : Vector.<int>
      {
         return CHAR_SKIN_ORDER_VEC[param1];
      }
      
      public function setCharColorNum(param1:int, param2:int) : void
      {
         this.colorVec[param1] = param2;
      }
      
      public function getCharColorNum(param1:int) : int
      {
         return this.colorVec[param1];
      }
      
      public function changeStat(param1:String, param2:int, param3:Function = null) : void
      {
         var _loc10_:String = null;
         var _loc4_:String = "";
         var _loc5_:int = param1.length;
         var _loc6_:int = this[param1];
         var _loc7_:int = 0;
         while(_loc7_ < _loc5_)
         {
            _loc10_ = param1.charAt(_loc7_);
            if(!this.isUpperCase(_loc10_))
            {
               _loc4_ += _loc10_.toUpperCase();
            }
            else
            {
               _loc4_ += this.CONST_SEP + _loc10_;
            }
            _loc7_++;
         }
         _loc6_ += param2;
         var _loc8_:int = this[_loc4_ + this.MAX_STR];
         var _loc9_:int = this[_loc4_ + this.MIN_STR];
         if(_loc6_ > _loc8_)
         {
            _loc6_ = _loc8_;
         }
         else if(_loc6_ < _loc9_)
         {
            _loc6_ = _loc9_;
         }
         this[param1] = _loc6_;
         if(param3 != null)
         {
            param3(_loc6_);
         }
      }
      
      private function isUpperCase(param1:String) : Boolean
      {
         if(param1.length > 1)
         {
            throw new Error("only works on single character");
         }
         var _loc2_:String = param1.toLowerCase();
         var _loc3_:String = param1.toUpperCase();
         switch(param1)
         {
            case _loc2_:
               return false;
            case _loc3_:
               return true;
            default:
               return false;
         }
      }
      
      public function get plyrStatsArr() : Array
      {
         return this._plyrStatsArr;
      }
      
      public function resetPlayerStats() : void
      {
         this._plyrStatsArr = this.DEF_PLYR_STATS_ARR.concat();
      }
      
      public function passHalfwayPoint() : void
      {
         this.passedHw = true;
      }
      
      private function updateVars() : void
      {
         level = GlobVars.level;
         player = level.player;
         this.tsTxt = level.tsTxt;
      }
      
      public function stopTmrs() : void
      {
      }
      
      public function startTmrs() : void
      {
      }
      
      public function getSubWeapon(param1:int) : String
      {
         var _loc2_:Vector.<String> = this.SUB_WEAPON_VEC;
         return this.SUB_WEAPON_VEC[param1];
      }
      
      public function setSubWeapon(param1:int, param2:String) : void
      {
         this.SUB_WEAPON_VEC[param1] = param2;
      }
      
      public function prepareNextUpgrade(param1:int, param2:String) : void
      {
         var _loc3_:CustomDictionary = this.getAvailableUpgradesVec(param1);
         _loc3_.removeItem(param2);
         if(param2 != PickupInfo.MUSHROOM && param2 != PickupInfo.FIRE_FLOWER)
         {
            this.viewedUpgradesVec[param1].addItem(param2);
         }
         if(_loc3_.length)
         {
            return;
         }
         this.setTier(param1,this.getNextAvailableTier(param1));
      }
      
      public function charIsFullyUpgraded(param1:int) : Boolean
      {
         return this.getAvailableUpgradesVec(param1).length == 0;
      }
      
      public function addCharUpgrade(param1:int, param2:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         if(param2 == PickupInfo.FIRE_FLOWER && this.curCharNum != Mario.CHAR_NUM && this.curCharNum != Luigi.CHAR_NUM)
         {
            return;
         }
         this.obtainedUpgradesVec[param1].addItem(param2);
         this.availableUpgradesVec[param1].removeItem(param2);
         if(param2 == PickupInfo.MUSHROOM && player)
         {
            for each(_loc3_ in player.mushroomUpgrades)
            {
               this.addCharUpgrade(param1,_loc3_);
            }
         }
         if(player)
         {
            if((_loc4_ = player.replaceableUpgrades[param2]) && !this.obtainedUpgradesVec[param1][_loc4_])
            {
               this.availableUpgradesVec[param1].addItem(_loc4_);
            }
         }
         this.removeItemsIfSingle(param1,param2);
         if(this.tsTxt)
         {
            this.tsTxt.updateUpgIcons();
         }
      }
      
      public function hasCompetingSingleItem(param1:int, param2:String) : Boolean
      {
         var _loc5_:String = null;
         var _loc3_:CustomDictionary = this.obtainedUpgradesVec[param1];
         var _loc4_:CustomDictionary;
         if((_loc4_ = this.SINGLE_UPGRADES_VEC[param1])[param2])
         {
            for each(_loc5_ in _loc4_)
            {
               if(_loc3_[_loc5_] && _loc5_ != param2)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      private function upgradeIsSingle(param1:int, param2:String) : Boolean
      {
         var _loc3_:CustomDictionary = this.SINGLE_UPGRADES_VEC[param1];
         return _loc3_[param2] != undefined;
      }
      
      private function removeItemsIfSingle(param1:int, param2:String) : void
      {
         var _loc5_:String = null;
         var _loc3_:CustomDictionary = this.obtainedUpgradesVec[param1];
         var _loc4_:CustomDictionary;
         if((_loc4_ = this.SINGLE_UPGRADES_VEC[param1])[param2])
         {
            for each(_loc5_ in _loc4_)
            {
               if(_loc3_[_loc5_] && _loc5_ != param2)
               {
                  this.removeCharUpgrade(param1,_loc5_,true);
               }
            }
         }
      }
      
      private function maxTierUpgrades(param1:int) : String
      {
         switch(param1)
         {
            case Bass.CHAR_NUM:
            case MegaMan.CHAR_NUM:
               return PickupInfo.MEGA_MAN_WEAPON_ENERGY_BIG;
            case Link.CHAR_NUM:
               if(Math.random() < 0.5)
               {
                  return PickupInfo.LINK_ARROW_AMMO;
               }
               return PickupInfo.LINK_BOMB_AMMO;
               break;
            case Samus.CHAR_NUM:
               return PickupInfo.SAMUS_MISSILE_AMMO;
            case Sophia.CHAR_NUM:
               if(Math.random() < 0.5)
               {
                  return PickupInfo.SOPHIA_HOMING_MISSILE_AMMO;
               }
               return PickupInfo.SOPHIA_MISSILE_AMMO;
               break;
            default:
               return null;
         }
      }
      
      public function removeAllUpgradesForChar(param1:int, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:CustomDictionary = null;
         this.removeCharUpgrade(param1,PickupInfo.MUSHROOM);
         var _loc4_:CustomDictionary = this.obtainedUpgradesVec[param1].clone();
         var _loc5_:CustomDictionary = new CustomDictionary();
         var _loc6_:CustomDictionary = new CustomDictionary();
         for each(_loc7_ in _loc4_)
         {
            if(player && player.neverLoseUpgrades[_loc7_] != undefined)
            {
               _loc6_.addItem(_loc7_,_loc7_);
            }
            if(player && player.restorableUpgrades[_loc7_] != undefined)
            {
               _loc5_.addItem(_loc7_,_loc7_);
            }
         }
         if(param2 && _loc4_.length && param1 != Mario.CHAR_NUM && param1 != Luigi.CHAR_NUM)
         {
            this.storedUpgradesVec[param1] = _loc5_;
            this.storedViewedUpgradesVec[param1] = this.viewedUpgradesVec[param1].clone();
            this.storedTierVec[param1] = this.getTier(param1);
         }
         else
         {
            this.storedUpgradesVec[param1] = null;
            this.storedTierVec[param1] = null;
            this.storedViewedUpgradesVec[param1] = null;
         }
         for each(_loc8_ in _loc4_)
         {
            this.removeCharUpgrade(param1,_loc8_);
         }
         this.setTier(param1,0);
         _loc9_ = this.DEF_AVAILABLE_UPGRADES_VEC[param1].clone();
         if(param3)
         {
            this.obtainedUpgradesVec[param1] = this.DEF_OBTAINED_UPGRADES_VEC[param1].clone();
         }
         else
         {
            this.obtainedUpgradesVec[param1] = _loc6_;
            for each(_loc7_ in _loc6_)
            {
               _loc9_.removeItem(_loc7_);
            }
         }
         this.availableUpgradesVec[param1] = _loc9_;
      }
      
      public function removeCharUpgrade(param1:int, param2:String, param3:Boolean = false) : void
      {
         var _loc4_:String = null;
         if(player && !param3 && player.neverLoseUpgrades[param2] != undefined)
         {
            return;
         }
         this.obtainedUpgradesVec[param1].removeItem(param2);
         if(param2 == PickupInfo.MUSHROOM && player && GameSettings.difficulty != Difficulties.VERY_EASY)
         {
            for each(_loc4_ in player.mushroomUpgrades)
            {
               STAT_MNGR.removeCharUpgrade(param1,_loc4_);
            }
         }
         if(this.tsTxt)
         {
            this.tsTxt.updateUpgIcons();
         }
      }
      
      public function getObtainedUpgradesDct(param1:int) : CustomDictionary
      {
         return this.obtainedUpgradesVec[param1];
      }
      
      public function getRandomUpgrade(param1:int) : String
      {
         var _loc3_:String = null;
         if(player.canGetMushroom)
         {
            if(!player.upgradeIsActive(PickupInfo.MUSHROOM))
            {
               return PickupInfo.MUSHROOM;
            }
            if(this.storedUpgradesVec[param1] || player && player is MarioBase)
            {
               return PickupInfo.FIRE_FLOWER;
            }
         }
         var _loc2_:CustomDictionary = this.getAvailableUpgradesVec(param1);
         if(_loc2_.length)
         {
            _loc3_ = this.getRandomValueFromDct(_loc2_,this.viewedUpgradesVec[param1]);
            if(_loc3_)
            {
               return _loc3_;
            }
         }
         var _loc4_:int;
         if((_loc4_ = this.getNextAvailableTier(param1)) != -1)
         {
            this.setTier(param1,_loc4_);
            if(_loc2_.length)
            {
               _loc3_ = this.getRandomValueFromDct(_loc2_,this.viewedUpgradesVec[param1]);
               if(_loc3_)
               {
                  return _loc3_;
               }
            }
            throw new Error("no available upgrades in dct");
         }
         return this.maxTierUpgrades(param1);
      }
      
      private function getRandomValueFromDct(param1:CustomDictionary, param2:CustomDictionary) : String
      {
         var _loc3_:int = 0;
         var _loc5_:String = null;
         var _loc4_:Array = [];
         for each(_loc5_ in param1)
         {
            if(param2[_loc5_])
            {
               param1.removeItem(_loc5_);
            }
         }
         for each(_loc5_ in param1)
         {
            _loc4_[_loc3_] = _loc5_;
            _loc3_++;
         }
         if(_loc3_ > 0)
         {
            _loc3_ = int(Math.random() * _loc3_);
            return _loc4_[_loc3_];
         }
         return null;
      }
      
      public function addStoredUpgrades(param1:int, param2:CustomDictionary, param3:int, param4:CustomDictionary) : void
      {
         var _loc5_:String = null;
         if(!param2 || player.charNum != param1)
         {
            return;
         }
         this.viewedUpgradesVec[param1] = param4;
         for each(_loc5_ in param2)
         {
            player.hitPickup(new Pickup(_loc5_),false);
         }
      }
      
      public function getStoredUpgrades() : CustomDictionary
      {
         var _loc1_:CustomDictionary = this.storedUpgradesVec[this.curCharNum];
         if(_loc1_)
         {
            _loc1_ = _loc1_.clone();
            this.storedUpgradesVec[this.curCharNum] = null;
         }
         return _loc1_;
      }
      
      public function getAvailableUpgradesVec(param1:int) : CustomDictionary
      {
         return this.availableUpgradesVec[param1];
      }
      
      public function getTier(param1:int) : int
      {
         return this.tierVec[param1];
      }
      
      public function getNextAvailableTier(param1:int) : int
      {
         var _loc9_:CustomDictionary = null;
         var _loc10_:String = null;
         var _loc2_:Vector.<CustomDictionary> = this.MASTER_AVAILABLE_UPGRADES_VEC[param1];
         var _loc3_:Array = [];
         var _loc4_:CustomDictionary = this.obtainedUpgradesVec[param1];
         var _loc5_:int = _loc2_.length;
         var _loc6_:int = this.getMaxTierNum(param1);
         var _loc7_:int;
         if((_loc7_ = this.getTier(param1) + 1) > _loc6_)
         {
            _loc7_ = 0;
         }
         var _loc8_:int = _loc7_;
         while(_loc8_ <= _loc6_)
         {
            _loc9_ = _loc2_[_loc8_];
            for each(_loc10_ in _loc9_)
            {
               if(_loc4_.containsValue(_loc10_) && player)
               {
                  _loc10_ = player.replaceableUpgrades[_loc10_];
               }
               if(_loc10_ && !_loc4_.containsValue(_loc10_))
               {
                  return _loc8_;
               }
            }
            _loc8_++;
         }
         if(_loc7_ == 0)
         {
            return -1;
         }
         _loc8_ = 0;
         while(_loc8_ <= _loc7_)
         {
            _loc9_ = _loc2_[_loc8_];
            for each(_loc10_ in _loc9_)
            {
               if(!_loc4_.containsValue(_loc10_))
               {
                  return _loc8_;
               }
            }
            _loc8_++;
         }
         return -1;
      }
      
      private function getMaxTierNum(param1:int) : int
      {
         return this.MASTER_AVAILABLE_UPGRADES_VEC[param1].length - 1;
      }
      
      private function setTier(param1:int, param2:int) : void
      {
         var _loc6_:String = null;
         if(param2 == -1)
         {
            return;
         }
         this.viewedUpgradesVec[param1] = new CustomDictionary();
         var _loc3_:CustomDictionary = this.MASTER_AVAILABLE_UPGRADES_VEC[param1][param2];
         var _loc4_:CustomDictionary = this.obtainedUpgradesVec[param1];
         var _loc5_:CustomDictionary = this.availableUpgradesVec[param1];
         for each(_loc6_ in _loc3_)
         {
            if(_loc4_.containsValue(_loc6_) && player)
            {
               _loc6_ = player.replaceableUpgrades[_loc6_];
            }
            if(_loc6_ && !_loc4_.containsValue(_loc6_))
            {
               _loc5_.addItem(_loc6_);
            }
         }
         this.tierVec[param1] = param2;
         if(player)
         {
            player.curTier = param2;
         }
      }
      
      public function getAmmoRemaining(param1:int, param2:int) : int
      {
         return this.ammoVec[param1][param2];
      }
      
      public function setAmmoRemaining(param1:int, param2:int, param3:int) : void
      {
         this.ammoVec[param1][param2] = param3;
      }
      
      public function getIconOrderVec(param1:int) : Vector.<String>
      {
         return this.ICON_ORDER_VEC[param1];
      }
      
      private function setCurrent() : void
      {
      }
      
      public function addPoints(param1:uint) : void
      {
         if(gsMngr.gameState == GameStates.CHARACTER_SELECT)
         {
            return;
         }
         this._score += param1;
         if(this._score > SCORE_MAX)
         {
            this._score = SCORE_MAX;
         }
         this.tsTxt.updScoreDisp(this._score.toString());
      }
      
      public function addLife() : void
      {
         ++this._numLives;
         if(this._numLives > NUM_LIVES_MAX)
         {
            this._numLives = NUM_LIVES_MAX;
         }
         sndMngr.playSound(SFX_GAME_NEW_LIFE);
      }
      
      public function loseLife() : void
      {
         if(Cheats.infiniteLives)
         {
            return;
         }
         --this._numLives;
         if(this._numLives < this.NUM_LIVES_GAME_OVER)
         {
            this._numLives = this.NUM_LIVES_GAME_OVER;
         }
      }
      
      public function checkPStateVecForAllZeroes() : Boolean
      {
         var _loc2_:int = 0;
         var _loc1_:int = Character.PS_FALLEN;
         for each(_loc2_ in this.pStateVec)
         {
            if(_loc2_ != _loc1_)
            {
               return false;
            }
         }
         return true;
      }
      
      public function playerDie() : void
      {
         var _loc1_:int = 0;
         if(GameSettings.campaignMode != CampaignModes.SURVIVAL || Cheats.infiniteLives)
         {
            if(player)
            {
               player.pState = Character.PS_NORMAL;
            }
            this._plyrStatsArr[PLYR_STATS_IND_P_STATE] = Character.PS_NORMAL;
            this.loseLife();
         }
         else
         {
            _loc1_ = Character.PS_FALLEN;
            this._plyrStatsArr[PLYR_STATS_IND_P_STATE] = _loc1_;
            this.pStateVec[this.curCharNum] = _loc1_;
            if(player)
            {
               player.pState = Character.PS_FALLEN;
            }
         }
      }
      
      public function set curCharNum(param1:int) : void
      {
         this._curCharNum = param1;
         this.plyrStatsArr[0] = param1;
      }
      
      public function set curFullLevStr(param1:String) : void
      {
         this._curFullLevStr = param1;
      }
      
      public function get curCharNum() : int
      {
         return this._curCharNum;
      }
      
      public function get curFullLevStr() : String
      {
         return this._curFullLevStr;
      }
      
      public function get numLives() : int
      {
         return this._numLives;
      }
      
      public function set numLives(param1:int) : void
      {
         if(param1 < NUM_LIVES_MIN)
         {
            param1 = NUM_LIVES_MIN;
         }
         if(param1 > NUM_LIVES_MAX)
         {
            NUM_LIVES_MAX;
         }
         this._numLives = param1;
      }
      
      public function get numCoins() : int
      {
         return this._numCoins;
      }
      
      public function set numCoins(param1:int) : void
      {
         if(param1 < NUM_COINS_MIN)
         {
            param1 = NUM_COINS_MIN;
         }
         if(param1 > NUM_COINS_MAX)
         {
            NUM_COINS_MAX;
         }
         this._numCoins = param1;
      }
      
      public function get numCoinsStr() : String
      {
         var _loc1_:String = null;
         if(this._numCoins < 10)
         {
            _loc1_ = "0" + this._numCoins.toString();
         }
         else
         {
            _loc1_ = this._numCoins.toString();
         }
         return _loc1_;
      }
      
      public function get newLev() : Boolean
      {
         return this._newLev;
      }
      
      public function set newLev(param1:Boolean) : void
      {
         this._newLev = param1;
      }
      
      public function get pStateVec() : Vector.<int>
      {
         return this._pStateVec;
      }
      
      public function get score() : int
      {
         return this._score;
      }
      
      public function set score(param1:int) : void
      {
         if(param1 < SCORE_MIN)
         {
            param1 = SCORE_MIN;
         }
         else if(param1 > SCORE_MAX)
         {
            param1 = SCORE_MAX;
         }
         this._score = param1;
      }
      
      public function cleanUp() : void
      {
      }
      
      public function changeDifficulty() : void
      {
      }
      
      public function convNameToNum(param1:String) : uint
      {
         return CharacterInfo.convNameToNum(param1);
      }
      
      public function convNumToName(param1:int) : String
      {
         return CharacterInfo.convNumToName(param1);
      }
      
      public function getRandomCharNum() : int
      {
         return int(Math.random() * Character.NUM_CHARACTERS);
      }
      
      private function checkDefaultStatMaxMin(param1:int) : int
      {
         if(param1 > STAT_MAX_DEF)
         {
            param1 = STAT_MAX_DEF;
         }
         else if(param1 < STAT_MIN_DEF)
         {
            param1 = STAT_MIN_DEF;
         }
         return param1;
      }
      
      public function get fileRef() : FileReference
      {
         return this._fileRef;
      }
      
      public function get showTimeUpScrn() : Boolean
      {
         return this._showTimeUpScrn;
      }
      
      public function get runTimeLeft() : Boolean
      {
         return this._runTimeLeft;
      }
      
      public function get timeLeft() : int
      {
         return this._timeLeft;
      }
      
      public function set timeLeft(param1:int) : void
      {
         this._timeLeft = param1;
         if(this._timeLeft < this.TIME_MIN)
         {
            this._timeLeft = this.TIME_MIN;
         }
         this.tsTxt.updTimeDispTxt(this._timeLeft.toString());
         if(Cheats.infiniteTime || level is CharacterSelect || level is TitleLevel)
         {
            return;
         }
         if(this._timeLeft == this.SECONDS_LEFT_START_TIME)
         {
            eventMngr.secondsLeftIntro();
         }
         else if(this._timeLeft == this.PLAYER_DIE_TIME)
         {
            this._showTimeUpScrn = true;
            player.die();
         }
      }
      
      public function get numEnemiesDefeated() : int
      {
         return this._numEnemiesDefeated;
      }
      
      public function set numEnemiesDefeated(param1:int) : void
      {
         param1 = this.checkDefaultStatMaxMin(param1);
         this._numEnemiesDefeated = param1;
         if(param1 == NUM_ENEMIES_TO_DEFEAT && this.beatGame)
         {
            Cheats.unlockCheat(MenuBoxItems.INVINCIBLE);
         }
      }
      
      public function get numHammerBrosDefeated() : int
      {
         return this._numHammerBrosDefeated;
      }
      
      public function set numHammerBrosDefeated(param1:int) : void
      {
         param1 = this.checkDefaultStatMaxMin(param1);
         this._numHammerBrosDefeated = param1;
         if(param1 == NUM_HAMMER_BROS_TO_DEFEAT)
         {
            Cheats.unlockCheat(MenuBoxItems.EVIL_HAMMER_BROS);
         }
      }
      
      public function get numEnemiesStomped() : int
      {
         return this._numEnemiesStomped;
      }
      
      public function set numEnemiesStomped(param1:int) : void
      {
         param1 = this.checkDefaultStatMaxMin(param1);
         this._numEnemiesStomped = param1;
         if(param1 == NUM_ENEMIES_TO_STOMP && this.beatGame)
         {
            Cheats.unlockCheat(MenuBoxItems.BOUNCY_PITS);
         }
      }
      
      public function get numArmoredEnemiesDefeated() : int
      {
         return this._numArmoredEnemiesDefeated;
      }
      
      public function set numArmoredEnemiesDefeated(param1:int) : void
      {
         param1 = this.checkDefaultStatMaxMin(param1);
         this._numArmoredEnemiesDefeated = param1;
         if(param1 == NUM_ARMORED_ENEMIES_TO_DEFEAT && this.beatGame)
         {
            Cheats.unlockCheat(MenuBoxItems.ALL_WEAPONS_PIERCE);
         }
      }
      
      public function get numBricksBroken() : int
      {
         return this._numBricksBroken;
      }
      
      public function set numBricksBroken(param1:int) : void
      {
         param1 = this.checkDefaultStatMaxMin(param1);
         this._numBricksBroken = param1;
         if(param1 == NUM_BRICKS_TO_BREAK && this.beatGame)
         {
            Cheats.unlockCheat(MenuBoxItems.ALWAYS_BREAK_BRICKS);
         }
      }
      
      public function get numAmmoPickupsCollected() : int
      {
         return this._numAmmoPickupsCollected;
      }
      
      public function set numAmmoPickupsCollected(param1:int) : void
      {
         param1 = this.checkDefaultStatMaxMin(param1);
         this._numAmmoPickupsCollected = param1;
         if(param1 == NUM_AMMO_PICKUPS_TO_COLLECT && this.beatGame)
         {
            Cheats.unlockCheat(MenuBoxItems.INFINITE_AMMO);
         }
      }
      
      public function get beatGame() : Boolean
      {
         var _loc1_:MapPack = null;
         for each(_loc1_ in Enum.GetConstants(MapPack))
         {
            if(this.getBeatGameStatus(_loc1_) != BeatGameStatus.None)
            {
               return true;
            }
         }
         return false;
      }
      
      public function get numContinuesUsed() : int
      {
         return this._numContinuesUsed;
      }
      
      public function set numContinuesUsed(param1:int) : void
      {
         param1 = this.checkDefaultStatMaxMin(param1);
         this._numContinuesUsed = param1;
      }
      
      public function get numCheepCheepsDefeated() : int
      {
         return this._numCheepCheepsDefeated;
      }
      
      public function set numCheepCheepsDefeated(param1:int) : void
      {
         param1 = this.checkDefaultStatMaxMin(param1);
         this._numCheepCheepsDefeated = param1;
         if(param1 == NUM_CHEEP_CHEEPS_TO_DEFEAT && this.beatGame)
         {
            Cheats.unlockCheat(MenuBoxItems.WATER_MODE);
         }
      }
      
      public function get allowCharacterRevival() : Boolean
      {
         return this._allowCharacterRevival;
      }
      
      public function get numSophiaMissiles() : int
      {
         return this._numSophiaMissiles;
      }
      
      public function set numSophiaMissiles(param1:int) : void
      {
         if(param1 < this.NUM_SOPHIA_MISSILES_MIN)
         {
            param1 = this.NUM_SOPHIA_MISSILES_MIN;
         }
         else if(param1 > this.NUM_SOPHIA_MISSILES_MAX)
         {
            param1 = this.NUM_SOPHIA_MISSILES_MAX;
         }
         this._numSophiaMissiles = param1;
      }
      
      public function get numSamusMissiles() : int
      {
         return this._numSamusMissiles;
      }
      
      public function set numSamusMissiles(param1:int) : void
      {
         if(param1 < this.NUM_SAMUS_MISSILES_MIN)
         {
            param1 = this.NUM_SAMUS_MISSILES_MIN;
         }
         else if(param1 > this.NUM_SAMUS_MISSILES_MAX)
         {
            param1 = this.NUM_SAMUS_MISSILES_MAX;
         }
         this._numSamusMissiles = param1;
      }
      
      private function getBeatGameStatus(param1:MapPack) : BeatGameStatus
      {
         return this.beatGameStatusVec[param1.Index];
      }
      
      private function setBeatGameStatus(param1:MapPack, param2:int) : void
      {
         var _loc3_:int = BeatGameStatus.GetMapDifficulty(this.getBeatGameStatus(param1));
         if(param2 > _loc3_)
         {
            this.beatGameStatusVec[param1.Index] = BeatGameStatus.GetStatus(param2);
         }
      }
      
      public function checkCancelSecondsLeft() : void
      {
         if(this.secondsLeft && this._timeLeft > this.SECONDS_LEFT_START_TIME)
         {
            this.secondsLeft = false;
            sndMngr.changeMusic();
         }
      }
   }
}
