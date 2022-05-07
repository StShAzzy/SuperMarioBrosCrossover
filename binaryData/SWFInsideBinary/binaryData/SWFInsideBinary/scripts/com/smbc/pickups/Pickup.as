package com.smbc.pickups
{
   import com.smbc.characters.Character;
   import com.smbc.data.GameSettings;
   import com.smbc.data.PickupInfo;
   import com.smbc.enemies.PiranhaGreen;
   import com.smbc.ground.Brick;
   import com.smbc.main.AnimatedObject;
   import com.smbc.main.LevObj;
   import com.smbc.managers.StatManager;
   import com.smbc.utils.GameLoopTimer;
   import flash.events.Event;
   import flash.events.TimerEvent;
   
   public class Pickup extends AnimatedObject
   {
      
      protected static const MAIN_TYPE_UPGRADE:String = PickupInfo.MAIN_TYPE_UPGRADE;
      
      protected static const MAIN_TYPE_FAKE:String = PickupInfo.MAIN_TYPE_FAKE;
      
      protected static const MAIN_TYPE_REGULAR:String = PickupInfo.MAIN_TYPE_REGULAR;
      
      protected static const UPGRADE_STR:String = PickupInfo.UPGRADE_STR;
      
      protected static const REGULAR_STR:String = PickupInfo.REGULAR_STR;
      
      protected static const FAKE_STR:String = PickupInfo.FAKE_STR;
      
      public static const DEFAULT_X_SPEED:int = 120;
      
      private static const DEL_ALPHA_CHANGE:int = 4000;
      
      private static const DEL_DESTROY:int = 3000;
      
      private static const ALPHA_DISAPPEARING:Number = 0.65;
       
      
      public var playsRegularSound:Boolean;
      
      public var grabbedByBoomerang:Boolean;
      
      protected var _boomerangGrabbable:Boolean;
      
      public var type:String;
      
      protected var source:LevObj;
      
      public var mainType:String;
      
      protected var mainFrameLabel:String;
      
      protected var targetHeight:Number;
      
      protected var riseSpeed:uint;
      
      protected var inBox:Boolean;
      
      protected var touchedWall:Boolean;
      
      public var brickParent:Brick;
      
      private var disappearTmr:GameLoopTimer;
      
      public function Pickup(param1:String = null)
      {
         super();
         this.type = param1;
         if(param1)
         {
            this.mainFrameLabel = param1.substr(UPGRADE_STR.length);
            if(param1.indexOf(REGULAR_STR) != -1)
            {
               this.mainType = MAIN_TYPE_REGULAR;
               gotoAndStop(this.mainFrameLabel);
               stopAnim = true;
               this._boomerangGrabbable = true;
            }
            else if(param1.indexOf(UPGRADE_STR) != -1)
            {
               this.mainType = MAIN_TYPE_UPGRADE;
               gotoAndStop(this.mainFrameLabel);
               stopAnim = true;
               STAT_MNGR.prepareNextUpgrade(player.charNum,param1);
               this._boomerangGrabbable = true;
            }
            else if(param1.indexOf(FAKE_STR) != -1)
            {
               this.mainType = MAIN_TYPE_FAKE;
            }
         }
         this.riseSpeed = 40;
         hitTestTypesDct.addItem(HT_PICKUP);
         addHitTestableItem(HT_CHARACTER);
      }
      
      public static function generateNextUpgrade() : Pickup
      {
         var _loc1_:int = StatManager.STAT_MNGR.curCharNum;
         var _loc2_:String = StatManager.STAT_MNGR.getRandomUpgrade(_loc1_);
         if(GameSettings.DEBUG_MODE && GameSettings.FORCE_NEXT_PICKUP)
         {
            _loc2_ = GameSettings.FORCE_NEXT_PICKUP;
         }
         if(_loc2_ == PickupInfo.MUSHROOM)
         {
            return new Mushroom(Mushroom.ST_RED);
         }
         if(_loc2_ == PickupInfo.MARIO_FIRE_FLOWER || _loc2_ == PickupInfo.FIRE_FLOWER)
         {
            return new FireFlower();
         }
         var _loc3_:Class = PickupInfo.getPickupClass(_loc1_);
         return Pickup(new _loc3_(_loc2_));
      }
      
      override public function setStats() : void
      {
         super.setStats();
         defyGrav = true;
         gravity = 1400;
      }
      
      override protected function updateStats() : void
      {
         super.updateStats();
         if(this.inBox && hBot <= this.targetHeight && !this.grabbedByBoomerang)
         {
            this.exitBrickEnd();
         }
      }
      
      public function exitBrickStart(param1:Brick) : void
      {
         addHitTestableItem(HT_BRICK);
         bottomAo = true;
         if(this.mainType != MAIN_TYPE_FAKE)
         {
            this._boomerangGrabbable = true;
         }
         this.brickParent = param1;
         x = param1.x + TILE_SIZE / 2;
         y = param1.y + TILE_SIZE;
         this.targetHeight = param1.y;
         defyGrav = true;
         behindGround = true;
         stopHit = false;
         this.inBox = true;
         vy = -this.riseSpeed;
      }
      
      protected function exitBrickEnd() : void
      {
         this.inBox = false;
         defyGrav = true;
         behindGround = false;
         ny = this.brickParent.y;
         vy = 0;
      }
      
      public function appearFromObject(param1:LevObj) : void
      {
         var _loc2_:PiranhaGreen = null;
         this.source = param1;
         x = param1.hMidX;
         y = param1.hMidY + height / 2;
         if(param1 is PiranhaGreen)
         {
            _loc2_ = param1 as PiranhaGreen;
            if(!_loc2_.upsideDown)
            {
               y = _loc2_.outY - height / 2;
            }
            else
            {
               y = _loc2_.outY + TILE_SIZE + height / 2;
            }
         }
         defyGrav = true;
         this.disappearTmr = new GameLoopTimer(DEL_ALPHA_CHANGE,1);
         addTmr(this.disappearTmr);
         this.disappearTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.disappearTmrHandler,false,0,true);
         this.disappearTmr.start();
      }
      
      override public function initiate() : void
      {
         super.initiate();
         if(this.disappearTmr && this.source)
         {
            if(this.source is AnimatedObject && !(this.source is PiranhaGreen))
            {
               copyLastStatsFromObject(this.source as AnimatedObject);
            }
         }
      }
      
      protected function disappearTmrHandler(param1:Event) : void
      {
         this.disappearTmr.stop();
         if(this.disappearTmr.delay == DEL_ALPHA_CHANGE)
         {
            alpha = ALPHA_DISAPPEARING;
            this.disappearTmr.delay = DEL_DESTROY;
            this.disappearTmr.start();
         }
         else
         {
            this.disappearTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.disappearTmrHandler);
            this.disappearTmr = null;
            destroy();
         }
      }
      
      override protected function reattachLsrs() : void
      {
         super.reattachLsrs();
         if(this.disappearTmr)
         {
            this.disappearTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.disappearTmrHandler,false,0,true);
         }
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         if(this.disappearTmr)
         {
            this.disappearTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.disappearTmrHandler);
         }
      }
      
      public function touchPlayer(param1:Character) : void
      {
         destroy();
      }
      
      override public function shiftHit(param1:LevObj, param2:String, param3:Number) : void
      {
      }
      
      public function get boomerangGrabbable() : Boolean
      {
         return this._boomerangGrabbable;
      }
   }
}
