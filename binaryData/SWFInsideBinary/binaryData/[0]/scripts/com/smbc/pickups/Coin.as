package com.smbc.pickups
{
   import com.explodingRabbit.display.CustomMovieClip;
   import com.explodingRabbit.utils.CustomDictionary;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.PickupInfo;
   import com.smbc.events.CustomEvents;
   import com.smbc.ground.Ground;
   import com.smbc.interfaces.ICustomTimer;
   import com.smbc.managers.EventManager;
   import com.smbc.managers.GraphicsManager;
   import com.smbc.projectiles.FlyingCoin;
   import flash.events.Event;
   
   public class Coin extends Pickup
   {
      
      private static const FL_END:String = "end";
      
      private static const FL_START:String = "start";
      
      private static var animEndFrameNum:int;
      
      private static const NUM_ANIM_FRAMES:int = 4;
      
      private static var animStartFrameDelay:int;
      
      private static const CHANGE_MAP_FCT_DCT:CustomDictionary = new CustomDictionary(true);
      
      {
         EventManager.EVENT_MNGR.addEventListener(CustomEvents.CHANGE_MAP_SKIN,changeMapSkinHandler,false,0,true);
      }
      
      protected var animDelCtr:int;
      
      public function Coin(param1:String)
      {
         super(PickupInfo.COIN);
         behindGround = true;
         _boomerangGrabbable = true;
         stopAnim = false;
         mainAnimTmr = AnimationTimers.ANIM_SLOWEST_TMR;
         playsRegularSound = true;
         defyGrav = true;
         bottomAo = true;
         level.ALWAYS_ANIM_DCT.addItem(this);
         CHANGE_MAP_FCT_DCT.addItem(this.changeMapSkinLocalHandler);
         addHitTestableItem(HT_BRICK);
      }
      
      protected static function changeMapSkinHandler(param1:Event) : void
      {
         var _loc4_:Function = null;
         var _loc2_:GraphicsManager = GraphicsManager.INSTANCE;
         var _loc3_:CustomMovieClip = new CustomMovieClip(null,null,"Coin");
         animStartFrameDelay = _loc2_.getFrameDelay(_loc3_.getPaletteByRow(0));
         animEndFrameNum = NUM_ANIM_FRAMES + _loc3_.convFrameToInt(FL_START) - 1;
         while(animEndFrameNum > 0 && _loc3_.frameIsEmpty(animEndFrameNum))
         {
            --animEndFrameNum;
         }
         for each(_loc4_ in CHANGE_MAP_FCT_DCT)
         {
            _loc4_();
         }
      }
      
      public static function initiateLevelHandler() : void
      {
         changeMapSkinHandler(null);
      }
      
      private function changeMapSkinLocalHandler() : void
      {
         if(!stopAnim)
         {
            gotoAndStop(FL_START);
         }
         this.animDelCtr = 0;
      }
      
      override public function gBounceHit(param1:Ground) : void
      {
         destroy();
         var _loc2_:FlyingCoin = new FlyingCoin();
         _loc2_.getAlternateInfo(this);
         level.addToLevel(_loc2_);
         com.smbc.§main:LevObj§.EVENT_MNGR.getCoin();
      }
      
      override public function rearm() : void
      {
         super.rearm();
         level.ALWAYS_ANIM_DCT.addItem(this);
      }
      
      override public function disarm() : void
      {
         level.ALWAYS_ANIM_DCT.removeItem(this);
         super.disarm();
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
         if(currentFrame == animEndFrameNum + 1)
         {
            gotoAndStop(FL_START);
         }
      }
      
      override public function cleanUp() : void
      {
         super.cleanUp();
         if(level)
         {
            level.ALWAYS_ANIM_DCT.removeItem(this);
         }
         CHANGE_MAP_FCT_DCT.removeItem(this.changeMapSkinLocalHandler);
      }
   }
}
