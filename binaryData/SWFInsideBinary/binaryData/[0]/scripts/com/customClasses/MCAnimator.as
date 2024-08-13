package com.customClasses
{
   import com.explodingRabbit.display.CustomMovieClip;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   
   public class MCAnimator
   {
       
      
      public function MCAnimator()
      {
         super();
      }
      
      public function animate(param1:DisplayObject) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:CustomMovieClip = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(param1 is MovieClip)
         {
            _loc2_ = param1 as MovieClip;
            _loc4_ = _loc2_.currentFrame;
            if(_loc4_ != _loc2_.totalFrames)
            {
               _loc2_.gotoAndStop(_loc4_ + 1);
            }
            else
            {
               _loc2_.gotoAndStop(1);
            }
         }
         else
         {
            _loc3_ = param1 as CustomMovieClip;
            _loc5_ = _loc3_.currentFrame;
            if(_loc5_ != _loc3_.totalFrames)
            {
               _loc3_.gotoAndStop(_loc5_ + 1);
            }
            else
            {
               _loc3_.gotoAndStop(1);
            }
         }
      }
   }
}
