package com.smbc.graphics.fontChars
{
   import com.smbc.text.TextFieldContainer;
   
   public class FontCharSimon extends FontChar
   {
      
      public static const FONT_NUM:int = 3;
      
      public static const TYPE_NORMAL:int = 0;
      
      public static const MAX_CHAR_WIDTH:int = 18;
      
      public static const MIN_CHAR_WIDTH:int = 14;
      
      public static const HEART_CHAR:String = "_";
      
      private static const CHAR_VEC:Vector.<String> = Vector.<String>([HEART_CHAR,"-","0","1","2","3","4","5","6","7","8","9"]);
      
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
      
      public function FontCharSimon(param1:String, param2:FontChar, param3:TextFieldContainer, param4:int)
      {
         super(param1,param2,param3,param4);
      }
   }
}
