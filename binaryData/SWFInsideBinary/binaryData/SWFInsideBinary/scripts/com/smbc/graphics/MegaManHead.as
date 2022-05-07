package com.smbc.graphics
{
   import com.smbc.SuperMarioBrosCrossover;
   import com.smbc.characters.base.MegaManBase;
   import com.smbc.level.Level;
   import com.smbc.main.GlobVars;
   import flash.display.MovieClip;
   
   public class MegaManHead extends SubMc
   {
       
      
      private var level:Level;
      
      private const GAME:SuperMarioBrosCrossover = SuperMarioBrosCrossover.game;
      
      private var showOutline:Boolean;
      
      private const HAIR_OUTLINE_X:int = 1;
      
      private const HAIR_OUTLINE_Y:int = -4;
      
      public function MegaManHead(param1:MegaManBase, param2:MovieClip = null)
      {
         this.level = GlobVars.level;
         super(param1);
         hasPState2 = true;
      }
      
      override public function checkFrame() : void
      {
         var _loc6_:String = null;
         var _loc1_:String = parChar.currentLabel;
         var _loc2_:String = parChar.cState;
         var _loc3_:int = parChar.pState;
         var _loc4_:String = "Wind";
         var _loc5_:String = currentLabel;
         if(_loc2_ == "stand")
         {
            setStopFrame("openClosed");
         }
         else if(_loc2_ == "walk")
         {
            if(_loc5_.indexOf(_loc4_) != -1)
            {
               setStopFrame("openClosed");
            }
            else
            {
               setStopFrame("openClosed" + _loc4_);
            }
         }
         else if(_loc2_ == "jump")
         {
            if(_loc5_.indexOf(_loc4_) != -1)
            {
               setStopFrame("openClosed");
            }
            else
            {
               setStopFrame("openClosed" + _loc4_);
            }
         }
         else if(_loc2_ == "flagSlide" || _loc2_ == "vine")
         {
            setStopFrame("climb");
         }
         else if(_loc2_ == "slide")
         {
            if(_loc5_.indexOf(_loc4_) != -1)
            {
               setStopFrame("openClosed");
            }
            else
            {
               setStopFrame("openClosed" + _loc4_);
            }
         }
         else if(_loc2_ == "poweringUp" && _loc3_ == 2)
         {
            if(_loc5_ == convLab("getHelmetEnd"))
            {
               stopAnim = true;
            }
         }
      }
   }
}
