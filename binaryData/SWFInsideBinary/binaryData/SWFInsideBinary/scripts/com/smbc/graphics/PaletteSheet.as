package com.smbc.graphics
{
   import com.explodingRabbit.utils.ArrayUtils;
   import com.explodingRabbit.utils.CustomDictionary;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.utils.Dictionary;
   
   public class PaletteSheet
   {
      
      public static const TYPE_MAIN:String = "main";
      
      public static const TYPE_CHARACTER:String = "character";
      
      private static const TYPE_WIDTH:int = 21;
      
      private static const TYPE_COL_WIDTH:int = 1;
      
      private static const THEME_BORDER:int = 1;
      
      private static const SPACE_BTW_TYPES:int = 1;
      
      private static const SET_HEIGHT:int = 99;
      
      private static const NUM_ITEMS_PER_SET:int = 99;
      
      private static const SPACE_BTW_SETS:int = 1;
      
      public static const ITEM_NUM_MAP_REG_START:int = 40;
      
      private static const COLOR_END:uint = Palette.COLOR_END;
      
      private static const NUM_COL_PER_TYPE_DCT:Dictionary = new Dictionary();
      
      public static const THEME_TYPE_MAP:int = 0;
      
      public static const THEME_TYPE_ENEMY:int = 1;
      
      public static const THEME_TYPE_INTERFACE:int = 2;
      
      public static const THEME_TYPE_CHARACTER:int = 3;
      
      private static var standardColDct:CustomDictionary;
      
      {
         NUM_COL_PER_TYPE_DCT[TYPE_MAIN] = 3;
         NUM_COL_PER_TYPE_DCT[TYPE_CHARACTER] = 1;
      }
      
      private var data:Array;
      
      private var infoNum:int;
      
      private var bmd:BitmapData;
      
      private var sheetType:String;
      
      private var numThemeTypes:int;
      
      private var numRows:int;
      
      private var numCols:int;
      
      public function PaletteSheet(param1:Bitmap, param2:String, param3:int)
      {
         this.data = [];
         super();
         if(!standardColDct)
         {
            standardColDct = Palette.STANDARD_COLOR_DCT;
         }
         this.bmd = param1.bitmapData;
         this.sheetType = param2;
         this.infoNum = param3;
         this.numThemeTypes = NUM_COL_PER_TYPE_DCT[param2];
         this.setUpDimensions();
         this.setUpData();
      }
      
      private function setUpDimensions() : void
      {
         var _loc1_:int = this.numThemeTypes * TYPE_WIDTH + this.numThemeTypes * TYPE_COL_WIDTH + THEME_BORDER * 2;
         this.numCols = Math.round(this.bmd.width / _loc1_);
         var _loc2_:int = SET_HEIGHT + SPACE_BTW_SETS;
         this.numRows = Math.round(this.bmd.height / _loc2_);
      }
      
      private function setUpData() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:uint = 0;
         var _loc8_:int = 0;
         var _loc9_:Boolean = false;
         var _loc10_:Array = null;
         var _loc11_:uint = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.numRows)
         {
            _loc2_ = 0;
            while(_loc2_ < this.numCols)
            {
               _loc3_ = 0;
               while(_loc3_ < this.numThemeTypes)
               {
                  _loc4_ = this.getXPos(_loc2_,_loc3_);
                  _loc5_ = 1;
                  while(_loc5_ <= NUM_ITEMS_PER_SET)
                  {
                     _loc6_ = _loc5_ + (SET_HEIGHT + SPACE_BTW_SETS) * _loc1_;
                     _loc7_ = this.bmd.getPixel32(_loc4_,_loc6_);
                     _loc8_ = 0;
                     if(_loc7_ != COLOR_END)
                     {
                        _loc9_ = false;
                        for each(_loc11_ in standardColDct)
                        {
                           if(_loc7_ == _loc11_)
                           {
                              _loc9_ = true;
                              break;
                           }
                        }
                        _loc10_ = ArrayUtils.readWriteNestedArr(this.data,_loc5_,_loc3_,_loc1_,_loc2_);
                        while(_loc8_ < TYPE_WIDTH)
                        {
                           _loc10_[_loc8_] = _loc7_;
                           _loc8_++;
                           _loc7_ = this.bmd.getPixel32(_loc4_ + _loc8_,_loc6_);
                        }
                        _loc8_--;
                        _loc7_ = _loc10_[_loc8_];
                        while(_loc7_ == COLOR_END && _loc8_ >= 0)
                        {
                           _loc10_.pop();
                           _loc8_--;
                           _loc7_ = _loc10_[_loc8_];
                        }
                     }
                     _loc5_++;
                  }
                  _loc3_++;
               }
               _loc2_++;
            }
            _loc1_++;
         }
      }
      
      private function convThemeTypeToUsable(param1:int) : int
      {
         if(param1 == THEME_TYPE_CHARACTER)
         {
            return 0;
         }
         return param1;
      }
      
      private function getArrFromBox(param1:int, param2:int, param3:int, param4:int = 0) : Array
      {
         return ArrayUtils.readNestedArr(this.data,param1,this.convThemeTypeToUsable(param4),param2,param3);
      }
      
      private function getArrFromRow(param1:int, param2:int, param3:int = 0, param4:Boolean = false) : Array
      {
         var _loc6_:int = 0;
         var _loc7_:Array = null;
         var _loc5_:Array = [];
         if(param4)
         {
            if(param3 == THEME_TYPE_CHARACTER)
            {
               _loc7_ = this.getArrFromBox(param1,param2,0,param3);
            }
            else
            {
               _loc7_ = this.getArrFromBox(param1,0,0,param3);
            }
            if(!_loc7_)
            {
               return _loc5_;
            }
            _loc5_[0] = _loc7_;
            _loc6_ = 1;
         }
         while(_loc6_ < this.numCols)
         {
            if(!(_loc7_ = this.getArrFromBox(param1,param2,_loc6_,param3)))
            {
               break;
            }
            _loc5_[_loc6_] = _loc7_;
            _loc6_++;
         }
         return _loc5_;
      }
      
      private function getStandardArr(param1:int, param2:int = 0, param3:int = 0, param4:int = 0) : Array
      {
         if(this.sheetType == TYPE_CHARACTER)
         {
            return this.getArrFromBox(param1,param2,0,0);
         }
         return this.getArrFromBox(param1,0,0,param4);
      }
      
      public function getMapThemePalette(param1:int, param2:int, param3:int) : Palette
      {
         if(param1 >= ITEM_NUM_MAP_REG_START)
         {
            throw new Error("this is not a map theme item");
         }
         if(param2 == 0)
         {
            throw new Error("set greater than 0 must be used for map theme items");
         }
         var _loc4_:Array = [];
         var _loc5_:Array;
         if(_loc5_ = this.getArrFromBox(param1,0,param3,THEME_TYPE_MAP))
         {
            _loc4_.push(_loc5_);
         }
         if(_loc5_ = this.getArrFromBox(param1,param2,param3,THEME_TYPE_MAP))
         {
            _loc4_.push(_loc5_);
         }
         return new Palette(_loc4_);
      }
      
      public function getPaletteFromBox(param1:int, param2:int, param3:int, param4:int = 0) : Palette
      {
         return new Palette(this.getArrFromBox(param1,param2,param3,param4));
      }
      
      public function getPaletteFromRow(param1:int, param2:int, param3:int = 0, param4:Boolean = false) : Palette
      {
         return new Palette(this.getArrFromRow(param1,param2,param3,param4));
      }
      
      public function getInOutPalette(param1:int, param2:int, param3:int, param4:int) : Palette
      {
         if(this.sheetType == TYPE_MAIN && param4 == THEME_TYPE_MAP && param1 < ITEM_NUM_MAP_REG_START)
         {
            return this.getMapThemePalette(param1,param2,param3);
         }
         var _loc5_:Array = [];
         var _loc6_:Array;
         if(_loc6_ = this.getStandardArr(param1,param2,param3,param4))
         {
            _loc5_.push(_loc6_);
         }
         if(_loc6_ = this.getArrFromBox(param1,param2,param3,param4))
         {
            _loc5_.push(_loc6_);
         }
         return new Palette(_loc5_);
      }
      
      private function getXPos(param1:int, param2:int) : int
      {
         var _loc3_:int = param1 * (this.numThemeTypes * TYPE_WIDTH + this.numThemeTypes * TYPE_COL_WIDTH + THEME_BORDER * 2) + 1;
         if(param1 == 0)
         {
            _loc3_ = 1;
         }
         var _loc4_:int = param2 * TYPE_WIDTH + (param2 * TYPE_COL_WIDTH + 1);
         return _loc3_ + _loc4_;
      }
   }
}
