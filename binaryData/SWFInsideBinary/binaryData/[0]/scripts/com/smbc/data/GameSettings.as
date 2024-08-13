package com.smbc.data
{
   import com.explodingRabbit.cross.data.ConsoleType;
   import com.explodingRabbit.utils.Enum;
   import com.smbc.SuperMarioBrosCrossover;
   import com.smbc.characters.*;
   import com.smbc.enums.AttackStrength;
   import com.smbc.enums.BillWeapon;
   import com.smbc.enums.ClassicDamageResponse;
   import com.smbc.enums.CoinSoundType;
   import com.smbc.enums.DamageResponse;
   import com.smbc.enums.EnemySpeed;
   import com.smbc.enums.GoombaReplacementType;
   import com.smbc.enums.InitialLivesCount;
   import com.smbc.enums.ItemDropRate;
   import com.smbc.enums.LinkWeapon;
   import com.smbc.enums.MegaManSpecialWeapon;
   import com.smbc.enums.PiranhaSpawnType;
   import com.smbc.enums.PowerupMode;
   import com.smbc.enums.RyuSpecialWeapon;
   import com.smbc.enums.SamusWeapon;
   import com.smbc.enums.SimonSpecialWeapon;
   import com.smbc.enums.SophiaWeapon;
   import com.smbc.errors.IntToBooleanError;
   import com.smbc.graphics.BmdInfo;
   import com.smbc.graphics.SkinNames;
   import com.smbc.graphics.ThemeGroup;
   import com.smbc.level.Level;
   import com.smbc.main.GlobVars;
   import com.smbc.managers.ButtonManager;
   import com.smbc.managers.EventManager;
   import com.smbc.managers.GameStateManager;
   import com.smbc.managers.GraphicsManager;
   import com.smbc.managers.MessageBoxManager;
   import com.smbc.managers.ScreenManager;
   import com.smbc.managers.SoundManager;
   import com.smbc.managers.StatManager;
   import com.smbc.managers.TutorialManager;
   
   public class GameSettings
   {
      
      public static const DEBUG_MODE:Boolean = false;
      
      public static const SHOW_PALETTE_ERROR:Boolean = true;
      
      public static var DEFAULT_CHARACTER:int = MegaMan.CHAR_NUM;
      
      private static const DEFAULT_MAP_PACK:MapPack = MapPack.Smb;
      
      public static var FIRST_LEVEL:String = "1-1a";
      
      public static const hideNewStuff:Boolean = false;
      
      public static var callJavaScript:Boolean = false;
      
      public static const TURN_OFF_SOUND:Boolean = false;
      
      public static const VERSION_NUMBER:Number = Versions.V_3_121;
      
      public static const VERSION_SAVE_FILE_COMPAT_MIN:Number = Versions.V_3_121;
      
      public static var DEF_CHAR_SKIN_NUM:int = 0;
      
      public static const DEF_MAP_SKIN_NUM:int = BmdInfo.SKIN_NUM_SMB_NES;
      
      public static const INACTIVE_SKIN_NUMS:Array = GameSettingsValues.calcSkinMaxValue();
      
      public static const TITLE_SKINS:Array = [0,1,2,3,4,5,6,9,10,11,12,13,14,15,16];
      
      public static const FORCE_THEME_GROUP:ThemeGroup = null;
      
      public static const OVERRIDE_TIME_LEFT:int = 0;
      
      public static const SHOW_BMP:Boolean = false;
      
      public static const FORCE_NEXT_PICKUP:String = null;
      
      public static var allUpgrades:Boolean = false;
      
      public static var skipLogos:Boolean = false;
      
      public static var skipTitleScreen:Boolean = false;
      
      public static var noLoading:Boolean = false;
      
      public static var invisiblePause:Boolean = false;
      
      public static var recordCharSeq:Boolean = false;
      
      public static const ALWAYS_DROP_ITEMS:Boolean = false;
      
      public static const SKIP_FAKE_LEVEL:Boolean = false;
      
      public static var charSelIconsVisible:Boolean = true;
      
      private static const FRAME_RATE_LOCKED:int = 30;
      
      private static const FRAME_RATE_UNLOCKED:int = 60;
      
      public static const SFX_VOLUME:int = 55;
      
      public static const MUSIC_VOLUME:int = 100;
      
      public static const MASTER_VOLUME:int = 75;
      
      private static var _difficulty:int = Difficulties.NORMAL;
      
      private static var _mapDifficulty:int = MapDifficulty.NORMAL;
      
      public static var powerupMode:PowerupMode = PowerupMode.Classic;
      
      private static var _campaignMode:int = CampaignModes.ALL_CHARACTERS;
      
      private static var _tutorials:Boolean = false;
      
      private static var _muteSfx:Boolean = false;
      
      private static var _muteMusic:Boolean = false;
      
      public static var coinSoundType:CoinSoundType = CoinSoundType.Normal;
      
      private static var _musicQuality:int = MusicQuality.HIGH;
      
      private static var _musicType:int = ConsoleType.CHARACTER;
      
      private static var _musicSet:int = MusicSets.CHARACTER;
      
      public static var mapPack:MapPack = DEFAULT_MAP_PACK;
      
      private static var _cheatNotify:Boolean = true;
      
      private static var _lockFrameRate:Boolean = true;
      
      private static var _mapSkin:int = DEF_MAP_SKIN_NUM;
      
      public static var randomMapSkin:Boolean = false;
      
      private static var _enemySkin:int = SkinNames.getNum(SkinNames.USE_MAP_SKIN);
      
      private static var _interfaceSkin:int = SkinNames.getNum(SkinNames.USE_MAP_SKIN);
      
      private static var _mapPalette:int = GameBoyPalettes.OBJ[MenuBoxValues.FULL_COLOR];
      
      private static var _characterPalette:int = GameBoyPalettes.OBJ[MenuBoxValues.MAP_PALETTE];
      
      private static var _enemyPalette:int = GameBoyPalettes.OBJ[MenuBoxValues.MAP_PALETTE];
      
      private static var _interfacePalette:int = GameBoyPalettes.OBJ[MenuBoxValues.MAP_PALETTE];
      
      private static var _paletteTarget:int = GameSettingsValues.paletteTargetAll;
      
      private static var _activeSkins:int = GameSettingsValues.paletteTargetAll;
      
      private static var _gameBoyFilter:Boolean = false;
      
      public static var classicSpecialInput:Boolean = false;
      
      public static var classicDamageResponse:ClassicDamageResponse = ClassicDamageResponse.LoseCurrent;
      
      public static var bassWeapon:MegaManSpecialWeapon = MegaManSpecialWeapon.WaterShield;
      
      public static var billFirstWeapon:BillWeapon = BillWeapon.MachineGun;
      
      public static var billSecondWeapon:BillWeapon = BillWeapon.Spread;
      
      public static var linkWeapon:LinkWeapon = LinkWeapon.Bomb;
      
      public static var megaManWeapon:MegaManSpecialWeapon = MegaManSpecialWeapon.MetalBlade;
      
      public static var ryuStartWeapon:RyuSpecialWeapon = RyuSpecialWeapon.Shuriken;
      
      public static var ryuExtraWeapon:RyuSpecialWeapon = RyuSpecialWeapon.WindmillShuriken;
      
      public static var samusWeapon:SamusWeapon = SamusWeapon.WaveBeam;
      
      public static var simonStartWeapon:SimonSpecialWeapon = SimonSpecialWeapon.Axe;
      
      public static var simonExtraWeapon:SimonSpecialWeapon = SimonSpecialWeapon.Cross;
      
      public static var sophiaWeapon:SophiaWeapon = SophiaWeapon.TripleMissile;
      
      public static var initialLivesCount:InitialLivesCount = InitialLivesCount.Three;
      
      public static var attackStrength:AttackStrength = AttackStrength.Normal;
      
      public static var enemySpeed:EnemySpeed = EnemySpeed.Normal;
      
      public static var goombaReplacementType:GoombaReplacementType = GoombaReplacementType.Goomba;
      
      public static var damageResponse:DamageResponse = DamageResponse.LoseSomeUpgrades;
      
      public static var itemDropRate:ItemDropRate = ItemDropRate.Normal;
      
      public static var startWithMushroom:Boolean = false;
      
      public static var piranhaSpawnType:PiranhaSpawnType = PiranhaSpawnType.SomePipes;
      
      public static var onOfficialWebsiteDebug:Boolean = true;
      
      public static var forceOfflineDebug:Boolean = false;
      
      private static var mapSkinLimited:int;
      
      private static var enemySkinLimited:int;
      
      private static var interfaceSkinLimited:int;
      
      private static var mapPaletteLimited:int;
      
      private static var characterPaletteLimited:int;
      
      private static var enemyPaletteLimited:int;
      
      private static var interfacePaletteLimited:int;
      
      public static const INCREASE_SETTING_NUM:int = -1;
      
      public static const DECREASE_SETTING_NUM:int = -2;
      
      private static const IND_LOAD_SAVE_ARR_VALUE:int = 0;
      
      private static const IND_LOAD_SAVE_ARR_REFERENCE:int = 1;
      
      private static var game:SuperMarioBrosCrossover;
      
      private static var gsMngr:GameStateManager;
      
      private static var grMngr:GraphicsManager;
      
      private static var btnMngr:ButtonManager;
      
      private static var statMngr:StatManager;
      
      private static var scrnMngr:ScreenManager;
      
      private static var sndMngr:SoundManager;
      
      private static var eventMngr:EventManager;
      
      private static var msgBxMngr:MessageBoxManager;
      
      private static var tutMngr:TutorialManager;
      
      public static var showedNewVersionAvailableMessage:Boolean;
       
      
      public function GameSettings()
      {
         super();
      }
      
      public static function get activeSkins() : int
      {
         return _activeSkins;
      }
      
      public static function get paletteTarget() : int
      {
         return _paletteTarget;
      }
      
      public static function get mapSkin() : int
      {
         return _mapSkin;
      }
      
      public static function setDefaults() : void
      {
         _difficulty = Difficulties.NORMAL;
         _mapDifficulty = MapDifficulty.NORMAL;
         _campaignMode = CampaignModes.ALL_CHARACTERS;
         powerupMode = PowerupMode.Classic;
         _tutorials = false;
         _musicType = ConsoleType.CHARACTER;
         _musicSet = MusicSets.CHARACTER;
         mapPack = MapPack.Smb;
         _muteSfx = false;
         _muteMusic = false;
         coinSoundType = CoinSoundType.Normal;
         _cheatNotify = true;
         _lockFrameRate = true;
         _mapSkin = BmdInfo.SKIN_NUM_SMB_NES;
         _enemySkin = SkinNames.getNum(SkinNames.USE_MAP_SKIN);
         _interfaceSkin = SkinNames.getNum(SkinNames.USE_MAP_SKIN);
         _mapPalette = GameBoyPalettes.OBJ[MenuBoxValues.FULL_COLOR];
         _characterPalette = GameBoyPalettes.OBJ[MenuBoxValues.MAP_PALETTE];
         _enemyPalette = GameBoyPalettes.OBJ[MenuBoxValues.MAP_PALETTE];
         _interfacePalette = GameBoyPalettes.OBJ[MenuBoxValues.MAP_PALETTE];
         _paletteTarget = GameSettingsValues.paletteTargetAll;
         _activeSkins = GameSettingsValues.paletteTargetAll;
         _gameBoyFilter = false;
         classicSpecialInput = false;
         FIRST_LEVEL = "1-1a";
         DEFAULT_CHARACTER = Mario.CHAR_NUM;
         DEF_CHAR_SKIN_NUM = 0;
         resetClassicSettings();
         resetDifficultySettings();
      }
      
      private static function resetClassicSettings() : void
      {
         classicDamageResponse = ClassicDamageResponse.LoseEverything;
         bassWeapon = MegaManSpecialWeapon.WaterShield;
         billFirstWeapon = BillWeapon.MachineGun;
         billSecondWeapon = BillWeapon.Spread;
         linkWeapon = LinkWeapon.Bomb;
         megaManWeapon = MegaManSpecialWeapon.MetalBlade;
         ryuStartWeapon = RyuSpecialWeapon.Shuriken;
         ryuExtraWeapon = RyuSpecialWeapon.WindmillShuriken;
         samusWeapon = SamusWeapon.WaveBeam;
         simonStartWeapon = SimonSpecialWeapon.Axe;
         simonExtraWeapon = SimonSpecialWeapon.Cross;
         sophiaWeapon = SophiaWeapon.TripleMissile;
      }
      
      public static function resetDifficultySettings() : void
      {
         if(DEBUG_MODE)
         {
            return;
         }
         initialLivesCount = InitialLivesCount.Three;
         attackStrength = AttackStrength.Normal;
         enemySpeed = EnemySpeed.Normal;
         goombaReplacementType = GoombaReplacementType.Goomba;
         damageResponse = DamageResponse.LoseSomeUpgrades;
         piranhaSpawnType = PiranhaSpawnType.SomePipes;
         startWithMushroom = false;
         itemDropRate = ItemDropRate.Normal;
      }
      
      public static function activateDebugMode() : void
      {
         if(Cheats.allUnlocked)
         {
            Cheats.activateDebugCheats();
         }
      }
      
      public static function managersReady() : void
      {
         game = SuperMarioBrosCrossover.game;
         grMngr = GraphicsManager.INSTANCE;
         gsMngr = GameStateManager.GS_MNGR;
         btnMngr = ButtonManager.BTN_MNGR;
         statMngr = StatManager.STAT_MNGR;
         scrnMngr = ScreenManager.SCRN_MNGR;
         sndMngr = SoundManager.SND_MNGR;
         eventMngr = EventManager.EVENT_MNGR;
         msgBxMngr = MessageBoxManager.INSTANCE;
         tutMngr = TutorialManager.TUT_MNGR;
      }
      
      public static function changeDifficulty(param1:int, param2:int = -1) : int
      {
         var _loc3_:int = _difficulty;
         if(param2 >= 0)
         {
            _loc3_ = param2;
         }
         if(param1 == INCREASE_SETTING_NUM)
         {
            _loc3_++;
         }
         else if(param1 == DECREASE_SETTING_NUM)
         {
            _loc3_--;
         }
         else
         {
            _loc3_ = param1;
         }
         _loc3_ = checkMaxMin(_loc3_,Difficulties.MAX_VALUE,0);
         if(param2 < 0)
         {
            _difficulty = _loc3_;
            statMngr.changeDifficulty();
         }
         return _loc3_;
      }
      
      public static function changeMapDifficulty(param1:int, param2:int = -1) : int
      {
         var _loc3_:int = _mapDifficulty;
         if(param2 >= 0)
         {
            _loc3_ = param2;
         }
         if(param1 == INCREASE_SETTING_NUM)
         {
            _loc3_++;
         }
         else if(param1 == DECREASE_SETTING_NUM)
         {
            _loc3_--;
         }
         else
         {
            _loc3_ = param1;
         }
         _loc3_ = checkMaxMin(_loc3_,MapDifficulty.MAX_VALUE,0);
         if(param2 < 0)
         {
            _mapDifficulty = _loc3_;
         }
         return _loc3_;
      }
      
      public static function changeCampaignMode(param1:int) : String
      {
         if(param1 == INCREASE_SETTING_NUM)
         {
            ++_campaignMode;
         }
         else if(param1 == DECREASE_SETTING_NUM)
         {
            --_campaignMode;
         }
         else
         {
            _campaignMode = param1;
         }
         _campaignMode = checkMaxMin(_campaignMode,CampaignModes.MAX_VALUE,0);
         return CampaignModes.swapNumAndName(_campaignMode);
      }
      
      public static function changeTutorials(param1:int = -1) : void
      {
         if(param1 > 0 && param1 != 0 && param1 != 1)
         {
            throw new IntToBooleanError();
         }
         if(param1 < 0)
         {
            if(_tutorials)
            {
               _tutorials = false;
            }
            else
            {
               _tutorials = true;
            }
         }
         else
         {
            _tutorials = Boolean(param1);
         }
      }
      
      public static function changeLockFrameRate(param1:int = -1) : Boolean
      {
         if(param1 > 1)
         {
            throw new IntToBooleanError();
         }
         if(param1 < 0)
         {
            _lockFrameRate = !_lockFrameRate;
         }
         else
         {
            _lockFrameRate = Boolean(param1);
         }
         if(_lockFrameRate)
         {
            GlobVars.STAGE.frameRate = FRAME_RATE_LOCKED;
         }
         else
         {
            GlobVars.STAGE.frameRate = FRAME_RATE_UNLOCKED;
         }
         return _lockFrameRate;
      }
      
      public static function changeGameBoyFilter(param1:int = -1) : void
      {
         if(param1 > 0 && param1 != 0 && param1 != 1)
         {
            throw new IntToBooleanError();
         }
         if(param1 < 0)
         {
            if(_gameBoyFilter)
            {
               _gameBoyFilter = false;
            }
            else
            {
               _gameBoyFilter = true;
            }
         }
         else
         {
            _gameBoyFilter = Boolean(param1);
         }
         GraphicsManager.INSTANCE.updateScreenFilter();
      }
      
      public static function changeMuteMusic(param1:int = -1) : void
      {
         if(param1 > 0 && param1 != 0 && param1 != 1)
         {
            throw new IntToBooleanError();
         }
         if(param1 < 0)
         {
            if(_muteMusic)
            {
               _muteMusic = false;
            }
            else
            {
               _muteMusic = true;
            }
         }
         else
         {
            _muteMusic = Boolean(param1);
         }
         sndMngr.changeMuteSettings();
      }
      
      public static function changeMuteSfx(param1:int = -1) : void
      {
         if(param1 > 0 && param1 != 0 && param1 != 1)
         {
            throw new IntToBooleanError();
         }
         if(param1 < 0)
         {
            if(_muteSfx)
            {
               _muteSfx = false;
            }
            else
            {
               _muteSfx = true;
            }
         }
         else
         {
            _muteSfx = Boolean(param1);
         }
         sndMngr.changeMuteSettings();
      }
      
      private static function prepareLoadSave() : Array
      {
         return [[mapDifficulty,changeMapDifficulty],[mapPack,"mapPack"],[campaignMode,changeCampaignMode],[powerupMode,"powerupMode"],[cheatNotify,"cheatNotify"],[tutorials,changeTutorials],[lockFrameRate,changeLockFrameRate],[classicDamageResponse,"classicDamageResponse"],[classicSpecialInput,"classicSpecialInput"],[bassWeapon,"bassWeapon"],[billFirstWeapon,"billFirstWeapon"],[billSecondWeapon,"billSecondWeapon"],[linkWeapon,"linkWeapon"],[megaManWeapon,"megaManWeapon"],[ryuStartWeapon,"ryuStartWeapon"],[ryuExtraWeapon,"ryuExtraWeapon"],[samusWeapon,"samusWeapon"],[simonStartWeapon,"simonStartWeapon"],[simonExtraWeapon,"simonExtraWeapon"],[sophiaWeapon,"sophiaWeapon"],[initialLivesCount,"initialLivesCount"],[attackStrength,"attackStrength"],[enemySpeed,"enemySpeed"],[goombaReplacementType,"goombaReplacementType"],[damageResponse,"damageResponse"],[startWithMushroom,"startWithMushroom"],[itemDropRate,"itemDropRate"],[piranhaSpawnType,"piranhaSpawnType"],[muteSfx,changeMuteSfx],[muteMusic,changeMuteMusic],[coinSoundType,"coinSoundType"],[musicType,changeMusicType],[musicSet,changeMusicSet],[activeSkins,changeActiveSkins],[gameBoyFilter,changeGameBoyFilter],[mapSkin,changeMapSkin],[randomMapSkin,"randomMapSkin"],[enemySkin,changeEnemySkin],[interfaceSkin,changeInterfaceSkin]];
      }
      
      public static function loadData(param1:Array) : void
      {
         var _loc4_:int = 0;
         var _loc5_:Array = null;
         var _loc6_:* = undefined;
         var _loc2_:Array = prepareLoadSave();
         var _loc3_:int = int(_loc2_.length);
         while(_loc4_ < _loc3_)
         {
            _loc5_ = _loc2_[_loc4_];
            if((_loc6_ = _loc5_[IND_LOAD_SAVE_ARR_REFERENCE]) is Function)
            {
               _loc6_(param1.shift());
            }
            else if(GameSettings[_loc6_] is Enum)
            {
               GameSettings[_loc6_] = Enum(GameSettings[_loc6_]).GetAtIndex(param1.shift());
            }
            else
            {
               GameSettings[_loc6_] = param1.shift();
            }
            _loc4_++;
         }
      }
      
      public static function saveData() : Array
      {
         var _loc4_:int = 0;
         var _loc1_:Array = prepareLoadSave();
         var _loc2_:Array = [];
         var _loc3_:int = int(_loc1_.length);
         while(_loc4_ < _loc3_)
         {
            if(_loc1_[_loc4_][IND_LOAD_SAVE_ARR_VALUE] is Enum)
            {
               _loc2_.push(Enum(_loc1_[_loc4_][IND_LOAD_SAVE_ARR_VALUE]).Index);
            }
            else
            {
               _loc2_.push(int(_loc1_[_loc4_][IND_LOAD_SAVE_ARR_VALUE]));
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public static function changeMusicQuality(param1:int) : void
      {
         _musicQuality = incValueFromOvRdNum(param1,_musicQuality);
         _musicQuality = checkMaxMin(_musicQuality,MusicQuality.MAX_VALUE,0);
      }
      
      public static function changeMusicType(param1:int) : int
      {
         _musicType = incValueFromOvRdNum(param1,_musicType);
         _musicType = checkMaxMin(_musicType,ConsoleType.MAX_VALUE,0);
         if(gsMngr.gameState == GameStates.PLAY)
         {
            sndMngr.changeMusic();
         }
         return _musicType;
      }
      
      public static function changeActiveSkins(param1:int) : int
      {
         _activeSkins = incValueFromOvRdNum(param1,_activeSkins);
         _activeSkins = checkMaxMin(_activeSkins,GameSettingsValues.PALETTE_TARGET_MAX_VALUE,0);
         if(!statMngr.loadingData)
         {
            GraphicsManager.INSTANCE.changeActiveSkins();
         }
         return _activeSkins;
      }
      
      private static function checkMaxMin(param1:int, param2:int, param3:int) : int
      {
         if(param1 > param2)
         {
            param1 = param3;
         }
         else if(param1 < param3)
         {
            param1 = param2;
         }
         return param1;
      }
      
      public static function changePaletteTarget(param1:int) : int
      {
         _paletteTarget = incValueFromOvRdNum(param1,_paletteTarget);
         _paletteTarget = checkMaxMin(_paletteTarget,GameSettingsValues.PALETTE_TARGET_MAX_VALUE,0);
         GraphicsManager.INSTANCE.swapGbPalette(true);
         return _paletteTarget;
      }
      
      public static function setTitleMapSkin() : void
      {
         _mapSkin = TITLE_SKINS[int(Math.random() * TITLE_SKINS.length)];
      }
      
      public static function changeMapSkin(param1:int, param2:Boolean = true) : void
      {
         var _loc6_:int = 0;
         var _loc3_:int = _mapSkin;
         var _loc4_:int = GameSettingsValues.mapSkinLimitedMaxValue;
         var _loc5_:int = GameSettingsValues.mapSkinMaxValue;
         var _loc7_:Boolean = true;
         if(param1 == DECREASE_SETTING_NUM)
         {
            _loc7_ = false;
         }
         if(!param2)
         {
            _loc6_ = -1;
         }
         if(param1 == INCREASE_SETTING_NUM)
         {
            _mapSkin = incSkin(_mapSkin,1,_loc4_,_loc5_ + _loc6_);
         }
         else if(param1 == DECREASE_SETTING_NUM)
         {
            _mapSkin = incSkin(_mapSkin,-1,_loc4_,_loc5_ + _loc6_);
         }
         else
         {
            _mapSkin = param1;
         }
         _mapSkin = checkMaxMin(_mapSkin,_loc5_ + _loc6_,0);
         if(_mapSkin <= _loc4_)
         {
            if(_loc3_ <= _loc4_ && !grMngr.skinIsActive(grMngr.CLEAN_BMD_VEC_MAP[_loc3_]))
            {
               _mapSkin = 0;
            }
            while(!grMngr.skinIsActive(grMngr.CLEAN_BMD_VEC_MAP[_mapSkin]))
            {
               if(_loc7_)
               {
                  _mapSkin = incSkin(_mapSkin,1,_loc4_,_loc5_ + _loc6_);
               }
               else
               {
                  _mapSkin = incSkin(_mapSkin,-1,_loc4_,_loc5_ + _loc6_);
               }
               _mapSkin = checkMaxMin(_mapSkin,_loc5_,0);
               if(_mapSkin > _loc4_)
               {
                  break;
               }
            }
         }
         getMapSkinLimited(true);
         grMngr.swapMapGraphics();
      }
      
      private static function incSkin(param1:int, param2:int, param3:int, param4:int) : int
      {
         var _loc5_:Array = BmdInfo.MAIN_SKIN_ORDER;
         var _loc6_:int;
         var _loc7_:int = (_loc6_ = int(_loc5_.indexOf(param1))) + param2;
         if(_loc6_ == -1)
         {
            _loc6_ = param1;
            _loc7_ = _loc6_ + param2;
            if(param2 < 0)
            {
               if(_loc7_ <= param3)
               {
                  return _loc5_[_loc5_.length - 1];
               }
               return _loc7_;
            }
         }
         if(_loc7_ >= 0 && _loc7_ < _loc5_.length)
         {
            return _loc5_[_loc7_];
         }
         if(_loc7_ < 0)
         {
            return param4;
         }
         if(_loc7_ > param4)
         {
            return 0;
         }
         if(_loc7_ == param3)
         {
            _loc7_ += param2;
            if(_loc7_ += param2 >= 0 && _loc7_ < _loc5_.length)
            {
               return _loc5_[_loc7_];
            }
            return _loc7_;
         }
         if(_loc7_ == _loc5_.length && param2 > 0)
         {
            return param3 + 1;
         }
         if(_loc7_ == _loc5_.length && param2 < 0)
         {
            return param3;
         }
         return _loc7_;
      }
      
      public static function changeEnemySkin(param1:int) : void
      {
         var _loc2_:int = _enemySkin;
         var _loc3_:int = GameSettingsValues.enemySkinLimitedMaxValue;
         var _loc4_:int = GameSettingsValues.enemySkinMaxValue;
         var _loc5_:Boolean = true;
         if(param1 == DECREASE_SETTING_NUM)
         {
            _loc5_ = false;
         }
         if(param1 == INCREASE_SETTING_NUM)
         {
            _enemySkin = incSkin(_enemySkin,1,_loc3_,_loc4_);
         }
         else if(param1 == DECREASE_SETTING_NUM)
         {
            _enemySkin = incSkin(_enemySkin,-1,_loc3_,_loc4_);
         }
         else
         {
            _enemySkin = param1;
         }
         _enemySkin = checkMaxMin(_enemySkin,_loc4_,0);
         if(_enemySkin <= _loc3_)
         {
            if(_loc2_ <= _loc3_ && !grMngr.skinIsActive(grMngr.CLEAN_BMD_VEC_ENEMY[_loc2_]))
            {
               _enemySkin = 0;
            }
            while(!grMngr.skinIsActive(grMngr.CLEAN_BMD_VEC_ENEMY[_enemySkin]))
            {
               if(_loc5_)
               {
                  _enemySkin = incSkin(_enemySkin,1,_loc3_,_loc4_);
               }
               else
               {
                  _enemySkin = incSkin(_enemySkin,-1,_loc3_,_loc4_);
               }
               _enemySkin = checkMaxMin(_enemySkin,_loc4_,0);
               if(_enemySkin > _loc3_)
               {
                  break;
               }
            }
         }
         getEnemySkinLimited(true);
         grMngr.swapEnemyGraphics();
      }
      
      public static function changeInterfaceSkin(param1:int) : void
      {
         var _loc2_:int = _interfaceSkin;
         var _loc3_:int = GameSettingsValues.interfaceSkinLimitedMaxValue;
         var _loc4_:int = GameSettingsValues.interfaceSkinMaxValue;
         var _loc5_:Boolean = true;
         if(param1 == DECREASE_SETTING_NUM)
         {
            _loc5_ = false;
         }
         if(param1 == INCREASE_SETTING_NUM)
         {
            _interfaceSkin = incSkin(_interfaceSkin,1,_loc3_,_loc4_);
         }
         else if(param1 == DECREASE_SETTING_NUM)
         {
            _interfaceSkin = incSkin(_interfaceSkin,-1,_loc3_,_loc4_);
         }
         else
         {
            _interfaceSkin = param1;
         }
         _interfaceSkin = checkMaxMin(_interfaceSkin,_loc4_,0);
         if(_interfaceSkin <= _loc3_)
         {
            if(_loc2_ <= _loc3_ && !grMngr.skinIsActive(grMngr.CLEAN_BMC_VEC_INTERFACE[_loc2_]))
            {
               _interfaceSkin = 0;
            }
            while(!grMngr.skinIsActive(grMngr.CLEAN_BMC_VEC_INTERFACE[_interfaceSkin]))
            {
               if(_loc5_)
               {
                  _interfaceSkin = incSkin(_interfaceSkin,1,_loc3_,_loc4_);
               }
               else
               {
                  _interfaceSkin = incSkin(_interfaceSkin,-1,_loc3_,_loc4_);
               }
               _interfaceSkin = checkMaxMin(_interfaceSkin,_loc4_,0);
               if(_interfaceSkin > _loc3_)
               {
                  break;
               }
            }
         }
         getInterfaceSkinLimited(true);
         grMngr.swapInterface();
      }
      
      public static function changeMapPalette(param1:int) : void
      {
         _mapSkin = incValueFromOvRdNum(param1,_mapSkin);
         _mapSkin = checkMaxMin(_mapPalette,GraphicsManager.NUM_GB_PALETTES + 1,0);
         mapPaletteLimited = _mapPalette;
         getMapPaletteLimited(true);
         getCharacterPaletteLimited();
         getEnemyPaletteLimited();
         getInterfacePaletteLimited();
         GraphicsManager.INSTANCE.swapGbPalette();
      }
      
      private static function incValueFromOvRdNum(param1:int, param2:int) : int
      {
         if(param1 == INCREASE_SETTING_NUM)
         {
            param2++;
         }
         else if(param1 == DECREASE_SETTING_NUM)
         {
            param2--;
         }
         else
         {
            param2 = param1;
         }
         return param2;
      }
      
      public static function changeCharacterPalette(param1:int) : void
      {
         _characterPalette = incValueFromOvRdNum(param1,_characterPalette);
         _characterPalette = checkMaxMin(_characterPalette,GameBoyPalettes.VEC.length - 1,0);
         characterPaletteLimited = _characterPalette;
         getCharacterPaletteLimited(true);
         GraphicsManager.INSTANCE.swapGbPalette();
      }
      
      public static function changeEnemyPalette(param1:int) : void
      {
         _enemyPalette = incValueFromOvRdNum(param1,_enemyPalette);
         _enemyPalette = checkMaxMin(_enemyPalette,GameBoyPalettes.VEC.length - 1,0);
         enemyPaletteLimited = _enemyPalette;
         getEnemyPaletteLimited(true);
         GraphicsManager.INSTANCE.swapGbPalette();
      }
      
      public static function changeInterfacePalette(param1:int) : void
      {
         _interfacePalette = incValueFromOvRdNum(param1,_interfacePalette);
         _interfacePalette = checkMaxMin(_interfacePalette,GameBoyPalettes.VEC.length - 1,0);
         interfacePaletteLimited = _interfacePalette;
         getInterfacePaletteLimited(true);
         GraphicsManager.INSTANCE.swapGbPalette();
      }
      
      public static function changeMusicSet(param1:int) : String
      {
         _musicSet = incValueFromOvRdNum(param1,_musicSet);
         _musicSet = checkMaxMin(_musicSet,MusicSets.MAX_VALUE,0);
         return MusicSets.convNumToStr(_musicSet);
      }
      
      public static function get musicQuality() : int
      {
         return _musicQuality;
      }
      
      public static function get tutorials() : Boolean
      {
         return _tutorials;
      }
      
      public static function get lockFrameRate() : Boolean
      {
         return _lockFrameRate;
      }
      
      public static function get difficulty() : int
      {
         return _difficulty;
      }
      
      public static function get mapDifficulty() : int
      {
         return _mapDifficulty;
      }
      
      public static function get campaignMode() : int
      {
         return _campaignMode;
      }
      
      public static function get muteSfx() : Boolean
      {
         return _muteSfx;
      }
      
      public static function get muteMusic() : Boolean
      {
         return _muteMusic;
      }
      
      public static function get musicSet() : int
      {
         return _musicSet;
      }
      
      public static function get musicType() : int
      {
         return _musicType;
      }
      
      public static function get cheatNotify() : Boolean
      {
         return _cheatNotify;
      }
      
      public static function set cheatNotify(param1:Boolean) : void
      {
         _cheatNotify = param1;
      }
      
      public static function get enemySkin() : int
      {
         return _enemySkin;
      }
      
      public static function get mapPalette() : int
      {
         return 0;
      }
      
      public static function get interfaceSkin() : int
      {
         return _interfaceSkin;
      }
      
      public static function get characterPalette() : int
      {
         return 0;
      }
      
      public static function getMapSkinLimited(param1:Boolean = false) : int
      {
         var _loc2_:int = 0;
         if(param1 && randomMapSkin)
         {
            _loc2_ = GameSettingsValues.mapSkinLimitedMaxValue + 1;
            do
            {
               mapSkinLimited = Math.random() * _loc2_;
            }
            while(!grMngr.skinIsActive(grMngr.CLEAN_BMD_VEC_MAP[mapSkinLimited]) || mapSkinLimited == BmdInfo.SKIN_NUM_INVISIBLE);
            
            _mapSkin = mapSkinLimited;
         }
         if(_mapSkin <= GameSettingsValues.mapSkinLimitedMaxValue)
         {
            mapSkinLimited = _mapSkin;
         }
         return mapSkinLimited;
      }
      
      public static function getEnemySkinLimited(param1:Boolean = false, param2:Boolean = false) : int
      {
         var _loc3_:int = 0;
         if(!param2)
         {
            if(param1 && _enemySkin == GraphicsManager.RANDOM_SKIN_NUM)
            {
               _loc3_ = GameSettingsValues.enemySkinLimitedMaxValue + 1;
               do
               {
                  enemySkinLimited = Math.random() * _loc3_;
               }
               while(!grMngr.skinIsActive(grMngr.CLEAN_BMD_VEC_ENEMY[enemySkinLimited]) || enemySkinLimited == BmdInfo.SKIN_NUM_INVISIBLE);
               
            }
            else if(_enemySkin == GraphicsManager.USE_MAP_SKIN_NUM)
            {
               enemySkinLimited = getMapSkinLimited();
            }
         }
         if(_enemySkin <= GameSettingsValues.enemySkinLimitedMaxValue)
         {
            enemySkinLimited = _enemySkin;
         }
         return enemySkinLimited;
      }
      
      public static function NextClassicWeapons() : void
      {
         var _loc4_:Class = null;
         var _loc1_:Level = Level.levelInstance;
         var _loc2_:Character = _loc1_ != null ? _loc1_.player : null;
         if(_loc1_ == null || _loc2_ == null || !_loc2_.upgradeIsActive(PickupInfo.FIRE_FLOWER))
         {
            return;
         }
         var _loc3_:int = GameSettings.INCREASE_SETTING_NUM;
         if(_loc2_ is Bass)
         {
            GameSettings.bassWeapon = GameSettings.bassWeapon.GetAtIndex(_loc3_) as MegaManSpecialWeapon;
            _loc4_ = Bass;
         }
         else if(_loc2_ is Bill)
         {
            GameSettings.billSecondWeapon = GameSettings.billSecondWeapon.GetAtIndex(_loc3_) as BillWeapon;
            _loc4_ = Bill;
         }
         else if(_loc2_ is Link)
         {
            GameSettings.linkWeapon = GameSettings.linkWeapon.GetAtIndex(_loc3_) as LinkWeapon;
            statMngr.addCharUpgrade(statMngr.curCharNum,PickupInfo.LINK_BOMB);
            statMngr.addCharUpgrade(statMngr.curCharNum,PickupInfo.LINK_BOW);
            _loc4_ = Link;
         }
         else if(_loc2_ is MegaMan)
         {
            GameSettings.megaManWeapon = GameSettings.megaManWeapon.GetAtIndex(_loc3_) as MegaManSpecialWeapon;
            _loc4_ = MegaMan;
         }
         else if(_loc2_ is Ryu)
         {
            GameSettings.ryuStartWeapon = GameSettings.ryuStartWeapon.GetAtIndex(_loc3_) as RyuSpecialWeapon;
            _loc4_ = Ryu;
         }
         else if(_loc2_ is Samus)
         {
            GameSettings.samusWeapon = GameSettings.samusWeapon.GetAtIndex(_loc3_) as SamusWeapon;
            _loc4_ = Samus;
         }
         else if(_loc2_ is Simon)
         {
            GameSettings.simonStartWeapon = GameSettings.simonStartWeapon.GetAtIndex(_loc3_) as SimonSpecialWeapon;
            _loc4_ = Simon;
         }
         else
         {
            if(!(_loc2_ is Sophia))
            {
               return;
            }
            GameSettings.sophiaWeapon = GameSettings.sophiaWeapon.GetAtIndex(_loc3_) as SophiaWeapon;
            _loc4_ = Sophia;
         }
         if(gsMngr.gameState == GameStates.PLAY && !_loc2_.disableInput)
         {
            Character.hitRandomUpgrade(statMngr.curCharNum,false);
            _loc1_.changeChar(_loc4_);
            Level.levelInstance.player.setPowerState(1);
         }
      }
      
      public static function getInterfaceSkinLimited(param1:Boolean = false, param2:Boolean = false) : int
      {
         var _loc3_:int = 0;
         if(!param2)
         {
            if(param1 && _interfaceSkin == GraphicsManager.RANDOM_SKIN_NUM)
            {
               _loc3_ = GameSettingsValues.interfaceSkinLimitedMaxValue + 1;
               do
               {
                  interfaceSkinLimited = Math.random() * _loc3_;
               }
               while(!grMngr.skinIsActive(grMngr.CLEAN_BMC_VEC_INTERFACE[interfaceSkinLimited]) || interfaceSkinLimited == BmdInfo.SKIN_NUM_INVISIBLE);
               
            }
            else if(_interfaceSkin == GraphicsManager.USE_MAP_SKIN_NUM)
            {
               interfaceSkinLimited = getMapSkinLimited();
            }
         }
         if(_interfaceSkin <= GameSettingsValues.interfaceSkinLimitedMaxValue)
         {
            interfaceSkinLimited = _interfaceSkin;
         }
         return interfaceSkinLimited;
      }
      
      public static function getMapPaletteLimited(param1:Boolean = false) : int
      {
         return 0;
      }
      
      public static function getCharacterPaletteLimited(param1:Boolean = false, param2:Boolean = false) : int
      {
         return 0;
      }
      
      public static function getEnemyPaletteLimited(param1:Boolean = false, param2:Boolean = false) : int
      {
         return 0;
      }
      
      public static function getInterfacePaletteLimited(param1:Boolean = false, param2:Boolean = false) : int
      {
         return 0;
      }
      
      public static function getMusicConsole() : int
      {
         if(_musicType == ConsoleType.CHARACTER)
         {
            return statMngr.getCurrentBmc(statMngr.curCharNum).consoleType;
         }
         if(_musicType == ConsoleType.MAP)
         {
            return grMngr.drawingBoardMapSkinCont.consoleType;
         }
         if(_musicType == ConsoleType.RANDOM)
         {
            return int(Math.random() * (ConsoleType.MAX_CONSOLE_VALUE + 1));
         }
         return _musicType;
      }
      
      public static function getMusicSet() : int
      {
         if(_musicSet == MusicSets.RANDOM)
         {
            return int(Math.random() * (MusicSets.MAX_NORMAL + 1));
         }
         return _musicSet;
      }
      
      public static function get enemyPalette() : int
      {
         return 0;
      }
      
      public static function get interfacePalette() : int
      {
         return 0;
      }
      
      public static function get gameBoyFilter() : Boolean
      {
         return _gameBoyFilter;
      }
      
      public static function get classicMode() : Boolean
      {
         return powerupMode == PowerupMode.Classic;
      }
   }
}
