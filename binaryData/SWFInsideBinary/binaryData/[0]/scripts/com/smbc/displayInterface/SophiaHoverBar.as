package com.smbc.displayInterface
{
   import com.smbc.characters.Sophia;
   import com.smbc.level.LevelForeground;
   import com.smbc.main.SkinObj;
   
   public class SophiaHoverBar extends SkinObj
   {
      
      private static const FRAME_OFS:int = 1;
      
      private static const X_POS:int = 30;
      
      private static const Y_POS:int = 100;
       
      
      private var sophia:Sophia;
      
      public function SophiaHoverBar(param1:Sophia)
      {
         super();
         this.sophia = param1;
         x = X_POS;
         y = Y_POS;
         stop();
         LevelForeground.instance.addChild(this);
      }
      
      public function updateDisplay(param1:int) : void
      {
         gotoAndStop(param1 + FRAME_OFS);
      }
   }
}
