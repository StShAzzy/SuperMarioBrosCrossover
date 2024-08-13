package com.smbc.graphics
{
   import com.smbc.characters.Sophia;
   import com.smbc.level.Level;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class SophiaBase extends SubMc
   {
      
      private static const FL_BASE_TURN_END:String = "turnEnd";
      
      private static const FL_BASE_HORZ:String = Sophia.FL_BASE_HORZ;
       
      
      private var sophia:Sophia;
      
      private var level:Level;
      
      public function SophiaBase(param1:Sophia, param2:MovieClip = null)
      {
         super(param1);
         stop();
         hasPState2 = true;
         stopAnim = true;
      }
      
      override protected function addedToStageHandler(param1:Event) : void
      {
         super.addedToStageHandler(param1);
         this.sophia = parent as Sophia;
         this.level = Level.levelInstance;
      }
      
      override public function checkFrame() : void
      {
         if(currentFrameLabel === this.convLab(FL_BASE_TURN_END))
         {
            setStopFrame(FL_BASE_HORZ);
         }
      }
      
      override public function convLab(param1:String) : String
      {
         return param1;
      }
   }
}
