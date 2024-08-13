package com.smbc.pickups
{
   import com.explodingRabbit.utils.CustomDictionary;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.characters.Character;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.PickupInfo;
   import com.smbc.graphics.VineSegment;
   import com.smbc.ground.Brick;
   import com.smbc.level.Level;
   
   public class Vine extends Pickup
   {
      
      private static var hRectDefHeight:Number;
      
      private static var hRectDefY:Number;
       
      
      private const MAIN_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_SLOWEST_TMR;
      
      private var fromBox:Boolean;
      
      private var globDest:String = "";
      
      private var globPipeExInt:int;
      
      private var color:String;
      
      public var yStart:Number;
      
      private var startHeight:Number;
      
      private var segDct:CustomDictionary;
      
      public function Vine(param1:String)
      {
         this.segDct = new CustomDictionary(true);
         super(PickupInfo.VINE);
         mainAnimTmr = this.MAIN_ANIM_TMR;
         riseSpeed = 60;
         stopAnim = false;
         defyGrav = true;
         vx = 0;
         vy = 0;
         if(param1.indexOf("Green") != -1)
         {
            this.color = "green";
         }
         else if(param1.indexOf("Blue") != -1)
         {
            this.color = "blue";
         }
         var _loc2_:int = param1.indexOf("&&pTransDest=") + 13;
         var _loc3_:int = int(param1.indexOf("&&",_loc2_));
         if(_loc3_ == -1)
         {
            _loc3_ = param1.length;
         }
         if(_loc2_ != -1)
         {
            this.globDest = param1.substring(_loc2_,_loc3_);
         }
         var _loc4_:String = Level.ExtractLevelDataProperty(param1,Level.PROP_NUMBER,true);
         if(_loc4_ != null)
         {
            this.globPipeExInt = int(_loc4_);
         }
         this.gotoAndStop(this.color);
         this.startHeight = height;
         behindGround = true;
      }
      
      override public function initiate() : void
      {
         super.initiate();
         if(inBox)
         {
            this.fromBox = true;
         }
         else
         {
            player.visible = false;
            level.watchModeOverrideVine = true;
            this.growFromStgBot();
         }
      }
      
      override public function exitBrickStart(param1:Brick) : void
      {
         super.exitBrickStart(param1);
         targetHeight = GLOB_STG_TOP - TILE_SIZE * 2;
         this.yStart = y - TILE_SIZE;
      }
      
      private function growFromStgBot() : void
      {
         this.globDest = "";
         y = GLOB_STG_BOT;
         this.yStart = y;
         targetHeight = y - TILE_SIZE * 5;
         defyGrav = true;
         inBox = true;
         vy = -riseSpeed;
      }
      
      override protected function updateStats() : void
      {
         super.updateStats();
         touchedWall = false;
         if(inBox)
         {
            if(this.yStart - hTop >= this.getFakeHeight())
            {
               this.extendVine();
            }
            if(hTop <= targetHeight)
            {
               this.exitBrickEnd();
            }
         }
      }
      
      override protected function exitBrickEnd() : void
      {
         inBox = false;
         vy = 0;
         ny = targetHeight + TILE_SIZE;
         setHitPoints();
         if(!this.fromBox)
         {
            player.climbVineStarter(this);
         }
      }
      
      private function extendVine() : void
      {
         var _loc1_:VineSegment = new VineSegment(this.color);
         _loc1_.y = Math.round(this.getFakeHeight() - _loc1_.height);
         addChild(_loc1_);
         this.segDct.addItem(_loc1_);
         hRect.height += TILE_SIZE;
         setHitPoints();
      }
      
      private function getFakeHeight() : int
      {
         return (this.segDct.length + 1) * TILE_SIZE;
      }
      
      override public function gotoAndStop(param1:Object, param2:String = null) : void
      {
         var _loc3_:VineSegment = null;
         super.gotoAndStop(param1,param2);
         for each(_loc3_ in this.segDct)
         {
            addChild(_loc3_);
            _loc3_.gotoAndStop(currentFrame);
         }
         if(hRect)
         {
            hRect.height = this.getFakeHeight();
            hRect.y = -TILE_SIZE;
         }
         setHitPoints();
      }
      
      override public function hitCharacter(param1:Character, param2:String) : void
      {
      }
      
      override public function rearm() : void
      {
         super.rearm();
         if(!this.fromBox)
         {
            player.visible = false;
            level.watchModeOverrideVine = true;
            player.vineToClimb = this;
         }
      }
      
      public function get vineDest() : String
      {
         return this.globDest;
      }
      
      public function get vineExInt() : int
      {
         return this.globPipeExInt;
      }
      
      override public function touchPlayer(param1:Character) : void
      {
      }
   }
}
