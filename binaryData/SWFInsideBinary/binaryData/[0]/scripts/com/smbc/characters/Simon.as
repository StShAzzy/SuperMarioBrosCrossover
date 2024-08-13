package com.smbc.characters
{
   import com.explodingRabbit.cross.gameplay.statusEffects.StatFxFlash;
   import com.explodingRabbit.cross.gameplay.statusEffects.StatFxStop;
   import com.explodingRabbit.cross.gameplay.statusEffects.StatusProperty;
   import com.explodingRabbit.utils.CustomDictionary;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.CharacterInfo;
   import com.smbc.data.DamageValue;
   import com.smbc.data.GameSettings;
   import com.smbc.data.MovieClipInfo;
   import com.smbc.data.MusicType;
   import com.smbc.data.PaletteTypes;
   import com.smbc.data.PickupInfo;
   import com.smbc.data.SoundNames;
   import com.smbc.enemies.Enemy;
   import com.smbc.enums.RyuSimonThrowType;
   import com.smbc.enums.SimonSpecialWeapon;
   import com.smbc.events.CustomEvents;
   import com.smbc.graphics.BmdSkinCont;
   import com.smbc.graphics.SimonSimpleGraphics;
   import com.smbc.graphics.SimonWhip;
   import com.smbc.ground.Brick;
   import com.smbc.ground.Ground;
   import com.smbc.ground.SpringGreen;
   import com.smbc.ground.SpringRed;
   import com.smbc.interfaces.IAttackable;
   import com.smbc.level.TitleLevel;
   import com.smbc.main.LevObj;
   import com.smbc.managers.GameStateManager;
   import com.smbc.pickups.Pickup;
   import com.smbc.pickups.SimonPickup;
   import com.smbc.pickups.Vine;
   import com.smbc.projectiles.*;
   import com.smbc.sound.MusicInfo;
   import com.smbc.utils.CharacterSequencer;
   import com.smbc.utils.GameLoopTimer;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class Simon extends Character
   {
      
      public static const CHAR_NAME:String = CharacterInfo.Simon[CharacterInfo.IND_CHAR_NAME];
      
      public static const CHAR_NAME_CAPS:String = CharacterInfo.Simon[CharacterInfo.IND_CHAR_NAME_CAPS];
      
      public static const CHAR_NAME_TEXT:String = CharacterInfo.Simon[CharacterInfo.IND_CHAR_NAME_MENUS];
      
      public static const CHAR_NUM:int = CharacterInfo.Simon[CharacterInfo.IND_CHAR_NUM];
      
      public static const PAL_ORDER_ARR:Array = [PaletteTypes.FLASH_POWERING_UP,PaletteTypes.FLASH_STAR];
      
      public static const SIMON_AXE:String = PickupInfo.SIMON_AXE;
      
      public static const SIMON_STOP_WATCH:String = PickupInfo.SIMON_STOP_WATCH;
      
      public static const SIMON_CROSS:String = PickupInfo.SIMON_CROSS;
      
      public static const SIMON_DOUBLE:String = PickupInfo.SIMON_DOUBLE;
      
      public static const SIMON_DAGGER:String = PickupInfo.SIMON_DAGGER;
      
      public static const SIMON_HOLY_WATER:String = PickupInfo.SIMON_HOLY_WATER;
      
      public static const SIMON_TRIPLE:String = PickupInfo.SIMON_TRIPLE;
      
      public static const SIMON_WHIP_LEVEL_2:String = PickupInfo.SIMON_WHIP_LEVEL_2;
      
      public static const SIMON_WHIP_LEVEL_3:String = PickupInfo.SIMON_WHIP_LEVEL_3;
      
      public static const SIMON_HEART_BIG:String = PickupInfo.SIMON_HEART_BIG;
      
      public static const SIMON_HEART_SMALL:String = PickupInfo.SIMON_HEART_SMALL;
      
      public static const OBTAINABLE_UPGRADES_ARR:Array = [[SIMON_WHIP_LEVEL_3],[SIMON_DAGGER,SIMON_HOLY_WATER,SIMON_STOP_WATCH,SIMON_CROSS,SIMON_AXE,SIMON_DOUBLE]];
      
      public static const MUSHROOM_UPGRADES:Array = [SIMON_WHIP_LEVEL_2];
      
      public static const RESTORABLE_UPGRADES:Array = [];
      
      public static const NEVER_LOSE_UPGRADES:Array = [SIMON_DAGGER,SIMON_HOLY_WATER,SIMON_STOP_WATCH,SIMON_CROSS,SIMON_AXE,SIMON_DOUBLE,SIMON_TRIPLE];
      
      public static const START_WITH_UPGRADES:Array = [SIMON_DAGGER];
      
      public static const SINGLE_UPGRADES_ARR:Array = [SIMON_DAGGER,SIMON_HOLY_WATER,SIMON_STOP_WATCH,SIMON_CROSS,SIMON_AXE];
      
      public static const REPLACEABLE_UPGRADES_ARR:Array = [[SIMON_DOUBLE,SIMON_TRIPLE]];
      
      public static const TITLE_SCREEN_UPGRADES:Array = [MUSHROOM,SIMON_WHIP_LEVEL_2,SIMON_AXE,SIMON_DOUBLE,SIMON_TRIPLE];
      
      public static const ICON_ORDER_ARR:Array = [SIMON_WHIP_LEVEL_3,SIMON_DOUBLE,SIMON_TRIPLE,SIMON_DAGGER,SIMON_HOLY_WATER,SIMON_STOP_WATCH,SIMON_CROSS,SIMON_AXE];
      
      private static const AMMO_TYPE_HEARTS:String = "hearts";
      
      private static const CLASSIC_DEFAULT_AMMO:int = 10;
      
      public static const AMMO_ARR:Array = [[AMMO_TYPE_HEARTS,15,99]];
      
      public static const AMMO_DEPLETION_ARR:Array = [[SIMON_DAGGER,1],[SIMON_HOLY_WATER,1],[SIMON_STOP_WATCH,5],[SIMON_CROSS,2],[SIMON_AXE,1]];
      
      public static const DROP_ARR:Array = [[0,SIMON_HEART_SMALL],[0.8,SIMON_HEART_BIG]];
      
      public static const AMMO_DCT:CustomDictionary = new CustomDictionary();
      
      public static const AMMO_DEPLETION_DCT:CustomDictionary = new CustomDictionary();
      
      public static const WIN_SONG_DUR:int = 4080;
      
      public static const CHAR_SEL_END_DUR:int = 2000;
      
      public static const SUFFIX_VEC:Vector.<String> = Vector.<String>(["","",""]);
      
      public static const IND_CI_Simon:int = 1;
      
      public static const IND_CI_SimonWhipMid:int = 5;
      
      public static const IND_CI_SimonWhip:int = 6;
      
      private static const IND_SKIN_SETTINGS_ARR_WHIP_HANG:int = 0;
      
      private static const IND_SKIN_SETTINGS_ARR_WHIP_HANG_CROUCH:int = 1;
      
      private static const IND_SKIN_SETTINGS_ARR_WHIP_WAVE:int = 2;
      
      private static const IND_SKIN_SETTINGS_ARR_WHIP_WAVE_CROUCH:int = 3;
      
      private static const IND_SKIN_SETTINGS_ARR_WHIP_STRAIGHT:int = 4;
      
      private static const IND_SKIN_SETTINGS_ARR_WHIP_STRAIGHT_CROUCH:int = 5;
      
      public static var characterSkinsVec:Vector.<BmdSkinCont>;
      
      private static const DEF_WHIP_POS_DCT:CustomDictionary = new CustomDictionary();
      
      private static const DV_SIMON_FLAME_WHIP:int = DamageValue.SIMON_FLAME_WHIP;
      
      private static const DV_SIMON_MORNING_STAR:int = DamageValue.SIMON_MORNING_STAR;
      
      private static const DV_SIMON_SHORT_WHIP:int = DamageValue.SIMON_SHORT_WHIP;
      
      public static const JUMP_TYPE_EASY:String = "easy";
      
      public static const JUMP_TYPE_HARD:String = "hard";
      
      public static const JUMP_TYPE_CLASSIC:String = "classic";
      
      private static const DIE_TMR_DEL_NORMAL:int = 1700;
      
      private static const DIE_TMR_DEL_NORMAL_MAX:int = 6000;
      
      private static const DIE_TMR_DEL_PIT:int = 2500;
      
      private static const REPL_COLOR_1_1:uint = 2;
      
      private static const REPL_COLOR_2_1:uint = 4283572480;
      
      private static const REPL_COLOR_3_1:uint = 4293368865;
      
      private static const REPL_COLOR_1_2:uint = REPL_COLOR_1_1;
      
      private static const REPL_COLOR_2_2:uint = 4287108096;
      
      private static const REPL_COLOR_3_2:uint = 4294939177;
      
      private static const REPL_COLOR_1_3:uint = REPL_COLOR_1_1;
      
      private static const REPL_COLOR_2_3:uint = 4278190080;
      
      private static const REPL_COLOR_3_3:uint = 4292754236;
      
      private static const FLASH_COLOR_1_1:uint = 4294961127;
      
      private static const FLASH_COLOR_2_1:uint = 4290183168;
      
      private static const FLASH_COLOR_3_1:uint = 4293980160;
      
      private static const FLASH_COLOR_1_2:uint = 4294967295;
      
      private static const FLASH_COLOR_2_2:uint = 4278213890;
      
      private static const FLASH_COLOR_3_2:uint = 4278242559;
      
      private static const FLASH_COLOR_1_3:uint = 4291675135;
      
      private static const FLASH_COLOR_2_3:uint = 4278207831;
      
      private static const FLASH_COLOR_3_3:uint = 4291509759;
      
      private static const SECONDS_LEFT_SND:String = SoundNames.BGM_SIMON_SECONDS_LEFT;
      
      private static const SN_GET_HEART:String = SoundNames.SFX_SIMON_GET_HEART;
      
      private static const SN_GET_WEAPON:String = SoundNames.SFX_SIMON_GET_WEAPON;
      
      private static const SND_MUSIC_WIN:String = SoundNames.MFX_SIMON_WIN;
      
      private static const FL_AMMO_ICON:String = "heartsAmmo";
      
      private static const FL_ATTACK_START:String = "attackStart";
      
      private static const FL_ATTACK_2:String = "attack-2";
      
      private static const FL_ATTACK_END:String = "attackEnd";
      
      private static const FL_CLIMB_START:String = "climbStart";
      
      private static const FL_CLIMB_END:String = "climbEnd";
      
      private static const FL_CROUCH:String = "crouch";
      
      private static const FL_CROUCH_ATTACK_START:String = "crouchAttackStart";
      
      private static const FL_CROUCH_ATTACK_2:String = "crouchAttack-2";
      
      private static const FL_CROUCH_ATTACK_END:String = "crouchAttackEnd";
      
      private static const FL_CROUCH_THROW_START:String = "crouchThrowStart";
      
      private static const FL_CROUCH_THROW_2:String = "crouchThrow-2";
      
      public static const FL_CROUCH_THROW_END:String = "crouchThrowEnd";
      
      private static const FL_TAKE_DAMAGE:String = "takeDamage";
      
      private static const FL_DIE_START:String = "dieStart";
      
      private static const FL_DIE_END:String = "dieEnd";
      
      private static const FL_THROW_START:String = "throwStart";
      
      private static const FL_THROW_2:String = "throw-2";
      
      public static const FL_THROW_END:String = "throwEnd";
      
      private static const FL_JUMP:String = "jump";
      
      private static const FL_JUMP_FALL:String = "fall";
      
      private static const FL_SLIDE:String = "slide";
      
      private static const FL_STAND:String = "stand";
      
      private static const FL_WALK_START:String = "walkStart";
      
      private static const FL_WALK_END:String = "walkEnd";
      
      public static const FL_WHIP_HANG:String = "hang";
      
      public static const FL_WHIP_WAVE:String = "wave";
      
      public static const FL_WHIP_STRAIGHT:String = "straight";
      
      private static const WHIP_REMAIN_ARR:Array = [FL_ATTACK_START,FL_ATTACK_2,FL_ATTACK_END,FL_CROUCH_ATTACK_START,FL_CROUCH_ATTACK_2,FL_CROUCH_ATTACK_END];
      
      private static const THROW_ARR:Array = [FL_THROW_START,FL_THROW_2,FL_THROW_END,FL_CROUCH_THROW_START,FL_CROUCH_THROW_2,FL_CROUCH_THROW_END];
      
      private static const MFX_SIMON_DIE:String = SoundNames.MFX_SIMON_DIE;
      
      private static const SFX_SIMON_HIT:String = SoundNames.SFX_SIMON_TAKE_DAMAGE;
      
      private static const SFX_SIMON_HIT_ENEMY_NORMAL:String = SoundNames.SFX_SIMON_HIT_ENEMY;
      
      private static const SFX_SIMON_HIT_ENEMY_C2:String = SoundNames.SFX_SIMON_HIT_ENEMY_C2;
      
      private static const SFX_SIMON_WHIP:String = SoundNames.SFX_SIMON_WHIP;
      
      private static const WALK_SPEED:int = 150;
      
      private static const IND_HIT_BOX_VEC_LEATHER_WHIP:int = 0;
      
      private static const IND_HIT_BOX_VEC_CHAIN_WHIP:int = 1;
      
      private static const IND_HIT_BOX_VEC_FLAME_WHIP:int = 2;
      
      private static const IND_HIT_BOX_VEC_STAND:int = 0;
      
      private static const IND_HIT_BOX_VEC_CROUCH:int = 1;
      
      private static const HIT_BOX_VEC:Vector.<Array> = Vector.<Array>([[new Rectangle(15,-48,57,14),new Rectangle(15,-30,57,14)],[new Rectangle(15,-48,57,14),new Rectangle(15,-30,57,14)],[new Rectangle(15,-48,87,14),new Rectangle(15,-30,87,14)]]);
      
      private static const DAMAGE_BOOST_VY:int = 300;
      
      private static const DAMAGE_BOOST_GRAVITY:int = 300;
      
      private static const NUM_KNEEL_FRAMES:int = 3;
      
      private static const FLAG_POLE_OFFSET:int = 0;
      
      private static const SMALL_HEART_VALUE:int = 1;
      
      private static const BIG_HEART_VALUE:int = 5;
      
      private static var _classicMode:Boolean;
      
      private static var skinSettingsNestedArr:Array = [];
      
      private static const ATTACK_STATE_FRAME_DCT:CustomDictionary = new CustomDictionary();
      
      public static const STOP_WATCH_DURATION:int = 3000;
      
      public static const DEFAULT_PROPS_DCT:CustomDictionary = new CustomDictionary();
      
      public static const STOP_WATCH_STRENGTH:int = 7;
      
      public static const HIT_DEL:int = 400;
      
      public static const SKIN_PREVIEW_SIZE:Point = new Point(23,34);
      
      public static const SKIN_SIMON_NES:int = 0;
      
      public static const SKIN_SIMON_SNES:int = 1;
      
      public static const SKIN_CHRISTOPHER:int = 2;
      
      public static const SKIN_TREVOR_NES:int = 3;
      
      public static const SKIN_TREVOR_SNES:int = 4;
      
      public static const SKIN_TREVOR_GB:int = 5;
      
      public static const SKIN_SIMON_CV2_NES:int = 6;
      
      public static const SKIN_SIMON_CV4_SNES:int = 7;
      
      public static const SKIN_WHIP_SKELETON:int = 8;
      
      public static const SKIN_SIMON_ATARI:int = 9;
      
      public static const SKIN_SIMON_X1:int = 10;
      
      public static const SKIN_RICHTER_NES:int = 11;
      
      public static const SKIN_ALEX_NES:int = 12;
      
      public static const SKIN_TREVOR_FAKE_NES:int = 13;
      
      public static const SKIN_TREVOR_FAKE_SNES:int = 14;
      
      public static const SKIN_RICHTER_SNES:int = 15;
      
      public static const SKIN_SONIA:int = 16;
      
      public static const SKIN_KUNIO_SNES:int = 17;
      
      public static const SKIN_SOLEIYU:int = 18;
      
      public static const SKIN_ORDER:Array = [SKIN_SIMON_NES,SKIN_SIMON_SNES,SKIN_SIMON_CV4_SNES,SKIN_SIMON_CV2_NES,SKIN_SIMON_X1,SKIN_SIMON_ATARI,SKIN_TREVOR_NES,SKIN_TREVOR_SNES,SKIN_TREVOR_GB,SKIN_TREVOR_FAKE_NES,SKIN_TREVOR_FAKE_SNES,SKIN_RICHTER_NES,SKIN_RICHTER_SNES,SKIN_CHRISTOPHER,SKIN_SOLEIYU,SKIN_SONIA,SKIN_WHIP_SKELETON,SKIN_ALEX_NES,SKIN_KUNIO_SNES];
      
      public static const SPECIAL_SKIN_NUMBER:int = SKIN_SIMON_X1;
      
      public static const ATARI_SKIN_NUMBER:int = SKIN_SIMON_ATARI;
      
      private static const FLASHING_PROP:StatusProperty = new StatusProperty(PR_FLASH_AGG,0,new StatFxFlash(null,AnimationTimers.DEL_FAST,HIT_DEL));
       
      
      private const CHOOSE_CHAR_SEQ:Array = [[1,this.pressAtkBtn],[500,pressDwnBtn],[100,this.pressAtkBtn],[500,relDwnBtn],[100,pressRhtBtn],[500,relRhtBtn]];
      
      private var canDoubleJump:Boolean;
      
      private var frameCtr:int;
      
      private var attackedInAir:Boolean;
      
      private var justCrouched:Boolean;
      
      private const MAIN_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_VERY_SLOW_TMR;
      
      private const HIT_DIST_OVER_OFFSET:int = 30;
      
      private const NSF_STR_DIE:String = MusicInfo.CHAR_STR_SIMON + MusicInfo.TYPE_DIE;
      
      private var whip:SimonWhip;
      
      public var whipLevel:int;
      
      private var whipDmg:int;
      
      private var attackAnimTmr:GameLoopTimer;
      
      private var curSubWeapon:String;
      
      private var stopWatchTmr:GameLoopTimer;
      
      public var launchedFromGreenSpring:Boolean;
      
      private var lastThrowType:RyuSimonThrowType;
      
      public function Simon()
      {
         var _loc1_:StatusProperty = null;
         var _loc3_:String = null;
         this.attackAnimTmr = new GameLoopTimer(115);
         this.stopWatchTmr = new GameLoopTimer(STOP_WATCH_DURATION,1);
         this.lastThrowType = RyuSimonThrowType.Default;
         super();
         poorBowserFighter = true;
         if(!DEFAULT_PROPS_DCT.length)
         {
            DEFAULT_PROPS_DCT.addItem(new StatusProperty(PR_STOP_AGG,0,new StatFxStop(null,HIT_DEL)));
         }
         for each(_loc1_ in DEFAULT_PROPS_DCT)
         {
            addProperty(_loc1_);
         }
         charNum = CHAR_NUM;
         _canGetAmmoFromCoinBlocks = true;
         _canGetAmmoFromBricks = true;
         mainAnimTmr = this.MAIN_ANIM_TMR;
         suffixVec = SUFFIX_VEC.concat();
         _charName = CHAR_NAME;
         _charNameCaps = CHAR_NAME_CAPS;
         _charNameTxt = CHAR_NAME_TEXT;
         _dieTmrDel = DIE_TMR_DEL_NORMAL;
         _secondsLeftSnd = SECONDS_LEFT_SND;
         _sndWinMusic = SND_MUSIC_WIN;
         winSongDur = WIN_SONG_DUR;
         _usesHorzObjs = true;
         _secondsLeftSndIsBgm = true;
         walkStartLab = FL_WALK_START;
         walkEndLab = FL_WALK_END;
         var _loc2_:Array = WHIP_REMAIN_ARR.concat(THROW_ARR);
         for each(_loc3_ in _loc2_)
         {
            ATTACK_STATE_FRAME_DCT.addItem(_loc3_);
         }
      }
      
      public static function skinSettings(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int, param9:int, param10:int, param11:int, param12:int) : Array
      {
         var _loc13_:Dictionary;
         (_loc13_ = new Dictionary())[FL_ATTACK_START] = new Point(param1,param2);
         _loc13_[FL_CROUCH_ATTACK_START] = new Point(param7,param8);
         _loc13_[FL_ATTACK_2] = new Point(param3,param4);
         _loc13_[FL_CROUCH_ATTACK_2] = new Point(param9,param10);
         _loc13_[FL_ATTACK_END] = new Point(param5,param6);
         _loc13_[FL_CROUCH_ATTACK_END] = new Point(param11,param12);
         skinSettingsNestedArr.push(_loc13_);
         return [_loc13_[FL_ATTACK_START],_loc13_[FL_ATTACK_2],_loc13_[FL_ATTACK_END],_loc13_[FL_CROUCH_ATTACK_START],_loc13_[FL_CROUCH_ATTACK_2],_loc13_[FL_CROUCH_ATTACK_END]];
      }
      
      public static function get classicMode() : Boolean
      {
         if(player && player is Simon && Simon(player).launchedFromGreenSpring && GameStateManager.GS_MNGR.gameState == GS_PLAY)
         {
            return false;
         }
         return _classicMode;
      }
      
      public static function set classicMode(param1:Boolean) : void
      {
         _classicMode = param1;
      }
      
      override public function get classicGetMushroomUpgrades() : Vector.<String>
      {
         return Vector.<String>([SIMON_WHIP_LEVEL_2,SIMON_DOUBLE]);
      }
      
      override public function get classicGetFireFlowerUpgrades() : Vector.<String>
      {
         return Vector.<String>([SIMON_WHIP_LEVEL_3,SIMON_TRIPLE]);
      }
      
      override protected function setObjsToRemoveFromFrames() : void
      {
         super.setObjsToRemoveFromFrames();
         removeObjsFromFrames(this.whip,WHIP_REMAIN_ARR,true);
      }
      
      override protected function mcReplacePrep(param1:MovieClip) : void
      {
         var _loc3_:DisplayObject = null;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         var _loc2_:int = 0;
         while(_loc2_ < param1.numChildren)
         {
            _loc3_ = param1.getChildAt(_loc2_);
            if(_loc3_ is MovieClip)
            {
               _loc4_ = _loc3_ as MovieClip;
               _loc5_ = new MovieClipInfo.SimonWhipMc();
               if(_loc4_.totalFrames == _loc5_.totalFrames)
               {
                  this.whip = new SimonWhip(this,_loc5_);
                  mcReplaceArr = [_loc4_,this.whip];
               }
            }
            _loc2_++;
         }
      }
      
      protected function setWhipLevel() : void
      {
         if(upgradeIsActive(SIMON_WHIP_LEVEL_3))
         {
            this.whipLevel = 3;
            this.whipDmg = DamageValue.SIMON_FLAME_WHIP;
         }
         else if(upgradeIsActive(SIMON_WHIP_LEVEL_2))
         {
            this.whipLevel = 2;
            this.whipDmg = DamageValue.SIMON_MORNING_STAR;
         }
         else
         {
            this.whipLevel = 1;
            this.whipDmg = DamageValue.SIMON_SHORT_WHIP;
         }
      }
      
      private function setCurSubWeapon() : void
      {
         if(upgradeIsActive(SIMON_AXE))
         {
            this.curSubWeapon = SIMON_AXE;
         }
         else if(upgradeIsActive(SIMON_CROSS))
         {
            this.curSubWeapon = SIMON_CROSS;
         }
         else if(upgradeIsActive(SIMON_DAGGER))
         {
            this.curSubWeapon = SIMON_DAGGER;
         }
         else if(upgradeIsActive(SIMON_HOLY_WATER))
         {
            this.curSubWeapon = SIMON_HOLY_WATER;
         }
         else if(upgradeIsActive(SIMON_STOP_WATCH))
         {
            this.curSubWeapon = SIMON_STOP_WATCH;
         }
         else
         {
            this.curSubWeapon = null;
         }
      }
      
      override public function setCurrentBmdSkin(param1:BmdSkinCont, param2:Boolean = false) : void
      {
         var _loc5_:String = null;
         super.setCurrentBmdSkin(param1);
         if(!DEF_WHIP_POS_DCT.length)
         {
            this.setUpDefWhipPosArr();
         }
         var _loc3_:Dictionary = skinSettingsNestedArr[skinNum];
         var _loc4_:int = currentFrame;
         for each(_loc5_ in WHIP_REMAIN_ARR)
         {
            setChildPoperty(this.whip,"x",DEF_WHIP_POS_DCT[_loc5_].x + _loc3_[_loc5_].x,_loc5_);
            setChildPoperty(this.whip,"y",DEF_WHIP_POS_DCT[_loc5_].y + _loc3_[_loc5_].y,_loc5_);
         }
         gotoAndStop(_loc4_);
         if(skinNum == SKIN_SIMON_CV2_NES)
         {
            addProperty(FLASHING_PROP);
            DEFAULT_PROPS_DCT.addItem(FLASHING_PROP);
         }
         else
         {
            removeProperty(PR_FLASH_AGG);
            DEFAULT_PROPS_DCT.removeItem(FLASHING_PROP);
         }
      }
      
      private function setUpDefWhipPosArr() : void
      {
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc1_:int = currentFrame;
         for each(_loc2_ in WHIP_REMAIN_ARR)
         {
            _loc3_ = [];
            gotoAndStop(_loc2_);
            DEF_WHIP_POS_DCT.addItem(_loc2_,new Point(this.whip.x,this.whip.y));
         }
         gotoAndStop(_loc1_);
      }
      
      override public function setStats() : void
      {
         jumpPwr = 565;
         gravity = 1500;
         if(level.waterLevel)
         {
            defGravity = gravity;
            gravity = 750;
            defGravityWater = gravity;
         }
         defSpringPwr = 500;
         boostSpringPwr = 1000;
         xSpeed = WALK_SPEED;
         numParFrames = 0;
         pState2 = true;
         vxMax = WALK_SPEED;
         vxMaxDef = vxMax;
         vyMaxPsv = 2000;
         super.setStats();
         tsTxt.UpdAmmoIcon(true,FL_AMMO_ICON);
         this.setAmmo(AMMO_TYPE_HEARTS,getAmmo(AMMO_TYPE_HEARTS));
         this.attackAnimTmr.addEventListener(TimerEvent.TIMER,this.attackAnimTmrHandler,false,0,true);
         addTmr(this.stopWatchTmr);
         this.stopWatchTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.stopWatchTmrHandler,false,0,true);
      }
      
      protected function stopWatchTmrHandler(param1:Event) : void
      {
         EVENT_MNGR.dispatchEvent(new Event(CustomEvents.STOP_ALL_ENEMIES_PROP_DEACTIVATE));
         this.stopWatchTmr.stop();
         removeProperty(PR_STOP_ALL_ENEMIES_ACTIVE_AGG);
      }
      
      override protected function startAndDamageFcts(param1:Boolean = false) : void
      {
         super.startAndDamageFcts(param1);
         if(GameSettings.classicMode && param1 && !upgradeIsActive(this.classicStartWeapon) && !(level is TitleLevel))
         {
            STAT_MNGR.addCharUpgrade(charNum,this.classicStartWeapon);
         }
         this.setWhipLevel();
         this.setCurSubWeapon();
      }
      
      private function getClassicWeapon(param1:SimonSpecialWeapon) : String
      {
         switch(param1)
         {
            case SimonSpecialWeapon.Axe:
               return SIMON_AXE;
            case SimonSpecialWeapon.Cross:
               return SIMON_CROSS;
            case SimonSpecialWeapon.Dagger:
               return SIMON_DAGGER;
            case SimonSpecialWeapon.HolyWater:
               return SIMON_HOLY_WATER;
            case SimonSpecialWeapon.Stopwatch:
               return SIMON_STOP_WATCH;
            default:
               return SIMON_AXE;
         }
      }
      
      private function get classicStartWeapon() : String
      {
         return this.getClassicWeapon(GameSettings.simonStartWeapon);
      }
      
      private function get classicExtraWeapon() : String
      {
         return this.getClassicWeapon(GameSettings.simonExtraWeapon);
      }
      
      protected function attackAnimTmrHandler(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:String = null;
         for each(_loc3_ in ATTACK_STATE_FRAME_DCT)
         {
            if(currentFrameLabel == _loc3_)
            {
               _loc2_ = true;
               break;
            }
         }
         if(!_loc2_)
         {
            this.finishAttack();
         }
         else
         {
            gotoAndStop(currentFrame + 1);
            this.checkFrame();
         }
      }
      
      override public function forceWaterStats() : void
      {
         defGravity = gravity;
         gravity = 750;
         defGravityWater = gravity;
         super.forceWaterStats();
      }
      
      override public function forceNonwaterStats() : void
      {
         gravity = 1500;
         super.forceNonwaterStats();
      }
      
      override protected function movePlayer() : void
      {
         if(cState == ST_TAKE_DAMAGE)
         {
            return;
         }
         if(onGround || !classicMode)
         {
            if(cState == ST_ATTACK && onGround || cState == ST_CROUCH)
            {
               vx = 0;
               return;
            }
            if(rhtBtn && !lftBtn && !wallOnRight)
            {
               if(this.justCrouched)
               {
                  this.justCrouched = false;
                  return;
               }
               if(stuckInWall)
               {
                  return;
               }
               if(cState == ST_VINE)
               {
                  if(!exitVine)
                  {
                     return;
                  }
                  getOffVine();
               }
               vx = xSpeed;
               if(onGround)
               {
                  this.scaleX = 1;
               }
            }
            else if(lftBtn && !rhtBtn && !wallOnLeft)
            {
               if(this.justCrouched)
               {
                  this.justCrouched = false;
                  return;
               }
               if(stuckInWall)
               {
                  return;
               }
               if(cState == ST_VINE)
               {
                  if(!exitVine)
                  {
                     return;
                  }
                  getOffVine();
               }
               vx = -xSpeed;
               if(onGround)
               {
                  this.scaleX = -1;
               }
            }
            else if(lftBtn && rhtBtn && cState != ST_DIE)
            {
               vx = 0;
            }
            else if(!lftBtn && !rhtBtn && cState != ST_DIE)
            {
               vx = 0;
            }
            if(onGround && vx == 0)
            {
               if(lftBtn && wallOnLeft)
               {
                  scaleX = -1;
               }
               else if(rhtBtn && wallOnRight)
               {
                  scaleX = 1;
               }
            }
         }
         else
         {
            if(cState == ST_VINE)
            {
               if(rhtBtn && !lftBtn)
               {
                  if(!exitVine)
                  {
                     return;
                  }
                  getOffVine();
                  vx = xSpeed;
                  this.scaleX = 1;
               }
               else if(lftBtn && !rhtBtn)
               {
                  if(!exitVine)
                  {
                     return;
                  }
                  getOffVine();
                  vx = -xSpeed;
                  this.scaleX = -1;
               }
            }
            if(classicMode || cState == ST_DIE)
            {
               if(lastVX != 0 && !wallOnLeft && !wallOnRight)
               {
                  vx = lastVX;
                  lastVX = 0;
               }
            }
         }
      }
      
      override protected function checkState() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Rectangle = null;
         if(cState == ST_VINE)
         {
            checkVineBtns();
            checkVinePosition();
            return;
         }
         if(cState == ST_TAKE_DAMAGE)
         {
            return;
         }
         if(onGround)
         {
            lastVX = 0;
            jumped = false;
            this.attackedInAir = false;
            this.canDoubleJump = true;
            if(cState != ST_ATTACK && cState != ST_DIE)
            {
               if(dwnBtn)
               {
                  setState(ST_CROUCH);
                  setStopFrame(FL_CROUCH);
                  this.justCrouched = true;
               }
               else if(vx == 0)
               {
                  setState(ST_STAND);
                  setStopFrame(FL_STAND);
               }
               else
               {
                  setState(ST_WALK);
                  if(lState != ST_WALK)
                  {
                     setPlayFrame(FL_WALK_START);
                  }
               }
            }
            else if(cState == ST_DIE && currentLabel == convLab(FL_TAKE_DAMAGE))
            {
               lockFrame = false;
               setStopFrame(FL_DIE_START);
               lockFrame = true;
               vx = 0;
            }
         }
         else if(cState != ST_ATTACK)
         {
            if(classicMode && !jumped)
            {
               vx = 0;
            }
            setState(ST_JUMP);
            if(this.attackedInAir)
            {
               setStopFrame(FL_JUMP_FALL);
            }
            else if(vy < 0)
            {
               setStopFrame(FL_JUMP);
            }
            else
            {
               setStopFrame(FL_JUMP_FALL);
            }
            if(lastOnSpring && !onSpring)
            {
               if(rhtBtn && !lftBtn)
               {
                  vx = xSpeed;
                  scaleX = 1;
                  if(lastVX < 0)
                  {
                     lastVX = 0;
                  }
               }
               else if(lftBtn && !rhtBtn)
               {
                  vx = -xSpeed;
                  scaleX = -1;
                  if(lastVX > 0)
                  {
                     lastVX = 0;
                  }
               }
               this.canDoubleJump = true;
            }
            if(onSpring)
            {
               if(rhtBtn)
               {
                  scaleX = 1;
               }
               else if(lftBtn)
               {
                  scaleX = -1;
               }
            }
         }
         if(currentFrame == getLabNum(FL_ATTACK_END) || currentFrame == getLabNum(FL_CROUCH_ATTACK_END))
         {
            checkAtkRect = true;
            _loc1_ = IND_HIT_BOX_VEC_STAND;
            if(currentLabel.indexOf("crouch") != -1)
            {
               _loc1_ = IND_HIT_BOX_VEC_CROUCH;
            }
            _loc2_ = HIT_BOX_VEC[this.whipLevel - 1][_loc1_];
            ahRect.x = _loc2_.x;
            ahRect.y = _loc2_.y;
            ahRect.width = _loc2_.width;
            ahRect.height = _loc2_.height;
            if(pState != PS_NORMAL)
            {
               hitDistOver = _loc2_.width * 2;
            }
            else
            {
               hitDistOver = 0;
            }
         }
         else
         {
            checkAtkRect = false;
            hitDistOver = 0;
         }
      }
      
      override protected function attackObjPiercing(param1:IAttackable) : void
      {
         if(upgradeIsActive(SIMON_WHIP_LEVEL_3))
         {
            damageAmt = DV_SIMON_FLAME_WHIP;
         }
         else if(upgradeIsActive(SIMON_WHIP_LEVEL_2))
         {
            damageAmt = DV_SIMON_MORNING_STAR;
         }
         else
         {
            damageAmt = DV_SIMON_SHORT_WHIP;
         }
         super.attackObjPiercing(param1);
         if(param1 is Enemy)
         {
            level.addToLevel(new SimonSimpleGraphics(param1 as LevObj,SimonSimpleGraphics.TYPE_WHIP_SPARK,this));
            if(skinNum == SKIN_SIMON_CV2_NES)
            {
               if(param1.health <= 0)
               {
                  SND_MNGR.playSound(SoundNames.SFX_SIMON_KILL_ENEMY_C2);
               }
               else
               {
                  SND_MNGR.playSound(SFX_SIMON_HIT_ENEMY_C2);
               }
            }
            else
            {
               SND_MNGR.playSound(SFX_SIMON_HIT_ENEMY_NORMAL);
            }
         }
      }
      
      override public function pressJmpBtn() : void
      {
         if(cState == ST_VINE)
         {
            return;
         }
         if(!onSpring)
         {
            if(onGround)
            {
               onGround = false;
               this.attackedInAir = false;
               vy = -jumpPwr;
               setStopFrame(FL_CROUCH);
               setState(ST_JUMP);
               this.canDoubleJump = true;
               jumped = true;
               this.attackAnimTmr.stop();
               if(rhtBtn && !lftBtn)
               {
                  vx = xSpeed;
                  scaleX = 1;
               }
               else if(lftBtn && !rhtBtn)
               {
                  vx = -xSpeed;
                  scaleX = -1;
               }
            }
            else if(this.canDoubleJump)
            {
               this.attackAnimTmr.stop();
               this.attackedInAir = false;
               jumped = true;
               vy = -jumpPwr;
               setStopFrame(FL_CROUCH);
               setState(ST_JUMP);
               this.canDoubleJump = false;
               if(classicMode)
               {
                  if(!rhtBtn && !lftBtn)
                  {
                     vx = 0;
                     lastVX = 0;
                  }
                  else if(rhtBtn && !lftBtn)
                  {
                     vx = xSpeed;
                     scaleX = 1;
                     if(lastVX < 0)
                     {
                        lastVX = 0;
                     }
                  }
                  else if(lftBtn && !rhtBtn)
                  {
                     vx = -xSpeed;
                     scaleX = -1;
                     if(lastVX > 0)
                     {
                        lastVX = 0;
                     }
                  }
               }
               else if(rhtBtn && !lftBtn)
               {
                  scaleX = 1;
               }
               else if(lftBtn && !rhtBtn)
               {
                  scaleX = -1;
               }
            }
         }
         super.pressJmpBtn();
      }
      
      override public function pressAtkBtn() : void
      {
         if(upBtn && GameSettings.classicSpecialInput)
         {
            this.pressedSpecialButton();
            return;
         }
         if(cState == ST_VINE)
         {
            return;
         }
         super.pressAtkBtn();
         if(cState != ST_ATTACK)
         {
            if(dwnBtn && onGround)
            {
               setStopFrame(FL_CROUCH_ATTACK_START);
            }
            else
            {
               setStopFrame(FL_ATTACK_START);
            }
            this.attackAnimTmr.start();
            this.whip.setStopFrame(FL_WHIP_HANG);
            setState(ST_ATTACK);
            if(skinNum == SKIN_SIMON_CV2_NES && upgradeIsActive(SIMON_WHIP_LEVEL_3))
            {
               SND_MNGR.playSound(SoundNames.SFX_SIMON_FLAME_WHIP);
            }
            else
            {
               SND_MNGR.playSound(SFX_SIMON_WHIP);
            }
            if(!onGround)
            {
               this.attackedInAir = true;
            }
         }
      }
      
      override protected function bounce(param1:Enemy) : void
      {
         super.bounce(param1);
         this.canDoubleJump = true;
      }
      
      override public function pressSpcBtn() : void
      {
         super.pressSpcBtn();
         this.pressedSpecialButton();
      }
      
      private function pressedSpecialButton() : void
      {
         if(cState == ST_VINE)
         {
            return;
         }
         if(cState != ST_ATTACK)
         {
            if(this.curSubWeapon == SIMON_STOP_WATCH)
            {
               this.useStopWatchIfPossible();
            }
            else if(this.canThrow())
            {
               this.startThrow(RyuSimonThrowType.Default);
            }
         }
      }
      
      override public function pressSelBtn() : void
      {
         super.pressSelBtn();
         if(cState == ST_VINE || cState == ST_ATTACK || !upgradeIsActive(FIRE_FLOWER))
         {
            return;
         }
         if(this.classicExtraWeapon == SIMON_STOP_WATCH)
         {
            this.useStopWatchIfPossible();
         }
         else if(this.canThrow(this.classicExtraWeapon))
         {
            this.startThrow(RyuSimonThrowType.Extra);
         }
      }
      
      override protected function getDefaultAmmo(param1:String) : int
      {
         if(GameSettings.classicMode)
         {
            return CLASSIC_DEFAULT_AMMO;
         }
         return super.getDefaultAmmo(param1);
      }
      
      private function startThrow(param1:RyuSimonThrowType) : void
      {
         this.lastThrowType = param1;
         if(onGround && dwnBtn)
         {
            setStopFrame(FL_CROUCH_THROW_START);
         }
         else
         {
            setStopFrame(FL_THROW_START);
         }
         this.attackAnimTmr.start();
         setState(ST_ATTACK);
      }
      
      private function useStopWatchIfPossible() : void
      {
         if(!getProperty(PR_STOP_ALL_ENEMIES_ACTIVE_AGG) && hasEnoughAmmo(AMMO_TYPE_HEARTS,SIMON_STOP_WATCH))
         {
            SND_MNGR.playSound(SoundNames.SFX_SIMON_STOP_WATCH);
            decAmmo(AMMO_TYPE_HEARTS,SIMON_STOP_WATCH);
            addProperty(new StatusProperty(PR_STOP_ALL_ENEMIES_ACTIVE_AGG,STOP_WATCH_STRENGTH));
            this.stopWatchTmr.start();
            EVENT_MNGR.dispatchEvent(new Event(CustomEvents.STOP_ALL_ENEMIES_PROP_ACTIVATE));
         }
      }
      
      override public function groundAbove(param1:Ground) : void
      {
         hitCeiling = true;
         if(cState != ST_ATTACK)
         {
            setStopFrame(FL_JUMP_FALL);
            setHitPoints();
         }
         ny = param1.hBot + hHeight;
         if(jumped)
         {
            vy = CIELING_DISPLACE;
         }
         setHitPoints();
         SND_MNGR.playSound(SND_GAME_HIT_CEILING);
      }
      
      override protected function takeDamageStart(param1:LevObj) : void
      {
         super.takeDamageStart(param1);
         this.setWhipLevel();
         this.setCurSubWeapon();
         takeNoDamage = true;
         disableInput = true;
         nonInteractive = true;
         this.damageBoost(param1);
         setState(ST_TAKE_DAMAGE);
         BTN_MNGR.relPlyrBtns();
      }
      
      override protected function takeDamageEnd() : void
      {
         disableInput = false;
         nonInteractive = false;
         setState(ST_STAND);
         setStopFrame(FL_STAND);
         alpha = TD_ALPHA;
         noDamageTmr.start();
         BTN_MNGR.sendPlayerBtns();
      }
      
      override protected function landOnGround() : void
      {
         super.landOnGround();
         this.launchedFromGreenSpring = false;
         if(cState == ST_TAKE_DAMAGE)
         {
            this.takeDamageEnd();
         }
      }
      
      override protected function initiateNormalDeath(param1:LevObj = null) : void
      {
         super.initiateNormalDeath(param1);
         this.damageBoost(param1);
         lockFrame = true;
         checkFrameDuringStopAnim = true;
         EVENT_MNGR.startDieTmr(DIE_TMR_DEL_NORMAL_MAX);
      }
      
      private function damageBoost(param1:LevObj = null) : void
      {
         var _loc2_:int = 0;
         _loc2_ = 1;
         if(param1)
         {
            if(param1.nx > nx)
            {
               _loc2_ = -1;
            }
         }
         else if(scaleX > 0)
         {
            _loc2_ = -1;
         }
         vy = -DAMAGE_BOOST_VY;
         vx = _loc2_ * xSpeed;
         scaleX = -_loc2_;
         onGround = false;
         if(cState == ST_ATTACK)
         {
            this.finishAttack();
         }
         setStopFrame(FL_TAKE_DAMAGE);
         jumped = true;
         SND_MNGR.playSound(SFX_SIMON_HIT);
      }
      
      override public function revivalBoost() : void
      {
         super.revivalBoost();
         this.hitPickup(new Pickup(SIMON_HEART_BIG),false);
         this.hitPickup(new Pickup(SIMON_HEART_BIG),false);
      }
      
      override protected function initiatePitDeath() : void
      {
         _dieTmrDel = DIE_TMR_DEL_PIT;
         super.initiatePitDeath();
         SND_MNGR.changeMusic(MusicType.DIE);
      }
      
      override protected function bouncePit() : void
      {
         if(cState == ST_TAKE_DAMAGE)
         {
            this.takeDamageEnd();
         }
         return super.bouncePit();
      }
      
      override public function slideDownFlagPole() : void
      {
         super.slideDownFlagPole();
         nx = level.flagPole.hMidX - FLAG_POLE_OFFSET;
         setStopFrame(FL_CLIMB_START);
         this.attackAnimTmr.stop();
      }
      
      override public function stopFlagPoleSlide() : void
      {
         super.stopFlagPoleSlide();
      }
      
      private function finishAttack() : void
      {
         if(ATK_DCT.length != 0)
         {
            ATK_DCT.clear();
         }
         this.attackAnimTmr.stop();
         setState(ST_NEUTRAL);
      }
      
      override public function firstCollisionCheck() : void
      {
         if(!onGround)
         {
            this.canDoubleJump = false;
         }
      }
      
      override public function chooseCharacter() : void
      {
         super.chooseCharacter();
         vx = 0;
         var _loc1_:Brick = new Brick(Brick.FL_BRICK);
         var _loc2_:Brick = new Brick(Brick.FL_BRICK);
         var _loc3_:int = level.getNearestGrid(nx + TILE_SIZE * 2,-1);
         _loc1_.x = _loc3_;
         _loc2_.x = _loc3_;
         _loc1_.breakOnNextHit();
         _loc2_.breakOnNextHit();
         _loc1_.y = ny - TILE_SIZE * 2;
         _loc2_.y = ny - TILE_SIZE;
         level.addToLevel(_loc1_);
         level.addToLevel(_loc2_);
         var _loc4_:SimonPickup;
         (_loc4_ = new SimonPickup(PickupInfo.SIMON_PORK_CHOP)).x = _loc1_.x + TILE_SIZE / 2;
         _loc4_.y = player.ny;
         _loc4_.behindGround = true;
         level.addToLevel(_loc4_);
         var _loc5_:CharacterSequencer = new CharacterSequencer();
         _loc5_.startNewSequence(this.CHOOSE_CHAR_SEQ);
      }
      
      override public function fallenCharSelScrn() : void
      {
         super.fallenCharSelScrn();
         cancelCheckState = true;
         setStopFrame(FL_DIE_END);
      }
      
      override public function hitPickup(param1:Pickup, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = upgradeIsActive(FIRE_FLOWER);
         super.hitPickup(param1,param2);
         this.setCurSubWeapon();
         var _loc4_:String = param1.type;
         switch(_loc4_)
         {
            case MUSHROOM:
               this.setWhipLevel();
               break;
            case FIRE_FLOWER:
               this.setWhipLevel();
               if(_loc3_)
               {
                  increaseAmmoByValue(AMMO_TYPE_HEARTS,CLASSIC_DEFAULT_AMMO / 2);
               }
               break;
            case SIMON_WHIP_LEVEL_3:
               if(param2)
               {
                  getMushroom();
                  SND_MNGR.playSound(SoundNames.SFX_SIMON_GET_WEAPON);
               }
               this.setWhipLevel();
               break;
            case SIMON_HEART_BIG:
               increaseAmmoByValue(AMMO_TYPE_HEARTS,BIG_HEART_VALUE);
               break;
            case SIMON_HEART_SMALL:
               increaseAmmoByValue(AMMO_TYPE_HEARTS,SMALL_HEART_VALUE);
         }
         if(!param1.playsRegularSound && param1.mainType != PickupInfo.MAIN_TYPE_FAKE && param2)
         {
            if(_loc4_ == SIMON_HEART_BIG || _loc4_ == SIMON_HEART_SMALL)
            {
               SND_MNGR.playSound(SN_GET_HEART);
            }
            else
            {
               SND_MNGR.playSound(SN_GET_WEAPON);
            }
         }
      }
      
      override protected function getOnVine(param1:Vine) : void
      {
         if(cState == ST_TAKE_DAMAGE)
         {
            this.takeDamageEnd();
         }
         super.getOnVine(param1);
      }
      
      private function canThrow(param1:String = null) : String
      {
         if(param1 == null)
         {
            param1 = this.curSubWeapon;
         }
         if(!param1 || !hasEnoughAmmo(AMMO_TYPE_HEARTS,param1))
         {
            return null;
         }
         var _loc2_:int = 1;
         if(upgradeIsActive(SIMON_TRIPLE))
         {
            _loc2_ = 3;
         }
         else if(upgradeIsActive(SIMON_DOUBLE))
         {
            _loc2_ = 2;
         }
         if(level.PLAYER_PROJ_DCT.length >= _loc2_)
         {
            return null;
         }
         return this.getProjectileTypeFromPickupType(param1);
      }
      
      private function getPickupTypeFromProjectileType(param1:String) : String
      {
         switch(param1)
         {
            case SimonProjectile.TYPE_AXE:
               return SIMON_AXE;
            case SimonProjectile.TYPE_CROSS:
               return SIMON_CROSS;
            case SimonProjectile.TYPE_DAGGER:
               return SIMON_DAGGER;
            case SimonProjectile.TYPE_HOLY_WATER:
               return SIMON_HOLY_WATER;
            default:
               return null;
         }
      }
      
      private function getProjectileTypeFromPickupType(param1:String) : String
      {
         switch(param1)
         {
            case SIMON_AXE:
               return SimonProjectile.TYPE_AXE;
            case SIMON_CROSS:
               return SimonProjectile.TYPE_CROSS;
            case SIMON_DAGGER:
               return SimonProjectile.TYPE_DAGGER;
            case SIMON_HOLY_WATER:
               return SimonProjectile.TYPE_HOLY_WATER;
            default:
               return null;
         }
      }
      
      override protected function setAmmo(param1:String, param2:int) : void
      {
         super.setAmmo(param1,param2);
         tsTxt.UpdAmmoText(true,getAmmo(param1));
      }
      
      override public function checkFrame() : void
      {
         var _loc3_:String = null;
         var _loc1_:String = currentLabel;
         var _loc2_:int = currentFrame;
         if((cState == ST_WALK || cState == ST_PIPE) && _loc2_ == getLabNum(FL_WALK_END) + 1)
         {
            setPlayFrame(FL_WALK_START);
         }
         else if(cState == ST_ATTACK)
         {
            if(_loc1_ == convLab(FL_ATTACK_2) || _loc1_ == convLab(FL_CROUCH_ATTACK_2))
            {
               this.whip.setStopFrame(FL_WHIP_WAVE);
            }
            else if(_loc1_ == convLab(FL_ATTACK_END) || _loc1_ == convLab(FL_CROUCH_ATTACK_END))
            {
               this.whip.setStopFrame(FL_WHIP_STRAIGHT);
            }
            if(_loc1_ == convLab(FL_THROW_END) || _loc1_ == convLab(FL_CROUCH_THROW_END))
            {
               if(GameSettings.classicMode && this.lastThrowType == RyuSimonThrowType.Extra)
               {
                  _loc3_ = this.canThrow(this.classicExtraWeapon);
               }
               else
               {
                  _loc3_ = this.canThrow();
               }
               if(_loc3_)
               {
                  decAmmo(AMMO_TYPE_HEARTS,this.getPickupTypeFromProjectileType(_loc3_));
                  level.addToLevel(new SimonProjectile(this,_loc3_));
               }
            }
            if(_loc2_ == getLabNum(FL_ATTACK_END) + 1 || _loc2_ == getLabNum(FL_THROW_END) + 1)
            {
               if(onGround)
               {
                  setState(ST_STAND);
                  setStopFrame(FL_STAND);
                  this.finishAttack();
               }
               else
               {
                  setState(ST_JUMP);
                  this.finishAttack();
                  setStopFrame(FL_STAND);
               }
            }
            else if(_loc2_ == getLabNum(FL_CROUCH_ATTACK_END) + 1 || _loc2_ == getLabNum(FL_CROUCH_THROW_END) + 1)
            {
               setState(ST_CROUCH);
               setStopFrame(FL_CROUCH);
               this.finishAttack();
            }
         }
         else if(cState == ST_VINE)
         {
            if(_loc2_ == getLabNum(FL_CLIMB_END) + 1)
            {
               setPlayFrame(FL_CLIMB_START);
            }
         }
         else if(cState == ST_DIE)
         {
            if(_loc1_ == convLab(FL_DIE_START))
            {
               if(this.frameCtr == 0)
               {
                  SND_MNGR.changeMusic(MusicType.DIE);
               }
               ++this.frameCtr;
               if(this.frameCtr > NUM_KNEEL_FRAMES)
               {
                  lockFrame = false;
                  setStopFrame(FL_DIE_END);
                  lockFrame = true;
                  EVENT_MNGR.startDieTmr(DIE_TMR_DEL_NORMAL);
               }
            }
         }
         super.checkFrame();
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         this.attackAnimTmr.removeEventListener(TimerEvent.TIMER,this.attackAnimTmrHandler);
         this.stopWatchTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.stopWatchTmrHandler);
      }
      
      override public function cleanUp() : void
      {
         super.cleanUp();
         tsTxt.UpdAmmoIcon(false);
         tsTxt.UpdAmmoText(false);
      }
      
      override protected function playDefaultPickupSoundEffect() : void
      {
         SND_MNGR.playSound(SoundNames.SFX_SIMON_GET_WEAPON);
      }
      
      override protected function addAllPowerups() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < 16)
         {
            hitRandomUpgrade(charNum,false);
            _loc1_++;
         }
      }
      
      override public function springLaunch(param1:SpringRed) : void
      {
         super.springLaunch(param1);
         if(param1 is SpringGreen)
         {
            this.launchedFromGreenSpring = true;
         }
         if(cState == ST_TAKE_DAMAGE)
         {
            this.takeDamageEnd();
         }
      }
   }
}
