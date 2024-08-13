package com.smbc.graphics
{
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.AnimationTimers;
   import com.smbc.main.SkinObj;
   import flash.events.TimerEvent;
   
   public class PortraitSelector extends SkinObj
   {
      
      public static const FL_NORMAL_START:String = "normalStart";
      
      public static const FL_NORMAL_END:String = "normalEnd";
      
      public static const FL_REVIVE_START:String = "reviveStart";
      
      public static const FL_REVIVE_END:String = "reviveEnd";
      
      public static const FL_FRAME:String = "frame";
      
      public static const FL_HUD_FRAME:String = "hudFrame";
      
      public static const CLASS_NAME:String = "PortraitSelector";
       
      
      private var animTmr:CustomTimer;
      
      public function PortraitSelector()
      {
         this.animTmr = new CustomTimer(AnimationTimers.DEL_SLOWEST);
         super();
         stopAnim = false;
         mainAnimTmr = this.animTmr;
         this.animTmr.addEventListener(TimerEvent.TIMER,this.animTmrHandler,false,0,true);
         this.animTmr.start();
      }
      
      protected function animTmrHandler(param1:TimerEvent) : void
      {
         animate(this.animTmr);
         this.checkFrame();
      }
      
      public function destroy() : void
      {
         this.animTmr.removeEventListener(TimerEvent.TIMER,this.animTmrHandler);
      }
      
      override public function checkFrame() : void
      {
         var _loc1_:String = currentLabel;
         if(_loc1_ == FL_NORMAL_END)
         {
            gotoAndStop(FL_NORMAL_START);
         }
         else if(_loc1_ == FL_REVIVE_END)
         {
            gotoAndStop(FL_REVIVE_START);
         }
      }
   }
}
