package com.smbc.graphics.fontChars
{
   import com.smbc.text.TextFieldContainer;
   import flash.geom.Point;
   
   public class FontCharMenu extends FontChar
   {
      
      public static const FONT_NUM:int = 0;
      
      public static const PALETTE_PNT:Point = new Point(118,61);
      
      public static const TYPE_NORMAL:int = 0;
      
      public static const TYPE_SELECTED:int = 1;
      
      public static const TYPE_DISABLED:int = 2;
      
      public static const TYPE_CREDITS:int = 3;
      
      public static const MAX_CHAR_WIDTH:int = 12;
      
      public static const MIN_CHAR_WIDTH:int = 10;
      
      private static const CHAR_VEC:Vector.<String> = Vector.<String>([" ","!","\"","#","$","%","&","\'","(",")","*","+",",","-",".","/","0","1","2","3","4","5","6","7","8","9",":",";","<","=",">","?","@","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","[","\\","]","^","_","`","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","{","|","}"]);
      
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
      
      public function FontCharMenu(param1:String, param2:FontChar, param3:TextFieldContainer, param4:int)
      {
         super(param1,param2,param3,param4);
      }
   }
}
