package com.smbc.graphics
{
   import com.smbc.data.AnimationTimers;
   import com.smbc.level.Level;
   import com.smbc.main.SkinObj;
   
   public class PortraitSelector extends SkinObj
   {
      
      public static const FL_NORMAL_START:String = "normalStart";
      
      public static const FL_NORMAL_END:String = "normalEnd";
      
      public static const FL_REVIVE_START:String = "reviveStart";
      
      public static const FL_REVIVE_END:String = "reviveEnd";
      
      public static const FL_FRAME:String = "frame";
      
      public static const FL_HUD_FRAME:String = "hudFrame";
      
      public static const CLASS_NAME:String = "PortraitSelector";
       
      
      public function PortraitSelector()
      {
         super();
         stopAnim = false;
         mainAnimTmr = AnimationTimers.ANIM_SLOWEST_TMR;
         ACTIVE_ANIM_TMRS_DCT.addItem(mainAnimTmr);
         Level.levelInstance.ALWAYS_ANIM_DCT.addItem(this);
      }
      
      public function destroy() : void
      {
         Level.levelInstance.ALWAYS_ANIM_DCT.removeItem(this);
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
