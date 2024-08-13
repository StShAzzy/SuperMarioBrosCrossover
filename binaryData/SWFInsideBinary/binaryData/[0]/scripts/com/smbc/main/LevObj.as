package com.smbc.main
{
   import com.explodingRabbit.cross.data.EffectReasons;
   import com.explodingRabbit.cross.gameplay.statusEffects.StatFxStop;
   import com.explodingRabbit.cross.gameplay.statusEffects.StatusEffect;
   import com.explodingRabbit.cross.gameplay.statusEffects.StatusProperty;
   import com.explodingRabbit.utils.CustomDictionary;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.SuperMarioBrosCrossover;
   import com.smbc.characters.Character;
   import com.smbc.data.GameStates;
   import com.smbc.data.HitTestTypes;
   import com.smbc.events.CustomEvents;
   import com.smbc.interfaces.IAnimated;
   import com.smbc.interfaces.ICustomTimer;
   import com.smbc.interfaces.IHitTestable;
   import com.smbc.interfaces.IInitiater;
   import com.smbc.level.Level;
   import com.smbc.managers.EventManager;
   import com.smbc.managers.GameStateManager;
   import com.smbc.managers.ScreenManager;
   import com.smbc.managers.SoundManager;
   import com.smbc.managers.StatManager;
   import com.smbc.projectiles.Projectile;
   import com.smbc.utils.GameLoopTimer;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   
   public class LevObj extends SkinObj implements IInitiater, IHitTestable, IAnimated
   {
      
      protected static var player:Character;
      
      protected static const PR_PASSTHROUGH_ALWAYS:String = StatusProperty.TYPE_PASS_THROUGH_ALWAYS_AGG;
      
      protected static const PR_PASSTHROUGH_DEFEAT:String = StatusProperty.TYPE_PASS_THROUGH_DEFEAT_AGG;
      
      protected static const PR_PIERCE_AGG:String = StatusProperty.TYPE_PIERCE_AGG;
      
      protected static const PR_PIERCE_PAS:String = StatusProperty.TYPE_PIERCE_PAS;
      
      protected static const PR_FLASH_AGG:String = StatusProperty.TYPE_FLASH_AGG;
      
      protected static const PR_DAMAGES_PLAYER_AGG:String = StatusProperty.TYPE_DAMAGES_PLAYER_AGG;
      
      protected static const PR_INVULNERABLE_AGG:String = StatusProperty.TYPE_INVULNERABLE_AGG;
      
      protected static const PR_STOP_AGG:String = StatusProperty.TYPE_STOP_AGG;
      
      protected static const PR_STOP_PAS:String = StatusProperty.TYPE_STOP_PAS;
      
      protected static const PR_FREEZE_PAS:String = StatusProperty.TYPE_FREEZE_PAS;
      
      protected static const PR_UNFREEZE_AGG:String = StatusProperty.TYPE_UNFREEZE_AGG;
      
      protected static const PR_FREEZE_AGG:String = StatusProperty.TYPE_FREEZE_AGG;
      
      protected static const PR_TYPE_SUPER_ARM_GRABBABLE_PAS:String = StatusProperty.TYPE_SUPER_ARM_GRABBABLE_PAS;
      
      protected static const PR_STOP_ALL_ENEMIES_ACTIVE_AGG:String = StatusProperty.TYPE_STOP_ALL_ENEMIES_ACTIVE_AGG;
      
      private static const PROP_ORDER_REFERENCE:Vector.<String> = StatusProperty.PROP_ORDER;
      
      protected static const RSN_NONSPECIFIC:String = EffectReasons.NONSPECIFIC;
      
      protected static const RSN_OVERRIDE:String = EffectReasons.OVERRIDE;
      
      protected static const STATFX_FLASH:String = StatusEffect.TYPE_FLASH;
      
      protected static const STATFX_FREEZE:String = StatusEffect.TYPE_FREEZE;
      
      protected static const STATFX_KNOCK_BACK:String = StatusEffect.TYPE_KNOCK_BACK;
      
      protected static const STATFX_STOP:String = StatusEffect.TYPE_STOP;
      
      protected static const STATFX_INVULNERABLE:String = StatusEffect.TYPE_INVULNERABLE;
      
      public static const PIERCE_STR_ARMORED:int = 5;
      
      public static const PIERCE_STR_ARMOR_PIERCING:int = 6;
      
      protected static const GS_PLAY:String = GameStates.PLAY;
      
      protected static const GS_WATCH:String = GameStates.WATCH;
      
      public static const ST_DIE:String = "die";
      
      public static const NAME_STOP_UPDATE:String = "updStopUpdate";
      
      public static const NAME_STOP_ANIM:String = "updStopAnim";
      
      public static const NAME_STOP_TIMERS:String = "updStopTimers";
      
      protected static const HT_CHARACTER:String = HitTestTypes.CHARACTER;
      
      protected static const HT_ENEMY:String = HitTestTypes.ENEMY;
      
      protected static const HT_PROJECTILE_ENEMY:String = HitTestTypes.PROJECTILE_ENEMY;
      
      protected static const HT_PROJECTILE_CHARACTER:String = HitTestTypes.PROJECTILE_CHARACTER;
      
      protected static const HT_PICKUP:String = HitTestTypes.PICKUP;
      
      protected static const HT_GROUND_NON_BRICK:String = HitTestTypes.GROUND_NON_BRICK;
      
      protected static const HT_BRICK:String = HitTestTypes.BRICK;
      
      protected static const HT_PLATFORM:String = HitTestTypes.PLATFORM;
       
      
      public var level:Level;
      
      protected var game:SuperMarioBrosCrossover;
      
      protected const GLOB_STG_TOP:int = 0;
      
      protected const GLOB_STG_BOT:int = 480;
      
      protected const GLOB_STG_RHT:int = 512;
      
      protected const GLOB_STG_LFT:int = 0;
      
      protected const ZERO_PT:Point = this.level.ZERO_PT;
      
      protected const TILE_SIZE:int = 32;
      
      protected const SCRN_MNGR:ScreenManager = ScreenManager.SCRN_MNGR;
      
      protected const GS_MNGR:GameStateManager = GameStateManager.GS_MNGR;
      
      protected const SND_MNGR:SoundManager = SoundManager.SND_MNGR;
      
      protected const STAT_MNGR:StatManager = StatManager.STAT_MNGR;
      
      protected const EVENT_MNGR:EventManager = EventManager.EVENT_MNGR;
      
      public var areaRect:Sprite;
      
      public var bmp:Bitmap;
      
      public var hTop:Number;
      
      public var hBot:Number;
      
      public var hLft:Number;
      
      public var hRht:Number;
      
      public var hMidX:Number;
      
      public var hMidY:Number;
      
      public var hHeight:Number;
      
      public var hWidth:Number;
      
      public var lhTop:Number;
      
      public var lhBot:Number;
      
      public var lhLft:Number;
      
      public var lhRht:Number;
      
      public var lhMidX:Number;
      
      public var lhMidY:Number;
      
      public var lhHeight:Number;
      
      public var lhWidth:Number;
      
      public var stuckInWall:Boolean;
      
      public var xPenAmt:Number;
      
      public var yPenAmt:Number;
      
      public var vx:Number = 0;
      
      public var vy:Number = 0;
      
      protected var locStgTop:Number;
      
      protected var locStgRht:Number;
      
      protected var locStgLft:Number;
      
      protected var locStgBot:Number;
      
      protected const TMR_DCT:CustomDictionary = new CustomDictionary(true);
      
      protected const P_TMR_DCT:CustomDictionary = new CustomDictionary(true);
      
      protected var fLabVec:Vector.<FrameLabel>;
      
      protected var dt:Number = 0.05;
      
      public var globX:Number;
      
      public var globY:Number;
      
      public var lState:String;
      
      public var cState:String;
      
      public var lockState:Boolean;
      
      public var cHeight:Number;
      
      public var cWidth:Number;
      
      public var nx:Number;
      
      public var ny:Number;
      
      public var lx:Number;
      
      public var ly:Number;
      
      private var reasonOvRdObj:Object;
      
      public var stopUpdate:Boolean;
      
      public var stopHit:Boolean;
      
      public var onScreen:Boolean;
      
      public var destroyed:Boolean;
      
      public var destroyOffScreen:Boolean;
      
      public var dosLft:Boolean;
      
      public var dosRht:Boolean;
      
      public var dosTop:Boolean;
      
      public var dosBot:Boolean;
      
      public var hitDistOver:int;
      
      public var updateOffScreen:Boolean;
      
      public var hitTestAgainstNonGroundDct:CustomDictionary;
      
      public var hitTestAgainstGroundDct:CustomDictionary;
      
      public var hitTestTypesDct:CustomDictionary;
      
      public var propsDct:Dictionary;
      
      private const propAggOrderVec:Vector.<StatusProperty> = new Vector.<StatusProperty>();
      
      private const statusEffectsDct:Dictionary = new Dictionary();
      
      private var unappliedStatFxs:Vector.<StatusEffect>;
      
      protected var clearHitsAfterTime:int;
      
      public var hitDct:CustomDictionary;
      
      public function LevObj()
      {
         this.level = GlobVars.level;
         this.game = this.level.GAME;
         this.locStgTop = this.level.locStgTop;
         this.locStgRht = this.level.locStgRht;
         this.locStgLft = this.level.locStgLft;
         this.locStgBot = this.level.locStgBot;
         this.fLabVec = new Vector.<FrameLabel>();
         this.reasonOvRdObj = new Object();
         this.hitTestAgainstNonGroundDct = new CustomDictionary();
         this.hitTestAgainstGroundDct = new CustomDictionary();
         this.hitTestTypesDct = new CustomDictionary();
         this.propsDct = new Dictionary();
         this.hitDct = new CustomDictionary(true);
         super();
         if(!player)
         {
            player = GlobVars.level.player;
         }
         this.removeAllStatusEffects();
         if(this.areaRect)
         {
            this.areaRect.visible = false;
         }
         stop();
         addEventListener(Event.REMOVED_FROM_STAGE,this.removedLsr);
         this.EVENT_MNGR.addEventListener(CustomEvents.STOP_ALL_ENEMIES_PROP_ACTIVATE,this.stopAllEnemiesPropActivateHandler,false,0,true);
         this.EVENT_MNGR.addEventListener(CustomEvents.STOP_ALL_ENEMIES_PROP_DEACTIVATE,this.stopAllEnemiesPropDeactivateHandler,false,0,true);
      }
      
      public static function updPlayerRef(param1:Character) : void
      {
         player = param1;
      }
      
      protected function stopAllEnemiesPropActivateHandler(param1:Event) : void
      {
         var _loc2_:StatusProperty = null;
         if(Boolean(this.hitTestTypesDct[HT_ENEMY]) || Boolean(this.hitTestTypesDct[HT_PROJECTILE_ENEMY]))
         {
            _loc2_ = player.getProperty(PR_STOP_ALL_ENEMIES_ACTIVE_AGG);
            if(this.isSusceptibleToProperty(_loc2_))
            {
               this.addStatusEffect(new StatFxStop(this));
            }
         }
      }
      
      protected function stopAllEnemiesPropDeactivateHandler(param1:Event) : void
      {
         var _loc2_:StatusProperty = null;
         if(Boolean(this.hitTestTypesDct[HT_ENEMY]) || Boolean(this.hitTestTypesDct[HT_PROJECTILE_ENEMY]))
         {
            _loc2_ = player.getProperty(PR_STOP_ALL_ENEMIES_ACTIVE_AGG);
            if(this.isSusceptibleToProperty(_loc2_))
            {
               this.removeStatusEffect(StatusEffect.TYPE_STOP);
            }
         }
      }
      
      override public function initiate() : void
      {
         var _loc1_:StatusProperty = null;
         super.initiate();
         this.fLabVec = Vector.<FrameLabel>(currentLabels);
         this.lx = this.x;
         this.ly = this.y;
         this.nx = this.lx;
         this.ny = this.ly;
         if(accurateAnimTmr)
         {
            if(accurateAnimTmr is CustomTimer)
            {
               mainAnimTmr = accurateAnimTmr as CustomTimer;
               this.addTmr(accurateAnimTmr);
            }
            accurateAnimTmr.addEventListener(TimerEvent.TIMER,this.accurateAnimTmrHandler,false,0,true);
            accurateAnimTmr.start();
         }
         else if(mainAnimTmr)
         {
            ACTIVE_ANIM_TMRS_DCT.addItem(mainAnimTmr);
         }
         if(Boolean(flashTmr) && flashTmr is CustomTimer)
         {
            this.addTmr(flashTmr);
         }
         if(parent != this.level)
         {
            this.level.addChild(this);
         }
         setUpCommonPalettes();
         if(player)
         {
            _loc1_ = player.getProperty(PR_STOP_ALL_ENEMIES_ACTIVE_AGG);
            if(Boolean(_loc1_) && this.isSusceptibleToProperty(_loc1_))
            {
               this.stopAllEnemiesPropActivateHandler(null);
            }
         }
      }
      
      private function updStopAnim() : void
      {
         var _loc1_:CustomDictionary = this.getReasonOvRds(NAME_STOP_ANIM,true);
         if(Boolean(_loc1_) && Boolean(_loc1_.length))
         {
            stopAnim = true;
         }
         else
         {
            stopAnim = false;
         }
      }
      
      protected function updStopUpdate() : void
      {
         var _loc1_:CustomDictionary = this.getReasonOvRds(NAME_STOP_UPDATE,true);
         if(Boolean(_loc1_) && Boolean(_loc1_.length))
         {
            this.stopUpdate = true;
         }
         else
         {
            this.stopUpdate = false;
         }
      }
      
      private function updStopTimers() : void
      {
         var _loc1_:CustomDictionary = this.getReasonOvRds(NAME_STOP_TIMERS,true);
         if(Boolean(_loc1_) && Boolean(_loc1_.length))
         {
            this.stopTimers();
         }
         else
         {
            this.resumeTimers();
         }
      }
      
      protected function updStopStatusEffect(param1:Boolean) : void
      {
         if(param1)
         {
            this.addReasonOvRd(NAME_STOP_ANIM,true,PR_STOP_ALL_ENEMIES_ACTIVE_AGG);
            this.addReasonOvRd(NAME_STOP_UPDATE,true,PR_STOP_ALL_ENEMIES_ACTIVE_AGG);
            this.addReasonOvRd(NAME_STOP_TIMERS,true,PR_STOP_ALL_ENEMIES_ACTIVE_AGG);
         }
         else
         {
            this.removeReasonOvRd(NAME_STOP_ANIM,true,PR_STOP_ALL_ENEMIES_ACTIVE_AGG);
            this.removeReasonOvRd(NAME_STOP_UPDATE,true,PR_STOP_ALL_ENEMIES_ACTIVE_AGG);
            this.removeReasonOvRd(NAME_STOP_TIMERS,true,PR_STOP_ALL_ENEMIES_ACTIVE_AGG);
         }
      }
      
      protected function accurateAnimTmrHandler(param1:TimerEvent) : void
      {
         if(animate(accurateAnimTmr))
         {
            checkFrame();
         }
      }
      
      override public function gotoAndStop(param1:Object, param2:String = null) : void
      {
         if(this.getStatusEffect(STATFX_FLASH))
         {
            resetColor();
            super.gotoAndStop(param1,param2);
            flash(false);
         }
         else
         {
            super.gotoAndStop(param1,param2);
         }
      }
      
      override protected function addedToStageHandler(param1:Event) : void
      {
         var _loc2_:int = 0;
         super.addedToStageHandler(param1);
         this.onScreen = true;
         if(this.P_TMR_DCT)
         {
            this.resumeTimers();
         }
      }
      
      protected function removedLsr(param1:Event) : void
      {
         this.onScreen = false;
         if(this.destroyOffScreen)
         {
            this.destroy();
         }
         if(!this.destroyed && (this.dosTop || this.dosBot || this.dosLft || this.dosRht))
         {
            this.checkDosSides();
         }
         if(this.TMR_DCT)
         {
            this.stopTimers();
         }
      }
      
      protected function checkDosSides() : void
      {
      }
      
      public function updateObj() : void
      {
         this.dt = this.level.dt;
         this.lx = this.x;
         this.ly = this.y;
         this.nx = this.lx;
         this.ny = this.ly;
         this.locStgTop = this.level.locStgTop;
         this.locStgLft = this.level.locStgLft;
         this.locStgBot = this.level.locStgBot;
         this.locStgRht = this.level.locStgRht;
      }
      
      public function drawObj() : void
      {
         this.x = this.nx;
         this.y = this.ny;
         this.globX = localToGlobal(this.ZERO_PT).x;
         this.globY = localToGlobal(this.ZERO_PT).y;
         if(!(this is Character))
         {
            this.checkLoc();
         }
      }
      
      public function setState(param1:String) : void
      {
         if(!this.lockState)
         {
            this.lState = this.cState;
            this.cState = param1;
         }
      }
      
      public function getLabNum(param1:String) : uint
      {
         var _loc2_:int = int(this.fLabVec.length);
         var _loc3_:uint = 0;
         while(_loc3_ < _loc2_)
         {
            if(this.fLabVec[_loc3_].name == param1)
            {
               return this.fLabVec[_loc3_].frame;
            }
            _loc3_++;
         }
         return 0;
      }
      
      public function addHitTestableItem(param1:String) : void
      {
         if(param1 == HT_BRICK || param1 == HT_GROUND_NON_BRICK || param1 == HT_PLATFORM)
         {
            this.hitTestAgainstGroundDct.addItem(param1);
         }
         else
         {
            this.hitTestAgainstNonGroundDct.addItem(param1);
         }
      }
      
      public function hasHitTestableItem(param1:String) : Boolean
      {
         if(param1 == HT_BRICK || param1 == HT_GROUND_NON_BRICK || param1 == HT_PLATFORM)
         {
            return Boolean(this.hitTestAgainstGroundDct[param1]);
         }
         return Boolean(this.hitTestAgainstNonGroundDct[param1]);
      }
      
      protected function addAllGroundToHitTestables() : void
      {
         this.addHitTestableItem(HT_GROUND_NON_BRICK);
         this.addHitTestableItem(HT_BRICK);
         this.addHitTestableItem(HT_PLATFORM);
      }
      
      public function removeHitTestableItem(param1:String) : void
      {
         if(param1 == HT_BRICK || param1 == HT_GROUND_NON_BRICK || param1 == HT_PLATFORM)
         {
            this.hitTestAgainstGroundDct.removeItem(param1);
         }
         else
         {
            this.hitTestAgainstNonGroundDct.removeItem(param1);
         }
      }
      
      public function removeAllHitTestableItems() : void
      {
         this.hitTestAgainstGroundDct.clear();
         this.hitTestAgainstNonGroundDct.clear();
      }
      
      public function addTmr(param1:ICustomTimer) : void
      {
         this.TMR_DCT.addItem(param1);
         this.level.addTmr(param1);
      }
      
      public function removeTmr(param1:ICustomTimer) : void
      {
         if(param1.running)
         {
            param1.stop();
         }
         if(param1 is GameLoopTimer)
         {
            GameLoopTimer(param1).destroy();
         }
         this.TMR_DCT.removeItem(param1);
         this.P_TMR_DCT.removeItem(param1);
         this.level.removeTmr(param1);
      }
      
      protected function resumeTimers() : void
      {
         var _loc1_:ICustomTimer = null;
         for each(_loc1_ in this.P_TMR_DCT)
         {
            _loc1_.resume();
            this.P_TMR_DCT.removeItem(_loc1_);
         }
      }
      
      protected function stopTimers() : void
      {
         var _loc1_:ICustomTimer = null;
         for each(_loc1_ in this.TMR_DCT)
         {
            if(_loc1_.running && !this.destroyed)
            {
               _loc1_.pause();
               this.P_TMR_DCT.addItem(_loc1_);
            }
            else if(this.destroyed)
            {
               _loc1_.stop();
               this.removeTmr(_loc1_);
            }
         }
      }
      
      protected function correctFloatingPointError(param1:Number, param2:int = 5) : Number
      {
         var _loc3_:Number = Math.pow(10,param2);
         return Math.round(_loc3_ * param1) / _loc3_;
      }
      
      protected function removeListeners() : void
      {
         if(hasEventListener(Event.REMOVED_FROM_STAGE))
         {
            removeEventListener(Event.REMOVED_FROM_STAGE,this.removedLsr);
         }
         if(accurateAnimTmr)
         {
            accurateAnimTmr.removeEventListener(TimerEvent.TIMER,this.accurateAnimTmrHandler);
         }
         if(flashTmr)
         {
            flashTmr.removeEventListener(TimerEvent.TIMER,flashTmrHandler);
         }
         this.EVENT_MNGR.removeEventListener(CustomEvents.STOP_ALL_ENEMIES_PROP_ACTIVATE,this.stopAllEnemiesPropActivateHandler);
         this.EVENT_MNGR.removeEventListener(CustomEvents.STOP_ALL_ENEMIES_PROP_DEACTIVATE,this.stopAllEnemiesPropDeactivateHandler);
      }
      
      protected function reattachLsrs() : void
      {
         if(!hasEventListener(Event.REMOVED_FROM_STAGE))
         {
            addEventListener(Event.REMOVED_FROM_STAGE,this.removedLsr);
         }
         if(accurateAnimTmr)
         {
            accurateAnimTmr.addEventListener(TimerEvent.TIMER,this.accurateAnimTmrHandler,false,0,true);
         }
         if(flashTmr)
         {
            flashTmr.addEventListener(TimerEvent.TIMER,flashTmrHandler,false,0,true);
         }
         this.EVENT_MNGR.addEventListener(CustomEvents.STOP_ALL_ENEMIES_PROP_ACTIVATE,this.stopAllEnemiesPropActivateHandler,false,0,true);
         this.EVENT_MNGR.addEventListener(CustomEvents.STOP_ALL_ENEMIES_PROP_DEACTIVATE,this.stopAllEnemiesPropDeactivateHandler,false,0,true);
      }
      
      public function checkLoc() : void
      {
      }
      
      public function destroy() : void
      {
         this.removeAllHitTestableItems();
         this.level.destroy(this);
      }
      
      override public function cleanUp() : void
      {
         super.cleanUp();
         if(parent)
         {
            parent.removeChild(this);
         }
         this.removeAllStatusEffects();
         this.removeListeners();
         this.stopTimers();
         dispatchEvent(new Event(CustomEvents.CLEAN_UP));
      }
      
      public function finalCheck() : void
      {
      }
      
      public function disarm() : void
      {
         if(parent == this.level)
         {
            this.level.removeChild(this);
         }
         this.stopTimers();
         this.removeListeners();
         this.level = null;
         player = null;
      }
      
      public function rearm() : void
      {
         var _loc1_:ICustomTimer = null;
         this.level = Level.levelInstance;
         player = this.level.player;
         for each(_loc1_ in this.TMR_DCT)
         {
            if(this.level)
            {
               this.level.addTmr(_loc1_);
            }
         }
         this.reattachLsrs();
         this.resumeTimers();
         if(parent != this.level)
         {
            this.level.addChild(this);
         }
         this.drawObj();
      }
      
      public function addReasonOvRd(param1:String, param2:*, param3:String) : void
      {
         if(param3 == RSN_OVERRIDE)
         {
            throw new Error("not set up for override reason");
         }
         if(this.reasonOvRdObj[param1] == undefined)
         {
            this.reasonOvRdObj[param1] = new Dictionary();
         }
         var _loc4_:Dictionary = this.reasonOvRdObj[param1];
         if(_loc4_[param2] == undefined)
         {
            _loc4_[param2] = new CustomDictionary();
         }
         var _loc5_:CustomDictionary = _loc4_[param2];
         _loc5_.addItem(param3);
         var _loc6_:Function = this[param1];
         if(_loc6_ is Function)
         {
            _loc6_();
         }
      }
      
      public function removeReasonOvRd(param1:String, param2:*, param3:String) : void
      {
         if(this.reasonOvRdObj[param1] != undefined && this.reasonOvRdObj[param1][param2] != undefined)
         {
            if(param3 != RSN_OVERRIDE)
            {
               CustomDictionary(this.reasonOvRdObj[param1][param2]).removeItem(param3);
            }
            else
            {
               delete this.reasonOvRdObj[param1][param2];
            }
         }
         var _loc4_:Function = this[param1];
         if(_loc4_ is Function)
         {
            _loc4_();
         }
      }
      
      public function getReasonOvRds(param1:String, param2:*) : CustomDictionary
      {
         if(this.reasonOvRdObj[param1] == undefined)
         {
            return null;
         }
         return this.reasonOvRdObj[param1][param2];
      }
      
      public function initiateRecolor() : void
      {
      }
      
      public function recolorChildren(param1:DisplayObjectContainer, param2:uint, param3:uint) : void
      {
         var _loc6_:DisplayObject = null;
         var _loc7_:BitmapData = null;
         var _loc4_:int = param1.numChildren;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc6_ = param1.getChildAt(_loc5_);
            if(_loc6_ is Bitmap)
            {
               _loc7_ = Bitmap(_loc6_).bitmapData;
               if(param1 is MovieClip)
               {
                  _loc7_.threshold(_loc7_,_loc7_.rect,this.ZERO_PT,"==",param2,param3);
               }
            }
            _loc5_++;
         }
      }
      
      public function hit(param1:LevObj, param2:String) : void
      {
         this.hitDct.addItem(param1,param2);
      }
      
      public function traceHitItems() : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         var _loc1_:String = " is hitting: ";
         for(_loc2_ in this.hitDct)
         {
            _loc3_ = this.hitDct[_loc2_];
            _loc1_ += _loc2_ + ": " + _loc3_ + ", ";
         }
      }
      
      public function shiftHit(param1:LevObj, param2:String, param3:Number) : void
      {
      }
      
      public function confirmedHitProj(param1:Projectile) : void
      {
      }
      
      public function checkStgPos() : void
      {
      }
      
      protected function addProperty(param1:StatusProperty) : void
      {
         this.propsDct[param1.type] = param1;
         this.updPropOrderVec();
      }
      
      protected function removeProperty(param1:String) : void
      {
         delete this.propsDct[param1];
         this.updPropOrderVec();
      }
      
      protected function removeAllProperties() : void
      {
         var _loc1_:Object = null;
         for(_loc1_ in this.propsDct)
         {
            delete this.propsDct[_loc1_];
         }
         this.propAggOrderVec.fixed = false;
         this.propAggOrderVec.length = 0;
         this.propAggOrderVec.fixed = true;
      }
      
      private function updPropOrderVec() : void
      {
         var _loc3_:String = null;
         this.propAggOrderVec.fixed = false;
         this.propAggOrderVec.length = 0;
         var _loc1_:int = int(PROP_ORDER_REFERENCE.length);
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = PROP_ORDER_REFERENCE[_loc2_];
            if(this.propsDct[_loc3_])
            {
               this.propAggOrderVec.push(this.getProperty(_loc3_));
            }
            _loc2_++;
         }
         this.propAggOrderVec.fixed = true;
      }
      
      public function getPropOrderVec() : Vector.<StatusProperty>
      {
         if(!this.propsDct[PR_PIERCE_AGG])
         {
            throw new Error(this + "does not having aggressive piercing");
         }
         return this.propAggOrderVec;
      }
      
      public function getProperty(param1:String) : StatusProperty
      {
         return this.propsDct[param1];
      }
      
      public function isSusceptibleToProperty(param1:StatusProperty) : Boolean
      {
         if(!param1)
         {
            throw new Error("property does not exist");
         }
         if(StatusProperty.getPassiveFromType(param1.type))
         {
            throw new Error("aggProp must be aggressive");
         }
         var _loc2_:String = StatusProperty.getOpposingType(param1.type);
         if(!_loc2_)
         {
            return true;
         }
         var _loc3_:StatusProperty = this.getProperty(_loc2_);
         if(!_loc3_ || param1.strength >= _loc3_.strength)
         {
            return true;
         }
         return false;
      }
      
      public function addStatusEffect(param1:StatusEffect, param2:Boolean = true) : void
      {
         var _loc3_:StatusEffect = this.statusEffectsDct[param1.type];
         if(_loc3_)
         {
            if(!_loc3_.checkIfReplaceWithSameType(param1))
            {
               return;
            }
            _loc3_.destroy();
         }
         this.statusEffectsDct[param1.type] = param1;
         if(param2)
         {
            param1.apply();
         }
      }
      
      public function removeStatusEffect(param1:String) : void
      {
         var _loc2_:StatusEffect = this.statusEffectsDct[param1];
         if(_loc2_)
         {
            delete this.statusEffectsDct[param1];
            if(!_loc2_.destroyed)
            {
               _loc2_.destroy();
            }
         }
      }
      
      public function updateStatusEffects() : void
      {
         var _loc1_:StatusEffect = null;
         for each(_loc1_ in this.statusEffectsDct)
         {
            _loc1_.targetUpdate();
         }
      }
      
      protected function removeAllStatusEffects() : void
      {
         var _loc1_:StatusEffect = null;
         for each(_loc1_ in this.statusEffectsDct)
         {
            this.removeStatusEffect(_loc1_.type);
         }
      }
      
      public function getStatusEffect(param1:String) : StatusEffect
      {
         var _loc2_:Dictionary = this.statusEffectsDct;
         return this.statusEffectsDct[param1];
      }
   }
}
