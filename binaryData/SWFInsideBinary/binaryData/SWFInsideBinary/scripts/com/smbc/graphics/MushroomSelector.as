package com.smbc.graphics
{
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.AnimationTimers;
   import com.smbc.level.Level;
   import com.smbc.main.SkinObj;
   import flash.events.TimerEvent;
   
   public final class MushroomSelector extends SkinObj
   {
       
      
      public const BOTTOM_MARGIN:int = 16;
      
      private var animTmr:CustomTimer;
      
      public function MushroomSelector()
      {
         this.animTmr = new CustomTimer(AnimationTimers.DEL_SLOW);
         super();
         stopAnim = false;
         mainAnimTmr = this.animTmr;
         this.animTmr.addEventListener(TimerEvent.TIMER,this.animTmrHandler,false,0,true);
         this.animTmr.start();
      }
      
      protected function animTmrHandler(param1:TimerEvent) : void
      {
         animate(this.animTmr);
         checkFrame();
      }
      
      override public function cleanUp() : void
      {
         this.animTmr.removeEventListener(TimerEvent.TIMER,this.animTmrHandler);
         super.cleanUp();
         if(Level.levelInstance)
         {
            Level.levelInstance.ALWAYS_ANIM_DCT.removeItem(this);
         }
      }
   }
}
