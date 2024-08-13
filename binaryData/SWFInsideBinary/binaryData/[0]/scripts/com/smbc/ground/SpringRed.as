package com.smbc.ground
{
   import com.explodingRabbit.utils.CustomDictionary;
   import com.smbc.characters.Character;
   import com.smbc.data.AnimationTimers;
   import com.smbc.main.AnimatedObject;
   
   public class SpringRed extends Ground
   {
       
      
      private var color:String;
      
      public var defSpringPwr:int = 500;
      
      public var boostSpringPwr:int = 1000;
      
      public const SPRING_OBJS_DCT:CustomDictionary = new CustomDictionary(true);
      
      public function SpringRed()
      {
         super("");
         this.color = "brown";
         gotoAndStop(this.color + "Start");
         stopAnim = true;
         _animated = true;
         mainAnimTmr = AnimationTimers.ANIM_MIN_FAST_TMR;
      }
      
      public function sprBounce() : void
      {
         if(stopAnim)
         {
            stopAnim = false;
            level.ALWAYS_ANIM_DCT.addItem(this);
         }
         this.setColPoints();
      }
      
      override public function setColPoints() : void
      {
         lhTop = hTop;
         lhBot = hBot;
         lhLft = hLft;
         lhRht = hRht;
         lhMidX = hMidX;
         lhMidY = hMidY;
         var _loc1_:Number = this.y + TILE_SIZE;
         hTop = _loc1_ - height;
         hBot = _loc1_;
         hLft = x;
         hRht = x + width;
         hMidX = this.x + width * 0.5;
         hMidY = _loc1_ - height * 0.5;
      }
      
      private function springLaunch(param1:AnimatedObject) : void
      {
         param1.vx = param1.sprVX;
         if(param1 is Character)
         {
            if(Character(param1).springBoost)
            {
               param1.vy = -this.boostSpringPwr;
               Character(param1).springBoost = false;
            }
            else
            {
               param1.vy = -this.defSpringPwr;
            }
            Character(param1).jumped = true;
            Character(param1).springLaunch(this);
         }
         else
         {
            param1.vy = -this.defSpringPwr;
         }
         gotoAndStop(this.color + "Start");
      }
      
      override public function checkFrame() : void
      {
         var _loc1_:AnimatedObject = null;
         if(currentFrameLabel == this.color + "End")
         {
            stopAnim = true;
            level.ALWAYS_ANIM_DCT.removeItem(this);
            gotoAndStop(this.color + "Start");
            for each(_loc1_ in this.SPRING_OBJS_DCT)
            {
               this.springLaunch(_loc1_);
            }
            this.SPRING_OBJS_DCT.clear();
         }
      }
      
      override public function cleanUp() : void
      {
         super.cleanUp();
         if(level)
         {
            level.ALWAYS_ANIM_DCT.removeItem(this);
         }
      }
   }
}
