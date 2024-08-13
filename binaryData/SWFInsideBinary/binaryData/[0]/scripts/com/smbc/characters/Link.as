package com.smbc.characters
{
   import com.explodingRabbit.cross.gameplay.statusEffects.StatFxFlash;
   import com.explodingRabbit.cross.gameplay.statusEffects.StatFxKnockBack;
   import com.explodingRabbit.cross.gameplay.statusEffects.StatFxStop;
   import com.explodingRabbit.cross.gameplay.statusEffects.StatusProperty;
   import com.explodingRabbit.utils.CustomDictionary;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.CharacterInfo;
   import com.smbc.data.DamageValue;
   import com.smbc.data.GameSettings;
   import com.smbc.data.MovieClipInfo;
   import com.smbc.data.PaletteTypes;
   import com.smbc.data.PickupInfo;
   import com.smbc.data.SoundNames;
   import com.smbc.enemies.Enemy;
   import com.smbc.enemies.KoopaGreen;
   import com.smbc.enums.LinkWeapon;
   import com.smbc.graphics.BmdSkinCont;
   import com.smbc.graphics.LinkShield;
   import com.smbc.graphics.LinkSword;
   import com.smbc.graphics.TopScreenText;
   import com.smbc.ground.Ground;
   import com.smbc.interfaces.IAttackable;
   import com.smbc.interfaces.ICustomTimer;
   import com.smbc.main.LevObj;
   import com.smbc.managers.GraphicsManager;
   import com.smbc.pickups.LinkPickup;
   import com.smbc.pickups.Pickup;
   import com.smbc.pickups.Vine;
   import com.smbc.projectiles.*;
   import com.smbc.utils.GameLoopTimer;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   
   public class Link extends Character
   {
      
      public static const CHAR_NAME:String = CharacterInfo.Link[CharacterInfo.IND_CHAR_NAME];
      
      public static const CHAR_NAME_CAPS:String = CharacterInfo.Link[CharacterInfo.IND_CHAR_NAME_CAPS];
      
      public static const CHAR_NAME_TEXT:String = CharacterInfo.Link[CharacterInfo.IND_CHAR_NAME_MENUS];
      
      public static const CHAR_NUM:int = CharacterInfo.Link[CharacterInfo.IND_CHAR_NUM];
      
      public static const PAL_ORDER_ARR:Array = [PaletteTypes.FLASH_POWERING_UP];
      
      public static const WIN_SONG_DUR:int = 4200;
      
      public static const CHAR_SEL_END_DUR:int = 1700;
      
      public static const SUFFIX_VEC:Vector.<String> = Vector.<String>(["","",""]);
      
      private static const DIE_TMR_DEL_NORMAL:int = 650;
      
      private static const DIE_TMR_DEL_PIT:int = 3200;
      
      private static var ctr:int = -1;
      
      public static const IND_CI_Link:int = 1;
      
      public static const IND_CI_Portrait:int = 6;
      
      public static const IND_CI_LinkSword:int = 7;
      
      public static const IND_CI_LinkEnemyExplosion:int = 8;
      
      private static const PAL_ROW_GREEN_TUNIC:int = 1;
      
      private static const PAL_ROW_BLUE_TUNIC:int = 2;
      
      private static const PAL_ROW_RED_TUNIC:int = 3;
      
      private static const SKIN_APPEARANCE_NUM_GREEN_TUNIC:int = 0;
      
      private static const SKIN_APPEARANCE_NUM_BLUE_TUNIC:int = 1;
      
      private static const SKIN_APPEARANCE_NUM_RED_TUNIC:int = 2;
      
      private static const PAL_ROW_BLACK_AND_WHITE:int = 4;
      
      protected static const LINK_STEP_LADDER:String = PickupInfo.LINK_LADDER;
      
      protected static const LINK_BOW:String = PickupInfo.LINK_BOW;
      
      protected static const LINK_BOMB:String = PickupInfo.LINK_BOMB;
      
      protected static const LINK_BOMB_BAG:String = PickupInfo.LINK_BOMB_BAG;
      
      protected static const LINK_BLUE_RING:String = PickupInfo.LINK_BLUE_RING;
      
      protected static const LINK_SHORT_BOOMERANG:String = PickupInfo.LINK_SHORT_BOOMERANG;
      
      protected static const LINK_MAGIC_BOOMERANG:String = PickupInfo.LINK_MAGIC_BOOMERANG;
      
      protected static const LINK_MAGIC_SHIELD:String = PickupInfo.LINK_MAGIC_SHIELD;
      
      protected static const LINK_MAGIC_SWORD:String = PickupInfo.LINK_MAGIC_SWORD;
      
      protected static const LINK_RED_RING:String = PickupInfo.LINK_RED_RING;
      
      protected static const LINK_QUIVER:String = PickupInfo.LINK_QUIVER;
      
      protected static const LINK_ARROW_AMMO:String = PickupInfo.LINK_ARROW_AMMO;
      
      protected static const LINK_BOMB_AMMO:String = PickupInfo.LINK_BOMB_AMMO;
      
      private static const CLASSIC_BOMB_AMMO_DEFAULT:int = 3;
      
      private static const CLASSIC_BOW_AMMO_DEFAULT:int = 5;
      
      private static const AMMO_SUFFIX:String = "Ammo";
      
      private static const SW_BOOMERANG:String = "boomerang";
      
      private static const SW_BOMB:String = "bomb";
      
      private static const SW_BOW:String = "bow";
      
      public static const OBTAINABLE_UPGRADES_ARR:Array = [[LINK_MAGIC_BOOMERANG,LINK_BOW,LINK_RED_RING,LINK_MAGIC_SWORD],[LINK_BOMB_BAG,LINK_QUIVER]];
      
      public static const MUSHROOM_UPGRADES:Array = [LINK_BLUE_RING];
      
      public static const NEVER_LOSE_UPGRADES:Array = [LINK_BOW,LINK_BOMB,LINK_QUIVER,LINK_BOMB_BAG,LINK_MAGIC_SWORD];
      
      public static const RESTORABLE_UPGRADES:Array = [LINK_MAGIC_BOOMERANG];
      
      public static const START_WITH_UPGRADES:Array = [];
      
      public static const SINGLE_UPGRADES_ARR:Array = [];
      
      public static const REPLACEABLE_UPGRADES_ARR:Array = [[]];
      
      private static const AMMO_BOMBS_MAX_DEF:int = 20;
      
      private static const AMMO_ARROWS_MAX_DEF:int = 20;
      
      private static const AMMO_BOMBS_MAX_BOMB_BAG:int = 40;
      
      private static const AMMO_ARROWS_MAX_QUIVER:int = 40;
      
      public static const ICON_ORDER_ARR:Array = [LINK_MAGIC_BOOMERANG,LINK_BOMB,LINK_BOMB_BAG,LINK_BOW,LINK_QUIVER,LINK_BLUE_RING,LINK_RED_RING,LINK_MAGIC_SWORD];
      
      public static const AMMO_ARR:Array = [[SW_BOMB,3,20,1],[SW_BOW,10,20,1]];
      
      public static const AMMO_DEPLETION_ARR:Array = [[SW_BOMB,1],[SW_BOW,1]];
      
      public static const TITLE_SCREEN_UPGRADES:Array = [MUSHROOM];
      
      private static const DROP_ARR_BOMBS:Array = [[0,LINK_BOMB_AMMO]];
      
      private static const DROP_ARR_ARROWS:Array = [[0,LINK_ARROW_AMMO]];
      
      private static const DROP_ARR_BOTH:Array = [[0,LINK_ARROW_AMMO],[0.5,LINK_BOMB_AMMO]];
      
      public static const AMMO_DEPLETION_DCT:CustomDictionary = new CustomDictionary();
      
      public static const AMMO_DCT:CustomDictionary = new CustomDictionary();
      
      private static const MAX_BOMBS_ON_SCREEN:int = 3;
      
      private static const REPL_COLOR_1_1:uint = 4287289601;
      
      private static const REPL_COLOR_2_1:uint = 4288105984;
      
      private static const REPL_COLOR_3_1:uint = 4294942788;
      
      private static const REPL_COLOR_1_2:uint = 4290296056;
      
      private static const REPL_COLOR_2_2:uint = REPL_COLOR_2_1;
      
      private static const REPL_COLOR_3_2:uint = REPL_COLOR_3_1;
      
      private static const REPL_COLOR_1_3:uint = 4292625174;
      
      private static const REPL_COLOR_2_3:uint = REPL_COLOR_2_1;
      
      private static const REPL_COLOR_3_3:uint = REPL_COLOR_3_1;
      
      private static const FL_ATTACK_2:String = "attack-2";
      
      private static const FL_ATTACK_END_GROUND:String = "attackEndGround";
      
      private static const FL_ATTACK_END_JUMP:String = "attackEndJump";
      
      public static const FL_ATTACK_START:String = "attackStart";
      
      private static const FL_ATTACK_DOWN_2:String = "attackDown2";
      
      private static const FL_ATTACK_UP_2:String = "attackUp2";
      
      private static const FL_ATTACK_DOWN_END:String = "attackDownEnd";
      
      private static const FL_ATTACK_UP_END:String = "attackUpEnd";
      
      public static const FL_ATTACK_DOWN_START:String = "attackDownStart";
      
      public static const FL_ATTACK_UP_START:String = "attackUpStart";
      
      private static const FL_DIE_DWN:String = "dieDwn";
      
      private static const FL_DWN_THRUST_END:String = "dwnThrustEnd";
      
      private static const FL_DWN_THRUST_START:String = "dwnThrustStart";
      
      private static const FL_UP_THRUST_END:String = "upThrustEnd";
      
      private static const FL_UP_THRUST_START:String = "upThrustStart";
      
      private static const FL_RAISE_ARMS:String = "raiseArms";
      
      private static const FL_JUMP_START:String = "jumpStart";
      
      private static const FL_JUMP_END:String = "jumpEnd";
      
      private static const FL_STAND:String = "stand";
      
      private static const FL_SWORD:String = "sword";
      
      private static const FL_SHIELD_DOWN:String = "down";
      
      private static const FL_SHIELD_FRONT:String = "front";
      
      private static const FL_SHIELD_SIDE:String = "side";
      
      private static const FL_SHIELD_UP:String = "up";
      
      private static const FL_WALK_END:String = "walkEnd";
      
      private static const FL_WALK:String = "walk";
      
      private static const SWORD_REMAIN_ARR:Array = [FL_ATTACK_START,FL_ATTACK_2,FL_ATTACK_END_GROUND,FL_ATTACK_END_JUMP,FL_ATTACK_DOWN_START,FL_ATTACK_DOWN_2,FL_ATTACK_DOWN_END,FL_ATTACK_UP_START,FL_ATTACK_UP_2,FL_ATTACK_UP_END,FL_UP_THRUST_END,FL_DWN_THRUST_END];
      
      private static const SHIELD_REMOVE_ARR:Array = [FL_ATTACK_START,undefined,FL_ATTACK_UP_2,FL_ATTACK_UP_END,FL_UP_THRUST_START,FL_RAISE_ARMS];
      
      public static const SFX_LINK_DIE:String = SoundNames.SFX_LINK_DIE;
      
      public static const SFX_LINK_HIT_ENEMY:String = SoundNames.SFX_LINK_HIT_ENEMY;
      
      public static const SFX_LINK_STAB:String = SoundNames.SFX_LINK_STAB;
      
      private static const SN_GET_ITEM:String = SoundNames.SFX_LINK_GET_ITEM;
      
      private static const SN_GET_HEART:String = SoundNames.SFX_LINK_GET_HEART;
      
      private static const SN_SELECT_ITEM:String = SoundNames.SFX_LINK_SELECT_ITEM;
      
      private static const SN_TAKE_DAMAGE:String = SoundNames.SFX_LINK_TAKE_DAMAGE;
      
      private static const DAMAGE_BOOST_SPEED:int = 500;
      
      private static const DAMAGE_BOOST_DIST:int = 64;
      
      private static const TOTAL_SELECTABLE_WEAPONS:int = 3;
      
      private static const AMMO_HUD_X:int = 6;
      
      private static const AMMO_HUD_Y:int = 68;
      
      private static const BOMB_AMMO_VALUE:int = 2;
      
      private static const ARROW_AMMO_VALUE:int = 2;
      
      public static const BOOMERANG_STUN_DUR:int = 3000;
      
      public static const DEFAULT_PROPS_DCT:CustomDictionary = new CustomDictionary();
      
      public static var knockBackProp:StatusProperty;
      
      private static var knockBackFx:StatFxKnockBack;
      
      private static const FLIP_TMR_DEL:int = 140;
      
      public static const SKIN_PREVIEW_SIZE:Point = new Point(21,21);
      
      public static const SKIN_APPEARANCE_STATE_COUNT:int = 3;
      
      public static const SKIN_LINK_NES:int = 0;
      
      public static const SKIN_LINK_SNES:int = 1;
      
      public static const SKIN_LINK_GB:int = 2;
      
      public static const SKIN_DARK_LINK_NES:int = 3;
      
      public static const SKIN_DARK_LINK_SNES:int = 4;
      
      public static const SKIN_DARK_LINK_GB:int = 5;
      
      public static const SKIN_OLD_MAN_NES:int = 6;
      
      public static const SKIN_ZELDA_NES:int = 7;
      
      public static const SKIN_HERO_SNES:int = 8;
      
      public static const SKIN_HEROINE_SNES:int = 9;
      
      public static const SKIN_CHRISTINE:int = 10;
      
      public static const SKIN_LINK_ATARI:int = 11;
      
      public static const SKIN_BENJAMIN:int = 12;
      
      public static const SKIN_ERDRICK:int = 13;
      
      public static const SKIN_LINK_X1:int = 14;
      
      public static const SKIN_ZELDA_SNES:int = 15;
      
      public static const SKIN_RALPH:int = 16;
      
      public static const SKIN_ZELDA_GB:int = 17;
      
      public static const SKIN_LOTO:int = 18;
      
      public static const SKIN_ROTO:int = 19;
      
      public static const SKIN_OLD_MAN_SNES:int = 20;
      
      public static const SKIN_OLD_MAN_GB:int = 21;
      
      public static const SKIN_CECIL_PALADIN:int = 22;
      
      public static const SKIN_CECIL_DARK_KNIGHT:int = 23;
      
      public static const SKIN_BARTZ:int = 24;
      
      public static const SKIN_ORDER:Array = [SKIN_LINK_NES,SKIN_LINK_SNES,SKIN_LINK_GB,SKIN_LINK_X1,SKIN_LINK_ATARI,SKIN_DARK_LINK_NES,SKIN_DARK_LINK_SNES,SKIN_DARK_LINK_GB,SKIN_ZELDA_NES,SKIN_ZELDA_SNES,SKIN_ZELDA_GB,SKIN_RALPH,SKIN_OLD_MAN_NES,SKIN_OLD_MAN_SNES,SKIN_OLD_MAN_GB,SKIN_HERO_SNES,SKIN_HEROINE_SNES,SKIN_CHRISTINE,SKIN_ERDRICK,SKIN_ROTO,SKIN_LOTO,SKIN_CECIL_DARK_KNIGHT,SKIN_CECIL_PALADIN,SKIN_BARTZ,SKIN_BENJAMIN];
      
      public static const SPECIAL_SKIN_NUMBER:int = SKIN_LINK_X1;
      
      public static const ATARI_SKIN_NUMBER:int = SKIN_LINK_ATARI;
       
      
      private var palRow:int;
      
      private var damageBoostEndX:Number;
      
      private var damageBoostDir:int;
      
      private const SND_MUSIC_WIN:String = SoundNames.MFX_LINK_WIN;
      
      private const WALK_START_LAB:String = "walkStart";
      
      private const WALK_END_LAB:String = "walkEnd";
      
      private var atkTmr:CustomTimer;
      
      private const ATK_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_FAST_TMR;
      
      private const MAIN_ANIM_TMR_DEF:CustomTimer = AnimationTimers.ANIM_SLOW_TMR;
      
      private const THROW_GROUND_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_MIN_FAST_TMR;
      
      private const THROW_JUMP_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_SLOW_TMR;
      
      private const ATK_DUR:int = 150;
      
      private const WALK_SPEED:int = 175;
      
      private const GRAVITY:int = 1300;
      
      private const GRAVITY_WATER:int = 500;
      
      private const JUMP_PWR:int = 600;
      
      private const JUMP_PWR_WATER:int = 500;
      
      private const DEF_SPRING_PWR:int = 450;
      
      private const BOOST_SPRING_PWR:int = 950;
      
      private const VY_MAX_PSV:int = 800;
      
      private const VY_MAX_PSV_WATER:int = 500;
      
      private const BOUNCE_PWR:int = 325;
      
      public var canShootSword:Boolean = true;
      
      public var uThrust:Boolean;
      
      public var dThrust:Boolean;
      
      private const DEATH_ANIMATION_TIMER:CustomTimer = AnimationTimers.ANIM_MODERATE_TMR;
      
      private const NUM_FLASH_FRAMES:int = 8;
      
      private const NUM_SPINS:int = 4;
      
      private const NUM_WAIT_FRAMES:int = 4;
      
      private const NUM_GRAY_FRAMES:int = 8;
      
      private var frameCtr:int;
      
      private var spinCtr:int;
      
      private var deathPhase:String = "flash";
      
      public var boomerang:LinkBoomerang;
      
      private var sword:LinkSword;
      
      private var shield:LinkShield;
      
      private var pickupCurrentlyLifting:Pickup;
      
      private var swordLevel:int;
      
      public var shieldLevel:int;
      
      private var subWeaponsVec:Vector.<String>;
      
      private var curSubWeaponName:String;
      
      private var curSubWeaponInd:int;
      
      private var finishedFlip:Boolean;
      
      private var flipTmr:GameLoopTimer;
      
      private var takeDamageTmr:GameLoopTimer;
      
      private var TAKE_DAMAGE_TMR_DUR:int = 1200;
      
      public function Link()
      {
         var _loc1_:StatusProperty = null;
         var _loc3_:DisplayObject = null;
         this.subWeaponsVec = new Vector.<String>();
         charNum = CHAR_NUM;
         recolorsCharSkin = true;
         super();
         if(!DEFAULT_PROPS_DCT.length)
         {
            DEFAULT_PROPS_DCT.addItem(new StatusProperty(PR_FLASH_AGG,0,new StatFxFlash(null,AnimationTimers.DEL_FAST,400)));
            DEFAULT_PROPS_DCT.addItem(new StatusProperty(PR_STOP_AGG,0,new StatFxStop(null,400)));
            knockBackFx = new StatFxKnockBack(null,null);
         }
         for each(_loc1_ in DEFAULT_PROPS_DCT)
         {
            addProperty(_loc1_);
         }
         _canGetAmmoFromBricks = true;
         _charName = CHAR_NAME;
         _charNameTxt = CHAR_NAME_TEXT;
         _charNameCaps = CHAR_NAME_CAPS;
         suffixVec = SUFFIX_VEC.concat();
         _sndWinMusic = this.SND_MUSIC_WIN;
         _dieTmrDel = DIE_TMR_DEL_NORMAL;
         winSongDur = WIN_SONG_DUR;
         _usesHorzObjs = true;
         _usesVertObjs = true;
         walkStartLab = this.WALK_START_LAB;
         walkEndLab = this.WALK_END_LAB;
         level.LEV_OBJ_FINAL_CHECK.addItem(this);
         var _loc2_:int = 0;
         while(_loc2_ < numChildren)
         {
            _loc3_ = getChildAt(_loc2_) as DisplayObject;
            if(_loc3_ is LinkSword)
            {
               this.sword = _loc3_ as LinkSword;
            }
            else if(_loc3_ is LinkShield)
            {
               this.shield = _loc3_ as LinkShield;
            }
            _loc2_++;
         }
      }
      
      override public function get classicGetMushroomUpgrades() : Vector.<String>
      {
         return Vector.<String>([LINK_BLUE_RING,this.classicWeaponPickupType]);
      }
      
      override public function get classicLoseMushroomUpgrades() : Vector.<String>
      {
         return Vector.<String>([LINK_BLUE_RING]);
      }
      
      override public function get classicGetFireFlowerUpgrades() : Vector.<String>
      {
         return Vector.<String>([LINK_RED_RING,LINK_MAGIC_BOOMERANG,LINK_MAGIC_SWORD,LINK_BOMB_BAG,LINK_QUIVER]);
      }
      
      override public function get classicLoseFireFlowerUpgrades() : Vector.<String>
      {
         return Vector.<String>([LINK_RED_RING,LINK_MAGIC_BOOMERANG,LINK_MAGIC_SWORD]);
      }
      
      override protected function setObjsToRemoveFromFrames() : void
      {
         super.setObjsToRemoveFromFrames();
         removeObjsFromFrames(this.sword,SWORD_REMAIN_ARR,true);
         removeObjsFromFrames(this.shield,SHIELD_REMOVE_ARR);
      }
      
      override protected function get currentSkinAppearanceNum() : int
      {
         if(upgradeIsActive(LINK_RED_RING))
         {
            return SKIN_APPEARANCE_NUM_RED_TUNIC;
         }
         if(upgradeIsActive(LINK_BLUE_RING))
         {
            return SKIN_APPEARANCE_NUM_BLUE_TUNIC;
         }
         return SKIN_APPEARANCE_NUM_GREEN_TUNIC;
      }
      
      override protected function mcReplacePrep(param1:MovieClip) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:MovieClip = null;
         var _loc5_:DisplayObject = null;
         var _loc6_:MovieClip = null;
         var _loc7_:int = 0;
         this.sword = new LinkSword(this,new MovieClipInfo.LinkSwordMc());
         this.shield = new LinkShield(this,new MovieClipInfo.LinkShieldMc());
         var _loc4_:int = 0;
         while(_loc4_ < param1.numChildren)
         {
            _loc5_ = param1.getChildAt(_loc4_);
            if(_loc5_ is MovieClip)
            {
               _loc6_ = _loc5_ as MovieClip;
               if((_loc7_ = _loc6_.totalFrames) == this.sword.totalFrames)
               {
                  _loc2_ = _loc6_;
               }
               else if(_loc7_ == this.shield.totalFrames)
               {
                  _loc3_ = _loc6_;
               }
            }
            _loc4_++;
         }
         mcReplaceArr = [_loc2_,this.sword,_loc3_,this.shield];
      }
      
      override public function setStats() : void
      {
         jumpPwr = this.JUMP_PWR;
         gravity = this.GRAVITY;
         vxMaxDef = DAMAGE_BOOST_SPEED;
         vyMaxPsv = this.VY_MAX_PSV;
         vxMax = vxMaxDef;
         vxMin = 5;
         bouncePwr = this.BOUNCE_PWR;
         if(level.waterLevel)
         {
            jumpPwr = this.JUMP_PWR_WATER;
            defGravity = gravity;
            gravity = this.GRAVITY_WATER;
            defGravityWater = gravity;
            vyMaxPsv = this.VY_MAX_PSV_WATER;
         }
         defSpringPwr = this.DEF_SPRING_PWR;
         boostSpringPwr = this.BOOST_SPRING_PWR;
         fy = 0.0001;
         pState2 = true;
         this.updSubWeapons(false,STAT_MNGR.getSubWeapon(charNum));
         super.setStats();
         vineAnimTmr = AnimationTimers.ANIM_SLOWEST_TMR;
         this.shield.setStopFrame(FL_SHIELD_SIDE);
         this.atkTmr = new CustomTimer(this.ATK_DUR,1);
         this.atkTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.atkTmrLsr);
         addTmr(this.atkTmr);
         this.flipTmr = new GameLoopTimer(FLIP_TMR_DEL);
         this.flipTmr.addEventListener(TimerEvent.TIMER,this.flipTmrHandler,false,0,true);
         addTmr(this.flipTmr);
      }
      
      protected function flipTmrHandler(param1:Event) : void
      {
         gotoAndStop(currentFrame + 1);
         this.checkFrame();
      }
      
      override protected function getOnVine(param1:Vine) : void
      {
         if(cState == ST_TAKE_DAMAGE)
         {
            this.takeDamageEnd();
         }
         super.getOnVine(param1);
         if(Boolean(this.flipTmr) && this.flipTmr.running)
         {
            this.flipTmr.stop();
         }
      }
      
      override protected function getOffVine() : void
      {
         super.getOffVine();
         this.finishedFlip = true;
         setStopFrame(FL_JUMP_END);
      }
      
      private function updSubWeapons(param1:Boolean = false, param2:String = null) : void
      {
         var _loc4_:Boolean = false;
         this.subWeaponsVec.length = 0;
         this.subWeaponsVec.push(SW_BOOMERANG);
         if(upgradeIsActive(LINK_BOW))
         {
            this.subWeaponsVec.push(SW_BOW);
         }
         if(upgradeIsActive(LINK_BOMB))
         {
            this.subWeaponsVec.push(SW_BOMB);
         }
         if(param1)
         {
            ++this.curSubWeaponInd;
            if(this.subWeaponsVec.length > 1)
            {
               SND_MNGR.playSound(SN_SELECT_ITEM);
            }
         }
         if(param2)
         {
            this.curSubWeaponInd = this.subWeaponsVec.indexOf(param2);
         }
         if(this.curSubWeaponInd >= this.subWeaponsVec.length || this.curSubWeaponInd < 0)
         {
            this.curSubWeaponInd = 0;
         }
         this.curSubWeaponName = this.subWeaponsVec[this.curSubWeaponInd];
         var _loc3_:String = this.curSubWeaponName;
         if(this.curSubWeaponName == SW_BOOMERANG)
         {
            if(upgradeIsActive(LINK_MAGIC_BOOMERANG))
            {
               _loc3_ = LINK_MAGIC_BOOMERANG;
            }
            else
            {
               _loc3_ = LINK_SHORT_BOOMERANG;
            }
            _loc3_ = _loc3_.substr(PickupInfo.UPGRADE_STR.length);
            tsTxt.UpdAmmoIcon(true,_loc3_ + AMMO_SUFFIX,TopScreenText.AMMO_ICON_X_ALIGNED);
            tsTxt.UpdAmmoText(false);
         }
         else
         {
            tsTxt.UpdAmmoText(true,getAmmo(this.curSubWeaponName));
         }
         STAT_MNGR.setSubWeapon(charNum,this.curSubWeaponName);
         if(GameSettings.classicMode)
         {
            _loc4_ = upgradeIsActive(this.classicWeaponPickupType);
            tsTxt.UpdAmmoIcon(_loc4_,this.classicWeaponSubWeaponType + AMMO_SUFFIX);
            tsTxt.UpdAmmoText(_loc4_,getAmmo(this.classicWeaponSubWeaponType));
         }
         else
         {
            tsTxt.UpdAmmoIcon(true,_loc3_ + AMMO_SUFFIX);
         }
      }
      
      override protected function setAmmo(param1:String, param2:int) : void
      {
         super.setAmmo(param1,param2);
         if(GameSettings.classicMode)
         {
            if(upgradeIsActive(LINK_BOMB) || upgradeIsActive(LINK_BOW))
            {
               TopScreenText.instance.UpdAmmoText(true,getAmmo(param1));
            }
         }
         else if(param1 == this.curSubWeaponName)
         {
            TopScreenText.instance.UpdAmmoText(true,getAmmo(param1));
         }
      }
      
      private function setSwordType() : void
      {
         if(upgradeIsActive(LINK_MAGIC_SWORD))
         {
            this.swordLevel = 3;
            if(skinNum == SKIN_ZELDA_NES || skinNum == SKIN_ZELDA_SNES || skinNum == SKIN_ZELDA_GB)
            {
               damageAmt = 350;
            }
            else
            {
               damageAmt = DamageValue.LINK_SWORD_3;
            }
         }
         else if(upgradeIsActive(MUSHROOM))
         {
            this.swordLevel = 2;
            if(skinNum == SKIN_ZELDA_NES || skinNum == SKIN_ZELDA_SNES || skinNum == SKIN_ZELDA_GB)
            {
               damageAmt = 225;
            }
            else
            {
               damageAmt = DamageValue.LINK_SWORD_2;
            }
         }
         else
         {
            this.swordLevel = 1;
            if(skinNum == SKIN_ZELDA_NES || skinNum == SKIN_ZELDA_SNES || skinNum == SKIN_ZELDA_GB)
            {
               damageAmt = 150;
            }
            else
            {
               damageAmt = DamageValue.LINK_SWORD_1;
            }
         }
         this.sword.gotoAndStop(FL_SWORD + "_" + this.swordLevel.toString());
      }
      
      private function setShieldType() : void
      {
         if(!upgradeIsActive(LINK_MAGIC_SHIELD))
         {
            this.shieldLevel = 1;
         }
         else
         {
            this.shieldLevel = 2;
         }
         this.shield.setStopFrame(this.shield.currentLabel.substr(0,this.shield.currentLabel.length - 2));
      }
      
      private function get classicWeaponSubWeaponType() : String
      {
         switch(GameSettings.linkWeapon)
         {
            case LinkWeapon.Bomb:
               return SW_BOMB;
            case LinkWeapon.BowAndArrow:
               return SW_BOW;
            default:
               return SW_BOMB;
         }
      }
      
      private function get classicWeaponPickupType() : String
      {
         switch(GameSettings.linkWeapon)
         {
            case LinkWeapon.Bomb:
               return LINK_BOMB;
            case LinkWeapon.BowAndArrow:
               return LINK_BOW;
            default:
               return LINK_BOMB;
         }
      }
      
      override protected function lastCharacterCheck() : void
      {
      }
      
      override public function forceWaterStats() : void
      {
         jumpPwr = this.JUMP_PWR_WATER;
         defGravity = gravity;
         gravity = this.GRAVITY_WATER;
         defGravityWater = gravity;
         vyMaxPsv = this.VY_MAX_PSV_WATER;
         super.forceWaterStats();
      }
      
      override public function forceNonwaterStats() : void
      {
         jumpPwr = this.JUMP_PWR;
         gravity = this.GRAVITY;
         defGravity = gravity;
         vyMaxPsv = this.VY_MAX_PSV;
         super.forceNonwaterStats();
      }
      
      override protected function movePlayer() : void
      {
         if(cState == ST_TAKE_DAMAGE)
         {
            return;
         }
         if(!(cState == ST_ATTACK && onGround))
         {
            if(rhtBtn && !lftBtn && !wallOnRight)
            {
               if(stuckInWall)
               {
                  return;
               }
               if(cState == "vine")
               {
                  if(!exitVine)
                  {
                     return;
                  }
                  this.getOffVine();
               }
               vx = this.WALK_SPEED;
               this.scaleX = 1;
            }
            if(lftBtn && !rhtBtn && !wallOnLeft)
            {
               if(stuckInWall)
               {
                  return;
               }
               if(cState == "vine")
               {
                  if(!exitVine)
                  {
                     return;
                  }
                  this.getOffVine();
               }
               vx = -this.WALK_SPEED;
               this.scaleX = -1;
            }
         }
         if(lftBtn && rhtBtn)
         {
            vx = 0;
         }
         else if(!lftBtn && !rhtBtn)
         {
            vx = 0;
         }
         else if(onGround && cState == ST_ATTACK)
         {
            vx = 0;
         }
      }
      
      override public function setCurrentBmdSkin(param1:BmdSkinCont, param2:Boolean = false) : void
      {
         super.setCurrentBmdSkin(param1);
         this.changeTunicColor();
         this.setSwordType();
         this.updSubWeapons(false,STAT_MNGR.getSubWeapon(charNum));
      }
      
      private function changeTunicColor(param1:int = -1) : void
      {
         if(upgradeIsActive(LINK_RED_RING))
         {
            this.palRow = PAL_ROW_RED_TUNIC;
         }
         else if(upgradeIsActive(LINK_BLUE_RING))
         {
            this.palRow = PAL_ROW_BLUE_TUNIC;
         }
         else
         {
            this.palRow = PAL_ROW_GREEN_TUNIC;
         }
         if(param1 >= 0)
         {
            this.palRow = param1;
         }
         graphicsMngr.recolorCharacterSheet(charNum,this.palRow,[IND_CI_Link,IND_CI_Portrait]);
      }
      
      override protected function prepareDrawCharacter(param1:int = -1) : void
      {
         if(param1 >= 0)
         {
            this.changeTunicColor(param1 + 1);
         }
         else
         {
            this.changeTunicColor();
         }
         super.prepareDrawCharacter(param1);
      }
      
      override public function setState(param1:String) : void
      {
         super.setState(param1);
         if(cState == ST_ATTACK)
         {
            this.shield.setStopFrame(FL_SHIELD_SIDE);
         }
      }
      
      override protected function jump() : void
      {
         onGround = false;
         vy = -jumpPwr;
         setStopFrame(FL_JUMP_START);
         this.setState("jump");
         this.flipTmr.start();
         jumped = true;
         releasedJumpBtn = false;
         frictionY = false;
         this.finishedFlip = false;
         SND_MNGR.playSound(SoundNames.SFX_LINK_JUMP);
      }
      
      override protected function checkState() : void
      {
         var _loc1_:String = null;
         if(cState == "vine")
         {
            checkVineBtns();
            checkVinePosition();
            return;
         }
         if(cState == ST_TAKE_DAMAGE)
         {
            if(this.damageBoostDir > 0 && nx > this.damageBoostEndX || this.damageBoostDir < 0 && nx < this.damageBoostEndX)
            {
               nx = this.damageBoostEndX;
               this.takeDamageEnd();
            }
            return;
         }
         if(onGround)
         {
            if(mainAnimTmr != this.MAIN_ANIM_TMR_DEF && cState != ST_ATTACK)
            {
               mainAnimTmr = this.MAIN_ANIM_TMR_DEF;
            }
            jumped = false;
            this.flipTmr.stop();
            this.finishedFlip = false;
            this.uThrust = false;
            this.dThrust = false;
            if(cState != ST_ATTACK)
            {
               if(vx == 0 && !lftBtn && !rhtBtn)
               {
                  setStopFrame(FL_STAND);
                  this.setState("stand");
               }
               else
               {
                  if(cState != ST_WALK)
                  {
                     if(!lastOnGround)
                     {
                        setPlayFrame(FL_WALK_END);
                     }
                     else
                     {
                        setPlayFrame(this.WALK_START_LAB);
                     }
                  }
                  this.setState(ST_WALK);
               }
            }
         }
         else
         {
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
            if(cState != ST_ATTACK)
            {
               this.setState(ST_JUMP);
               _loc1_ = currentLabel;
               if(upBtn)
               {
                  this.dThrust = false;
                  if(_loc1_ != convLab(FL_UP_THRUST_START) && _loc1_ != convLab(FL_UP_THRUST_END))
                  {
                     this.thrustStart();
                  }
                  else if(_loc1_ == convLab(FL_UP_THRUST_START))
                  {
                     setStopFrame(FL_UP_THRUST_END);
                     this.uThrust = true;
                  }
                  else
                  {
                     this.uThrust = true;
                  }
               }
               else if(dwnBtn)
               {
                  this.uThrust = false;
                  if(_loc1_ != convLab(FL_DWN_THRUST_START) && _loc1_ != convLab(FL_DWN_THRUST_END))
                  {
                     this.thrustStart();
                  }
                  else if(_loc1_ == convLab(FL_DWN_THRUST_START))
                  {
                     setStopFrame(FL_DWN_THRUST_END);
                     this.dThrust = true;
                  }
                  else
                  {
                     this.dThrust = true;
                  }
               }
               else
               {
                  this.uThrust = false;
                  this.dThrust = false;
                  if(this.finishedFlip)
                  {
                     setStopFrame(FL_JUMP_END);
                  }
                  else if(lastOnGround)
                  {
                     this.flipTmr.start();
                     setStopFrame(FL_JUMP_START);
                     noAnimThisCycle = true;
                  }
               }
            }
         }
         _loc1_ = currentLabel;
         if(this.sword.visible && cState != ST_TAKE_DAMAGE && (_loc1_ == convLab(FL_ATTACK_START) || _loc1_ == convLab(FL_ATTACK_UP_START) || _loc1_ == convLab(FL_ATTACK_DOWN_START) || _loc1_ == convLab("upThrustEnd") || _loc1_ == convLab("dwnThrustEnd")))
         {
            checkAtkRect = true;
         }
         else
         {
            checkAtkRect = false;
         }
      }
      
      private function thrustStart() : void
      {
         this.flipTmr.stop();
         mainAnimTmr = this.ATK_ANIM_TMR;
         this.dThrust = false;
         this.uThrust = false;
         this.finishedFlip = true;
         this.sword.visible = true;
         if(upBtn)
         {
            setStopFrame(FL_UP_THRUST_START);
            knockBackFx.setDir(StatFxKnockBack.DIR_UP);
         }
         else if(dwnBtn)
         {
            setStopFrame(FL_DWN_THRUST_START);
            knockBackFx.setDir(StatFxKnockBack.DIR_DOWN);
         }
      }
      
      private function attackStart(param1:Boolean = false, param2:Boolean = true) : void
      {
         if(!param1 && !onGround && (upBtn || dwnBtn))
         {
            return;
         }
         this.flipTmr.stop();
         this.sword.visible = !param1;
         if(param2 && (upBtn || dwnBtn))
         {
            if(dwnBtn)
            {
               knockBackFx.setDir(StatFxKnockBack.DIR_DOWN);
               setStopFrame(FL_ATTACK_DOWN_START);
            }
            else if(upBtn)
            {
               knockBackFx.setDir(StatFxKnockBack.DIR_UP);
               setStopFrame(FL_ATTACK_UP_START);
            }
         }
         else
         {
            knockBackFx.setDir(null);
            setStopFrame(FL_ATTACK_START);
         }
         ATK_DCT.clear();
         this.setState(ST_ATTACK);
         if(cState == ST_ATTACK)
         {
            this.atkTmr.start();
            mainAnimTmr = this.ATK_ANIM_TMR;
            if(this.sword.visible)
            {
               SND_MNGR.playSound(SFX_LINK_STAB);
            }
            this.uThrust = false;
            this.dThrust = false;
         }
      }
      
      override public function hitProj(param1:Projectile) : void
      {
         super.hitProj(param1);
      }
      
      override protected function hitIsAllowed(param1:IAttackable) : Boolean
      {
         if(cState == ST_ATTACK && Boolean(ATK_DCT[param1]))
         {
            return false;
         }
         return super.hitIsAllowed(param1);
      }
      
      override public function hitPickup(param1:Pickup, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = upgradeIsActive(FIRE_FLOWER);
         var _loc4_:Boolean = upgradeIsActive(this.classicWeaponPickupType);
         super.hitPickup(param1,param2);
         var _loc5_:String = param1.mainType;
         if(_loc5_ == PickupInfo.MAIN_TYPE_UPGRADE)
         {
            switch(param1.type)
            {
               case MUSHROOM:
                  this.setSwordType();
                  this.setShieldType();
                  this.changeTunicColor();
                  this.updDrops();
                  if(!param1.destroyed)
                  {
                     param1.destroy();
                  }
                  if(GameSettings.classicMode && !_loc4_)
                  {
                     if(this.classicWeaponSubWeaponType == SW_BOMB)
                     {
                        this.setAmmo(SW_BOMB,CLASSIC_BOMB_AMMO_DEFAULT);
                     }
                     else
                     {
                        this.setAmmo(SW_BOW,CLASSIC_BOW_AMMO_DEFAULT);
                     }
                  }
                  break;
               case FIRE_FLOWER:
                  this.setSwordType();
                  this.setShieldType();
                  this.changeTunicColor();
                  if(_loc3_)
                  {
                     if(this.classicWeaponSubWeaponType == SW_BOMB)
                     {
                        increaseAmmoByValue(SW_BOMB,CLASSIC_BOMB_AMMO_DEFAULT);
                     }
                     else
                     {
                        increaseAmmoByValue(SW_BOW,CLASSIC_BOW_AMMO_DEFAULT);
                     }
                  }
                  else
                  {
                     this.updAmmoMax();
                  }
                  if(!param1.destroyed)
                  {
                     param1.destroy();
                  }
                  break;
               case LINK_BOMB:
                  this.updDrops();
                  break;
               case LINK_BOW:
                  this.updDrops();
                  break;
               case LINK_BLUE_RING:
                  this.changeTunicColor();
                  break;
               case LINK_RED_RING:
                  this.changeTunicColor();
                  this.setSwordType();
                  break;
               case LINK_MAGIC_SWORD:
                  this.setSwordType();
                  break;
               case LINK_MAGIC_SHIELD:
                  this.setShieldType();
                  break;
               case LINK_BOMB_BAG:
                  this.updAmmoMax();
                  break;
               case LINK_QUIVER:
                  this.updAmmoMax();
            }
            if(!param1.playsRegularSound && param2)
            {
               this.getUpgradeStart(param1);
            }
            this.updSubWeapons();
         }
         else if(_loc5_ == PickupInfo.MAIN_TYPE_REGULAR)
         {
            switch(param1.type)
            {
               case LINK_BOMB_AMMO:
                  increaseAmmoByValue(SW_BOMB,BOMB_AMMO_VALUE);
                  if(!upgradeIsActive(LINK_BOMB))
                  {
                     STAT_MNGR.addCharUpgrade(charNum,LINK_BOMB);
                     if(param2)
                     {
                        this.getUpgradeStart(param1);
                     }
                  }
                  else
                  {
                     if(param2)
                     {
                        SND_MNGR.playSound(SN_GET_HEART);
                     }
                     param1.destroy();
                  }
                  break;
               case LINK_ARROW_AMMO:
                  increaseAmmoByValue(SW_BOW,ARROW_AMMO_VALUE);
                  if(param2)
                  {
                     SND_MNGR.playSound(SN_GET_HEART);
                  }
            }
         }
      }
      
      override public function revivalBoost() : void
      {
         super.revivalBoost();
         this.hitPickup(new Pickup(LINK_BOMB_AMMO),false);
         this.hitPickup(new Pickup(LINK_BOMB_AMMO),false);
         this.hitPickup(new Pickup(LINK_ARROW_AMMO),false);
         this.hitPickup(new Pickup(LINK_ARROW_AMMO),false);
      }
      
      override protected function getUpgradeStart(param1:Pickup) : void
      {
         if(this.pickupCurrentlyLifting != null)
         {
            this.getUpgradeEnd();
         }
         if(cState == ST_TAKE_DAMAGE)
         {
            this.takeDamageEnd();
         }
         setDamageInfoArr();
         this.setState(ST_GET_UPGRADE);
         setStopFrame(FL_RAISE_ARMS);
         param1.nx = nx;
         param1.ny = ny - height;
         param1.stopHit = true;
         this.pickupCurrentlyLifting = param1;
         freezeGame();
         SND_MNGR.playSound(SN_GET_ITEM);
      }
      
      override protected function getUpgradeEnd() : void
      {
         getDataFromDamageInfoArr();
         this.pickupCurrentlyLifting.destroy();
         this.pickupCurrentlyLifting = null;
      }
      
      override public function groundOnSide(param1:Ground, param2:String) : void
      {
         super.groundOnSide(param1,param2);
         if(cState == ST_TAKE_DAMAGE)
         {
            if(this.damageBoostDir < 0 && param2 == Ground.HT_LEFT || this.damageBoostDir > 0 && param2 == Ground.HT_RIGHT)
            {
               this.takeDamageEnd();
            }
         }
      }
      
      override public function hitEnemy(param1:Enemy, param2:String) : void
      {
         if(GS_MNGR.gameState != GS_PLAY || param1.cState == ST_DIE)
         {
            return;
         }
         if(!(starPwr || param1 is KoopaGreen && (KoopaGreen(param1).cState == "shell" || KoopaGreen(param1).NO_HIT_SHELL_TMR.running)))
         {
            if(param2 == "bottom" && this.dThrust && !nonInteractive || param2 == "top" && this.uThrust && !nonInteractive)
            {
               C_HIT_DCT.clear();
               L_HIT_DCT.clear();
               landAttack(param1);
            }
            else if(param2 == "bottom" && param1.stompable && canStomp && !nonInteractive)
            {
               bounce(param1);
            }
            else if(!takeNoDamage)
            {
               takeDamage(param1);
            }
         }
      }
      
      override protected function attackObjPiercing(param1:IAttackable) : void
      {
         super.attackObjPiercing(param1);
         if(cState == ST_ATTACK)
         {
            ATK_DCT.addItem(param1);
         }
         if(param1 is Enemy)
         {
            SND_MNGR.playSound(SFX_LINK_HIT_ENEMY);
         }
         if(this.dThrust)
         {
            if(param1 is Enemy)
            {
               bounce(param1 as Enemy);
            }
            else
            {
               vy = -bouncePwr;
               jumped = true;
               if(param1 is Ground)
               {
                  if(ny > Ground(param1).hTop)
                  {
                     ny = Ground(param1).hTop;
                  }
                  setHitPoints();
               }
            }
         }
         else if(this.uThrust && vy < 0)
         {
            vy = 0;
         }
      }
      
      override protected function attackObjNonPiercing(param1:IAttackable) : void
      {
         super.attackObjPiercing(param1);
         if(this.dThrust)
         {
            if(param1 is Enemy)
            {
               bounce(param1 as Enemy);
            }
            else
            {
               vy = -bouncePwr;
               jumped = true;
               if(param1 is Ground)
               {
                  if(ny > Ground(param1).hTop)
                  {
                     ny = Ground(param1).hTop;
                  }
                  setHitPoints();
               }
            }
         }
         else if(this.uThrust && vy < 0)
         {
            vy = 0;
         }
         SND_MNGR.playSound(SoundNames.SFX_LINK_HIT_ENEMY_ARMOR);
      }
      
      override public function pressJmpBtn() : void
      {
         if(cState == ST_VINE)
         {
            return;
         }
         if(onGround)
         {
            if(cState != ST_ATTACK)
            {
               this.jump();
            }
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
      
      override public function pressSpcBtn() : void
      {
         var _loc1_:LinkBoomerang = null;
         if(cState == ST_VINE || cState == ST_ATTACK)
         {
            return;
         }
         super.pressSpcBtn();
         if(this.curSubWeaponName == SW_BOOMERANG || !upgradeIsActive(LINK_BOMB) && !upgradeIsActive(LINK_BOW))
         {
            if(level.PLAYER_PROJ_DCT.length == 0 || level.PLAYER_PROJ_DCT.length == 1 && !this.boomerang)
            {
               _loc1_ = new LinkBoomerang(this);
               level.addToLevel(_loc1_);
               this.attackStart(true,false);
            }
         }
         else if(this.curSubWeaponName == SW_BOW)
         {
            this.shootArrowIfPossible();
         }
         else if(this.curSubWeaponName == SW_BOMB)
         {
            this.setBombIfPossible();
         }
      }
      
      private function shootArrowIfPossible() : void
      {
         if(!upgradeIsActive(LINK_BOW) || !hasEnoughAmmo(SW_BOW) || cState == ST_VINE || cState == ST_ATTACK)
         {
            return;
         }
         level.addToLevel(new LinkProjectile(this,LinkProjectile.TYPE_ARROW));
         decAmmo(SW_BOW);
         this.attackStart(true);
      }
      
      private function setBombIfPossible() : void
      {
         if(!upgradeIsActive(LINK_BOMB) || !hasEnoughAmmo(SW_BOMB) || this.numProjectilesOfType(LinkProjectile.TYPE_BOMB) >= MAX_BOMBS_ON_SCREEN || cState == ST_VINE || cState == ST_ATTACK)
         {
            return;
         }
         level.addToLevel(new LinkProjectile(this,LinkProjectile.TYPE_BOMB));
         decAmmo(SW_BOMB);
         this.attackStart(true,false);
      }
      
      private function numProjectilesOfType(param1:String) : int
      {
         var _loc2_:int = 0;
         var _loc3_:Projectile = null;
         var _loc4_:LinkProjectile = null;
         for each(_loc3_ in level.PLAYER_PROJ_DCT)
         {
            if(_loc3_ is LinkProjectile)
            {
               _loc4_ = _loc3_ as LinkProjectile;
               if(_loc4_.type == param1)
               {
                  _loc2_++;
               }
            }
         }
         return _loc2_;
      }
      
      override public function pressSelBtn() : void
      {
         super.pressSelBtn();
         if(GameSettings.classicMode)
         {
            if(this.classicWeaponSubWeaponType == SW_BOMB)
            {
               this.setBombIfPossible();
            }
            else
            {
               this.shootArrowIfPossible();
            }
         }
         else
         {
            this.updSubWeapons(true);
         }
      }
      
      override public function pressAtkBtn() : void
      {
         if(cState == ST_VINE || cState == ST_ATTACK)
         {
            return;
         }
         super.pressAtkBtn();
         this.attackStart();
         if(!onGround && (upBtn || dwnBtn))
         {
            this.checkAddShootingSword();
         }
      }
      
      private function atkTmrLsr(param1:TimerEvent) : void
      {
         var _loc2_:String = currentFrameLabel;
         this.atkTmr.reset();
         this.checkAddShootingSword();
         ATK_DCT.clear();
         if(_loc2_ == convLab(FL_ATTACK_START))
         {
            setPlayFrame(FL_ATTACK_2);
         }
         else if(_loc2_ == convLab(FL_ATTACK_UP_START))
         {
            setPlayFrame(FL_ATTACK_UP_2);
         }
         else if(_loc2_ == convLab(FL_ATTACK_DOWN_START))
         {
            setPlayFrame(FL_ATTACK_DOWN_2);
         }
         if(currentLabel == FL_ATTACK_DOWN_2)
         {
            this.shield.setStopFrame(FL_SHIELD_FRONT);
         }
      }
      
      private function checkAddShootingSword() : void
      {
         if(this.canShootSword && this.sword.visible && upgradeIsActive(LINK_RED_RING))
         {
            level.addToLevel(new LinkProjectile(this,LinkProjectile.TYPE_SHOOTING_SWORD));
         }
      }
      
      override protected function takeDamageEnd() : void
      {
         disableInput = false;
         nonInteractive = false;
         this.setState(ST_NEUTRAL);
         noDamageTmr.start();
         BTN_MNGR.sendPlayerBtns();
         this.checkState();
      }
      
      override protected function noDamageTmrLsr(param1:TimerEvent) : void
      {
         super.noDamageTmrLsr(param1);
         if(!starPwr)
         {
            endReplaceColor();
         }
      }
      
      override public function resetColor(param1:Boolean = false) : void
      {
         super.resetColor(param1);
         this.shield.resetColor(param1);
      }
      
      override protected function takeDamageStart(param1:LevObj) : void
      {
         if(this.pickupCurrentlyLifting != null)
         {
            this.getUpgradeEnd();
         }
         super.takeDamageStart(param1);
         this.updDrops();
         if(Boolean(this.flipTmr) && this.flipTmr.running)
         {
            this.flipTmr.stop();
         }
         takeNoDamage = true;
         disableInput = true;
         nonInteractive = true;
         this.dThrust = false;
         this.uThrust = false;
         this.setState(ST_TAKE_DAMAGE);
         if(currentLabel != FL_STAND)
         {
            setStopFrame(FL_WALK);
         }
         else
         {
            stopAnim = true;
         }
         startReplaceColor();
         this.damageBoostDir = 1;
         if(param1.nx > nx)
         {
            this.damageBoostDir = -1;
         }
         vx = DAMAGE_BOOST_SPEED * this.damageBoostDir;
         SND_MNGR.playSound(SN_TAKE_DAMAGE);
         scaleX = -this.damageBoostDir;
         this.damageBoostEndX = nx + DAMAGE_BOOST_DIST * this.damageBoostDir;
         BTN_MNGR.relPlyrBtns();
         if(this.takeDamageTmr)
         {
            this.takeDamageTmr.stop();
         }
         else
         {
            this.takeDamageTmr = new GameLoopTimer(this.TAKE_DAMAGE_TMR_DUR,1);
            this.takeDamageTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.takeDamageTmrHandler,false,0,true);
         }
         this.takeDamageTmr.start();
      }
      
      protected function takeDamageTmrHandler(param1:Event) : void
      {
         this.takeDamageTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.takeDamageTmrHandler);
         this.takeDamageTmr = null;
         if(cState == ST_TAKE_DAMAGE)
         {
            this.takeDamageEnd();
         }
      }
      
      override protected function startAndDamageFcts(param1:Boolean = false) : void
      {
         super.startAndDamageFcts(param1);
         if(!param1)
         {
            this.changeTunicColor();
         }
         this.setSwordType();
         this.setShieldType();
         this.updSubWeapons();
         this.updAmmoMax();
         this.updDrops();
      }
      
      private function updAmmoMax() : void
      {
         if(upgradeIsActive(LINK_BOMB_BAG))
         {
            setMaxAmmo(SW_BOMB,AMMO_BOMBS_MAX_BOMB_BAG);
         }
         else
         {
            setMaxAmmo(SW_BOMB,AMMO_BOMBS_MAX_DEF);
         }
         if(upgradeIsActive(LINK_QUIVER))
         {
            setMaxAmmo(SW_BOW,AMMO_ARROWS_MAX_QUIVER);
         }
         else
         {
            setMaxAmmo(SW_BOW,AMMO_ARROWS_MAX_DEF);
         }
      }
      
      private function updDrops() : void
      {
         if(GameSettings.classicMode)
         {
            if(upgradeIsActive(LINK_BOMB))
            {
               dropArr = DROP_ARR_BOMBS;
            }
            else if(upgradeIsActive(LINK_BOW))
            {
               dropArr = DROP_ARR_ARROWS;
            }
            else
            {
               dropArr = [];
            }
         }
         else if(upgradeIsActive(LINK_BOW))
         {
            dropArr = DROP_ARR_BOTH;
         }
         else
         {
            dropArr = DROP_ARR_BOMBS;
         }
      }
      
      override protected function initiateNormalDeath(param1:LevObj = null) : void
      {
         super.initiateNormalDeath(param1);
         checkFrameDuringStopAnim = true;
         stopUpdate = true;
         stopHit = true;
         stopAnim = true;
         this.changeTunicColor(PAL_ROW_GREEN_TUNIC);
         setStopFrame("dieFlash-1");
         mainAnimTmr = this.DEATH_ANIMATION_TIMER;
         scaleX = 1;
      }
      
      override protected function initiatePitDeath() : void
      {
         _dieTmrDel = DIE_TMR_DEL_PIT;
         super.initiatePitDeath();
         SND_MNGR.playSound(SFX_LINK_DIE);
      }
      
      override public function slideDownFlagPole() : void
      {
         super.slideDownFlagPole();
         nx = level.flagPole.hMidX;
         setPlayFrame("climbStart");
      }
      
      override public function stopFlagPoleSlide() : void
      {
         super.stopFlagPoleSlide();
         if(onGround)
         {
            setStopFrame(FL_STAND);
            this.setState(ST_STAND);
         }
         else
         {
            setStopFrame(FL_JUMP_START);
            this.setState(ST_JUMP);
         }
      }
      
      override public function chooseCharacter() : void
      {
         super.chooseCharacter();
         cancelCheckState = true;
         setStopFrame(FL_RAISE_ARMS);
      }
      
      override public function fallenCharSelScrn() : void
      {
         super.fallenCharSelScrn();
         cancelCheckState = true;
         setStopFrame(FL_DIE_DWN);
      }
      
      override public function animate(param1:ICustomTimer) : Boolean
      {
         var _loc2_:Boolean = false;
         if(!dead)
         {
            _loc2_ = super.animate(param1);
         }
         else if(param1 == mainAnimTmr && !stopAnim && !lockFrame)
         {
            ANIMATOR.animate(this);
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override public function checkFrame() : void
      {
         var _loc3_:String = null;
         var _loc4_:Vector.<Bitmap> = null;
         var _loc5_:GraphicsManager = null;
         var _loc6_:Bitmap = null;
         var _loc7_:BitmapData = null;
         var _loc1_:int = currentFrame;
         var _loc2_:String = currentFrameLabel;
         if((cState == ST_WALK || cState == ST_PIPE) && previousFrameLabelIs(this.WALK_END_LAB))
         {
            setPlayFrame(this.WALK_START_LAB);
         }
         else if(cState == ST_TAKE_DAMAGE && _loc1_ == getLabNum("takeDamageEnd") + 1)
         {
            setPlayFrame("takeDamageStart");
         }
         else if(!onGround && previousFrameLabelIs(FL_JUMP_END))
         {
            gotoAndStop(FL_JUMP_START);
         }
         else if(cState == ST_ATTACK)
         {
            if(_loc2_ == convLab(FL_ATTACK_END_GROUND) && !onGround)
            {
               setPlayFrame(FL_ATTACK_END_JUMP);
            }
            else if(previousFrameLabelIs(FL_ATTACK_END_GROUND) || previousFrameLabelIs(FL_ATTACK_UP_END) || previousFrameLabelIs(FL_ATTACK_DOWN_END))
            {
               this.setState(ST_STAND);
               if(onGround)
               {
                  setStopFrame(FL_STAND);
               }
               else if(upBtn || dwnBtn)
               {
                  this.thrustStart();
               }
               else
               {
                  this.finishedFlip = true;
                  setStopFrame(FL_JUMP_END);
               }
            }
            else if(previousFrameLabelIs(FL_ATTACK_END_JUMP))
            {
               this.setState(ST_JUMP);
               this.finishedFlip = true;
               setStopFrame(FL_JUMP_END);
            }
         }
         else if(cState == "flagSlide" || cState == "vine")
         {
            if(_loc1_ == getLabNum("climbEnd") + 1)
            {
               setPlayFrame("climbStart");
            }
         }
         else if(cState == "die" && !fellInPit)
         {
            _loc3_ = currentLabel;
            if(this.deathPhase == "flash")
            {
               if(_loc3_ == convLab("dieFlash-1"))
               {
                  setStopFrame("dieFlash-2");
               }
               else
               {
                  setStopFrame("dieFlash-1");
               }
               ++this.frameCtr;
               if(this.frameCtr > this.NUM_FLASH_FRAMES)
               {
                  this.frameCtr = 0;
                  setStopFrame(FL_DIE_DWN);
                  this.deathPhase = "wait";
               }
            }
            else if(this.deathPhase == "wait")
            {
               ++this.frameCtr;
               if(this.frameCtr == this.NUM_WAIT_FRAMES)
               {
                  this.frameCtr = 0;
                  this.deathPhase = "spin";
                  SND_MNGR.playSound(SFX_LINK_DIE);
               }
            }
            else if(this.deathPhase == "spin")
            {
               if(_loc3_ == convLab("dieDwn"))
               {
                  setStopFrame("dieRht");
               }
               else if(_loc3_ == convLab("dieRht"))
               {
                  setStopFrame("dieUp");
               }
               else if(_loc3_ == convLab("dieUp"))
               {
                  setStopFrame("dieLft");
               }
               else if(_loc3_ == convLab("dieLft"))
               {
                  setStopFrame("dieDwn");
                  ++this.spinCtr;
               }
               if(this.spinCtr == this.NUM_SPINS)
               {
                  this.deathPhase = "gray";
                  if(GameSettings.getCharacterPaletteLimited() == 0)
                  {
                     _loc4_ = getBmpsFromFrame();
                     _loc5_ = GraphicsManager.INSTANCE;
                     for each(_loc6_ in _loc4_)
                     {
                        _loc7_ = _loc6_.bitmapData.clone();
                        _loc6_.bitmapData = _loc7_;
                        _loc5_.recolorSingleBitmap(_loc7_,defColors,paletteMain,this.palRow,PAL_ROW_BLACK_AND_WHITE);
                     }
                  }
               }
            }
            else if(this.deathPhase == "gray")
            {
               ++this.frameCtr;
               if(this.frameCtr > this.NUM_GRAY_FRAMES)
               {
                  this.frameCtr = 0;
                  this.resetColor();
                  setPlayFrame("dieCross-1");
                  this.deathPhase = "cross";
                  SND_MNGR.playSound(SoundNames.SFX_LINK_SHOOT_ARROW);
               }
            }
            else if(this.deathPhase == "cross")
            {
               if(currentFrame == getLabNum("dieCross-2") + 1)
               {
                  visible = false;
                  EVENT_MNGR.startDieTmr(DIE_TMR_DEL_NORMAL);
               }
            }
         }
         super.checkFrame();
      }
      
      override protected function getAllDroppedUpgrades() : void
      {
         this.hitPickup(new LinkPickup(LINK_BOMB),false);
      }
      
      override public function finalCheck() : void
      {
         super.finalCheck();
         var _loc1_:String = currentLabel;
         var _loc2_:Function = convLab;
         var _loc3_:Function = this.shield.setStopFrame;
         if(cState != ST_ATTACK)
         {
            _loc3_(FL_SHIELD_SIDE);
         }
         if(_loc1_ == FL_ATTACK_DOWN_START || _loc1_ == FL_DWN_THRUST_END)
         {
            _loc3_(FL_SHIELD_DOWN);
         }
         else if(_loc1_ == FL_ATTACK_DOWN_2)
         {
            _loc3_(FL_SHIELD_FRONT);
         }
         else if(_loc1_ == FL_ATTACK_UP_START || _loc1_ == FL_UP_THRUST_END)
         {
            _loc3_(FL_SHIELD_UP);
         }
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         if(Boolean(this.atkTmr) && this.atkTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.atkTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.atkTmrLsr);
         }
         this.flipTmr.removeEventListener(TimerEvent.TIMER,this.flipTmrHandler);
      }
      
      override protected function reattachLsrs() : void
      {
         super.reattachLsrs();
         if(Boolean(this.atkTmr) && !this.atkTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.atkTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.atkTmrLsr);
         }
         if(this.takeDamageTmr)
         {
            this.takeDamageTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.takeDamageTmrHandler);
         }
         this.flipTmr.addEventListener(TimerEvent.TIMER,this.flipTmrHandler,false,0,true);
      }
      
      override public function destroy() : void
      {
         if(level)
         {
            level.LEV_OBJ_FINAL_CHECK.removeItem(this);
         }
         super.destroy();
      }
      
      override public function cleanUp() : void
      {
         super.cleanUp();
         if(fellInPit)
         {
            this.changeTunicColor();
         }
         tsTxt.UpdAmmoIcon(false);
         tsTxt.UpdAmmoText(false);
      }
      
      override protected function playDefaultPickupSoundEffect() : void
      {
         SND_MNGR.playSound(SoundNames.SFX_LINK_GET_ITEM);
      }
   }
}
