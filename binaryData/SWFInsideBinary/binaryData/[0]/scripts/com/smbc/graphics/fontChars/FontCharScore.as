package com.smbc.graphics.fontChars
{
   import com.smbc.text.TextFieldContainer;
   import flash.geom.Point;
   
   public class FontCharScore extends FontChar
   {
      
      public static const FONT_NUM:int = 2;
      
      public static const PALETTE_PNT:Point = new Point(227,37);
      
      public static const TYPE_NORMAL:int = 0;
      
      private static const CHAR_VEC:Vector.<String> = Vector.<String>(["0","1","2","3","4","5","6","7","8","9"]);
      
      public static const CHAR_OBJ:Object = new Object();
      
      {
         (function():void
         {
            var _loc1_:* = CHAR_VEC.length;
            var _loc2_:* = 0;
            while(_loc2_ < _loc1_)
            {
               CHAR_OBJ[CHAR_VEC[_loc2_]] = _loc2_;
               _loc2_++;
            }
         })();
      }
      
      public function FontCharScore(param1:String, param2:FontChar, param3:TextFieldContainer, param4:int)
      {
         super(param1,param2,param3,param4);
      }
   }
}
