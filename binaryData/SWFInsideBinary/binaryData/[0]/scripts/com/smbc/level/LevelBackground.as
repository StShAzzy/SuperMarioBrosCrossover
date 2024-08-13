package com.smbc.level
{
   import com.smbc.SuperMarioBrosCrossover;
   import com.smbc.errors.SingletonError;
   import com.smbc.graphics.Background;
   import com.smbc.graphics.TopScreenText;
   import flash.display.DisplayObject;
   
   public class LevelBackground extends LevelGraphicLayerContainer
   {
      
      public static var instance:LevelBackground;
       
      
      public function LevelBackground(param1:Level)
      {
         super(param1);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
         var _loc2_:SuperMarioBrosCrossover = SuperMarioBrosCrossover.game;
         _loc2_.addChildAt(this,_loc2_.getChildIndex(param1));
         type = Background.TYPE_BG;
      }
      
      override public function initiateLevelHandler() : void
      {
         super.initiateLevelHandler();
      }
      
      override public function setBackgrounds() : void
      {
         var _loc4_:DisplayObject = null;
         super.setBackgrounds();
         var _loc1_:Background = BG_VEC[0];
         var _loc2_:int = _loc1_.numChildren;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = _loc1_.getChildAt(_loc3_);
            if(_loc4_ is TopScreenText)
            {
               _loc1_.removeChild(_loc4_);
            }
            _loc3_++;
         }
      }
      
      override public function destroy() : void
      {
         super.destroy();
         instance = null;
      }
   }
}
