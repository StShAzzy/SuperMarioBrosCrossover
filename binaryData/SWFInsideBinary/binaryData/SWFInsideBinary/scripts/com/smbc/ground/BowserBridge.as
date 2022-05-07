package com.smbc.ground
{
   import com.smbc.data.AnimationTimers;
   
   public class BowserBridge extends Ground
   {
      
      private static const FL_NORMAL:String = "normal";
      
      private static const FL_BREAK_START:String = "breakStart";
       
      
      public function BowserBridge(param1:String)
      {
         if(param1 != FL_BREAK_START)
         {
            inheritedForceShortClassName = "GroundTheme";
         }
         super(param1);
         mainAnimTmr = AnimationTimers.ANIM_MIN_FAST_TMR;
         gotoAndStop("bowserBridge");
         stopAnim = true;
         _animated = true;
      }
      
      public function startBreak() : void
      {
         var _loc1_:BowserBridge = null;
         _loc1_ = new BowserBridge(FL_BREAK_START);
         _loc1_.x = x;
         _loc1_.y = y;
         destroy();
         level.addToLevelNow(_loc1_);
         _loc1_.stopAnim = false;
         _loc1_.level.ANIM_DCT.addItem(_loc1_);
         _loc1_.gotoAndStop(FL_BREAK_START);
      }
      
      override public function cleanUp() : void
      {
         super.cleanUp();
         level.ANIM_DCT.removeItem(this);
      }
      
      override public function checkFrame() : void
      {
         if(currentFrame == totalFrames)
         {
            destroy();
         }
      }
      
      override public function rearm() : void
      {
         super.rearm();
         if(level.bbVec)
         {
            level.bbVec.push(this);
         }
         else
         {
            level.bbVec = new Vector.<BowserBridge>();
            level.bbVec.push(this);
         }
      }
   }
}
