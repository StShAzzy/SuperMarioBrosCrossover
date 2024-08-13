package com.smbc.characters
{
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.CharacterInfo;
   import com.smbc.data.GameSettings;
   import com.smbc.data.MovieClipInfo;
   import com.smbc.data.PaletteTypes;
   import com.smbc.data.PickupInfo;
   import com.smbc.data.SoundNames;
   import com.smbc.enums.BillWeapon;
   import com.smbc.graphics.BillLegs;
   import com.smbc.graphics.BillTorso;
   import com.smbc.graphics.Palette;
   import com.smbc.interfaces.ICustomTimer;
   import com.smbc.main.LevObj;
   import com.smbc.pickups.Pickup;
   import com.smbc.pickups.PipeTransporter;
   import com.smbc.projectiles.*;
   import com.smbc.utils.GameLoopTimer;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   
   public class Bill extends Character
   {
      
      public static const CHAR_NAME:String = CharacterInfo.Bill[CharacterInfo.IND_CHAR_NAME];
      
      public static const CHAR_NAME_CAPS:String = CharacterInfo.Bill[CharacterInfo.IND_CHAR_NAME_CAPS];
      
      public static const CHAR_NAME_TEXT:String = CharacterInfo.Bill[CharacterInfo.IND_CHAR_NAME_MENUS];
      
      public static const CHAR_NUM:int = CharacterInfo.Bill[CharacterInfo.IND_CHAR_NUM];
      
      public static const WIN_SONG_DUR:int = 3730;
      
      public static const CHAR_SEL_END_DUR:int = 1950;
      
      public static const PAL_ORDER_ARR:Array = [PaletteTypes.FLASH_POWERING_UP];
      
      public static const IND_CI_Bill:int = 1;
      
      public static const IND_CI_BillWeaponUpgrade:int = 6;
      
      protected static const BILL_FLARE:String = PickupInfo.BILL_FLARE;
      
      protected static const BILL_LASER:String = PickupInfo.BILL_LASER;
      
      protected static const BILL_MACHINE:String = PickupInfo.BILL_MACHINE;
      
      protected static const BILL_RAPID_1:String = PickupInfo.BILL_RAPID_1;
      
      protected static const BILL_RAPID_2:String = PickupInfo.BILL_RAPID_2;
      
      protected static const BILL_SPREAD:String = PickupInfo.BILL_SPREAD;
      
      private static const SWAPPED_STRING:String = BILL_RAPID_1;
      
      public static const OBTAINABLE_UPGRADES_ARR:Array = [[BILL_LASER,BILL_FLARE,BILL_MACHINE,BILL_SPREAD]];
      
      public static const MUSHROOM_UPGRADES:Array = [];
      
      public static const NEVER_LOSE_UPGRADES:Array = [BILL_RAPID_1,BILL_RAPID_2];
      
      public static const START_WITH_UPGRADES:Array = [];
      
      public static const RESTORABLE_UPGRADES:Array = [];
      
      public static const SINGLE_UPGRADES_ARR:Array = [BILL_LASER,BILL_FLARE,BILL_MACHINE,BILL_SPREAD];
      
      public static const REPLACEABLE_UPGRADES_ARR:Array = [[BILL_LASER,BILL_RAPID_1],[BILL_FLARE,BILL_RAPID_1],[BILL_MACHINE,BILL_RAPID_1],[BILL_SPREAD,BILL_RAPID_1],[BILL_RAPID_1,BILL_RAPID_2]];
      
      public static const ICON_ORDER_ARR:Array = [BILL_RAPID_1,BILL_RAPID_2,BILL_LASER,BILL_FLARE,BILL_MACHINE,BILL_SPREAD];
      
      public static const TITLE_SCREEN_UPGRADES:Array = [];
      
      public static const SKIN_PREVIEW_SIZE:Point = new Point(35,38);
      
      private static const MAIN_FRAMES_ARR:Array = ["main"];
      
      private static const STR_SHOOT:String = "Shoot";
      
      private static const FL_DIE_END:String = "dieEnd";
      
      private static const FL_ELECTROCUTE_START:String = "electrocuteStart";
      
      private static const FL_ELECTROCUTE_END:String = "electrocuteEnd";
      
      public static const SFX_BILL_DIE:String = SoundNames.SFX_BILL_DIE;
      
      public static const SFX_BILL_LAND:String = SoundNames.SFX_BILL_LAND;
      
      private static const SN_GET_ITEM:String = SoundNames.SFX_BILL_GET_ITEM;
      
      private static const NUM_FLARE_SHOTS_ALLOWED:int = 3 * 2;
      
      public static const SKIN_BILL_NES:int = 0;
      
      public static const SKIN_BILL_SNES:int = 1;
      
      public static const SKIN_BILL_GB:int = 2;
      
      public static const SKIN_LANCE_NES:int = 3;
      
      public static const SKIN_LANCE_SNES:int = 4;
      
      public static const SKIN_LANCE_GB:int = 5;
      
      public static const SKIN_RD_008_NES:int = 6;
      
      public static const SKIN_RC_011_NES:int = 7;
      
      public static const SKIN_BILL_16_BIT:int = 8;
      
      public static const SKIN_LANCE_16_BIT:int = 9;
      
      public static const SKIN_BILL_ATARI:int = 10;
      
      public static const SKIN_BILL_X1:int = 11;
      
      public static const SKIN_RD_008_GB:int = 12;
      
      public static const SKIN_RC_011_GB:int = 13;
      
      public static const SKIN_LANCE_ATARI:int = 14;
      
      public static const SKIN_BILL_SUPER_C:int = 15;
      
      public static const SKIN_LANCE_SUPER_C:int = 16;
      
      public static const SKIN_LANCE_X1:int = 17;
      
      public static const SKIN_ORDER:Array = [SKIN_BILL_NES,SKIN_BILL_SUPER_C,SKIN_BILL_SNES,SKIN_BILL_16_BIT,SKIN_BILL_GB,SKIN_BILL_X1,SKIN_BILL_ATARI,SKIN_LANCE_NES,SKIN_LANCE_SUPER_C,SKIN_LANCE_SNES,SKIN_LANCE_16_BIT,SKIN_LANCE_GB,SKIN_LANCE_X1,SKIN_LANCE_ATARI,SKIN_RD_008_NES,SKIN_RD_008_GB,SKIN_RC_011_NES,SKIN_RC_011_GB];
      
      public static const SPECIAL_SKIN_NUMBER:int = SKIN_BILL_X1;
      
      public static const ATARI_SKIN_NUMBER:int = SKIN_BILL_ATARI;
      
      private static const ELECTROCUTE_TMR_DEL:int = 25;
      
      private static const NO_DAMAGE_TMR_DEL:int = 2000;
       
      
      private const ANIM_TMR_FOR_GROUND:CustomTimer = AnimationTimers.ANIM_VERY_SLOW_TMR;
      
      private const ANIM_TMR_FOR_FLIPPING:CustomTimer = AnimationTimers.ANIM_MODERATE_TMR;
      
      private const SECONDS_LEFT_SND:String = SoundNames.SFX_BILL_SECONDS_LEFT;
      
      private const SND_MUSIC_WIN:String = SoundNames.MFX_BILL_WIN;
      
      private var mGunTmr:CustomTimer;
      
      private var mGunTmrDur:int = 110;
      
      private const DIE_BOOST:int = 300;
      
      private const DIE_TMR_DEL_NORMAL:int = 1500;
      
      private const DIE_TMR_DEL_NORMAL_MAX:int = 6000;
      
      private const DIE_TMR_DEL_PIT:int = 2500;
      
      private var doneDying:Boolean;
      
      public var legs:BillLegs;
      
      private var _torso:BillTorso;
      
      private var _torsoDefY:Number;
      
      private var _torsoDwnY:Number;
      
      private const CROUCH_DEF_Y:int = 0;
      
      private const CROUCH_DWN_Y:int = 2;
      
      public var torsoDown:Boolean;
      
      private const WALK_SPEED:int = 150;
      
      private const MAX_NORMAL_BULLETS:int = 4;
      
      private const MAX_MACHINE_GUN_BULLETS:int = 6;
      
      private const MAX_SPREAD_BULLETS:int = 10;
      
      private const TORSO_Y_DIF_MOVING:int = 1;
      
      private const TD_TMR_DUR:int = 60;
      
      public const TD_TMR:CustomTimer = new CustomTimer(this.TD_TMR_DUR,1);
      
      private const SHOOT_TMR:CustomTimer = new CustomTimer(250,1);
      
      private var numMchShotsCtr:int;
      
      private const MAX_M_SHOTS_BEFORE_DELAY:int = 6;
      
      private const M_GUN_MAX_DEL_TMR:CustomTimer = new CustomTimer(50,1);
      
      private const TORSO_Y_DIF:int = 2;
      
      private const REPL_COLOR_1_1:uint = 4279843211;
      
      private const REPL_COLOR_2_1:uint = 4294457344;
      
      private const REPL_COLOR_3_1:uint = 4294954694;
      
      private const REPL_COLOR_1_2:uint = 4278212856;
      
      private const REPL_COLOR_2_2:uint = 4294457344;
      
      private const REPL_COLOR_3_2:uint = 4294954694;
      
      private const REPL_COLOR_1_3:uint = 4294901760;
      
      private const REPL_COLOR_2_3:uint = 4294457344;
      
      private const REPL_COLOR_3_3:uint = 4294954694;
      
      private const WALK_START_LAB:String = null;
      
      private const WALK_END_LAB:String = null;
      
      private var electrocuteTmr:GameLoopTimer;
      
      public function Bill()
      {
         charNum = CHAR_NUM;
         super();
         _charName = CHAR_NAME;
         _charNameTxt = CHAR_NAME_TEXT;
         _charNameCaps = CHAR_NAME_CAPS;
         _secondsLeftSnd = this.SECONDS_LEFT_SND;
         _sndWinMusic = this.SND_MUSIC_WIN;
         _dieTmrDel = this.DIE_TMR_DEL_NORMAL;
         winSongDur = WIN_SONG_DUR;
         _usesHorzObjs = true;
         _usesVertObjs = true;
         canGetMushroom = false;
         walkStartLab = this.WALK_START_LAB;
         walkEndLab = this.WALK_END_LAB;
         mainAnimTmr = this.ANIM_TMR_FOR_GROUND;
         ACTIVE_ANIM_TMRS_DCT.addItem(this.ANIM_TMR_FOR_FLIPPING);
         this._torsoDefY = this._torso.y;
         this._torsoDwnY = this._torso.y + this.TORSO_Y_DIF;
      }
      
      override public function get classicGetMushroomUpgrades() : Vector.<String>
      {
         return Vector.<String>([this.classicMushroomWeapon]);
      }
      
      override public function get classicGetFireFlowerUpgrades() : Vector.<String>
      {
         return Vector.<String>([this.classicFireFlowerWeapon]);
      }
      
      private function get classicMushroomWeapon() : String
      {
         return this.getClassicWeapon(GameSettings.billFirstWeapon);
      }
      
      private function get classicFireFlowerWeapon() : String
      {
         return this.getClassicWeapon(GameSettings.billSecondWeapon);
      }
      
      private function getClassicWeapon(param1:BillWeapon) : String
      {
         switch(param1)
         {
            case BillWeapon.Flare:
               return PickupInfo.BILL_FLARE;
            case BillWeapon.Laser:
               return PickupInfo.BILL_LASER;
            case BillWeapon.MachineGun:
               return PickupInfo.BILL_MACHINE;
            case BillWeapon.Spread:
               return PickupInfo.BILL_SPREAD;
            default:
               return PickupInfo.BILL_MACHINE;
         }
      }
      
      override protected function setObjsToRemoveFromFrames() : void
      {
         super.setObjsToRemoveFromFrames();
         removeObjsFromFrames(Bitmap,MAIN_FRAMES_ARR);
         removeObjsFromFrames(this._torso,MAIN_FRAMES_ARR,true);
         removeObjsFromFrames(this.legs,MAIN_FRAMES_ARR,true);
      }
      
      override protected function mcReplacePrep(param1:MovieClip) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:MovieClip = null;
         var _loc5_:DisplayObject = null;
         var _loc6_:MovieClip = null;
         var _loc7_:int = 0;
         this.legs = new BillLegs(this,new MovieClipInfo.BillLegsMc());
         this._torso = new BillTorso(this,new MovieClipInfo.BillTorsoMc());
         var _loc4_:int = 0;
         while(_loc4_ < param1.numChildren)
         {
            _loc5_ = param1.getChildAt(_loc4_);
            if(_loc5_ is MovieClip)
            {
               _loc6_ = _loc5_ as MovieClip;
               if((_loc7_ = _loc6_.totalFrames) == this.legs.totalFrames)
               {
                  _loc2_ = _loc6_;
               }
               else if(_loc7_ == this._torso.totalFrames)
               {
                  _loc3_ = _loc6_;
               }
            }
            _loc4_++;
         }
         mcReplaceArr = [_loc2_,this.legs,_loc3_,this._torso];
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
         jumpPwr = 550;
         gravity = 1000;
         if(level.waterLevel)
         {
            defGravity = gravity;
            gravity = 500;
            defGravityWater = gravity;
         }
         defSpringPwr = 400;
         boostSpringPwr = 800;
         vyMaxPsv = 600;
         xSpeed = this.WALK_SPEED;
         vxMax = xSpeed;
         numParFrames = 3;
         pState2 = true;
         super.setStats();
         vineAnimTmr = AnimationTimers.ANIM_SLOWEST_TMR;
         setStopFrame("main");
         this.torso.setStopFrame("normal");
         this.legs.setStopFrame("stand");
         setState("stand");
         this.TD_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.tdTmrHandler,false,0,true);
         addTmr(this.TD_TMR);
         this.SHOOT_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.shootTmrHandler,false,0,true);
         addTmr(this.SHOOT_TMR);
         this.M_GUN_MAX_DEL_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.mGunMaxDelTmrHandler,false,0,true);
         addTmr(this.M_GUN_MAX_DEL_TMR);
         noDamageTmr.delay = NO_DAMAGE_TMR_DEL;
      }
      
      override protected function startAndDamageFcts(param1:Boolean = false) : void
      {
         super.startAndDamageFcts(param1);
      }
      
      override public function forceWaterStats() : void
      {
         defGravity = gravity;
         gravity = 500;
         defGravityWater = gravity;
         super.forceWaterStats();
      }
      
      override public function forceNonwaterStats() : void
      {
         gravity = 1000;
         super.forceNonwaterStats();
      }
      
      override protected function movePlayer() : void
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
               getOffVine();
            }
            vx = xSpeed;
            this.scaleX = 1;
         }
         else if(lftBtn && !rhtBtn && !wallOnLeft)
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
               getOffVine();
            }
            vx = -xSpeed;
            this.scaleX = -1;
         }
         else if(lftBtn && rhtBtn)
         {
            vx = 0;
         }
         else if(onGround && !lftBtn && !rhtBtn)
         {
            vx = 0;
         }
      }
      
      override protected function checkState() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         if(!this.TD_TMR.running && !freezeGameTmr.running)
         {
            this.torso.y = this.torsoDefY;
            this.torsoDown = false;
         }
         if(cState == "vine")
         {
            mainAnimTmr = vineAnimTmr;
            checkVineBtns();
            checkVinePosition();
            return;
         }
         if(onGround)
         {
            mainAnimTmr = this.ANIM_TMR_FOR_GROUND;
            jumped = false;
            if(!lftBtn && !rhtBtn)
            {
               if(upBtn)
               {
                  setState("stand");
                  if(this.TD_TMR.running)
                  {
                     this._torso.setStopFrame("upShoot");
                  }
                  else
                  {
                     this._torso.setStopFrame("up");
                  }
                  this.legs.setStopFrame("stand");
                  setStopFrame("main");
               }
               else if(dwnBtn)
               {
                  if(cState != "crouch" && this.TD_TMR.running)
                  {
                     this.TD_TMR.reset();
                  }
                  setState("crouch");
                  if(this.TD_TMR.running)
                  {
                     setStopFrame("crouch" + STR_SHOOT);
                  }
                  else
                  {
                     setStopFrame("crouch");
                  }
               }
               else
               {
                  setState("stand");
                  if(this.TD_TMR.running)
                  {
                     this._torso.setStopFrame("normalShoot");
                  }
                  else
                  {
                     this._torso.setStopFrame("normal");
                  }
                  this.legs.setStopFrame("stand");
                  setStopFrame("main");
               }
            }
            else if(cState != "walk")
            {
               setStopFrame("main");
               setState("walk");
               this.legs.setPlayFrame("walk-1");
               if(upBtn)
               {
                  this._torso.setStopFrame("diagUp");
               }
               else if(dwnBtn)
               {
                  this._torso.setStopFrame("diagDwn");
               }
               else if(this.SHOOT_TMR.running)
               {
                  this._torso.setStopFrame("normal");
               }
               else
               {
                  this._torso.setPlayFrame("walk-1");
               }
            }
            else
            {
               if(upBtn)
               {
                  this._torso.setStopFrame("diagUp");
               }
               else if(dwnBtn)
               {
                  this._torso.setStopFrame("diagDwn");
               }
               else if(this.SHOOT_TMR.running)
               {
                  this._torso.setStopFrame("normal");
               }
               else
               {
                  _loc1_ = this._torso.currentLabel;
                  if(_loc1_ == "diagUp" || _loc1_ == "diagDwn" || _loc1_ == "normal")
                  {
                     _loc2_ = this.legs.currentLabel;
                     _loc3_ = _loc2_.charAt(_loc2_.indexOf("-") + 1);
                     this._torso.setPlayFrame("walk-" + _loc3_);
                  }
               }
               if(this.TD_TMR.running)
               {
                  this._torso.gotoAndStop(this.torso.currentLabel + STR_SHOOT);
               }
            }
         }
         else
         {
            mainAnimTmr = this.ANIM_TMR_FOR_FLIPPING;
            if(cState != "jump" && jumped)
            {
               setPlayFrame("jumpStart");
               setState("jump");
            }
            else if(!jumped)
            {
               setStopFrame("main");
               setState("jump");
               this._torso.setStopFrame("fall");
               this.legs.setStopFrame("fall");
            }
         }
      }
      
      override public function hitPickup(param1:Pickup, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = upgradeIsActive(FIRE_FLOWER);
         super.hitPickup(param1,param2);
         if(param1.type == FIRE_FLOWER)
         {
            if(!_loc3_)
            {
               this.attacksAreSwapped = false;
            }
         }
         if(!param1.playsRegularSound && param1.mainType != PickupInfo.MAIN_TYPE_FAKE && param2)
         {
            SND_MNGR.playSound(SN_GET_ITEM);
         }
      }
      
      private function get attacksAreSwapped() : Boolean
      {
         if(!GameSettings.classicMode || !upgradeIsActive(FIRE_FLOWER))
         {
            return false;
         }
         return STAT_MNGR.getSubWeapon(charNum) == SWAPPED_STRING;
      }
      
      private function set attacksAreSwapped(param1:Boolean) : void
      {
         if(param1)
         {
            STAT_MNGR.setSubWeapon(charNum,SWAPPED_STRING);
         }
         else
         {
            STAT_MNGR.setSubWeapon(charNum,null);
         }
         this.stopMachineGun();
      }
      
      public function get primaryAttack() : String
      {
         if(GameSettings.classicMode)
         {
            if(upgradeIsActive(FIRE_FLOWER))
            {
               if(this.attacksAreSwapped)
               {
                  return this.classicMushroomWeapon;
               }
               return this.classicFireFlowerWeapon;
            }
            if(upgradeIsActive(MUSHROOM))
            {
               return this.classicMushroomWeapon;
            }
            return null;
         }
         return this.getBulletTypeFromUpgrades();
      }
      
      private function get secondaryAttack() : String
      {
         if(!upgradeIsActive(FIRE_FLOWER))
         {
            return null;
         }
         if(this.attacksAreSwapped)
         {
            return this.classicFireFlowerWeapon;
         }
         return this.classicMushroomWeapon;
      }
      
      private function hideBodySets() : void
      {
         this._torso.visible = false;
         this.legs.visible = false;
         showBmps = true;
      }
      
      private function showBodySets() : void
      {
         this._torso.visible = true;
         this.legs.visible = true;
         showBmps = false;
      }
      
      override public function pressJmpBtn() : void
      {
         if(cState == ST_VINE)
         {
            return;
         }
         if(onGround)
         {
            onGround = false;
            vy = -jumpPwr;
            setPlayFrame("jumpStart");
            setState(ST_JUMP);
            lState = ST_STAND;
            jumped = true;
         }
         super.pressJmpBtn();
      }
      
      override public function pressAtkBtn() : void
      {
         if(cState == ST_VINE)
         {
            return;
         }
         super.pressAtkBtn();
         this.createBulletIfPossible(this.primaryAttack);
      }
      
      override public function pressSpcBtn() : void
      {
         if(cState == ST_VINE)
         {
            return;
         }
         super.pressSpcBtn();
         if(this.secondaryAttack != null)
         {
            this.createBulletIfPossible(this.secondaryAttack);
         }
      }
      
      override public function pressSelBtn() : void
      {
         super.pressSelBtn();
         if(GameSettings.classicMode)
         {
            this.attacksAreSwapped = !this.attacksAreSwapped;
         }
      }
      
      private function getBulletTypeFromUpgrades() : String
      {
         if(upgradeIsActive(BILL_MACHINE))
         {
            return BILL_MACHINE;
         }
         if(upgradeIsActive(BILL_SPREAD))
         {
            return BILL_SPREAD;
         }
         if(upgradeIsActive(BILL_LASER))
         {
            return BILL_LASER;
         }
         if(upgradeIsActive(BILL_FLARE))
         {
            return BILL_FLARE;
         }
         return null;
      }
      
      private function createBulletIfPossible(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:BillBullet = null;
         var _loc4_:BillBullet = null;
         var _loc5_:BillBullet = null;
         var _loc6_:BillBullet = null;
         var _loc7_:BillBullet = null;
         if(param1 == BILL_MACHINE)
         {
            if(level.PLAYER_PROJ_DCT.length < this.MAX_MACHINE_GUN_BULLETS)
            {
               this.shoot();
               level.addToLevel(new BillBullet(this,BillBullet.TYPE_MACHINE));
            }
            this.startMachineGun();
         }
         else if(param1 == BILL_SPREAD)
         {
            if(level.PLAYER_PROJ_DCT.length >= this.MAX_SPREAD_BULLETS)
            {
               return;
            }
            _loc2_ = BillBullet.TYPE_SPREAD;
            this.shoot();
            _loc3_ = new BillBullet(this,_loc2_);
            _loc4_ = new BillBullet(this,_loc2_);
            _loc5_ = new BillBullet(this,_loc2_);
            _loc6_ = new BillBullet(this,_loc2_);
            _loc7_ = new BillBullet(this,_loc2_);
            if(level.PLAYER_PROJ_DCT.length <= 5)
            {
               _loc3_.setSpread(0);
               level.addToLevel(_loc3_);
               _loc4_.setSpread(1);
               level.addToLevel(_loc4_);
               _loc5_.setSpread(-1);
               level.addToLevel(_loc5_);
               _loc6_.setSpread(-2);
               level.addToLevel(_loc6_);
               _loc7_.setSpread(2);
               level.addToLevel(_loc7_);
            }
            else if(level.PLAYER_PROJ_DCT.length == 6)
            {
               _loc3_.setSpread(0);
               level.addToLevel(_loc3_);
               _loc4_.setSpread(1);
               level.addToLevel(_loc4_);
               _loc5_.setSpread(-1);
               level.addToLevel(_loc5_);
               _loc6_.setSpread(-2);
               level.addToLevel(_loc6_);
            }
            else if(level.PLAYER_PROJ_DCT.length == 7)
            {
               _loc3_.setSpread(0);
               level.addToLevel(_loc3_);
               _loc4_.setSpread(1);
               level.addToLevel(_loc4_);
               _loc5_.setSpread(-1);
               level.addToLevel(_loc5_);
            }
            else if(level.PLAYER_PROJ_DCT.length == 8)
            {
               _loc3_.setSpread(0);
               level.addToLevel(_loc3_);
               _loc4_.setSpread(1);
               level.addToLevel(_loc4_);
            }
            else if(level.PLAYER_PROJ_DCT.length == 9)
            {
               _loc3_.setSpread(0);
               level.addToLevel(_loc3_);
            }
         }
         else if(param1 == BILL_LASER)
         {
            this.shoot();
            BillBullet.createLaser(this);
         }
         else if(param1 == BILL_FLARE)
         {
            if(level.PLAYER_PROJ_DCT.length < NUM_FLARE_SHOTS_ALLOWED)
            {
               this.shoot();
               level.addToLevel(new BillBullet(this,BillBullet.TYPE_FLARE));
            }
         }
         else if(level.PLAYER_PROJ_DCT.length < this.MAX_NORMAL_BULLETS)
         {
            this.shoot();
            level.addToLevel(new BillBullet(this,BillBullet.TYPE_NORMAL));
         }
      }
      
      private function shoot() : void
      {
         if(onGround)
         {
            if(cState != "crouch")
            {
               this.TD_TMR.reset();
               this.TD_TMR.start();
               this.moveTorsoDown();
               if(!(upBtn || dwnBtn))
               {
                  this.torso.setStopFrame("normal");
               }
            }
            else
            {
               this.TD_TMR.reset();
               this.TD_TMR.start();
            }
         }
         this.SHOOT_TMR.reset();
         this.SHOOT_TMR.start();
      }
      
      private function shootTmrHandler(param1:TimerEvent) : void
      {
         this.SHOOT_TMR.reset();
      }
      
      private function tdTmrHandler(param1:TimerEvent) : void
      {
         this.moveTorsoUp();
      }
      
      public function moveTorsoDown() : void
      {
         if(currentLabel == "main")
         {
            this._torso.gotoAndStop(this._torso.currentLabel + STR_SHOOT);
         }
         else if(currentLabel == "crouch")
         {
            gotoAndStop(currentLabel + STR_SHOOT);
         }
         this.torso.y = this.torsoDefY;
         this.torsoDown = true;
      }
      
      public function moveTorsoUp(param1:Boolean = true) : void
      {
         var _loc2_:int = 0;
         if(this.torsoDown && !param1)
         {
            return;
         }
         if(currentLabel == "main")
         {
            _loc2_ = int(this._torso.currentLabel.indexOf(STR_SHOOT));
            this._torso.gotoAndStop(this._torso.currentLabel.substring(0,_loc2_));
         }
         else if(currentLabel == "crouchShoot")
         {
            gotoAndStop("crouch");
         }
         this.torsoDown = false;
      }
      
      override public function relAtkBtn() : void
      {
         super.relAtkBtn();
         if(this.secondaryAttack == null || this.primaryAttack == BILL_MACHINE)
         {
            this.stopMachineGun();
         }
      }
      
      override public function relSpcBtn() : void
      {
         super.relSpcBtn();
         if(this.secondaryAttack == BILL_MACHINE)
         {
            this.stopMachineGun();
         }
      }
      
      private function stopMachineGun() : void
      {
         if(this.mGunTmr != null)
         {
            this.mGunTmr.reset();
            this.mGunTmr.removeEventListener(TimerEvent.TIMER,this.mGunTmrLsr);
         }
         if(!this.M_GUN_MAX_DEL_TMR.running)
         {
            this.numMchShotsCtr = 0;
         }
      }
      
      private function startMachineGun() : void
      {
         if(this.mGunTmr == null)
         {
            this.mGunTmr = new CustomTimer(this.mGunTmrDur);
            addTmr(this.mGunTmr);
         }
         this.mGunTmr.addEventListener(TimerEvent.TIMER,this.mGunTmrLsr);
         this.mGunTmr.start();
      }
      
      private function mGunTmrLsr(param1:TimerEvent) : void
      {
         if(GameSettings.classicMode)
         {
            if(!upgradeIsActive(MUSHROOM) || this.secondaryAttack == null && this.classicMushroomWeapon != BILL_MACHINE)
            {
               this.stopMachineGun();
               return;
            }
         }
         else if(!upgradeIsActive(BILL_MACHINE))
         {
            this.stopMachineGun();
            return;
         }
         if(level.PLAYER_PROJ_DCT.length < this.MAX_MACHINE_GUN_BULLETS)
         {
            if(this.numMchShotsCtr < this.MAX_M_SHOTS_BEFORE_DELAY)
            {
               level.addToLevel(new BillBullet(this,BillBullet.TYPE_MACHINE));
               this.shoot();
               ++this.numMchShotsCtr;
            }
            else if(!this.M_GUN_MAX_DEL_TMR.running)
            {
               this.M_GUN_MAX_DEL_TMR.reset();
               this.M_GUN_MAX_DEL_TMR.start();
            }
         }
         else
         {
            this.numMchShotsCtr = 0;
            if(!this.M_GUN_MAX_DEL_TMR.running)
            {
               this.M_GUN_MAX_DEL_TMR.stop();
            }
         }
      }
      
      override protected function getMushroom() : void
      {
         super.getMushroom();
         this.legs.hitFrameLabel = this.legs.currentLabel;
         this.torso.hitStopAnim = this.torso.stopAnim;
         this.legs.hitStopAnim = this.legs.stopAnim;
         this.torso.stopAnim = true;
         this.legs.stopAnim = true;
      }
      
      override protected function getMushroomEnd() : void
      {
         super.getMushroomEnd();
         var _loc1_:String = this.legs.hitFrameLabel;
         var _loc2_:String = _loc1_.substr(0,_loc1_.length - 2);
         this.legs.setStopFrame(_loc2_);
         this.torso.stopAnim = this.torso.hitStopAnim;
         this.legs.stopAnim = this.legs.hitStopAnim;
         this.relAtkBtn();
      }
      
      override protected function takeDamage(param1:LevObj) : void
      {
         super.takeDamage(param1);
         if(!GameSettings.classicMode && !takeNoDamage)
         {
            die(param1);
         }
         this.stopMachineGun();
      }
      
      override protected function takeDamageStart(param1:LevObj) : void
      {
         super.takeDamageStart(param1);
         SND_MNGR.playSound(SoundNames.SFX_BILL_ELECTRECUTE);
         setDamageInfoArr();
         startReplaceColor();
         stopAnim = true;
         setState(ST_TAKE_DAMAGE);
         lockState = true;
         alpha = TD_ALPHA;
         this.torso.hitStopAnim = this.torso.stopAnim;
         this.legs.hitStopAnim = this.legs.stopAnim;
         this.torso.stopAnim = true;
         this.legs.stopAnim = true;
         freezeGame();
      }
      
      override protected function noDamageTmrLsr(param1:TimerEvent) : void
      {
         super.noDamageTmrLsr(param1);
         if(!starPwr)
         {
            this.endReplaceColor();
         }
      }
      
      override protected function takeDamageEnd() : void
      {
         super.takeDamageEnd();
         setState(ST_NEUTRAL);
         this.torso.stopAnim = this.torso.hitStopAnim;
         this.legs.stopAnim = this.legs.hitStopAnim;
         this.relAtkBtn();
      }
      
      private function mGunMaxDelTmrHandler(param1:TimerEvent) : void
      {
         this.numMchShotsCtr = 0;
      }
      
      override protected function landOnGround() : void
      {
         super.landOnGround();
         if(cState != "flagSlide" && !onSpring)
         {
            SND_MNGR.playSound(SFX_BILL_LAND);
         }
         if(cState == ST_DIE)
         {
            EVENT_MNGR.startDieTmr(this.DIE_TMR_DEL_NORMAL);
         }
      }
      
      override public function slideDownFlagPole() : void
      {
         super.slideDownFlagPole();
         nx = level.flagPole.hMidX;
         setStopFrame("slide");
      }
      
      override public function stopFlagPoleSlide() : void
      {
         super.stopFlagPoleSlide();
         if(onGround)
         {
            setState(ST_STAND);
         }
         else
         {
            setPlayFrame("jumpStart");
            setState("jump");
            jumped = true;
         }
      }
      
      override protected function flagDelayTmrLsr(param1:TimerEvent) : void
      {
         super.flagDelayTmrLsr(param1);
         if(onGround)
         {
            setState("walk");
            setStopFrame("main");
            this.torso.setPlayFrame("walk-1");
            this.legs.setPlayFrame("walk-1");
         }
      }
      
      override protected function initiateNormalDeath(param1:LevObj = null) : void
      {
         super.initiateNormalDeath(param1);
         var _loc2_:int = 1;
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
         vx = xSpeed * _loc2_;
         scaleX = -_loc2_;
         vy = -this.DIE_BOOST;
         this.relAtkBtn();
         onGround = false;
         setPlayFrame("dieStart");
         lockFrame = true;
         SND_MNGR.playSound(SFX_BILL_DIE);
         EVENT_MNGR.startDieTmr(this.DIE_TMR_DEL_NORMAL_MAX);
      }
      
      override protected function enterPipeVert() : void
      {
         super.enterPipeVert();
         setStopFrame("main");
         this.torso.setStopFrame("normal");
         this.legs.setStopFrame("stand");
      }
      
      override public function exitPipeVert(param1:PipeTransporter) : void
      {
         super.exitPipeVert(param1);
         setStopFrame("main");
         this.torso.setStopFrame("normal");
         this.legs.setStopFrame("stand");
      }
      
      override protected function enterPipeHorz() : void
      {
         if(cState != "walk")
         {
            setState("walk");
            setStopFrame("main");
            this.legs.setPlayFrame("walk-1");
            this.torso.setPlayFrame("walk-1");
         }
         super.enterPipeHorz();
      }
      
      override protected function initiatePitDeath() : void
      {
         if(fellInPit)
         {
            SND_MNGR.playSound(SFX_BILL_DIE);
            _dieTmrDel = this.DIE_TMR_DEL_PIT;
         }
         else
         {
            _dieTmrDel = this.DIE_TMR_DEL_NORMAL;
         }
         this.relAtkBtn();
         super.initiatePitDeath();
      }
      
      override public function drawObj() : void
      {
         super.drawObj();
         if(this.legs.currentLabel == this.legs.convLab(this.legs.TORSO_DWN_FRM) && !this.TD_TMR.running)
         {
            this.torso.y = this.torsoDwnY;
         }
         else
         {
            this.torso.y = this.torsoDefY;
         }
      }
      
      override protected function swapPs() : void
      {
         super.swapPs();
         var _loc1_:String = this.legs.currentLabel;
         var _loc2_:String = _loc1_.substr(0,_loc1_.length - 2);
         this.legs.setStopFrame(_loc2_);
      }
      
      override public function manualChangePwrState() : void
      {
         this.legs.hitStopAnim = this.legs.stopAnim;
         this.legs.hitFrameLabel = this.legs.currentLabel;
         super.manualChangePwrState();
         var _loc1_:String = this.legs.hitFrameLabel;
         var _loc2_:String = _loc1_.substr(0,_loc1_.length - 2);
         this.legs.setStopFrame(_loc2_);
         this.legs.stopAnim = this.legs.hitStopAnim;
      }
      
      override public function animate(param1:ICustomTimer) : Boolean
      {
         var _loc2_:Boolean = false;
         if(cState != "die")
         {
            _loc2_ = super.animate(param1);
            if(param1 == mainAnimTmr)
            {
               this._torso.animate(param1);
               this.legs.animate(param1);
            }
         }
         else if(!this.doneDying)
         {
            lockFrame = false;
            stopAnim = false;
            _loc2_ = super.animate(param1);
            if(param1 == mainAnimTmr)
            {
               this._torso.animate(param1);
               this.legs.animate(param1);
            }
            lockFrame = true;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      override public function chooseCharacter() : void
      {
         super.chooseCharacter();
         SND_MNGR.playSound(SoundNames.SFX_BILL_ELECTRECUTE);
         cancelCheckState = true;
         gotoAndStop(FL_ELECTROCUTE_START);
         starPwr = true;
         flashAnimTmr = STAR_PWR_FLASH_ANIM_TMR;
         startReplaceColor();
      }
      
      override public function fallenCharSelScrn() : void
      {
         super.fallenCharSelScrn();
         cancelCheckState = true;
         setStopFrame(FL_DIE_END);
      }
      
      override public function recolorBmps(param1:Palette, param2:Palette, param3:int = 0, param4:int = 0, param5:Palette = null) : void
      {
         super.recolorBmps(param1,param2,param3,param4);
         this.torso.recolorBmps(param1,param2,param3,param4,defColors);
         this.legs.recolorBmps(param1,param2,param3,param4,defColors);
      }
      
      override protected function endReplaceColor() : void
      {
         super.endReplaceColor();
         this.legs.resetColor();
         this.torso.resetColor();
      }
      
      protected function electrocuteTmrHandler(param1:TimerEvent) : void
      {
         if(currentLabel == FL_ELECTROCUTE_START)
         {
            gotoAndStop(FL_ELECTROCUTE_END);
         }
         else if(currentLabel == FL_ELECTROCUTE_END)
         {
            gotoAndStop(FL_ELECTROCUTE_START);
         }
      }
      
      override public function checkFrame() : void
      {
         var _loc1_:int = currentFrame;
         if(cState == "jump" && _loc1_ == getLabNum("jumpEnd") + 1)
         {
            setPlayFrame("jumpStart");
         }
         else if(cState == "vine")
         {
            if(_loc1_ == getLabNum("climbEnd") + 1)
            {
               setPlayFrame("climbStart");
            }
         }
         else if(cState == "die" && _loc1_ == getLabNum("dieEnd") + 1)
         {
            lockFrame = false;
            setStopFrame("dieEnd");
            lockFrame = true;
            this.doneDying = true;
         }
         super.checkFrame();
      }
      
      override protected function addAllPowerups() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < 7)
         {
            hitRandomUpgrade(charNum,false);
            _loc1_++;
         }
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         if(Boolean(this.mGunTmr) && this.mGunTmr.hasEventListener(TimerEvent.TIMER))
         {
            this.mGunTmr.removeEventListener(TimerEvent.TIMER,this.mGunTmrLsr);
         }
         this.TD_TMR.removeEventListener(TimerEvent.TIMER_COMPLETE,this.tdTmrHandler);
         this.SHOOT_TMR.removeEventListener(TimerEvent.TIMER_COMPLETE,this.shootTmrHandler);
         this.M_GUN_MAX_DEL_TMR.removeEventListener(TimerEvent.TIMER_COMPLETE,this.mGunMaxDelTmrHandler);
         if(this.electrocuteTmr)
         {
            this.electrocuteTmr.removeEventListener(TimerEvent.TIMER,this.electrocuteTmrHandler);
         }
      }
      
      override protected function reattachLsrs() : void
      {
         super.reattachLsrs();
         if(Boolean(this.mGunTmr) && !this.mGunTmr.hasEventListener(TimerEvent.TIMER))
         {
            this.mGunTmr.addEventListener(TimerEvent.TIMER,this.mGunTmrLsr);
         }
         this.TD_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.tdTmrHandler,false,0,true);
         this.SHOOT_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.shootTmrHandler,false,0,true);
         this.M_GUN_MAX_DEL_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.mGunMaxDelTmrHandler,false,0,true);
      }
      
      public function get torsoDefY() : Number
      {
         return this._torsoDefY;
      }
      
      public function get torsoDwnY() : Number
      {
         return this._torsoDwnY;
      }
      
      public function get torso() : BillTorso
      {
         return this._torso;
      }
      
      override protected function prepareDrawCharacter(param1:int = -1) : void
      {
         this.endReplaceColor();
         this._torso.setStopFrame("normal");
         this.legs.setStopFrame("stand");
         setStopFrame("main");
         drawFrameLabel = null;
         super.prepareDrawCharacter(param1);
      }
      
      public function getOfsCharInd() : int
      {
         if(skinNum == 2 || skinNum == 5 || skinNum == 12 || skinNum == 13)
         {
            return BillBullet.OFS_CHAR_GB_IND;
         }
         return BillBullet.OFS_CHAR_DEF_IND;
      }
      
      override protected function playDefaultPickupSoundEffect() : void
      {
         SND_MNGR.playSound(SoundNames.SFX_BILL_GET_ITEM);
      }
   }
}
