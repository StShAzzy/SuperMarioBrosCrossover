package com.smbc.text
{
   import com.smbc.data.GameSettings;
   import com.smbc.data.InterfaceInfo;
   import com.smbc.graphics.Palette;
   import com.smbc.graphics.PaletteSheet;
   import com.smbc.graphics.fontChars.*;
   import com.smbc.graphics.skins.BmdInfo;
   import com.smbc.managers.GraphicsManager;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class TextFieldContainer extends Sprite
   {
      
      private static const TFC_DCT:Dictionary = new Dictionary(true);
      
      private static const GM:GraphicsManager = GraphicsManager.INSTANCE;
      
      private static const NUM_FONTS:int = 7;
      
      private static const FONT_CHAR_CLASS_VEC:Vector.<Class> = new Vector.<Class>(NUM_FONTS,true);
      
      private static const FONT_CHAR_PAL_PNT_STR:String = "PALETTE_PNT";
      
      {
         FONT_CHAR_CLASS_VEC[FontCharHud.FONT_NUM] = FontCharHud;
         FONT_CHAR_CLASS_VEC[FontCharMenu.FONT_NUM] = FontCharMenu;
         FONT_CHAR_CLASS_VEC[FontCharScore.FONT_NUM] = FontCharScore;
         FONT_CHAR_CLASS_VEC[FontCharSimon.FONT_NUM] = FontCharSimon;
         FONT_CHAR_CLASS_VEC[FontCharSamus.FONT_NUM] = FontCharSamus;
         FONT_CHAR_CLASS_VEC[FontCharRyu.FONT_NUM] = FontCharRyu;
         FONT_CHAR_CLASS_VEC[FontCharLink.FONT_NUM] = FontCharLink;
      }
      
      private var font:int;
      
      private var type:int;
      
      public var fontCharVec:Vector.<FontChar>;
      
      public var curWordArr:Array;
      
      public var textBlockWidth:Number;
      
      private var align:String = "left";
      
      private var _text:String = "";
      
      private var charContainer:Sprite;
      
      public var currentLine:int;
      
      public var lineArr:Array;
      
      public var multiline:Boolean;
      
      public function TextFieldContainer(param1:int, param2:int = 0)
      {
         this.fontCharVec = new Vector.<FontChar>();
         this.curWordArr = [];
         this.charContainer = new Sprite();
         this.lineArr = [];
         super();
         this.type = param2;
         this.font = param1;
         TFC_DCT[this] = true;
      }
      
      public static function updateTfcs() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in TFC_DCT)
         {
            (_loc1_ as TextFieldContainer).recolorCharacters();
         }
      }
      
      private function removeAllTextFields() : void
      {
      }
      
      public function changeType(param1:int) : void
      {
         this.type = param1;
         this.recolorCharacters();
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function set text(param1:String) : void
      {
         var _loc2_:FontChar = null;
         var _loc5_:FontChar = null;
         if(param1 == null)
         {
            param1 = "";
         }
         this._text = param1;
         if(contains(this.charContainer))
         {
            removeChild(this.charContainer);
         }
         this.charContainer = null;
         this.charContainer = new Sprite();
         addChild(this.charContainer);
         this.curWordArr = [];
         this.lineArr = [];
         this.fontCharVec.length = 0;
         var _loc3_:int = param1.length;
         var _loc4_:Class = FONT_CHAR_CLASS_VEC[this.font];
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_)
         {
            _loc2_ = new _loc4_(param1.charAt(_loc6_),_loc5_,this,_loc6_);
            _loc5_ = _loc2_;
            this.charContainer.addChild(_loc2_);
            this.fontCharVec[_loc6_] = _loc2_;
            _loc6_++;
         }
         this.recolorCharacters();
      }
      
      private function recolorCharacters() : void
      {
         var _loc4_:Palette = null;
         var _loc5_:Palette = null;
         var _loc7_:int = 0;
         var _loc9_:Bitmap = null;
         var _loc10_:BitmapData = null;
         var _loc11_:Number = NaN;
         var _loc12_:Vector.<FontChar> = null;
         if(!this.charContainer.numChildren)
         {
            return;
         }
         var _loc1_:FontChar = this.charContainer.getChildAt(0) as FontChar;
         _loc1_.masterObj.redraw(-1,GM.CLEAN_BMC_VEC_INTERFACE[GameSettings.getInterfaceSkinLimited()].bmd);
         var _loc2_:int = int(InterfaceInfo[_loc1_.shortClassName]);
         var _loc3_:PaletteSheet = BmdInfo.getMainPaletteSheet(GameSettings.getInterfaceSkinLimited());
         if(_loc2_)
         {
            _loc5_ = (_loc4_ = _loc3_.getPaletteFromRow(_loc2_,1,PaletteSheet.THEME_TYPE_INTERFACE,true)).clone();
         }
         if(_loc4_ && GM.shouldBeRecoloredToGb(GM.drawingBoardInterfaceSkinCont) && GameSettings.getInterfacePaletteLimited())
         {
            _loc5_ = _loc5_.convToGameBoy(GameSettings.getInterfacePaletteLimited(),GraphicsManager.GB_PAL_BG);
         }
         var _loc6_:int = this.charContainer.numChildren;
         this.currentLine = 0;
         this.lineArr = [];
         var _loc8_:int = 0;
         while(_loc8_ < _loc6_)
         {
            _loc1_ = this.charContainer.getChildAt(_loc8_) as FontChar;
            _loc1_.relinkBmdToMasterSingleFrame(_loc1_.currentFrame);
            _loc10_ = (_loc9_ = _loc1_.getChildAt(0) as Bitmap).bitmapData.clone();
            _loc9_.bitmapData = _loc10_;
            GM.recolorSingleBitmap(_loc10_,_loc4_,_loc5_,0,this.type + 1);
            _loc1_.calcPos(_loc5_.readColor(this.type + 1,1),_loc5_.readColor(this.type + 1,2));
            _loc8_++;
         }
         _loc8_ = 0;
         while(_loc8_ < _loc6_)
         {
            _loc1_ = this.charContainer.getChildAt(_loc8_) as FontChar;
            _loc11_ = _loc1_.y;
            if(!(_loc12_ = this.lineArr[_loc11_]))
            {
               _loc12_ = new Vector.<FontChar>();
               this.lineArr[_loc11_] = _loc12_;
            }
            _loc12_.push(_loc1_);
            _loc8_++;
         }
      }
      
      public function center() : void
      {
         var _loc4_:Vector.<FontChar> = null;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:int = 0;
         var _loc1_:int = this.lineArr.length;
         var _loc2_:Number = this.charContainer.width;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_)
         {
            if(_loc4_ = this.lineArr[_loc3_])
            {
               _loc5_ = _loc4_.length;
               _loc6_ = this.getMinX(_loc4_);
               _loc8_ = (_loc7_ = this.getMaxX(_loc4_)) - _loc6_;
               _loc9_ = (_loc2_ - _loc8_) / 2;
               _loc10_ = 0;
               while(_loc10_ < _loc5_)
               {
                  _loc4_[_loc10_].x += _loc9_;
                  _loc10_++;
               }
            }
            _loc3_++;
         }
      }
      
      private function getMinX(param1:Vector.<FontChar>) : Number
      {
         var _loc3_:FontChar = null;
         var _loc4_:Number = NaN;
         var _loc2_:Number = Number.MAX_VALUE;
         for each(_loc3_ in param1)
         {
            if((_loc4_ = _loc3_.x) < _loc2_)
            {
               _loc2_ = _loc4_;
            }
         }
         return _loc2_;
      }
      
      private function getMaxX(param1:Vector.<FontChar>) : Number
      {
         var _loc3_:FontChar = null;
         var _loc4_:Number = NaN;
         var _loc2_:Number = Number.MIN_VALUE;
         for each(_loc3_ in param1)
         {
            if((_loc4_ = _loc3_.x) > _loc2_)
            {
               _loc2_ = _loc4_;
            }
         }
         return _loc2_;
      }
   }
}
