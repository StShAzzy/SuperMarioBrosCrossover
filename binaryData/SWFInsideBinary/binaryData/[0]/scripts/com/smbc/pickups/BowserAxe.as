package com.smbc.pickups
{
   import com.customClasses.*;
   import com.explodingRabbit.display.CustomMovieClip;
   import com.explodingRabbit.utils.CustomDictionary;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.characters.*;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.SoundNames;
   import com.smbc.events.CustomEvents;
   import com.smbc.ground.*;
   import com.smbc.interfaces.ICustomTimer;
   import com.smbc.level.Level;
   import com.smbc.managers.EventManager;
   import com.smbc.managers.GraphicsManager;
   import flash.events.Event;
   import flash.events.TimerEvent;
   
   public class BowserAxe extends Pickup
   {
      
      private static const FL_END:String = "end";
      
      private static const FL_START:String = "start";
      
      private static const FL_HIT_END:String = "hitEnd";
      
      private static const FL_HIT_START:String = "hitStart";
      
      private static var animEndFrameNum:int;
      
      private static var animEndFrameNumHit:int;
      
      private static const NUM_ANIM_FRAMES:int = 4;
      
      private static var animStartFrameDelay:int;
      
      private static const CHANGE_MAP_FCT_DCT:CustomDictionary = new CustomDictionary(true);
      
      {
         EventManager.EVENT_MNGR.addEventListener(CustomEvents.CHANGE_MAP_SKIN,changeMapSkinHandler,false,0,true);
      }
      
      private var killBridgeTmr:CustomTimer;
      
      private var killBridgeDur:int = 75;
      
      private var touched:Boolean;
      
      private const SFX_BRIDGE_BREAK_SND:String = SoundNames.SFX_GAME_BRIDGE_BREAK;
      
      protected var animDelCtr:int;
      
      public function BowserAxe()
      {
         super();
         defyGrav = true;
         bottomAo = true;
         mainAnimTmr = AnimationTimers.ANIM_SLOWEST_TMR;
         CHANGE_MAP_FCT_DCT.addItem(this.changeMapSkinLocalHandler);
         level.ALWAYS_ANIM_DCT.addItem(this);
         playsRegularSound = true;
      }
      
      protected static function changeMapSkinHandler(param1:Event) : void
      {
         var _loc5_:Function = null;
         var _loc2_:CustomDictionary = Level.levelInstance.AO_DCT;
         var _loc3_:GraphicsManager = GraphicsManager.INSTANCE;
         var _loc4_:CustomMovieClip = new CustomMovieClip(null,null,"BowserAxe");
         animStartFrameDelay = _loc3_.getFrameDelay(_loc4_.getPaletteByRow(0));
         animEndFrameNum = NUM_ANIM_FRAMES + _loc4_.convFrameToInt(FL_START) - 1;
         animEndFrameNumHit = animEndFrameNum + NUM_ANIM_FRAMES;
         while(animEndFrameNum > 0 && _loc4_.frameIsEmpty(animEndFrameNum))
         {
            --animEndFrameNum;
         }
         for each(_loc5_ in CHANGE_MAP_FCT_DCT)
         {
            _loc5_();
         }
      }
      
      private function changeMapSkinLocalHandler() : void
      {
         if(!stopAnim)
         {
            gotoAndStop(FL_START);
         }
         this.animDelCtr = 0;
      }
      
      public function setUpBridge() : void
      {
         if(!level.bowser)
         {
            return;
         }
         level.bbVec.sort(this.sortBBVec);
         level.bowser.getXMaxMin(level.bbVec[0].x,level.bbVec[level.bbVec.length - 1].x);
      }
      
      override public function touchPlayer(param1:Character) : void
      {
         if(this.touched)
         {
            return;
         }
         STAT_MNGR.stopTimeLeft();
         this.touched = true;
         if(level.bowser && level.bowser.cState != "die" && !level.bowser.destroyed)
         {
            this.killBridgeTmr = new CustomTimer(this.killBridgeDur,level.bbVec.length);
            level.bbVec.sort(this.sortBBVec);
            addTmr(this.killBridgeTmr);
            this.killBridgeTmr.addEventListener(TimerEvent.TIMER,this.killBridgeTmrLsr);
            this.killBridgeTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.killBridgeTmrCompLsr);
            this.killBridgeTmr.start();
            level.freezePlayer();
            level.bowser.breakBridgeStart();
            level.destroy(level.bbChain);
            stopHit = true;
            gotoAndStop(FL_HIT_START);
         }
         else
         {
            player.getAxe(this);
            stopHit = true;
            this.axeEnd();
         }
      }
      
      private function killBridgeTmrLsr(param1:TimerEvent) : void
      {
         level.bbVec[0].startBreak();
         level.bbVec.shift();
         SND_MNGR.playSound(this.SFX_BRIDGE_BREAK_SND);
         if(level.bowser)
         {
            level.bowser.breakBridgeInc();
         }
      }
      
      private function killBridgeTmrCompLsr(param1:TimerEvent) : void
      {
         if(this.killBridgeTmr)
         {
            this.killBridgeTmr.removeEventListener(TimerEvent.TIMER,this.killBridgeTmrLsr);
            this.killBridgeTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.killBridgeTmrCompLsr);
            removeTmr(this.killBridgeTmr);
            this.killBridgeTmr = null;
         }
         level.unfreezePlayer();
         player.getAxe(this);
         level.bowser.breakBridgeEnd();
         this.axeEnd();
      }
      
      private function axeEnd() : void
      {
         gotoAndStop(FL_HIT_START);
         if(level.bowserAxe == this)
         {
            level.bowserAxe = null;
         }
         level.keepPlayerOnRight = true;
         CHANGE_MAP_FCT_DCT.removeItem(this.changeMapSkinLocalHandler);
      }
      
      private function sortBBVec(param1:BowserBridge, param2:BowserBridge) : int
      {
         if(param1.x < param2.x)
         {
            return 1;
         }
         if(param1.x > param2.x)
         {
            return -1;
         }
         return 0;
      }
      
      override public function animate(param1:ICustomTimer) : Boolean
      {
         if(currentFrameLabel == FL_START && this.animDelCtr < animStartFrameDelay && mainAnimTmr == param1)
         {
            ++this.animDelCtr;
            return false;
         }
         this.animDelCtr = 0;
         return super.animate(param1);
      }
      
      override public function checkFrame() : void
      {
         if(!stopHit)
         {
            if(currentFrame == animEndFrameNum + 1)
            {
               gotoAndStop(FL_START);
            }
         }
         else if(currentFrame == animEndFrameNumHit + 1)
         {
            gotoAndStop(FL_HIT_START);
         }
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         if(this.killBridgeTmr)
         {
            if(this.killBridgeTmr.hasEventListener(TimerEvent.TIMER))
            {
               this.killBridgeTmr.removeEventListener(TimerEvent.TIMER,this.killBridgeTmrLsr);
            }
            if(this.killBridgeTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
            {
               this.killBridgeTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.killBridgeTmrCompLsr);
            }
         }
      }
      
      override public function rearm() : void
      {
         super.rearm();
         if(!stopHit)
         {
            level.bowserAxe = this;
         }
         level.ALWAYS_ANIM_DCT.addItem(this);
      }
      
      override public function disarm() : void
      {
         super.disarm();
         if(level)
         {
            level.ALWAYS_ANIM_DCT.removeItem(this);
         }
      }
      
      override protected function reattachLsrs() : void
      {
         super.reattachLsrs();
         if(this.killBridgeTmr)
         {
            if(!this.killBridgeTmr.hasEventListener(TimerEvent.TIMER))
            {
               this.killBridgeTmr.addEventListener(TimerEvent.TIMER,this.killBridgeTmrLsr);
            }
            if(!this.killBridgeTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
            {
               this.killBridgeTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.killBridgeTmrCompLsr);
            }
         }
      }
      
      override public function cleanUp() : void
      {
         if(level)
         {
            level.ALWAYS_ANIM_DCT.removeItem(this);
         }
         CHANGE_MAP_FCT_DCT.removeItem(this.changeMapSkinLocalHandler);
         super.cleanUp();
      }
   }
}
