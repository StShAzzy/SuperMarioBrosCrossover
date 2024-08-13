package com.smbc.graphics
{
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.AnimationTimers;
   import com.smbc.ground.Canon;
   import com.smbc.main.SimpleAnimatedObject;
   
   public class CanonSmoke extends SimpleAnimatedObject
   {
      
      private static const FL_END:String = "end";
      
      private static const FL_START:String = "start";
       
      
      public function CanonSmoke()
      {
         super();
         stopAnim = false;
         accurateAnimTmr = new CustomTimer(AnimationTimers.DEL_SLOWEST);
      }
      
      public function explode(param1:Canon, param2:Boolean) : void
      {
         gotoAndStop(FL_START);
         if(param2)
         {
            x = param1.x + TILE_SIZE * 0.3 + TILE_SIZE;
         }
         else
         {
            x = param1.x - TILE_SIZE * 0.3;
         }
         y = param1.y + TILE_SIZE / 2;
         level.addToLevel(this);
      }
      
      override public function checkFrame() : void
      {
         if(currentLabel == FL_END)
         {
            destroy();
         }
      }
   }
}
