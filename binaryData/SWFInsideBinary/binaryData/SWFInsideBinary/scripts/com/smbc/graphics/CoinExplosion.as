package com.smbc.graphics
{
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.AnimationTimers;
   import com.smbc.main.SimpleAnimatedObject;
   import com.smbc.projectiles.FlyingCoin;
   
   public class CoinExplosion extends SimpleAnimatedObject
   {
      
      private static const FL_END:String = "end";
      
      private static const FL_START:String = "start";
       
      
      public function CoinExplosion()
      {
         super();
         stopAnim = false;
         accurateAnimTmr = new CustomTimer(AnimationTimers.DEL_MODERATE);
      }
      
      public function explode(param1:FlyingCoin) : void
      {
         gotoAndStop(FL_START);
         x = param1.nx;
         y = param1.ny;
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
