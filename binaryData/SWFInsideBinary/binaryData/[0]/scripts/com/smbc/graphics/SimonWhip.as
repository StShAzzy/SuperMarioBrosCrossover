package com.smbc.graphics
{
   import com.smbc.characters.Simon;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.PaletteTypes;
   import com.smbc.utils.GameLoopTimer;
   import flash.display.MovieClip;
   
   public class SimonWhip extends SubMc
   {
      
      private static const SUFFIX_VEC:Vector.<String> = Vector.<String>(["_0","_1","_2"]);
      
      private static const PAL_ORDER_ARR:Array = [PaletteTypes.FLASH_GENERAL];
       
      
      private var simon:Simon;
      
      public function SimonWhip(param1:Simon, param2:MovieClip = null)
      {
         super(param1);
         this.simon = param1;
         if(param2)
         {
            createMasterFromMc(param2);
         }
         suffixVec = SUFFIX_VEC.concat();
         palOrderArr = PAL_ORDER_ARR.concat();
         flashTmr = new GameLoopTimer(AnimationTimers.DEL_FAST);
      }
      
      override public function flash(param1:Boolean = true) : void
      {
         if(!parent || this.simon.whipLevel != 3)
         {
            return;
         }
         super.flash(param1);
      }
      
      override public function convLab(param1:String) : String
      {
         return param1 + "_" + this.simon.whipLevel.toString();
      }
      
      override public function gotoAndStop(param1:Object, param2:String = null) : void
      {
         if(parChar.replaceColor)
         {
            resetColor();
         }
         super.cmcGotoAndStop(param1,param2);
      }
   }
}
