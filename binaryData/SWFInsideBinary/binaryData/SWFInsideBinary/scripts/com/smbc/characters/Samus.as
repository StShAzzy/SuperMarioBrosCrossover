package com.smbc.characters
{
   import com.explodingRabbit.cross.gameplay.statusEffects.StatFxFlash;
   import com.explodingRabbit.cross.gameplay.statusEffects.StatFxInvulnerable;
   import com.explodingRabbit.cross.gameplay.statusEffects.StatFxStop;
   import com.explodingRabbit.cross.gameplay.statusEffects.StatusProperty;
   import com.explodingRabbit.display.CustomMovieClip;
   import com.explodingRabbit.utils.CustomDictionary;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.CharacterInfo;
   import com.smbc.data.Cheats;
   import com.smbc.data.DamageValue;
   import com.smbc.data.Difficulties;
   import com.smbc.data.GameSettings;
   import com.smbc.data.PaletteTypes;
   import com.smbc.data.PickupInfo;
   import com.smbc.data.SoundNames;
   import com.smbc.enemies.Bowser;
   import com.smbc.enemies.Enemy;
   import com.smbc.graphics.Palette;
   import com.smbc.graphics.skins.BmdSkinCont;
   import com.smbc.ground.Ground;
   import com.smbc.ground.Platform;
   import com.smbc.ground.SimpleGround;
   import com.smbc.interfaces.IAttackable;
   import com.smbc.level.CharacterSelect;
   import com.smbc.level.TitleLevel;
   import com.smbc.main.LevObj;
   import com.smbc.pickups.BowserAxe;
   import com.smbc.pickups.Pickup;
   import com.smbc.pickups.SamusPickup;
   import com.smbc.pickups.Vine;
   import com.smbc.projectiles.FireBar;
   import com.smbc.projectiles.Projectile;
   import com.smbc.projectiles.SamusBomb;
   import com.smbc.projectiles.SamusGuts;
   import com.smbc.projectiles.SamusShot;
   import com.smbc.utils.GameLoopTimer;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   
   public class Samus extends Character
   {
      
      public static const CHAR_NAME:String = CharacterInfo.Samus[CharacterInfo.IND_CHAR_NAME];
      
      public static const CHAR_NAME_CAPS:String = CharacterInfo.Samus[CharacterInfo.IND_CHAR_NAME_CAPS];
      
      public static const CHAR_NAME_TEXT:String = CharacterInfo.Samus[CharacterInfo.IND_CHAR_NAME_MENUS];
      
      public static const CHAR_NUM:int = CharacterInfo.Samus[CharacterInfo.IND_CHAR_NUM];
      
      public static const PAL_ORDER_ARR:Array = [PaletteTypes.FLASH_POWERING_UP];
      
      private static const REPOSITION_BULLETS_DCT:Dictionary = new Dictionary();
      
      protected static const SAMUS_HIGH_JUMP:String = PickupInfo.SAMUS_HIGH_JUMP;
      
      protected static const SAMUS_ICE_BEAM:String = PickupInfo.SAMUS_ICE_BEAM;
      
      protected static const SAMUS_LONG_BEAM:String = PickupInfo.SAMUS_LONG_BEAM;
      
      protected static const SAMUS_MISSILE:String = PickupInfo.SAMUS_MISSILE;
      
      protected static const SAMUS_MISSILE_AMMO:String = PickupInfo.SAMUS_MISSILE_AMMO;
      
      protected static const SAMUS_MISSILE_CAPACITY:String = PickupInfo.SAMUS_MISSILE_EXPANSION;
      
      protected static const SAMUS_MORPH_BALL:String = PickupInfo.SAMUS_MORPH_BALL;
      
      protected static const SAMUS_SCREW_ATTACK:String = PickupInfo.SAMUS_SCREW_ATTACK;
      
      protected static const SAMUS_WAVE_BEAM:String = PickupInfo.SAMUS_WAVE_BEAM;
      
      protected static const SAMUS_VARIA_SUIT:String = PickupInfo.SAMUS_VARIA_SUIT;
      
      public static const OBTAINABLE_UPGRADES_ARR:Array = [[SAMUS_ICE_BEAM,SAMUS_WAVE_BEAM,SAMUS_VARIA_SUIT,SAMUS_SCREW_ATTACK],[SAMUS_MISSILE_CAPACITY]];
      
      public static const MUSHROOM_UPGRADES:Array = [SAMUS_LONG_BEAM];
      
      public static const NEVER_LOSE_UPGRADES:Array = [SAMUS_MISSILE,SAMUS_MORPH_BALL,SAMUS_MISSILE_CAPACITY];
      
      public static const RESTORABLE_UPGRADES:Array = [SAMUS_SCREW_ATTACK,SAMUS_HIGH_JUMP,SAMUS_VARIA_SUIT];
      
      public static const START_WITH_UPGRADES:Array = [SAMUS_MORPH_BALL];
      
      public static const SINGLE_UPGRADES_ARR:Array = [SAMUS_ICE_BEAM,SAMUS_WAVE_BEAM];
      
      public static const REPLACEABLE_UPGRADES_ARR:Array = [[]];
      
      public static const TITLE_SCREEN_UPGRADES:Array = [MUSHROOM,SAMUS_LONG_BEAM,SAMUS_MORPH_BALL];
      
      public static const ICON_ORDER_ARR:Array = [SAMUS_MISSILE,SAMUS_MISSILE_CAPACITY,SAMUS_ICE_BEAM,SAMUS_WAVE_BEAM,SAMUS_VARIA_SUIT,SAMUS_HIGH_JUMP,SAMUS_SCREW_ATTACK];
      
      public static const AMMO_ARR:Array = [[SAMUS_MISSILE,8,40]];
      
      public static const AMMO_DEPLETION_ARR:Array = [[SAMUS_MISSILE,1]];
      
      public static const AMMO_DCT:CustomDictionary = new CustomDictionary();
      
      public static const AMMO_DEPLETION_DCT:CustomDictionary = new CustomDictionary();
      
      private static const DROP_ARR_MISSILES:Array = [[0,SAMUS_MISSILE_AMMO]];
      
      private static const PAL_ROW_POWER_SUIT:int = 1;
      
      private static const PAL_ROW_POWER_SUIT_MISSILE:int = 2;
      
      private static const PAL_ROW_VARIA_SUIT:int = 3;
      
      private static const PAL_ROW_VARIA_SUIT_MISSILE:int = 4;
      
      private static const SKIN_APPEARANCE_NUM_POWER_SUIT:int = 0;
      
      private static const SKIN_APPEARANCE_NUM_VARIA_SUIT:int = 1;
      
      public static const IND_CI_Samus:int = 1;
      
      public static const IND_CI_SamusPortrait:int = 5;
      
      public static const IND_CI_SamusVariaSuit:int = 6;
      
      public static const IND_CI_SamusLongBeam:int = 7;
      
      public static const IND_CI_SamusIceBeam:int = 8;
      
      public static const IND_CI_SamusWaveBeam:int = 9;
      
      public static const IND_CI_SamusMorphBall:int = 10;
      
      public static const IND_CI_SamusBomb:int = 11;
      
      public static const IND_CI_SamusMissile:int = 12;
      
      public static const IND_CI_SamusMissileExpansion:int = 13;
      
      public static const IND_CI_SamusHighJump:int = 14;
      
      public static const IND_CI_SamusScrewAttack:int = 15;
      
      public static const IND_CI_SamusMissileAmmo:int = 16;
      
      private static const MISSILE_EXPANSION_MAX_AMMO:int = 99;
      
      private static const FIRE_MISSILE_COST:int = -1;
      
      public static const MISSILE_PICKUP_VALUE:int = 2;
      
      public static const WIN_SONG_DUR:int = 4250;
      
      public static const CHAR_SEL_END_DUR:int = 2000;
      
      private static const FL_MISSILE_AMMO_ICON:String = "missile" + AMMO_ICON_SUFFIX;
      
      private static const FL_WALK_SHOOT_2:String = "shootWalk-2";
      
      public static const ST_BALL:String = "ball";
      
      private static const SN_SCREW_ATTACK:String = SoundNames.SFX_SAMUS_SCREW_ATTACK;
      
      private static const SN_TAKE_DAMAGE:String = SoundNames.SFX_SAMUS_TAKE_DAMAGE;
      
      private static const WALK_SPEED:int = 185;
      
      private static const DAMAGE_BOOST_VX:int = WALK_SPEED;
      
      private static const DAMAGE_BOOST_VY:int = 250;
      
      public static var classicMode:Boolean;
      
      private static const JUMP_PWR_NORMAL:int = 500;
      
      private static const JUMP_PWR_HIGH:int = 580;
      
      private static const DAMAGE_BOOST_TMR_DEL:int = 250;
      
      private static const FLICKER_TMR_DEL:int = 25;
      
      public static const FREEZE_DUR:int = 6000;
      
      public static const DEFAULT_PROPS_DCT:CustomDictionary = new CustomDictionary();
      
      private static const SHOT_IMMOBILIZE_DUR:int = 150;
      
      private static const IND_PALETTE_SCREW_ATTACK:int = 4;
      
      public static const SKIN_PREVIEW_SIZE:Point = new Point(30,38);
      
      public static const SKIN_APPEARANCE_STATE_COUNT:int = 2;
      
      public static const SKIN_SAMUS_NES:int = 0;
      
      public static const SKIN_SAMUS_SNES:int = 1;
      
      public static const SKIN_SAMUS_GB:int = 2;
      
      public static const SKIN_SAMUS_NO_SUIT_NES:int = 3;
      
      public static const SKIN_DARK_SAMUS_SNES:int = 4;
      
      public static const SKIN_SAMUS_ZERO_SUIT_NES:int = 5;
      
      public static const SKIN_PIT_NES:int = 6;
      
      public static const SKIN_SAMUS_ATARI:int = 7;
      
      public static const SKIN_SAMUS_X1:int = 8;
      
      public static const SKIN_SAMUS_NO_SUIT_SUPER_METROID:int = 9;
      
      public static const SKIN_SAMUS_NO_SUIT_SNES:int = 10;
      
      public static const SKIN_ORDER:Array = [SKIN_SAMUS_NES,SKIN_SAMUS_SNES,SKIN_SAMUS_GB,SKIN_SAMUS_X1,SKIN_SAMUS_ATARI,SKIN_SAMUS_NO_SUIT_NES,SKIN_SAMUS_NO_SUIT_SNES,SKIN_SAMUS_NO_SUIT_SUPER_METROID,SKIN_SAMUS_ZERO_SUIT_NES,SKIN_DARK_SAMUS_SNES,SKIN_PIT_NES];
      
      public static const SPECIAL_SKIN_NUMBER:int = SKIN_SAMUS_X1;
      
      public static const ATARI_SKIN_NUMBER:int = SKIN_SAMUS_ATARI;
      
      {
         function():void
         {
            var _loc2_:* = undefined;
            var _loc1_:* = [1,2,4];
            for each(_loc2_ in _loc1_)
            {
               REPOSITION_BULLETS_DCT[_loc2_] = _loc2_;
            }
         }();
      }
      
      private const DIE_TMR_DEL_NORMAL:int = 3000;
      
      private const DIE_TMR_DEL_PIT:int = 2500;
      
      private const REPL_COLOR_1_1:uint = 4.293132376E9;
      
      private const REPL_COLOR_2_1:uint = 4.291316748E9;
      
      private const REPL_COLOR_3_1:uint = 4.29475558E9;
      
      private const REPL_COLOR_1_2:uint = 4.292356096E9;
      
      private const REPL_COLOR_2_2:uint = 4.278227968E9;
      
      private const REPL_COLOR_3_2:uint = 4.29474412E9;
      
      private const REPL_COLOR_1_3:uint = 4.292356096E9;
      
      private const REPL_COLOR_2_3:uint = 4.278227968E9;
      
      private const REPL_COLOR_3_3:uint = 4.294755544E9;
      
      private const BALL_DISPLACE:int = 10;
      
      private const BALL_DISPLACE_CROUCH:int = 5;
      
      private const BOMB_BOOST:uint = 230;
      
      private const BASE_FL_WALK:String = "walk";
      
      private const BASE_FL_WALK_SHOOT:String = "shootWalk";
      
      private const BASE_FL_UP_WALK:String = "upWalk";
      
      private const BASE_FL_UP_WALK_SHOOT:String = "upWalkShoot";
      
      private const FL_BALL_START:String = "ballStart";
      
      private const FL_BALL_END:String = "ballEnd";
      
      private const FL_CLIMB_START:String = "climbStart";
      
      private const FL_CLIMB_END:String = "climbEnd";
      
      private const FL_CROUCH:String = "crouch";
      
      private const FL_CROUCH_SHOOT:String = "crouchShoot";
      
      private const FL_FLIP_START:String = "flipStart";
      
      private const FL_FLIP_END:String = "flipEnd";
      
      private const FL_JUMP:String = "jump";
      
      private const FL_JUMP_SHOOT:String = "jumpShoot";
      
      private const FL_JUMP_UP:String = "upJump";
      
      private const FL_JUMP_UP_SHOOT:String = "upJumpShoot";
      
      private const FL_SLIDE:String = "slide";
      
      private const FL_STAND:String = "stand";
      
      private const FL_STAND_FRONT:String = "standFront";
      
      private const FL_STAND_SHOOT:String = "standShoot";
      
      private const FL_STAND_UP:String = "upStand";
      
      private const FL_STAND_UP_SHOOT:String = "upStandShoot";
      
      private const FL_WALK_SHOOT_START:String = "shootWalk-1";
      
      private const FL_WALK_SHOOT_END:String = "shootWalk-3";
      
      private const FL_WALK_UP_START:String = "upWalk-1";
      
      private const FL_WALK_UP_END:String = "upWalk-3";
      
      private const FL_WALK_UP_SHOOT_START:String = "upWalkShoot-1";
      
      private const FL_WALK_UP_SHOOT_END:String = "upWalkShoot-3";
      
      private const FL_WALK_START:String = "walk-1";
      
      private const FL_WALK_END:String = "walk-3";
      
      private const ST_WALK_UP:String = "walkUp";
      
      private const SND_MUSIC_WIN:String = SoundNames.MFX_SAMUS_WIN;
      
      private const SFX_SAMUS_DIE:String = SoundNames.SFX_SAMUS_DIE;
      
      private const SFX_SAMUS_JUMP:String = "SamusJumpSnd";
      
      private const SFX_SAMUS_LAND:String = SoundNames.SFX_SAMUS_LAND;
      
      private const SFX_SAMUS_MORPH_BALL:String = SoundNames.SFX_SAMUS_MORPH_BALL;
      
      private const SFX_SAMUS_STEP:String = SoundNames.SFX_SAMUS_STEP;
      
      private const STILL_SHOOT_TMR:CustomTimer = new CustomTimer(50,1);
      
      private const MOVE_SHOOT_TMR:CustomTimer = new CustomTimer(140,1);
      
      private const STEP_TMR:CustomTimer = new CustomTimer(150,1);
      
      private const MAX_SHOTS_ON_SCREEN:int = 3;
      
      private const MAX_BOMBS_ON_SCREEN:int = 3;
      
      private const CLIMB_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_SLOW_TMR;
      
      private const FLIP_HEIGHT_DIST:int = 60;
      
      private const BALL_CHECK_DIST:int = 60;
      
      public const BULLET_DCT:CustomDictionary = new CustomDictionary();
      
      public const BOMB_DCT:CustomDictionary = new CustomDictionary();
      
      private var flipStartPos:Number;
      
      private var shoot:Boolean;
      
      private var flip:Boolean;
      
      public var invertedWaveBeam:Boolean;
      
      private const BALL_TOP_OFS:int = 30;
      
      private const BALL_BOT_OFS:int = 10;
      
      private const FLAG_POLE_OFFSET:int = 0;
      
      public var muteStepSounds:Boolean;
      
      private var standFrame:String = "stand";
      
      private var damageBoostTmr:GameLoopTimer;
      
      private var morphBall:Boolean;
      
      private var missileMode:Boolean;
      
      private var screwAttack:Boolean;
      
      private var screwAttackedAlready:Boolean;
      
      private var paletteScrewAttack:Palette;
      
      private var charSelPlatform:Platform;
      
      private var _skinShootHeightOffset:int;
      
      private var skinCanMoveWhileCrouching:Boolean;
      
      private var skinCanWalkWhileShooting:Boolean;
      
      private var skinDisableMorphBall:Boolean;
      
      private var skinFootStepsMakeSnd:Boolean;
      
      private var _skinShootSound:String;
      
      private var skinJumpSound:String;
      
      private var palRow:int;
      
      public function Samus()
      {
         var _loc1_:StatusProperty = null;
         charNum = CHAR_NUM;
         recolorsCharSkin = true;
         super();
         if(!DEFAULT_PROPS_DCT.length)
         {
            DEFAULT_PROPS_DCT.addItem(new StatusProperty(PR_FLASH_AGG,0,new StatFxFlash(null,AnimationTimers.DEL_FAST,SHOT_IMMOBILIZE_DUR)));
            DEFAULT_PROPS_DCT.addItem(new StatusProperty(PR_STOP_AGG,0,new StatFxStop(null,SHOT_IMMOBILIZE_DUR)));
            DEFAULT_PROPS_DCT.addItem(new StatusProperty(PR_INVULNERABLE_AGG,0,new StatFxInvulnerable(null,SHOT_IMMOBILIZE_DUR)));
            DEFAULT_PROPS_DCT.addItem(new StatusProperty(PR_UNFREEZE_AGG));
         }
         for each(_loc1_ in DEFAULT_PROPS_DCT)
         {
            addProperty(_loc1_);
         }
         mainAnimTmr = ANIM_MIN_FAST_TMR;
         _charName = CHAR_NAME;
         _canGetAmmoFromBricks = true;
         _charNameCaps = CHAR_NAME_CAPS;
         _charNameTxt = CHAR_NAME_TEXT;
         _sndWinMusic = this.SND_MUSIC_WIN;
         _dieTmrDel = this.DIE_TMR_DEL_NORMAL;
         winSongDur = WIN_SONG_DUR;
         _usesHorzObjs = true;
         walkStartLab = this.FL_WALK_START;
         walkEndLab = this.FL_WALK_END;
         vineAnimTmr = this.CLIMB_ANIM_TMR;
         flickerTmrDel = FLICKER_TMR_DEL;
         addProperty(new StatusProperty(PR_PIERCE_AGG,10));
      }
      
      public static function skinSettingsWrite(param1:int = 0, param2:Boolean = false, param3:Boolean = true, param4:Boolean = false, param5:Boolean = true, param6:String = null, param7:String = "SamusJumpSnd") : Object
      {
         var _loc8_:Object;
         (_loc8_ = new Object()).shootHeightOffset = param1;
         _loc8_.canMoveWhileCrouching = param2;
         _loc8_.canWalkWhileShooting = param3;
         _loc8_.disableMorphBall = param4;
         _loc8_.footStepsMakeSnd = param5;
         _loc8_.shootSound = param6;
         _loc8_.jumpSound = param7;
         return _loc8_;
      }
      
      private static function skinSettingsRead(param1:Samus) : void
      {
         var _loc2_:Object = param1.currentBmdSkin.specialSettings;
         if(_loc2_ == null)
         {
            skinSettingsSetDefaults(param1);
            return;
         }
         param1._skinShootHeightOffset = _loc2_.shootHeightOffset;
         param1.skinCanMoveWhileCrouching = _loc2_.canMoveWhileCrouching;
         param1.skinCanWalkWhileShooting = _loc2_.canWalkWhileShooting;
         param1.skinDisableMorphBall = _loc2_.disableMorphBall;
         param1.skinFootStepsMakeSnd = _loc2_.footStepsMakeSnd;
         param1._skinShootSound = _loc2_.shootSound;
         param1.skinJumpSound = _loc2_.jumpSound;
      }
      
      private static function skinSettingsSetDefaults(param1:Samus) : void
      {
         param1._skinShootHeightOffset = 0;
         param1.skinCanMoveWhileCrouching = false;
         param1.skinCanWalkWhileShooting = true;
         param1.skinDisableMorphBall = false;
         param1.skinFootStepsMakeSnd = true;
         param1._skinShootSound = null;
         param1.skinJumpSound = SoundNames.SFX_SAMUS_JUMP;
      }
      
      public function get skinShootHeightOffset() : int
      {
         return this._skinShootHeightOffset;
      }
      
      public function get skinShootSound() : String
      {
         return this._skinShootSound;
      }
      
      override protected function get currentSkinAppearanceNum() : int
      {
         if(upgradeIsActive(SAMUS_VARIA_SUIT))
         {
            return SKIN_APPEARANCE_NUM_VARIA_SUIT;
         }
         return SKIN_APPEARANCE_NUM_POWER_SUIT;
      }
      
      private function changeSuitColor(param1:int = -1) : void
      {
         if(!upgradeIsActive(SAMUS_VARIA_SUIT))
         {
            if(!this.missileMode)
            {
               this.palRow = PAL_ROW_POWER_SUIT;
            }
            else
            {
               this.palRow = PAL_ROW_POWER_SUIT_MISSILE;
            }
         }
         else if(!this.missileMode)
         {
            this.palRow = PAL_ROW_VARIA_SUIT;
         }
         else
         {
            this.palRow = PAL_ROW_VARIA_SUIT_MISSILE;
         }
         if(param1 >= 0)
         {
            this.palRow = param1;
         }
         graphicsMngr.recolorCharacterSheet(charNum,this.palRow,[IND_CI_Samus,IND_CI_SamusPortrait]);
      }
      
      override protected function prepareDrawCharacter(param1:int = -1) : void
      {
         if(param1 == SKIN_APPEARANCE_NUM_POWER_SUIT)
         {
            this.changeSuitColor(PAL_ROW_POWER_SUIT);
         }
         else if(param1 == SKIN_APPEARANCE_NUM_VARIA_SUIT)
         {
            this.changeSuitColor(PAL_ROW_VARIA_SUIT);
         }
         else
         {
            this.changeSuitColor();
         }
         super.prepareDrawCharacter(param1);
      }
      
      override public function setStats() : void
      {
         inColor1_1 = this.REPL_COLOR_1_1;
         inColor2_1 = this.REPL_COLOR_2_1;
         inColor3_1 = this.REPL_COLOR_3_1;
         inColor1_2 = this.REPL_COLOR_1_2;
         inColor2_2 = this.REPL_COLOR_2_2;
         inColor3_2 = this.REPL_COLOR_3_2;
         inColor1_3 = this.REPL_COLOR_1_3;
         inColor2_3 = this.REPL_COLOR_2_3;
         inColor3_3 = this.REPL_COLOR_3_3;
         gravity = 700;
         if(level.waterLevel)
         {
            defGravity = gravity;
            gravity = 400;
            defGravityWater = gravity;
         }
         defSpringPwr = 300;
         boostSpringPwr = 700;
         vxMax = 150;
         vyMaxPsv = 450;
         fx = 0.0001;
         fy = 0.0001;
         numParFrames = 3;
         pState2 = true;
         super.setStats();
         damageAmt = DamageValue.SAMUS_SCREW_ATTACK;
         this.changeBrickState();
         this.MOVE_SHOOT_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.moveShootTmrHandler,false,0,true);
         addTmr(this.MOVE_SHOOT_TMR);
         this.STILL_SHOOT_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.stillShootTmrHandler,false,0,true);
         addTmr(this.STILL_SHOOT_TMR);
         this.STEP_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.stepTmrHandler,false,0,true);
         addTmr(this.STEP_TMR);
         this.damageBoostTmr = new GameLoopTimer(DAMAGE_BOOST_TMR_DEL,1);
         this.damageBoostTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.damageBoostTmrHandler,false,0,true);
      }
      
      override protected function startAndDamageFcts(param1:Boolean = false) : void
      {
         super.startAndDamageFcts(param1);
         if(!param1)
         {
            this.changeSuitColor();
         }
         this.updMissileAmmoMax();
         this.updDrops();
         this.updAmmoDisplay();
         this.setJumpPwr();
      }
      
      override public function setCurrentBmdSkin(param1:BmdSkinCont, param2:Boolean = false) : void
      {
         super.setCurrentBmdSkin(param1);
         skinSettingsRead(this);
         this.changeSuitColor();
         this.paletteScrewAttack = paletteSheet.getPaletteFromRow(IND_PALETTE_SCREW_ATTACK,skinNum);
         this.updAmmoDisplay();
      }
      
      protected function damageBoostTmrHandler(param1:Event) : void
      {
         this.takeDamageEnd();
      }
      
      override protected function getOnVine(param1:Vine) : void
      {
         if(this.flip)
         {
            this.flipEnd();
         }
         super.getOnVine(param1);
      }
      
      override public function forceWaterStats() : void
      {
         defGravity = gravity;
         gravity = 400;
         defGravityWater = gravity;
         super.forceWaterStats();
      }
      
      override public function forceNonwaterStats() : void
      {
         gravity = 700;
         super.forceNonwaterStats();
      }
      
      public function repositionWalkingBullets() : Boolean
      {
         if(REPOSITION_BULLETS_DCT[skinNum] != undefined && cState == ST_WALK)
         {
            return true;
         }
         return false;
      }
      
      private function setJumpPwr() : void
      {
         if(upgradeIsActive(SAMUS_HIGH_JUMP))
         {
            jumpPwr = JUMP_PWR_HIGH;
         }
         else
         {
            jumpPwr = JUMP_PWR_NORMAL;
         }
      }
      
      override protected function movePlayer() : void
      {
         if(cState == ST_TAKE_DAMAGE)
         {
            return;
         }
         var _loc1_:int = 0;
         if(rhtBtn && !lftBtn && !wallOnRight)
         {
            _loc1_ = 1;
         }
         else if(lftBtn && !rhtBtn && !wallOnLeft)
         {
            _loc1_ = -1;
         }
         if(stuckInWall || (onGround && (!this.skinCanWalkWhileShooting && upBtn) || onGround && dwnBtn && cState != ST_BALL && !this.skinCanMoveWhileCrouching) || lftBtn && rhtBtn || !lftBtn && !rhtBtn)
         {
            _loc1_ = 0;
         }
         if(_loc1_ != 0)
         {
            if(cState == ST_VINE)
            {
               if(!exitVine)
               {
                  return;
               }
               getOffVine();
            }
            vx = WALK_SPEED * _loc1_;
            scaleX = _loc1_;
         }
         else
         {
            vx = 0;
         }
      }
      
      override protected function landOnGround() : void
      {
         if(cState != ST_BALL && cState != ST_FLAG_SLIDE && !onSpring)
         {
            SND_MNGR.playSound(this.SFX_SAMUS_LAND);
         }
         if(this.flip)
         {
            this.flipEnd();
         }
      }
      
      override protected function jump() : void
      {
         onGround = false;
         vy = -jumpPwr;
         if(cState == ST_STAND)
         {
            setStopFrame(this.FL_JUMP);
         }
         if(lftBtn || rhtBtn)
         {
            this.flipStartPos = ny - this.FLIP_HEIGHT_DIST;
            setPlayFrame(this.FL_FLIP_START);
         }
         this.screwAttackedAlready = false;
         setState(ST_JUMP);
         releasedJumpBtn = false;
         frictionY = false;
         jumped = true;
         if(this.skinJumpSound != null)
         {
            SND_MNGR.playSound(this.skinJumpSound);
         }
         else
         {
            SND_MNGR.playSound(this.SFX_SAMUS_JUMP);
         }
      }
      
      override protected function setAmmo(param1:String, param2:int) : void
      {
         super.setAmmo(param1,param2);
         if(upgradeIsActive(SAMUS_MISSILE))
         {
            tsTxt.UpdAmmoText(true,getAmmo(param1));
         }
      }
      
      override public function hitEnemy(param1:Enemy, param2:String) : void
      {
         if(!starPwr && this.screwAttack && !(param1 is Bowser))
         {
            landAttack(param1);
         }
         else
         {
            super.hitEnemy(param1,param2);
         }
      }
      
      override protected function attackObjPiercing(param1:IAttackable) : void
      {
         super.attackObjPiercing(param1);
         if(param1 is Enemy)
         {
            SND_MNGR.playSound(SoundNames.SFX_SAMUS_HIT_ENEMY);
         }
      }
      
      override protected function attackObjNonPiercing(param1:IAttackable) : void
      {
         super.attackObjNonPiercing(param1);
         if(param1 is Enemy)
         {
            SND_MNGR.playSound(SoundNames.SFX_SAMUS_HIT_ENEMY);
         }
      }
      
      override public function hitPickup(param1:Pickup, param2:Boolean = true) : void
      {
         super.hitPickup(param1,param2);
         switch(param1.type)
         {
            case SAMUS_MISSILE:
               this.updAmmoDisplay();
               break;
            case SAMUS_MISSILE_CAPACITY:
               this.updMissileAmmoMax();
               break;
            case MUSHROOM:
               this.changeSuitColor();
               break;
            case SAMUS_VARIA_SUIT:
               this.changeSuitColor();
               break;
            case SAMUS_MISSILE_AMMO:
               STAT_MNGR.addCharUpgrade(charNum,SAMUS_MISSILE);
               this.updAmmoDisplay();
               increaseAmmoByValue(SAMUS_MISSILE,MISSILE_PICKUP_VALUE);
               if(param2)
               {
                  SND_MNGR.playSound(SoundNames.SFX_SAMUS_GET_MISSILE);
               }
         }
         if(param1.mainType == PickupInfo.MAIN_TYPE_UPGRADE)
         {
            this.setJumpPwr();
         }
         if(!param1.playsRegularSound && param1.mainType != PickupInfo.MAIN_TYPE_FAKE && param1.type != SAMUS_MISSILE_AMMO && param2)
         {
            SND_MNGR.playSound(SoundNames.SFX_SAMUS_GET_ENERGY);
         }
      }
      
      override public function revivalBoost() : void
      {
         super.revivalBoost();
         this.hitPickup(new Pickup(SAMUS_MISSILE_AMMO),false);
         this.hitPickup(new Pickup(SAMUS_MISSILE_AMMO),false);
      }
      
      private function updMissileAmmoMax() : void
      {
         if(upgradeIsActive(SAMUS_MISSILE_CAPACITY))
         {
            setMaxAmmo(SAMUS_MISSILE,MISSILE_EXPANSION_MAX_AMMO);
         }
      }
      
      private function updDrops() : void
      {
         dropArr = DROP_ARR_MISSILES;
      }
      
      private function updAmmoDisplay() : void
      {
         if(!upgradeIsActive(SAMUS_MISSILE))
         {
            tsTxt.UpdAmmoIcon(false);
            tsTxt.UpdAmmoText(false);
         }
         else
         {
            tsTxt.UpdAmmoIcon(true,FL_MISSILE_AMMO_ICON);
            tsTxt.UpdAmmoText(true,getAmmo(SAMUS_MISSILE));
         }
      }
      
      override protected function checkState() : void
      {
         if(cState == ST_VINE)
         {
            mainAnimTmr = vineAnimTmr;
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
            this.flip = false;
            jumped = false;
            this.flipStartPos = -1;
            if(cState == ST_BALL)
            {
               mainAnimTmr = ANIM_FAST_TMR;
            }
            else
            {
               mainAnimTmr = ANIM_MIN_FAST_TMR;
               if(vx == 0)
               {
                  if(this.STEP_TMR.running)
                  {
                     this.STEP_TMR.stop();
                  }
                  if(cState != ST_CROUCH)
                  {
                     setState(ST_STAND);
                  }
                  if(upBtn)
                  {
                     if(!this.shoot)
                     {
                        setStopFrame(this.FL_STAND_UP);
                     }
                     else
                     {
                        setStopFrame(this.FL_STAND_UP_SHOOT);
                     }
                  }
                  else if(cState == ST_STAND)
                  {
                     if(!this.shoot)
                     {
                        setStopFrame(this.standFrame);
                     }
                     else
                     {
                        setStopFrame(this.FL_STAND_SHOOT);
                     }
                  }
                  else if(!this.shoot)
                  {
                     setStopFrame(this.FL_CROUCH);
                  }
                  else
                  {
                     setStopFrame(this.FL_CROUCH_SHOOT);
                  }
               }
               else
               {
                  if(!this.STEP_TMR.running)
                  {
                     this.STEP_TMR.start();
                  }
                  if(upBtn)
                  {
                     if(cState != ST_WALK && cState != this.ST_WALK_UP)
                     {
                        if(!this.shoot)
                        {
                           setPlayFrame(this.FL_WALK_UP_START);
                        }
                        else
                        {
                           setPlayFrame(this.FL_WALK_UP_SHOOT_START);
                        }
                        setState(this.ST_WALK_UP);
                     }
                     else if(cState == this.ST_WALK_UP)
                     {
                        if(!this.shoot)
                        {
                           setPlayFrame(getParFrame(this.BASE_FL_UP_WALK));
                        }
                        else
                        {
                           setPlayFrame(getParFrame(this.BASE_FL_UP_WALK_SHOOT));
                        }
                     }
                     else if(cState == ST_WALK)
                     {
                        if(!this.shoot)
                        {
                           setPlayFrame(getParFrame(this.BASE_FL_UP_WALK));
                        }
                        else
                        {
                           setPlayFrame(getParFrame(this.BASE_FL_UP_WALK_SHOOT));
                        }
                        setState(this.ST_WALK_UP);
                     }
                  }
                  else if(cState != ST_WALK && cState != this.ST_WALK_UP)
                  {
                     if(!this.shoot)
                     {
                        setPlayFrame(this.FL_WALK_START);
                     }
                     else
                     {
                        setPlayFrame(this.FL_WALK_SHOOT_START);
                     }
                     setState(ST_WALK);
                  }
                  else if(cState == ST_WALK)
                  {
                     if(!this.shoot)
                     {
                        setPlayFrame(getParFrame(this.BASE_FL_WALK));
                     }
                     else
                     {
                        setPlayFrame(getParFrame(this.BASE_FL_WALK_SHOOT));
                     }
                  }
                  else if(cState == this.ST_WALK_UP)
                  {
                     if(!this.shoot)
                     {
                        setPlayFrame(getParFrame(this.BASE_FL_WALK));
                     }
                     else
                     {
                        setPlayFrame(getParFrame(this.BASE_FL_WALK_SHOOT));
                     }
                     setState(ST_WALK);
                  }
               }
            }
         }
         else
         {
            if(this.STEP_TMR.running)
            {
               this.STEP_TMR.stop();
            }
            mainAnimTmr = ANIM_FAST_TMR;
            if(cState != ST_BALL)
            {
               setState(ST_JUMP);
               if(this.flip && ny > this.flipStartPos)
               {
                  this.flipEnd();
               }
               if(cState == ST_JUMP)
               {
                  if(upBtn)
                  {
                     this.flipEnd();
                     if(!this.shoot)
                     {
                        setStopFrame(this.FL_JUMP_UP);
                     }
                     else
                     {
                        setStopFrame(this.FL_JUMP_UP_SHOOT);
                     }
                  }
                  else if(this.shoot)
                  {
                     setStopFrame(this.FL_JUMP_SHOOT);
                     this.flipEnd();
                  }
                  else if(!this.flip && ny < this.flipStartPos && vy < 0)
                  {
                     this.flipStart();
                  }
                  else if(!this.flip)
                  {
                     setStopFrame(this.FL_JUMP);
                  }
               }
            }
            if(frictionY)
            {
               if(vy < 0)
               {
                  vy *= Math.pow(fy,dt);
               }
               else
               {
                  frictionY = false;
               }
            }
         }
         if(this.skinCanMoveWhileCrouching && dwnBtn)
         {
            this.shoot = false;
            setStopFrame(this.FL_CROUCH);
         }
         if(this.charSelPlatform)
         {
            setStopFrame(this.FL_STAND_FRONT);
            y = this.charSelPlatform.y;
            ny = y;
            defyGrav = true;
            return;
         }
      }
      
      private function flipStart() : void
      {
         if(this.flip)
         {
            return;
         }
         this.flip = true;
         setPlayFrame(this.FL_FLIP_START);
         if(upgradeIsActive(SAMUS_SCREW_ATTACK))
         {
            this.screwAttack = true;
            if(!this.screwAttackedAlready)
            {
               SND_MNGR.playSound(SN_SCREW_ATTACK);
            }
            if(!starPwr)
            {
               startReplaceColor();
            }
            this.screwAttackedAlready = true;
         }
      }
      
      private function flipEnd() : void
      {
         if(!this.flip)
         {
            return;
         }
         this.flip = false;
         if(this.screwAttack)
         {
            this.endScrewAttack();
         }
      }
      
      private function exitMorphBall(param1:String, param2:String) : void
      {
         var _loc4_:Ground = null;
         var _loc3_:Boolean = false;
         for each(_loc4_ in level.GROUND_STG_DCT)
         {
            if(!(!_loc4_.onScreen || !_loc4_.visible || level.getDistance(hMidX,hMidY,_loc4_.hMidX,_loc4_.hMidY) > this.BALL_CHECK_DIST))
            {
               if(hTop - this.BALL_TOP_OFS <= _loc4_.hBot && hBot - this.BALL_BOT_OFS > _loc4_.hTop && hLft < _loc4_.hRht && hRht > _loc4_.hLft)
               {
                  _loc3_ = true;
                  break;
               }
            }
         }
         if(!_loc3_)
         {
            setStopFrame(param1);
            setState(param2);
            this.morphBall = false;
            if(onGround)
            {
               ny -= this.BALL_DISPLACE;
               y -= this.BALL_DISPLACE;
               onGround = false;
            }
         }
         this.changeBrickState();
      }
      
      override public function pressUpBtn() : void
      {
         super.pressUpBtn();
         if(cState == ST_CROUCH)
         {
            setState(ST_STAND);
            this.checkState();
         }
         else if(cState == ST_BALL)
         {
            this.exitMorphBall(this.FL_STAND_UP,ST_STAND);
         }
      }
      
      override public function pressJmpBtn() : void
      {
         if(cState == ST_VINE)
         {
            return;
         }
         if(cState == ST_BALL)
         {
            this.exitMorphBall(this.FL_JUMP,ST_JUMP);
         }
         else if(onGround)
         {
            this.jump();
         }
         super.pressJmpBtn();
      }
      
      override public function relJmpBtn() : void
      {
         super.relJmpBtn();
         if(!releasedJumpBtn)
         {
            frictionY = true;
            releasedJumpBtn = true;
         }
      }
      
      private function canExitCrouch() : Boolean
      {
         var _loc1_:Ground = null;
         for each(_loc1_ in level.GROUND_STG_DCT)
         {
            if(!(!_loc1_.onScreen || !_loc1_.visible || level.getDistance(hMidX,hMidY,_loc1_.hMidX,_loc1_.hMidY) > this.BALL_CHECK_DIST))
            {
               if(hTop - this.BALL_TOP_OFS <= _loc1_.hBot && hBot - this.BALL_BOT_OFS > _loc1_.hTop && hLft < _loc1_.hRht && hRht > _loc1_.hLft)
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      override public function relDwnBtn() : void
      {
         var _loc1_:Boolean = false;
         super.relDwnBtn();
         if(this.skinCanMoveWhileCrouching)
         {
            if(onGround)
            {
               if(vx != 0)
               {
                  if(!this.shoot)
                  {
                     setStopFrame(this.FL_WALK_START);
                  }
                  else
                  {
                     setStopFrame(this.FL_WALK_SHOOT_START);
                  }
                  setState(ST_WALK);
               }
               else
               {
                  setState(ST_STAND);
                  setStopFrame(this.FL_STAND);
               }
            }
            else
            {
               if(upBtn)
               {
                  setStopFrame(this.FL_JUMP_UP);
               }
               else
               {
                  setStopFrame(this.FL_JUMP);
               }
               setState(ST_JUMP);
            }
         }
      }
      
      override public function pressAtkBtn() : void
      {
         var _loc1_:SamusShot = null;
         var _loc2_:SamusBomb = null;
         if(cState == ST_VINE)
         {
            return;
         }
         super.pressAtkBtn();
         if(this.skinCanMoveWhileCrouching && currentLabel == this.FL_CROUCH)
         {
            return;
         }
         if(classicMode && this.missileMode && upgradeIsActive(SAMUS_MISSILE) && cState != ST_BALL)
         {
            this.fireMissile();
            return;
         }
         if(cState != ST_BALL)
         {
            if(this.BULLET_DCT.length < this.MAX_SHOTS_ON_SCREEN)
            {
               _loc1_ = new SamusShot(this);
               this.BULLET_DCT.addItem(_loc1_);
               level.addToLevel(_loc1_);
               this.shoot = true;
               if(!onGround && upBtn || onGround && !lftBtn && !rhtBtn)
               {
                  if(this.STILL_SHOOT_TMR.running)
                  {
                     this.STILL_SHOOT_TMR.reset();
                  }
                  this.STILL_SHOOT_TMR.start();
               }
               else
               {
                  if(this.MOVE_SHOOT_TMR.running)
                  {
                     this.MOVE_SHOOT_TMR.reset();
                  }
                  this.MOVE_SHOOT_TMR.start();
               }
               this.checkState();
            }
         }
         else if(this.BOMB_DCT.length < this.MAX_BOMBS_ON_SCREEN)
         {
            _loc2_ = new SamusBomb(this);
            this.BOMB_DCT.addItem(_loc2_);
            level.addToLevel(_loc2_);
         }
      }
      
      private function missileModeToggle() : void
      {
         this.missileMode = !this.missileMode;
         this.changeSuitColor();
      }
      
      override public function pressSpcBtn() : void
      {
         super.pressSpcBtn();
         if(upgradeIsActive(SAMUS_MISSILE))
         {
            if(classicMode)
            {
               this.missileModeToggle();
            }
            else if(cState != ST_BALL && cState != ST_VINE)
            {
               this.fireMissile();
            }
         }
      }
      
      override public function pressSelBtn() : void
      {
         super.pressSelBtn();
         if(classicMode)
         {
            this.missileModeToggle();
         }
      }
      
      private function fireMissile() : void
      {
         var _loc2_:SamusShot = null;
         var _loc1_:Boolean = false;
         if(Cheats.infiniteAmmo || starPwr)
         {
            _loc1_ = true;
         }
         if(hasEnoughAmmo(SAMUS_MISSILE) && this.BULLET_DCT.length < this.MAX_SHOTS_ON_SCREEN)
         {
            _loc2_ = new SamusShot(this,SamusShot.SHOT_TYPE_MISSILE);
            this.BULLET_DCT.addItem(_loc2_);
            level.addToLevel(_loc2_);
            decAmmo(SAMUS_MISSILE);
            this.shoot = true;
            if(!onGround && upBtn || onGround && !lftBtn && !rhtBtn)
            {
               if(this.STILL_SHOOT_TMR.running)
               {
                  this.STILL_SHOOT_TMR.reset();
               }
               this.STILL_SHOOT_TMR.start();
            }
            else
            {
               if(this.MOVE_SHOOT_TMR.running)
               {
                  this.MOVE_SHOOT_TMR.reset();
               }
               this.MOVE_SHOOT_TMR.start();
            }
            this.checkState();
         }
      }
      
      private function moveShootTmrHandler(param1:TimerEvent) : void
      {
         this.MOVE_SHOOT_TMR.reset();
         this.shoot = false;
      }
      
      private function stillShootTmrHandler(param1:TimerEvent) : void
      {
         this.STILL_SHOOT_TMR.reset();
         this.shoot = false;
      }
      
      private function stepTmrHandler(param1:TimerEvent) : void
      {
         this.STEP_TMR.reset();
         if(!this.muteStepSounds && this.skinFootStepsMakeSnd)
         {
            SND_MNGR.playSound(this.SFX_SAMUS_STEP);
         }
         if(onGround && vx != 0)
         {
            this.STEP_TMR.start();
         }
      }
      
      override public function pressDwnBtn() : void
      {
         super.pressDwnBtn();
         if(cState == ST_PIPE || cState == ST_VINE)
         {
            return;
         }
         if(!classicMode)
         {
            if(cState == ST_STAND || cState == ST_WALK)
            {
               setState(ST_CROUCH);
               if(!this.skinCanMoveWhileCrouching)
               {
                  vx = 0;
               }
               this.checkState();
            }
            else if(upgradeIsActive(SAMUS_MORPH_BALL) && !this.skinDisableMorphBall && (cState == ST_CROUCH || !onGround && cState != ST_BALL))
            {
               setPlayFrame(this.FL_BALL_START);
               setState(ST_BALL);
               this.morphBall = true;
               this.flipEnd();
               lState = ST_STAND;
               if(onGround)
               {
                  ny -= this.BALL_DISPLACE_CROUCH;
                  y -= this.BALL_DISPLACE_CROUCH;
                  onGround = false;
               }
               SND_MNGR.playSound(this.SFX_SAMUS_MORPH_BALL);
            }
         }
         else if(upgradeIsActive(SAMUS_MORPH_BALL) && cState != ST_BALL && onGround && !this.skinDisableMorphBall)
         {
            setPlayFrame(this.FL_BALL_START);
            setState(ST_BALL);
            this.morphBall = true;
            SND_MNGR.playSound(this.SFX_SAMUS_MORPH_BALL);
            ny -= this.BALL_DISPLACE;
            y -= this.BALL_DISPLACE;
            onGround = false;
         }
         if(cState == ST_BALL)
         {
            this.changeBrickState();
         }
      }
      
      override public function hitProj(param1:Projectile) : void
      {
         if(level is TitleLevel)
         {
            return;
         }
         if(param1 is SamusBomb && !(param1 as SamusBomb).hitSamus && vy >= 0)
         {
            if(onGround)
            {
               onGround = false;
            }
            vy = -this.BOMB_BOOST;
            jumped = true;
            (param1 as SamusBomb).hitSamus = true;
         }
         if(!(param1 is FireBar && upgradeIsActive(SAMUS_VARIA_SUIT)))
         {
            super.hitProj(param1);
         }
      }
      
      override public function groundAbove(param1:Ground) : void
      {
         super.groundAbove(param1);
         if(cState == ST_BALL)
         {
            SND_MNGR.removeStoredSound(SND_GAME_HIT_CEILING);
         }
      }
      
      override protected function bouncePit() : void
      {
         if(!(level is CharacterSelect))
         {
            super.bouncePit();
         }
      }
      
      override protected function enterPipeHorz() : void
      {
         super.enterPipeHorz();
         mainAnimTmr = ANIM_MIN_FAST_TMR;
      }
      
      override protected function getMushroom() : void
      {
         super.getMushroom();
         if(pState == 1)
         {
            swapPsStart(pState,pState + 1);
         }
      }
      
      override protected function getMushroomEnd() : void
      {
         super.getMushroomEnd();
         this.changeBrickState();
      }
      
      override protected function takeDamageStart(param1:LevObj) : void
      {
         super.takeDamageStart(param1);
         takeNoDamage = true;
         disableInput = true;
         nonInteractive = true;
         if(onGround)
         {
            vy = -DAMAGE_BOOST_VY;
         }
         var _loc2_:int = 1;
         if(param1.nx > nx)
         {
            _loc2_ = -1;
         }
         this.damageBoostTmr.start();
         vx = DAMAGE_BOOST_VX * _loc2_;
         if(cState != ST_BALL)
         {
            setStopFrame(this.FL_JUMP);
         }
         if(!upgradeIsActive(SAMUS_MORPH_BALL) && (this.morphBall || cState == ST_BALL))
         {
            this.exitMorphBall(this.FL_JUMP,ST_JUMP);
         }
         setState(ST_TAKE_DAMAGE);
         flickerStart();
         BTN_MNGR.relPlyrBtns();
         SND_MNGR.playSound(SN_TAKE_DAMAGE);
      }
      
      override public function flash(param1:Boolean = true) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         ++flashCtr;
         var _loc4_:String = PaletteTypes.FLASH_STAR;
         var _loc5_:String = PaletteTypes.FLASH_POWERING_UP;
         var _loc6_:Palette = palettePowerUp;
         if(starPwr)
         {
            _loc6_ = paletteStar;
         }
         else if(this.screwAttack)
         {
            _loc6_ = this.paletteScrewAttack;
         }
         _loc2_ = _loc6_.numRows - 1;
         _loc3_ = 1;
         if(flashCtr > _loc2_ - 1)
         {
            flashCtr = 0;
         }
         setFlashArr(defColors,_loc6_,IND_DEF_COLORS_OUT,_loc3_ + flashCtr);
         recolorBmps(flashArr[CustomMovieClip.IND_FLASH_ARR_PAL_IN],flashArr[CustomMovieClip.IND_FLASH_ARR_PAL_OUT],flashArr[CustomMovieClip.IND_FLASH_ARR_IN_COLOR],flashArr[CustomMovieClip.IND_FLASH_ARR_OUT_COLOR]);
      }
      
      override protected function takeDamageEnd() : void
      {
         disableInput = false;
         nonInteractive = false;
         if(this.morphBall)
         {
            setState(ST_BALL);
         }
         else
         {
            setState(ST_NEUTRAL);
         }
         noDamageTmr.start();
         BTN_MNGR.sendPlayerBtns();
         this.checkState();
      }
      
      override public function getAxe(param1:BowserAxe) : void
      {
         if(cState == ST_BALL)
         {
            this.exitMorphBall(this.FL_JUMP,ST_JUMP);
         }
         super.getAxe(param1);
      }
      
      override public function charSelectInitiate() : void
      {
         super.charSelectInitiate();
         this.muteStepSounds = true;
      }
      
      override public function chooseCharacter() : void
      {
         super.chooseCharacter();
         this.standFrame = this.FL_STAND_FRONT;
         setStopFrame(this.FL_STAND_FRONT);
         level.getGroundAt(nx - TILE_SIZE,ny).destroy();
         level.getGroundAt(nx,ny).destroy();
         level.getGroundAt(nx - TILE_SIZE,ny + TILE_SIZE).destroy();
         level.getGroundAt(nx,ny + TILE_SIZE).destroy();
         if(!Cheats.allGroundIsBricks)
         {
            (level.getGroundAt(nx - TILE_SIZE * 2,ny) as SimpleGround).gotoAndStop(SimpleGround.BN_NORMAL + SimpleGround.topStr + SimpleGround.rhtStr);
            (level.getGroundAt(nx - TILE_SIZE * 2,ny + TILE_SIZE) as SimpleGround).gotoAndStop(SimpleGround.BN_NORMAL + SimpleGround.midStr + SimpleGround.rhtStr);
            (level.getGroundAt(nx + TILE_SIZE,ny) as SimpleGround).gotoAndStop(SimpleGround.BN_NORMAL + SimpleGround.topStr + SimpleGround.lftStr);
            (level.getGroundAt(nx + TILE_SIZE,ny + TILE_SIZE) as SimpleGround).gotoAndStop(SimpleGround.BN_NORMAL + SimpleGround.midStr + SimpleGround.lftStr);
         }
         this.charSelPlatform = new Platform(null,Platform.PT_CONSTANT_FALL,4);
         this.charSelPlatform.x = nx;
         this.charSelPlatform.y = ny;
         defyGrav = true;
         level.addToLevel(this.charSelPlatform);
      }
      
      override public function fallenCharSelScrn() : void
      {
         super.fallenCharSelScrn();
         cancelCheckState = true;
         setStopFrame(this.FL_CROUCH);
      }
      
      override public function initiateDeath(param1:LevObj = null) : void
      {
         super.initiateDeath(param1);
         var _loc2_:int = GameSettings.difficulty;
         if(_loc2_ != Difficulties.VERY_EASY && _loc2_ != Difficulties.EASY)
         {
            STAT_MNGR.changeStat(STAT_MNGR.STAT_NUM_SAMUS_MISSILES,-STAT_MNGR.NUM_SAMUS_MISSILES_MAX);
         }
      }
      
      override protected function initiateNormalDeath(param1:LevObj = null) : void
      {
         super.initiateNormalDeath(param1);
         flickerStop();
         stopUpdate = true;
         stopAnim = true;
         stopHit = true;
         visible = false;
         level.addToLevel(new SamusGuts(this,1));
         level.addToLevel(new SamusGuts(this,2));
         level.addToLevel(new SamusGuts(this,3));
         level.addToLevel(new SamusGuts(this,4));
         level.addToLevel(new SamusGuts(this,5));
         level.addToLevel(new SamusGuts(this,6));
         EVENT_MNGR.startDieTmr(this.DIE_TMR_DEL_NORMAL);
         SND_MNGR.playSound(this.SFX_SAMUS_DIE);
      }
      
      override protected function initiatePitDeath() : void
      {
         _dieTmrDel = this.DIE_TMR_DEL_PIT;
         super.initiatePitDeath();
         SND_MNGR.playSound(this.SFX_SAMUS_DIE);
      }
      
      override public function slideDownFlagPole() : void
      {
         super.slideDownFlagPole();
         setStopFrame(this.FL_CLIMB_START);
         nx = level.flagPole.hMidX - this.FLAG_POLE_OFFSET;
         this.shoot = false;
         if(this.screwAttack)
         {
            this.endScrewAttack();
         }
      }
      
      private function endScrewAttack() : void
      {
         this.screwAttack = false;
         if(!starPwr)
         {
            endReplaceColor();
         }
      }
      
      override public function stopFlagPoleSlide() : void
      {
         super.stopFlagPoleSlide();
         if(onGround)
         {
            setState(ST_STAND);
            setStopFrame(this.standFrame);
         }
         else
         {
            setState(ST_JUMP);
            setPlayFrame(this.FL_FLIP_START);
            this.flip = true;
            this.flipStartPos = GLOB_STG_BOT;
            jumped = true;
         }
      }
      
      override protected function changeBrickState() : void
      {
         if(cState == ST_BALL)
         {
            brickState = BRICK_NONE;
         }
         else
         {
            brickState = BRICK_BOUNCER;
         }
      }
      
      override public function activateWatchModeEnterPipe() : void
      {
         super.activateWatchModeEnterPipe();
         this.muteStepSounds = true;
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         this.MOVE_SHOOT_TMR.removeEventListener(TimerEvent.TIMER_COMPLETE,this.moveShootTmrHandler);
         this.STILL_SHOOT_TMR.removeEventListener(TimerEvent.TIMER_COMPLETE,this.stillShootTmrHandler);
         this.STEP_TMR.removeEventListener(TimerEvent.TIMER_COMPLETE,this.stepTmrHandler);
         this.damageBoostTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.damageBoostTmrHandler);
      }
      
      override protected function reattachLsrs() : void
      {
         super.reattachLsrs();
         this.MOVE_SHOOT_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.moveShootTmrHandler,false,0,true);
         this.STILL_SHOOT_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.stillShootTmrHandler,false,0,true);
         this.STEP_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.stepTmrHandler,false,0,true);
         this.damageBoostTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.damageBoostTmrHandler,false,0,true);
      }
      
      override protected function getAllDroppedUpgrades() : void
      {
         this.hitPickup(new SamusPickup(SAMUS_MISSILE_AMMO),false);
      }
      
      override public function checkFrame() : void
      {
         var _loc1_:int = currentFrame;
         var _loc2_:String = currentLabel;
         if(this.morphBall && _loc1_ == getLabNum(this.FL_BALL_END) + 1)
         {
            setPlayFrame(this.FL_BALL_START);
         }
         else if(cState == ST_JUMP && _loc1_ == getLabNum(this.FL_FLIP_END) + 1)
         {
            setPlayFrame(this.FL_FLIP_START);
         }
         else if((cState == ST_WALK || cState == ST_PIPE) && (_loc1_ == getLabNum(this.FL_WALK_END) + 1 || _loc1_ == getLabNum(this.FL_WALK_SHOOT_END) + 1))
         {
            if(!this.shoot)
            {
               setPlayFrame(this.FL_WALK_START);
            }
            else
            {
               setPlayFrame(this.FL_WALK_SHOOT_START);
            }
         }
         else if(cState == this.ST_WALK_UP && (_loc1_ == getLabNum(this.FL_WALK_UP_END) + 1 || _loc1_ == getLabNum(this.FL_WALK_UP_SHOOT_END) + 1))
         {
            if(!this.shoot)
            {
               setPlayFrame(this.FL_WALK_UP_START);
            }
            else
            {
               setPlayFrame(this.FL_WALK_UP_SHOOT_START);
            }
         }
         else if(cState == ST_VINE && _loc1_ == getLabNum(this.FL_CLIMB_END) + 1)
         {
            setPlayFrame(this.FL_CLIMB_START);
         }
         super.checkFrame();
      }
      
      override public function cleanUp() : void
      {
         super.cleanUp();
         if(fellInPit)
         {
            this.changeSuitColor();
         }
         tsTxt.UpdAmmoIcon(false);
         tsTxt.UpdAmmoText(false);
      }
      
      override protected function playDefaultPickupSoundEffect() : void
      {
         SND_MNGR.playSound(SoundNames.SFX_SAMUS_GET_ENERGY);
      }
   }
}
