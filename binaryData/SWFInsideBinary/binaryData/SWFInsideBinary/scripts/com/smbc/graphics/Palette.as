package com.smbc.graphics
{
   import com.explodingRabbit.utils.ArrayUtils;
   import com.explodingRabbit.utils.ColorUtils;
   import com.explodingRabbit.utils.CustomDictionary;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class Palette
   {
      
      private static var GbPalettesClass:Class = Palette_GbPalettesClass;
      
      public static const TYPE_MAP:int = 0;
      
      public static const TYPE_ENEMY:int = 1;
      
      public static const TYPE_INTERFACE:int = 2;
      
      public static const TYPE_CHARACTER:int = 3;
      
      public static var GBpalette:Palette;
      
      public static const MAIN_PAL_ARR:Array = [];
      
      private static const CHAR_PAL_ARR:Array = [];
      
      public static const COLOR_NEW_REGULAR_PALETTE:uint = 4294967040;
      
      public static const COLOR_NEW_FLASH_PALETTE:uint = 4278255360;
      
      public static const COLOR_NEW_ROW:uint = 4294901760;
      
      public static const COLOR_STANDARD_PALETTE:uint = 4294902015;
      
      public static const COLOR_ANIM_FRAME_DELAY:uint = 4278255615;
      
      public static const COLOR_FRAME:uint = 4285477272;
      
      public static const STANDARD_COLOR_DCT:CustomDictionary = new CustomDictionary();
      
      private static const ITEM_NUM_MAP_REG_START:int = 40;
      
      public static const COLOR_END:uint = 0;
      
      private static const MIN_THEME:int = 1;
      
      private static const MIN_SET:int = 1;
      
      private static const TYPE_WIDTH:int = 21;
      
      private static const TYPE_COL_WIDTH:int = 1;
      
      private static const THEME_BORDER:int = 1;
      
      private static const SPACE_BTW_TYPES:int = 1;
      
      private static const SET_HEIGHT:int = 99;
      
      private static const SPACE_BTW_SETS:int = 1;
      
      private static const NUM_TYPES_PER_THEME_MAIN:int = 3;
      
      private static const NUM_TYPES_PER_THEME_CHAR:int = 1;
      
      public static const NUM_GB_PALETTE_GROUPS:int = 3;
      
      public static const NUM_GB_COLORS_PER_GROUP:int = 4;
      
      private static const LUM_MULT:Number = 63.75;
      
      private static const GB_LUM_PAL_1:int = LUM_MULT * 3;
      
      private static const GB_LUM_PAL_2:int = LUM_MULT * 2;
      
      private static const GB_LUM_PAL_3:int = LUM_MULT * 1;
      
      private static var GB_COL_0:uint;
      
      private static var GB_COL_1:uint;
      
      private static var GB_COL_2:uint;
      
      private static var GB_COL_3:uint;
      
      {
         STANDARD_COLOR_DCT.addItem(COLOR_NEW_REGULAR_PALETTE);
         STANDARD_COLOR_DCT.addItem(COLOR_NEW_FLASH_PALETTE);
         STANDARD_COLOR_DCT.addItem(COLOR_NEW_ROW);
         STANDARD_COLOR_DCT.addItem(COLOR_STANDARD_PALETTE);
         STANDARD_COLOR_DCT.addItem(COLOR_ANIM_FRAME_DELAY);
      }
      
      private var data:Array;
      
      private var charNum:int = -1;
      
      private var itemNum:int;
      
      private var bmd:BitmapData;
      
      private var skin:int;
      
      private var theme:int;
      
      private var set:int;
      
      private var type:int;
      
      private var typeColNum:int;
      
      private var _numRows:int;
      
      private var _numCols:int;
      
      private var numColorsPerStandardRow:int;
      
      public var newColorsEnd:int;
      
      private var numTypesPerTheme:int;
      
      public function Palette(param1:Array)
      {
         this.data = [];
         super();
         this.data = param1;
         this.setUpDimensions();
         this.getNewColorsEnd();
      }
      
      public static function savePalette(param1:Palette, param2:int, param3:int, param4:int, param5:int = 1) : void
      {
         if(param2 == TYPE_CHARACTER)
         {
            ArrayUtils.writeNestedArray(CHAR_PAL_ARR,param1,param4,param3);
         }
         else
         {
            ArrayUtils.writeNestedArray(MAIN_PAL_ARR,param1,param2,param3,param4,param5);
         }
      }
      
      public static function getPalette(param1:int, param2:int, param3:int, param4:int = 1) : Palette
      {
         if(param1 == TYPE_CHARACTER)
         {
            return ArrayUtils.readNestedArr(CHAR_PAL_ARR,param3,param2);
         }
         return ArrayUtils.readNestedArr(MAIN_PAL_ARR,param1,param2,int,param3,param4);
      }
      
      public static function createGameBoyPalette() : Palette
      {
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         if(GBpalette)
         {
            throw new Error("Gameboy palette already created");
         }
         var _loc1_:BitmapData = Bitmap(new GbPalettesClass()).bitmapData;
         GbPalettesClass = null;
         var _loc2_:Array = [];
         var _loc3_:int = _loc1_.height;
         var _loc4_:int = _loc1_.width;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = [];
            _loc2_[_loc5_] = _loc6_;
            _loc7_ = 0;
            while(_loc7_ < _loc4_)
            {
               _loc6_[_loc7_] = _loc1_.getPixel32(_loc7_,_loc5_);
               _loc7_++;
            }
            _loc5_++;
         }
         GBpalette = new Palette(_loc2_);
         GB_COL_0 = GBpalette.readColor(0,0);
         GB_COL_1 = GBpalette.readColor(0,1);
         GB_COL_2 = GBpalette.readColor(0,2);
         GB_COL_3 = GBpalette.readColor(0,3);
         return GBpalette;
      }
      
      private function setUpDimensions() : void
      {
         this._numRows = this.data.length;
         var _loc1_:int = 0;
         while(_loc1_ < this._numRows)
         {
            this._numCols = Math.max(this._numCols,(this.data[_loc1_] as Array).length);
            _loc1_++;
         }
      }
      
      public function get numRows() : int
      {
         return this._numRows;
      }
      
      public function get numCols() : int
      {
         return this._numCols;
      }
      
      public function toString() : String
      {
         return this.data.toString();
      }
      
      private function getNewColorsEnd() : int
      {
         if(this.getRowFirstColor(0) != COLOR_STANDARD_PALETTE)
         {
            return 0;
         }
         var _loc1_:Array = this.data[0];
         var _loc2_:int = _loc1_.length;
         var _loc3_:int = 1;
         while(_loc3_ < _loc2_)
         {
            if(_loc1_[_loc3_] == COLOR_STANDARD_PALETTE)
            {
               this.newColorsEnd = _loc3_;
               break;
            }
            _loc3_++;
         }
         return this.newColorsEnd;
      }
      
      public function extractPaletteByColorType(param1:uint) : Palette
      {
         var _loc7_:uint = 0;
         if(param1 == COLOR_NEW_ROW)
         {
            throw new Error("cannot use new row as color type");
         }
         var _loc2_:int = -1;
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this._numRows)
         {
            _loc7_ = this.getRowFirstColor(_loc4_);
            if(_loc2_ == -1)
            {
               if(_loc7_ == param1)
               {
                  _loc2_ = _loc4_;
               }
            }
            else if(_loc7_ != COLOR_NEW_ROW && _loc7_ != param1)
            {
               _loc3_ = _loc4_ - 1;
               break;
            }
            _loc4_++;
         }
         if(_loc2_ == -1)
         {
            return null;
         }
         if(_loc3_ == -1)
         {
            _loc3_ = this._numRows - 1;
         }
         var _loc5_:Array = [];
         var _loc6_:int = _loc2_;
         while(_loc6_ <= _loc3_)
         {
            _loc5_.push(_loc6_);
            _loc6_++;
         }
         return this.extractRowsAsPalette(_loc5_);
      }
      
      private function drawToPalSheet() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this._numRows)
         {
            if(this.rowIsGlobal(_loc1_))
            {
               _loc2_ = this.itemNum;
            }
            else
            {
               _loc2_ = this.itemNum + (SET_HEIGHT + SPACE_BTW_SETS) * this.set;
            }
            _loc3_ = this.getXPos(_loc1_,_loc2_);
            _loc4_ = 0;
            while(_loc4_ < this._numCols)
            {
               this.bmd.setPixel32(_loc3_ + _loc4_,_loc2_,this.readColor(_loc1_,_loc4_));
               _loc4_++;
            }
            _loc1_++;
         }
      }
      
      private function getXPos(param1:int, param2:int) : int
      {
         var _loc3_:int = 0;
         if(param1 != 0)
         {
            param1 = 1;
         }
         param1--;
         param1++;
         var _loc4_:int = param1 * (this.numTypesPerTheme * TYPE_WIDTH + this.numTypesPerTheme * TYPE_COL_WIDTH + THEME_BORDER * 2) + 1;
         if(param1 == 0)
         {
            _loc4_ = 1;
         }
         var _loc5_:int = this.typeColNum * TYPE_WIDTH + (this.typeColNum * TYPE_COL_WIDTH + 1);
         return int(_loc4_ + _loc5_);
      }
      
      private function getYPos(param1:Boolean = false) : int
      {
         if(param1)
         {
            return this.itemNum;
         }
         return this.itemNum + (SET_HEIGHT + SPACE_BTW_SETS) * this.set;
      }
      
      public function convToGrayScale(param1:Boolean = true) : Palette
      {
         var _loc5_:Array = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:uint = 0;
         var _loc9_:int = 0;
         var _loc2_:Palette = this.clone();
         var _loc3_:Function = ColorUtils.luminance;
         var _loc4_:int = 0;
         while(_loc4_ < this._numRows)
         {
            _loc6_ = (_loc5_ = _loc2_.data[_loc4_]).length;
            _loc7_ = 0;
            while(_loc7_ < _loc6_)
            {
               if(!(param1 && _loc7_ == 0))
               {
                  _loc8_ = _loc5_[_loc7_];
                  if((_loc9_ = _loc3_(_loc8_)) < GB_LUM_PAL_3)
                  {
                     _loc8_ = GB_COL_3;
                  }
                  else if(_loc9_ < GB_LUM_PAL_2)
                  {
                     _loc8_ = GB_COL_2;
                  }
                  else if(_loc9_ < GB_LUM_PAL_1)
                  {
                     _loc8_ = GB_COL_1;
                  }
                  else
                  {
                     _loc8_ = GB_COL_0;
                  }
                  _loc5_[_loc7_] = _loc8_;
               }
               _loc7_++;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function convToGameBoy(param1:int, param2:int, param3:Boolean = true) : Palette
      {
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:uint = 0;
         var _loc10_:int = 0;
         var _loc4_:Palette = this.convToGrayScale(param3);
         var _loc5_:int = 0;
         while(_loc5_ < this._numRows)
         {
            _loc7_ = (_loc6_ = _loc4_.data[_loc5_]).length;
            _loc8_ = 0;
            while(_loc8_ < _loc7_)
            {
               if(!(param3 && _loc8_ == 0))
               {
                  _loc9_ = _loc6_[_loc8_];
                  _loc10_ = 0;
                  if(_loc9_ == GB_COL_1)
                  {
                     _loc10_ = 1;
                  }
                  else if(_loc9_ == GB_COL_2)
                  {
                     _loc10_ = 2;
                  }
                  else if(_loc9_ == GB_COL_3)
                  {
                     _loc10_ = 3;
                  }
                  _loc9_ = GBpalette.readColor(param1 - 1,NUM_GB_COLORS_PER_GROUP * param2 + _loc10_);
                  _loc6_[_loc8_] = _loc9_;
               }
               _loc8_++;
            }
            _loc5_++;
         }
         return _loc4_;
      }
      
      private function readNewPalette() : void
      {
         var _loc5_:int = 0;
         var _loc1_:int = this.getYPos(true);
         var _loc2_:int = this.getXPos(0,_loc1_);
         var _loc3_:uint = this.bmd.getPixel32(_loc2_,_loc1_);
         this.data[0] = [];
         var _loc4_:int = 0;
         while(_loc3_ != COLOR_END)
         {
            this.data[0][_loc4_] = _loc3_;
            if(_loc3_ == COLOR_STANDARD_PALETTE && _loc4_ != 0)
            {
               this.newColorsEnd = _loc4_;
            }
            _loc4_++;
            _loc3_ = this.bmd.getPixel32(_loc2_ + _loc4_,_loc1_);
         }
         this.numColorsPerStandardRow = _loc4_;
         this._numCols = this.numColorsPerStandardRow;
      }
      
      public function readOldPalette(param1:BitmapData, param2:Point) : Array
      {
         var _loc4_:int = 0;
         var _loc7_:int = 0;
         var _loc3_:uint = param1.getPixel32(param2.x,param2.y);
         if(_loc3_ != COLOR_STANDARD_PALETTE)
         {
            throw new Error("must have standard palette");
         }
         this.data[0] = [];
         var _loc5_:int = 0;
         while(_loc3_ != COLOR_END)
         {
            _loc3_ = param1.getPixel32(param2.x,param2.y + _loc5_);
            if(_loc3_ != COLOR_END && _loc3_ != COLOR_NEW_ROW && _loc3_ != COLOR_NEW_REGULAR_PALETTE && _loc3_ != COLOR_NEW_FLASH_PALETTE)
            {
               _loc4_ = _loc5_;
            }
            this.data[_loc5_] = [_loc3_];
            _loc5_++;
         }
         this._numRows = _loc5_ - 1;
         _loc3_ = param1.getPixel32(param2.x,param2.y);
         _loc5_ = 0;
         while(_loc3_ != COLOR_END)
         {
            this.data[0][_loc5_] = _loc3_;
            if(_loc3_ == COLOR_STANDARD_PALETTE && _loc5_ != 0)
            {
               this.newColorsEnd = _loc5_;
            }
            _loc5_++;
            _loc3_ = param1.getPixel32(param2.x + _loc5_,param2.y);
         }
         this.numColorsPerStandardRow = _loc5_;
         this._numCols = this.numColorsPerStandardRow;
         var _loc6_:int = this._numRows;
         if(_loc4_)
         {
            _loc6_ = _loc4_;
         }
         _loc5_ = 1;
         while(_loc5_ < _loc6_)
         {
            _loc7_ = 0;
            while(_loc7_ < this.numColorsPerStandardRow)
            {
               this.data[_loc5_][_loc7_] = param1.getPixel32(param2.x + _loc7_,param2.y + _loc5_);
               _loc7_++;
            }
            _loc5_++;
         }
         if(_loc4_)
         {
            _loc5_ = _loc4_;
            while(_loc5_ < this._numRows)
            {
               _loc7_ = 1;
               _loc3_ = param1.getPixel32(param2.x + _loc7_,param2.y + _loc5_);
               while(_loc3_ != COLOR_END)
               {
                  this.data[_loc5_][_loc7_] = _loc3_;
                  _loc7_++;
                  _loc3_ = param1.getPixel32(param2.x + _loc7_,param2.y + _loc5_);
               }
               _loc5_++;
            }
         }
         this.data.push(this.newColorsEnd);
         return this.data;
      }
      
      public function getRowFirstColor(param1:int) : uint
      {
         return uint(ArrayUtils.readNestedArr(this.data,param1,0));
      }
      
      private function rowIsGlobal(param1:int) : Boolean
      {
         var _loc3_:int = 0;
         if(this.type == TYPE_CHARACTER)
         {
            return false;
         }
         var _loc2_:uint = this.getRowFirstColor(param1);
         if(_loc2_ == COLOR_NEW_FLASH_PALETTE || _loc2_ == COLOR_STANDARD_PALETTE || _loc2_ == COLOR_ANIM_FRAME_DELAY)
         {
            return true;
         }
         if(_loc2_ == COLOR_NEW_ROW)
         {
            _loc3_ = param1 - 1;
            _loc2_ = this.getRowFirstColor(_loc3_);
            while(_loc2_ != COLOR_NEW_REGULAR_PALETTE && _loc2_ != COLOR_NEW_FLASH_PALETTE && _loc2_ != COLOR_STANDARD_PALETTE)
            {
               _loc3_--;
               _loc2_ = this.getRowFirstColor(_loc3_);
            }
            if(_loc2_ == COLOR_NEW_FLASH_PALETTE)
            {
               return true;
            }
         }
         return false;
      }
      
      public function extractRowsAsPalette(... rest) : Palette
      {
         var _loc5_:int = 0;
         var _loc6_:Array = null;
         if(rest[0] is Array)
         {
            rest = rest[0];
         }
         var _loc2_:int = rest.length;
         var _loc3_:Array = [];
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc5_ = rest[_loc4_];
            if(_loc6_ = this.data[_loc5_])
            {
               _loc3_.push(_loc6_.concat());
            }
            _loc4_++;
         }
         return new Palette(_loc3_);
      }
      
      public function clone() : Palette
      {
         var _loc1_:int = this.numRows;
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_)
         {
            _loc2_[_loc3_] = _loc3_;
            _loc3_++;
         }
         return this.extractRowsAsPalette(_loc2_);
      }
      
      public function addToPalArr() : void
      {
         savePalette(this,this.type,this.skin,this.theme,this.set);
      }
      
      public function readColor(param1:int, param2:int) : uint
      {
         return uint(ArrayUtils.readNestedArr(this.data,param1,param2));
      }
   }
}
