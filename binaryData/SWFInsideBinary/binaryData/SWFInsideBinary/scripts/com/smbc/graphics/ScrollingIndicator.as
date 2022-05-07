package com.smbc.graphics
{
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.AnimationTimers;
   import com.smbc.enums.ScrollingIndicatorDirection;
   import com.smbc.level.Level;
   import com.smbc.main.SkinObj;
   import flash.events.TimerEvent;
   
   public class ScrollingIndicator extends SkinObj
   {
      
      public static const MAX_WIDTH:int = 18;
      
      public static const MAX_HEIGHT:int = 16;
      
      private static const FL_DOWN_START:String = "downStart";
      
      private static const FL_DOWN_END:String = "downEnd";
      
      private static const FL_UP_START:String = "upStart";
      
      private static const FL_UP_END:String = "upEnd";
       
      
      private var direction:ScrollingIndicatorDirection;
      
      private var animTmr:CustomTimer;
      
      public function ScrollingIndicator(param1:ScrollingIndicatorDirection)
      {
         this.animTmr = new CustomTimer(AnimationTimers.DEL_SLOWEST);
         super();
         this.direction = param1;
         if(Level.levelInstance)
         {
            Level.levelInstance.ALWAYS_ANIM_DCT.addItem(this);
         }
         mainAnimTmr = this.animTmr;
         this.animTmr.addEventListener(TimerEvent.TIMER,this.animTmrHandler,false,0,true);
         this.animTmr.start();
         stopAnim = false;
         if(param1 == ScrollingIndicatorDirection.Down)
         {
            gotoAndStop(FL_DOWN_START);
         }
         else if(param1 == ScrollingIndicatorDirection.Up)
         {
            gotoAndStop(FL_UP_START);
         }
      }
      
      protected function animTmrHandler(param1:TimerEvent) : void
      {
         animate(this.animTmr);
         this.checkFrame();
      }
      
      override public function checkFrame() : void
      {
         if(this.direction == ScrollingIndicatorDirection.Down && previousFrameLabelIs(FL_DOWN_END))
         {
            gotoAndStop(FL_DOWN_START);
         }
         else if(this.direction == ScrollingIndicatorDirection.Up && previousFrameLabelIs(FL_UP_END))
         {
            gotoAndStop(FL_UP_START);
         }
      }
      
      override public function cleanUp() : void
      {
         this.animTmr.removeEventListener(TimerEvent.TIMER,this.animTmrHandler);
         super.cleanUp();
      }
   }
}
