package com.smbc.level
{
   import com.explodingRabbit.utils.CustomDictionary;
   import com.smbc.SuperMarioBrosCrossover;
   import com.smbc.errors.SingletonError;
   import com.smbc.graphics.Background;
   import com.smbc.graphics.HudAlwaysOnTop;
   import com.smbc.graphics.ScorePop;
   
   public class LevelForeground extends LevelGraphicLayerContainer
   {
      
      public static var instance:LevelForeground;
      
      private static const HudTop:HudAlwaysOnTop = HudAlwaysOnTop.INSTANCE;
       
      
      public var SCORE_POP_DCT:CustomDictionary;
      
      public function LevelForeground(param1:Level)
      {
         this.SCORE_POP_DCT = new CustomDictionary();
         super(param1);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
         SuperMarioBrosCrossover.game.addChild(this);
         addChild(HudTop);
         type = Background.TYPE_FG;
      }
      
      public function addScorePop(param1:ScorePop) : void
      {
         this.SCORE_POP_DCT.addItem(param1);
         HudTop.addChild(param1);
      }
      
      public function removeScorePop(param1:ScorePop) : void
      {
         this.SCORE_POP_DCT.removeItem(param1);
      }
      
      private function removeAllScorePops() : void
      {
         var _loc1_:ScorePop = null;
         for each(_loc1_ in this.SCORE_POP_DCT)
         {
            _loc1_.destroy();
         }
      }
      
      public function updateScorePops() : void
      {
         var _loc1_:ScorePop = null;
         for each(_loc1_ in this.SCORE_POP_DCT)
         {
            _loc1_.update();
         }
      }
      
      override public function destroy() : void
      {
         this.removeAllScorePops();
         super.destroy();
         instance = null;
      }
   }
}
