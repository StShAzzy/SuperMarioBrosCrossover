package com.smbc.projectiles
{
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.SoundNames;
   import com.smbc.enemies.Bowser;
   import com.smbc.events.CustomEvents;
   import com.smbc.graphics.BowserFireBallSpark;
   import com.smbc.managers.GraphicsManager;
   import flash.events.Event;
   import flash.events.TimerEvent;
   
   public class BowserFireBall extends Projectile
   {
      
      private static const FL_END:String = "end";
      
      private static const FL_START:String = "start";
       
      
      private var endFrameNum:int;
      
      private const SPEED:int = 160;
      
      private const MAIN_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_FAST_TMR;
      
      private const UPD_OFF_SCRN_TMR_DUR:int = 400;
      
      private var updOffScrnTmr:CustomTimer;
      
      private var bowser:Bowser;
      
      private var yLev:int;
      
      private var yFinal:int;
      
      public function BowserFireBall(param1:Bowser)
      {
         super(param1,SOURCE_TYPE_ENEMY);
         this.bowser = param1;
         defyGrav = true;
         sx = this.SPEED;
         vx = -sx;
         if(vx < 0)
         {
            scaleX = -1;
         }
         vy = 0;
         mainAnimTmr = this.MAIN_ANIM_TMR;
         var _loc2_:int = 100;
         var _loc3_:int = 3;
         var _loc4_:Number;
         if((_loc4_ = Math.random() * _loc2_) < 33)
         {
            this.yFinal = this.bowser.fbLev1;
         }
         else if(_loc4_ >= 33 && _loc4_ < 66)
         {
            this.yFinal = this.bowser.fbLev2;
         }
         else if(_loc4_ >= 66)
         {
            this.yFinal = this.bowser.fbLev3;
         }
         if(this.bowser.onScreen)
         {
            x = this.bowser.nx - this.bowser.width * 0.5 - width * 0.5;
            y = this.bowser.ny - this.bowser.hHeight;
         }
         else
         {
            x = locStgRht + width * 0.5;
            y = this.yFinal;
            this.updOffScrnTmr = new CustomTimer(this.UPD_OFF_SCRN_TMR_DUR,1);
            addTmr(this.updOffScrnTmr);
            this.updOffScrnTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.updOffScrnTmrHandler,false,0,true);
            this.updOffScrnTmr.start();
            updateOffScreen = true;
            destroyOffScreen = false;
            dosLft = true;
            dosBot = true;
            dosTop = true;
         }
         SND_MNGR.playSound(SoundNames.SFX_GAME_BOWSER_FIRE);
         GraphicsManager.INSTANCE.addEventListener(CustomEvents.ENEMY_SKIN_CHANGE,this.enemySkinChangeHandler,false,0,true);
         this.enemySkinChangeHandler(new Event(CustomEvents.ENEMY_SKIN_CHANGE));
         gotoAndStop(convFrameToInt(FL_END) - 1);
      }
      
      protected function enemySkinChangeHandler(param1:Event) : void
      {
         if(frameIsEmpty(FL_END))
         {
            this.endFrameNum = 2;
            mainAnimTmr = AnimationTimers.ANIM_FAST_TMR;
            ACTIVE_ANIM_TMRS_DCT.clear();
         }
         else
         {
            this.endFrameNum = 3;
            mainAnimTmr = AnimationTimers.ANIM_SLOWEST_TMR;
         }
         gotoAndStop(FL_START);
         ACTIVE_ANIM_TMRS_DCT.clear();
         ACTIVE_ANIM_TMRS_DCT.addItem(mainAnimTmr);
      }
      
      override protected function updateStats() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         super.updateStats();
         if(ny != this.yFinal)
         {
            _loc1_ = 5;
            _loc2_ = 3;
            if(ny < this.yFinal - _loc1_)
            {
               ny += _loc2_;
            }
            else if(ny > this.yFinal + _loc1_)
            {
               ny -= _loc2_;
            }
            else
            {
               ny = this.yFinal;
            }
         }
      }
      
      private function updOffScrnTmrHandler(param1:TimerEvent) : void
      {
         this.updOffScrnTmr.stop();
         this.updOffScrnTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.updOffScrnTmrHandler);
         this.updOffScrnTmr = null;
         updateOffScreen = false;
         destroyOffScreen = true;
         if(!onScreen)
         {
            destroy();
         }
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         if(this.updOffScrnTmr)
         {
            this.updOffScrnTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.updOffScrnTmrHandler);
         }
         GraphicsManager.INSTANCE.removeEventListener(CustomEvents.ENEMY_SKIN_CHANGE,this.enemySkinChangeHandler);
      }
      
      override protected function reattachLsrs() : void
      {
         super.reattachLsrs();
         if(this.updOffScrnTmr)
         {
            this.updOffScrnTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.updOffScrnTmrHandler,false,0,true);
         }
      }
      
      override public function cleanUp() : void
      {
         super.cleanUp();
         this.bowser.FB_DCT.removeItem(this);
      }
      
      override public function checkFrame() : void
      {
         var _loc1_:int = currentFrame;
         if(currentFrame == this.endFrameNum + 1)
         {
            level.addToLevel(new BowserFireBallSpark(this));
            gotoAndStop(FL_START);
         }
      }
   }
}
