package com.smbc.pickups
{
   import com.explodingRabbit.utils.CustomDictionary;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.characters.Character;
   import com.smbc.characters.MegaMan;
   import com.smbc.characters.base.MegaManBase;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.GameStates;
   import com.smbc.data.PickupInfo;
   import com.smbc.data.SoundNames;
   import com.smbc.ground.Ground;
   import com.smbc.ground.Platform;
   import flash.events.TimerEvent;
   
   public class Rush extends Pickup
   {
      
      private static const FL_STAND_START:String = "standStart";
      
      private static const FL_STAND_END:String = "standEnd";
      
      private static const FL_LAND_START:String = "landStart";
      
      private static const FL_LAND_END:String = "landEnd";
      
      private static const FL_SPRING:String = "spring";
      
      private static const FL_EXIT_START:String = "exitStart";
      
      private static const FL_EXIT_END:String = "exitEnd";
      
      private static const FL_FLY:String = "fly";
      
      private static const ST_FALL:String = "fall";
      
      private static const ST_TRANSITION:String = "transition";
      
      private static const ST_FIRST_TRANSITION:String = "firstTransition";
      
      public static const ST_WAIT:String = "wait";
      
      private static const ST_EXIT:String = "exit";
      
      private static const FLIGHT_ACCEL:int = 2300;
      
      private static const FLASH_ALPHA:Number = 0.75;
      
      private static const LAND_ON_SIDE_OFFSET:int = 40;
      
      private static const LAND_ON_SIDE_OFFSET_SHORT:int = 20;
      
      private static const VY_MAX:int = 1000;
      
      private static const SPRING_PWR:int = 800;
       
      
      private var ts:int = 32;
      
      private var landOnSide:Boolean = true;
      
      private var startHitTestY:Number;
      
      private var playerGridX:int;
      
      private var playerGridY:int;
      
      private var useShortDist:Boolean;
      
      private const START_FLASH_TMR:CustomTimer = new CustomTimer(2000,1);
      
      private const FLASH_EXIT_TMR:CustomTimer = new CustomTimer(2000,1);
      
      private const SPRING_EXIT_TMR:CustomTimer = new CustomTimer(400,1);
      
      private const WAIT_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_VERY_SLOW_TMR;
      
      private const TRANSITION_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_FAST_TMR;
      
      private const GRND_GRID_DCT:CustomDictionary = new CustomDictionary();
      
      public function Rush(param1:MegaManBase)
      {
         super(PickupInfo.RUSH);
         stopAnim = true;
         updateOffScreen = true;
         mainAnimTmr = this.TRANSITION_ANIM_TMR;
         dosBot = true;
         dosLft = true;
         dosRht = true;
         this.playerGridX = this.calcPlayerGridLoc(player.nx);
         this.playerGridY = this.calcPlayerGridLoc(player.ny);
         if(player.upBtn)
         {
            this.landOnSide = false;
         }
         else
         {
            this.determineTargetLocation();
         }
         defyGrav = true;
         vyMax = VY_MAX;
         if(this.landOnSide)
         {
            if(player.scaleX > 0)
            {
               if(this.useShortDist)
               {
                  x = player.nx + LAND_ON_SIDE_OFFSET_SHORT;
               }
               else
               {
                  x = player.nx + LAND_ON_SIDE_OFFSET;
               }
            }
            else if(this.useShortDist)
            {
               x = player.nx - LAND_ON_SIDE_OFFSET_SHORT;
            }
            else
            {
               x = player.nx - LAND_ON_SIDE_OFFSET;
            }
         }
         else
         {
            x = player.nx;
         }
         if(player.scaleX > 0)
         {
            scaleX = 1;
         }
         else
         {
            scaleX = -1;
         }
         this.startHitTestY = this.playerGridY - this.ts * 2;
         if(player.onPlatform)
         {
            this.startHitTestY -= TILE_SIZE * 2;
         }
         stopHit = false;
         setState(ST_FALL);
         gotoAndStop(FL_FLY);
         addTmr(this.START_FLASH_TMR);
         addTmr(this.FLASH_EXIT_TMR);
         addTmr(this.SPRING_EXIT_TMR);
         this.START_FLASH_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.startFlashTmrHandler,false,0,true);
         this.FLASH_EXIT_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.flashExitTmrHandler,false,0,true);
         this.SPRING_EXIT_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.springExitTmrHandler,false,0,true);
      }
      
      override public function initiate() : void
      {
         super.initiate();
         ACTIVE_ANIM_TMRS_DCT.addItem(this.TRANSITION_ANIM_TMR);
         ACTIVE_ANIM_TMRS_DCT.addItem(this.WAIT_ANIM_TMR);
      }
      
      private function determineTargetLocation() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc6_:Ground = null;
         if(player.scaleX > 0)
         {
            if(this.playerGridX < player.nx)
            {
               _loc1_ = this.playerGridX + this.ts;
            }
            else
            {
               _loc1_ = this.playerGridX;
            }
            _loc2_ = _loc1_ + this.ts;
         }
         else
         {
            if(this.playerGridX < player.nx)
            {
               _loc1_ = this.playerGridX - this.ts;
            }
            else
            {
               _loc1_ = this.playerGridX - this.ts * 2;
            }
            _loc2_ = _loc1_ - this.ts;
         }
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         for each(_loc6_ in level.GROUND_STG_DCT)
         {
            if(!(_loc6_ is Platform) && !_loc6_.disabled)
            {
               if(_loc6_.x == _loc1_)
               {
                  if(_loc6_.y == this.playerGridY - this.ts)
                  {
                     _loc3_ = true;
                  }
                  else if(_loc6_.y == this.playerGridY - this.ts * 2)
                  {
                     _loc4_ = true;
                  }
                  else if(_loc6_.y == this.playerGridY + this.ts)
                  {
                     _loc5_ = true;
                  }
               }
               else if(_loc6_.x == _loc2_ && _loc6_.y == this.playerGridY - this.ts)
               {
                  this.useShortDist = true;
               }
            }
         }
         if(_loc3_)
         {
            this.landOnSide = false;
         }
      }
      
      private function calcPlayerGridLoc(param1:Number) : int
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         while(param1 > _loc2_)
         {
            _loc2_ += this.ts;
         }
         _loc3_ = _loc2_;
         _loc4_ = _loc2_ - this.ts;
         _loc5_ = _loc3_ - param1;
         _loc6_ = param1 - _loc4_;
         if(_loc5_ < 0)
         {
            _loc5_ = -_loc5_;
         }
         if(_loc6_ < 0)
         {
            _loc6_ = -_loc6_;
         }
         if(_loc5_ > _loc6_)
         {
            return _loc4_;
         }
         return _loc3_;
      }
      
      override protected function updateStats() : void
      {
         super.updateStats();
         if(!destroyOffScreen && y > GLOB_STG_TOP)
         {
            destroyOffScreen = true;
            updateOffScreen = false;
            dosTop = true;
         }
         if(cState == ST_FALL)
         {
            vy += FLIGHT_ACCEL * dt;
            if(!hitTestAgainstGroundDct[HT_GROUND_NON_BRICK] && ny >= this.startHitTestY)
            {
               addAllGroundToHitTestables();
            }
         }
         else if(cState == ST_EXIT)
         {
            vy -= FLIGHT_ACCEL * dt;
            if(y < GLOB_STG_TOP)
            {
               destroy();
            }
         }
      }
      
      override public function groundBelow(param1:Ground) : void
      {
         vy = 0;
         onGround = true;
         ny = param1.hTop;
         setHitPoints();
         hBot = param1.hTop;
         if(cState == ST_FALL)
         {
            gotoAndStop(FL_LAND_START);
            stopAnim = false;
            setState(ST_FIRST_TRANSITION);
            setHitPoints();
            noAnimThisCycle = true;
         }
         if(param1 is Platform)
         {
            Platform(param1).attachObject(this);
         }
      }
      
      private function beginWaitPhase() : void
      {
         gotoAndStop(FL_STAND_START);
         setState(ST_WAIT);
         mainAnimTmr = this.WAIT_ANIM_TMR;
         this.START_FLASH_TMR.start();
      }
      
      private function startFlashTmrHandler(param1:TimerEvent) : void
      {
         this.START_FLASH_TMR.reset();
         alpha = FLASH_ALPHA;
         this.FLASH_EXIT_TMR.start();
      }
      
      private function flashExitTmrHandler(param1:TimerEvent) : void
      {
         this.FLASH_EXIT_TMR.reset();
         alpha = 1;
         gotoAndStop(FL_EXIT_START);
         mainAnimTmr = this.TRANSITION_ANIM_TMR;
         setState(ST_TRANSITION);
         noAnimThisCycle = true;
         stopHit = true;
      }
      
      private function springExitTmrHandler(param1:TimerEvent) : void
      {
         this.SPRING_EXIT_TMR.reset();
         gotoAndStop(FL_EXIT_START);
         stopAnim = false;
         mainAnimTmr = this.TRANSITION_ANIM_TMR;
         setState(ST_TRANSITION);
         noAnimThisCycle = true;
         stopHit = true;
      }
      
      public function get isWaitingForMegaMan() : Boolean
      {
         return cState == ST_WAIT;
      }
      
      private function exit() : void
      {
         gotoAndStop(FL_FLY);
         stopAnim = true;
         defyGrav = true;
         setState(ST_EXIT);
         if(platformAttachedTo)
         {
            platformAttachedTo.detachObject(this);
         }
      }
      
      public function forceExit() : void
      {
         this.FLASH_EXIT_TMR.reset();
         this.SPRING_EXIT_TMR.reset();
         gotoAndStop(FL_EXIT_START);
         stopAnim = false;
         mainAnimTmr = this.TRANSITION_ANIM_TMR;
         setState(ST_TRANSITION);
         noAnimThisCycle = true;
         stopHit = true;
      }
      
      override public function checkFrame() : void
      {
         var _loc1_:String = currentFrameLabel;
         if(_loc1_ == FL_LAND_END)
         {
            this.beginWaitPhase();
         }
         else if(_loc1_ == FL_STAND_END)
         {
            gotoAndStop(FL_STAND_START);
         }
         else if(_loc1_ == FL_EXIT_END)
         {
            this.exit();
         }
         super.checkFrame();
      }
      
      override public function hitCharacter(param1:Character, param2:String) : void
      {
         if((cState == ST_WAIT || cState == ST_FIRST_TRANSITION) && !param1.onGround && param1.vy > 0 && GS_MNGR.gameState == GameStates.PLAY)
         {
            param1.ny = hTop;
            param1.vy = -SPRING_PWR;
            param1.jumped = true;
            if(param1 is MegaMan)
            {
               MegaMan(param1).releasedJumpBtn = true;
               MegaMan(param1).frictionY = false;
               SND_MNGR.playSound(SoundNames.SFX_MEGA_MAN_LAND);
               MegaMan(param1).rushCoilBounce();
            }
            gotoAndStop(FL_SPRING);
            stopAnim = true;
            this.START_FLASH_TMR.reset();
            this.FLASH_EXIT_TMR.reset();
            alpha = 1;
            setState(ST_TRANSITION);
            this.SPRING_EXIT_TMR.start();
            stopHit = true;
         }
      }
      
      override public function touchPlayer(param1:Character) : void
      {
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         this.START_FLASH_TMR.removeEventListener(TimerEvent.TIMER_COMPLETE,this.startFlashTmrHandler);
         this.FLASH_EXIT_TMR.removeEventListener(TimerEvent.TIMER_COMPLETE,this.flashExitTmrHandler);
         this.SPRING_EXIT_TMR.removeEventListener(TimerEvent.TIMER_COMPLETE,this.springExitTmrHandler);
      }
      
      override protected function reattachLsrs() : void
      {
         super.reattachLsrs();
         this.START_FLASH_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.startFlashTmrHandler,false,0,true);
         this.FLASH_EXIT_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.flashExitTmrHandler,false,0,true);
         this.SPRING_EXIT_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.springExitTmrHandler,false,0,true);
      }
      
      override public function cleanUp() : void
      {
         super.cleanUp();
         if(player is MegaMan)
         {
            if(MegaMan(player).rush == this)
            {
               MegaMan(player).rush = null;
            }
         }
      }
   }
}
