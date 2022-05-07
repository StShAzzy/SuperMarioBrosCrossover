package com.smbc.graphics
{
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.AnimationTimers;
   import com.smbc.events.CustomEvents;
   import com.smbc.main.SimpleAnimatedObject;
   import flash.events.Event;
   
   public class CastleFlag extends SimpleAnimatedObject
   {
      
      private static const MAIN_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_SLOWEST_TMR;
      
      private static const FL_END:String = "end";
      
      private static const FL_START:String = "start";
       
      
      public function CastleFlag()
      {
         super();
         stopAnim = false;
         mainAnimTmr = MAIN_ANIM_TMR;
         EVENT_MNGR.addEventListener(CustomEvents.LEVEL_SET_INDEXES,this.levelSetIndexesHandler,false,0,true);
      }
      
      protected function levelSetIndexesHandler(param1:Event) : void
      {
         if(parent)
         {
            parent.setChildIndex(this,1);
         }
      }
      
      override protected function addedToStageHandler(param1:Event) : void
      {
         super.addedToStageHandler(param1);
         level.addToLevelNow(this);
      }
      
      override public function checkFrame() : void
      {
         if(currentLabel == FL_END)
         {
            gotoAndStop(FL_START);
         }
      }
   }
}
