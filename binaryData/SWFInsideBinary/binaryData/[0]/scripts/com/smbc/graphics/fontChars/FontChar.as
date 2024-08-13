package com.smbc.graphics.fontChars
{
   import com.smbc.data.GameSettings;
   import com.smbc.graphics.BmdInfo;
   import com.smbc.main.SkinObj;
   import com.smbc.text.TextFieldContainer;
   import flash.display.Bitmap;
   import flash.geom.Rectangle;
   
   public class FontChar extends SkinObj
   {
      
      private static const BORDER_SIZE:int = 2;
      
      private static const SPACE_BTW_LINES:int = 24;
      
      private static const CHAR_OBJ_STR:String = "CHAR_OBJ";
      
      private static const MAX_CHAR_WIDTH_STR:String = "MAX_CHAR_WIDTH";
      
      private static const MIN_CHAR_WIDTH_STR:String = "MIN_CHAR_WIDTH";
      
      private static const LC_CHAR_VEC:Vector.<String> = Vector.<String>(["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]);
      
      private static const UC_CHAR_VEC:Vector.<String> = Vector.<String>(["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]);
      
      public static var escapeChar:Boolean;
       
      
      protected var parCont:TextFieldContainer;
      
      protected var parContInd:int;
      
      public var character:String;
      
      public function FontChar(param1:String, param2:FontChar, param3:TextFieldContainer, param4:int)
      {
         super();
         this.parCont = param3;
         this.character = param1;
         this.parContInd = param4;
         var _loc5_:Object = classObj[CHAR_OBJ_STR];
         gotoAndStop(_loc5_[param1] + 1);
      }
      
      protected static function matchLCToUC(param1:Object) : void
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc2_:int = int(LC_CHAR_VEC.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = LC_CHAR_VEC[_loc3_];
            _loc5_ = UC_CHAR_VEC[_loc3_];
            param1[_loc4_] = param1[_loc5_];
            _loc3_++;
         }
      }
      
      public function calcPos(param1:uint, param2:uint) : void
      {
         var _loc3_:FontChar = null;
         var _loc4_:Rectangle = null;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Rectangle = null;
         if(escapeChar)
         {
            this.activateEscapeChar();
            return;
         }
         if(this.character == " ")
         {
            this.parCont.curWordArr = [];
         }
         else if(this.character == "\\")
         {
            this.parCont.curWordArr = [];
            visible = false;
            escapeChar = true;
         }
         else
         {
            this.parCont.curWordArr.push(this);
         }
         if(this.parContInd)
         {
            _loc3_ = this.parCont.fontCharVec[this.parContInd - 1];
            _loc4_ = this.getSingleColorRect(_loc3_.getChildAt(0) as Bitmap,param1);
            _loc5_ = GameSettings.getInterfaceSkinLimited();
            if(_loc5_ == BmdInfo.SKIN_NUM_SMB3_SNES || _loc5_ == BmdInfo.SKIN_NUM_BLASTER_MASTER)
            {
               _loc8_ = this.getSingleColorRect(_loc3_.getChildAt(0) as Bitmap,param2);
               _loc4_ = _loc4_.union(_loc8_);
            }
            _loc6_ = _loc4_.width * 2;
            _loc7_ = _loc4_.x * 2;
            if(_loc6_ == 0)
            {
               _loc6_ = 10;
            }
            if(_loc3_.character == "\"" || _loc3_.character == "*" || _loc3_.character == "-")
            {
               _loc6_ += 2;
            }
            x = _loc3_.x + _loc6_ + _loc7_;
            y = this.parCont.currentLine;
            if(_loc3_.y != y)
            {
               x = 0;
            }
         }
         if(this.parCont.multiline && x > this.parCont.textBlockWidth)
         {
            if(this.character == " ")
            {
               x = _loc3_.x;
            }
            else
            {
               this.newLine();
            }
         }
      }
      
      private function activateEscapeChar() : void
      {
         switch(this.character)
         {
            case "n":
               this.newLine();
         }
         visible = false;
         escapeChar = false;
      }
      
      private function newLine() : void
      {
         var _loc1_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:FontChar = null;
         _loc1_ = this.parCont.curWordArr;
         this.parCont.currentLine += SPACE_BTW_LINES;
         if(!_loc1_.length)
         {
            return;
         }
         var _loc2_:int = int(_loc1_.length);
         var _loc3_:int = FontChar(_loc1_[_loc4_]).x;
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            _loc5_ = _loc1_[_loc4_];
            _loc5_.x -= _loc3_;
            _loc5_.y = this.parCont.currentLine;
            _loc4_++;
         }
      }
      
      protected function getSingleColorRect(param1:Bitmap, param2:uint) : Rectangle
      {
         return param1.bitmapData.getColorBoundsRect(4294967295,param2,true);
      }
   }
}
