package com.smbc.graphics
{
   import com.smbc.characters.Link;
   import flash.display.MovieClip;
   
   public class LinkSword extends SubMc
   {
      
      private static const SUFFIX_VEC:Vector.<String> = Vector.<String>(["","",""]);
       
      
      public function LinkSword(param1:Link, param2:MovieClip = null)
      {
         super(param1);
         stopAnim = true;
         suffixVec = SUFFIX_VEC.concat();
      }
      
      override public function recolorBmps(param1:Palette, param2:Palette, param3:int = 0, param4:int = 0, param5:Palette = null) : void
      {
      }
   }
}
