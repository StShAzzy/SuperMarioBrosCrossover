package com.smbc.messageBoxes
{
   import com.smbc.data.SoundNames;
   import com.smbc.enums.ScrollingIndicatorDirection;
   import com.smbc.graphics.GridItem;
   import com.smbc.graphics.GridSelector;
   import com.smbc.graphics.ScrollingIndicator;
   import com.smbc.graphics.fontChars.FontCharMenu;
   import com.smbc.level.CharacterSelect;
   import com.smbc.main.GlobVars;
   import com.smbc.managers.GraphicsManager;
   import com.smbc.managers.SoundManager;
   import com.smbc.managers.StatManager;
   import com.smbc.text.TextFieldContainer;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class GridMenuBox extends MessageBox
   {
      
      private static const TOP_LEFT_BORDER_POSITION_INTERFACE_SHEET:Point = new Point(178,70);
      
      private static const BORDER_SPACE_BETWEEN_ITEMS:int = 2;
      
      private static const VERTICAL_SPACE_FOR_PORTRAITS_LIMIT:int = 132 * 2;
      
      private static const MAX_WIDTH_FOR_ROW:Number = 420;
      
      private static const Y_POS:Number = 512 / 2;
      
      private static const NAME_BOX_WIDTH:int = 300;
      
      private static const NAME_BOX_HEIGHT:int = 150;
      
      public static const NAME_BOX_Y_POS:int = 396;
      
      private static const ITEMS_MARGIN_X:int = 0;
      
      private static const ITEMS_MARGIN_Y:int = 32;
      
      private static const BOTTOM_TEXT_MARGIN:int = 16;
      
      protected static const STAT_MNGR:StatManager = StatManager.STAT_MNGR;
      
      public static var instance:GridMenuBox;
       
      
      protected var spaceBetweenItemsX:int = 4;
      
      protected var spaceBetweenItemsY:int = 4;
      
      protected var topTfc:TextFieldContainer;
      
      protected var bottomTfc:TextFieldContainer;
      
      protected var border:BitmapData;
      
      protected var itemWidth:int;
      
      protected var itemHeight:int;
      
      protected var itemsPerRowCount:int;
      
      protected var rowCount:int;
      
      protected var items:Vector.<GridItem>;
      
      protected var selector:GridSelector;
      
      protected var currentItem:GridItem;
      
      protected var characterSelect:CharacterSelect;
      
      private var itemContainerMaskLayer:Sprite;
      
      private var itemContainerMask:Sprite;
      
      private var itemContainer:Sprite;
      
      private var itemContainerMaskRectangle:Rectangle;
      
      private var scrollingIndicatorBottomLeft:ScrollingIndicator;
      
      private var scrollingIndicatorBottomRight:ScrollingIndicator;
      
      private var scrollingIndicatorTopLeft:ScrollingIndicator;
      
      private var scrollingIndicatorTopRight:ScrollingIndicator;
      
      private var coloredBackground:Bitmap;
      
      public function GridMenuBox()
      {
         this.topTfc = new TextFieldContainer(FontCharMenu.FONT_NUM);
         this.bottomTfc = new TextFieldContainer(FontCharMenu.FONT_NUM,FontCharMenu.TYPE_SELECTED);
         this.items = new Vector.<GridItem>();
         super();
         instance = this;
         if(CharacterSelect.instance != null)
         {
            this.characterSelect = CharacterSelect.instance;
         }
         this.setUpBorder();
         this.setUpBitmaps();
         endYPos = Y_POS;
      }
      
      protected function setUpBorder() : void
      {
         this.border = GridSelector.drawBorder(this.itemWidth / GlobVars.SCALE,this.itemHeight / GlobVars.SCALE,TOP_LEFT_BORDER_POSITION_INTERFACE_SHEET,BORDER_SPACE_BETWEEN_ITEMS,GraphicsManager.INSTANCE.drawingBoardInterfaceSkinCont.bmd);
      }
      
      protected function setUpBitmaps() : void
      {
         this.sortItems();
      }
      
      protected function setUpScrollingIndicators() : void
      {
         this.scrollingIndicatorBottomLeft = new ScrollingIndicator(ScrollingIndicatorDirection.Down);
         this.scrollingIndicatorBottomLeft.y = this.itemContainerMaskRectangle.height + ITEMS_MARGIN_Y + BOTTOM_TEXT_MARGIN;
         this.scrollingIndicatorBottomLeft.x += ScrollingIndicator.MAX_WIDTH / 2;
         TXT_CONT.addChild(this.scrollingIndicatorBottomLeft);
         this.scrollingIndicatorBottomRight = new ScrollingIndicator(ScrollingIndicatorDirection.Down);
         this.scrollingIndicatorBottomRight.y = this.scrollingIndicatorBottomLeft.y;
         this.scrollingIndicatorBottomRight.x += this.itemContainerMaskRectangle.width + ITEMS_MARGIN_X * 2 - ScrollingIndicator.MAX_WIDTH / 2;
         TXT_CONT.addChild(this.scrollingIndicatorBottomRight);
         this.scrollingIndicatorTopLeft = new ScrollingIndicator(ScrollingIndicatorDirection.Up);
         this.scrollingIndicatorTopLeft.x += this.scrollingIndicatorBottomLeft.x;
         this.scrollingIndicatorTopLeft.y = ScrollingIndicator.MAX_HEIGHT;
         TXT_CONT.addChild(this.scrollingIndicatorTopLeft);
         this.scrollingIndicatorTopRight = new ScrollingIndicator(ScrollingIndicatorDirection.Up);
         this.scrollingIndicatorTopRight.x += this.scrollingIndicatorBottomRight.x;
         this.scrollingIndicatorTopRight.y = this.scrollingIndicatorTopLeft.y;
         TXT_CONT.addChild(this.scrollingIndicatorTopRight);
      }
      
      protected function sortItems() : void
      {
      }
      
      protected function getItemFromSkinNum(param1:int) : GridItem
      {
         var _loc2_:GridItem = null;
         for each(_loc2_ in this.items)
         {
            if(_loc2_.skinNum == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function isEmpty(param1:BitmapData) : Boolean
      {
         var _loc2_:Rectangle = param1.getColorBoundsRect(4278190080,0,false);
         return _loc2_.width == 0 && _loc2_.height == 0;
      }
      
      override public function initiate() : void
      {
         super.initiate();
         endYPos = GlobVars.STAGE_HEIGHT / 2;
      }
      
      override protected function setUpText() : void
      {
         var _loc4_:GridItem = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:GridItem = null;
         var _loc1_:int = this.items.length;
         this.itemsPerRowCount = Math.floor(MAX_WIDTH_FOR_ROW / (this.itemWidth + this.spaceBetweenItemsX));
         this.rowCount = Math.ceil(_loc1_ / this.itemsPerRowCount);
         var _loc2_:int = 0;
         this.itemContainerMaskLayer = new Sprite();
         this.itemContainer = new Sprite();
         TXT_CONT.addChild(this.itemContainerMaskLayer);
         this.itemContainerMaskLayer.addChild(this.itemContainer);
         this.itemContainerMaskLayer.x = ITEMS_MARGIN_X;
         this.itemContainerMaskLayer.y = ITEMS_MARGIN_Y;
         var _loc3_:Point = new Point();
         this.itemContainerMaskRectangle = new Rectangle();
         _loc5_ = 0;
         loop0:
         while(_loc5_ < this.rowCount)
         {
            _loc6_ = 0;
            while(_loc6_ < this.itemsPerRowCount)
            {
               (_loc7_ = this.items[_loc2_++]).x = _loc6_ * (this.itemWidth + this.spaceBetweenItemsX);
               _loc7_.y = _loc5_ * (this.itemHeight + this.spaceBetweenItemsY);
               _loc7_.row = _loc5_;
               _loc7_.column = _loc6_;
               if(_loc7_.y + this.itemHeight <= VERTICAL_SPACE_FOR_PORTRAITS_LIMIT)
               {
                  this.itemContainerMaskRectangle.bottom = _loc7_.y + this.itemHeight;
               }
               if(_loc7_.x + this.itemWidth > this.itemContainerMaskRectangle.right)
               {
                  this.itemContainerMaskRectangle.right = _loc7_.x + this.itemWidth;
               }
               this.itemContainer.addChild(_loc7_);
               if(_loc2_ == this.items.length)
               {
                  break loop0;
               }
               _loc6_++;
            }
            _loc5_++;
         }
         this.itemContainerMask = new Sprite();
         this.itemContainerMask.graphics.beginFill(16777215);
         this.itemContainerMask.graphics.drawRect(this.itemContainerMaskRectangle.x,this.itemContainerMaskRectangle.y,this.itemContainerMaskRectangle.width,this.itemContainerMaskRectangle.height);
         this.itemContainerMask.graphics.endFill();
         for each(_loc4_ in this.items)
         {
            if(!this.itemContainerMaskRectangle.contains(_loc4_.x,_loc4_.y) && _loc4_.parent)
            {
               _loc4_.parent.removeChild(_loc4_);
            }
         }
         this.selector = new GridSelector(this.itemWidth / GlobVars.SCALE,this.itemHeight / GlobVars.SCALE);
         this.itemContainer.addChild(this.selector);
         if(this.bottomTfc != null)
         {
            this.bottomTfc.y = this.itemContainerMaskRectangle.bottom + ITEMS_MARGIN_Y + BOTTOM_TEXT_MARGIN;
            TXT_CONT.addChild(this.bottomTfc);
            this.bottomTfc.text = "Castlevania: Dracula XXX";
         }
         if(this.topTfc != null)
         {
            TXT_CONT.addChild(this.topTfc);
            this.topTfc.text = "Castlevania: Dracula XXX";
         }
         TXT_CONT.x = CONTAINER_PADDING;
         TXT_CONT.y = CONTAINER_PADDING;
         this.setUpScrollingIndicators();
      }
      
      protected function setSelection(param1:GridItem, param2:Boolean = true) : void
      {
         var _loc3_:GridItem = null;
         this.currentItem = param1;
         this.selector.x = param1.x;
         this.selector.y = param1.y;
         if(!this.itemContainerMaskRectangle.contains(this.selector.x,this.selector.y + this.itemContainer.y))
         {
            if(this.selector.y + this.itemContainer.y < this.itemContainerMaskRectangle.top)
            {
               this.itemContainer.y = -this.currentItem.y;
            }
            else
            {
               this.itemContainer.y = -this.currentItem.y + (this.rowsThatFitOnScreenCount - 1) * (this.itemHeight + this.spaceBetweenItemsY);
            }
            for each(_loc3_ in this.items)
            {
               if(!this.itemContainerMaskRectangle.contains(_loc3_.x,_loc3_.y + this.itemContainer.y))
               {
                  if(this.itemContainer.contains(_loc3_))
                  {
                     this.itemContainer.removeChild(_loc3_);
                  }
               }
               else
               {
                  this.itemContainer.addChild(_loc3_);
               }
               this.itemContainer.setChildIndex(this.selector,this.itemContainer.numChildren - 1);
            }
         }
         this.scrollingIndicatorBottomLeft.visible = this.scrollingIndicatorBottomRight.visible = this.getItemAt(0,this.rowCount - 1).parent == null;
         this.scrollingIndicatorTopLeft.visible = this.scrollingIndicatorTopRight.visible = this.getItemAt(0,0).parent == null;
         if(param2)
         {
            SoundManager.SND_MNGR.playSoundNow(SoundNames.SFX_GAME_CHARACTER_SELECT_CURSOR);
         }
      }
      
      private function toARGB(param1:uint, param2:int = 255) : uint
      {
         var _loc3_:uint = 0;
         _loc3_ = param1;
         return uint(_loc3_ + (param2 << 24));
      }
      
      private function drawBackground() : void
      {
         var _loc4_:GridItem = null;
         makeBackgroundTransparent();
         var _loc1_:int = TXT_CONT.width;
         var _loc2_:int = TXT_CONT.height;
         var _loc3_:BitmapData = new BitmapData(_loc1_,_loc2_,true,this.toARGB(getBackgroundColor()));
         for each(_loc4_ in this.items)
         {
            if(_loc4_.visible)
            {
               _loc3_.fillRect(new Rectangle(_loc4_.x + GlobVars.SCALE,_loc4_.y + ITEMS_MARGIN_Y + GlobVars.SCALE,_loc4_.image.width,_loc4_.image.height),0);
            }
         }
         TXT_CONT.addChildAt(new Bitmap(_loc3_),0);
      }
      
      private function get rowsThatFitOnScreenCount() : int
      {
         var _loc1_:int = 0;
         while(_loc1_ * (this.itemHeight + this.spaceBetweenItemsY) < this.itemContainerMaskRectangle.height)
         {
            _loc1_++;
         }
         return _loc1_;
      }
      
      protected function generateTopText() : String
      {
         return null;
      }
      
      protected function generateBottomText() : String
      {
         return null;
      }
      
      protected function updateText() : void
      {
         var _loc1_:String = this.generateTopText();
         var _loc2_:String = this.generateBottomText();
         if(this.topTfc != null && _loc1_ != null)
         {
            this.topTfc.text = _loc1_;
            this.topTfc.x = bg.width / 2 - this.topTfc.width * 0.5;
         }
         if(this.bottomTfc != null && _loc2_ != null)
         {
            this.bottomTfc.text = _loc2_;
            this.bottomTfc.x = bg.width / 2 - this.bottomTfc.width * 0.5;
         }
      }
      
      private function shrinkTextToFit(param1:TextFieldContainer) : void
      {
         var _loc2_:String = null;
         var _loc3_:int = 0;
         while(param1.width > bg.width - ScrollingIndicator.MAX_WIDTH * 2)
         {
            _loc2_ = param1.text;
            _loc3_ = _loc2_.lastIndexOf(" ");
            param1.text = _loc2_.substr(0,_loc3_ - 1) + "...";
         }
      }
      
      private function modifySelection(param1:int, param2:int) : void
      {
         var _loc3_:int = this.currentItem.column + param1;
         var _loc4_:int = this.currentItem.row + param2;
         var _loc5_:GridItem;
         if((_loc5_ = this.getItemAt(_loc3_,_loc4_)) != null)
         {
            this.setSelection(_loc5_);
         }
         else
         {
            if(param1 != 0)
            {
               if(param1 < 0)
               {
                  _loc3_ = this.getItemCountInRow(_loc4_) - 1;
               }
               else
               {
                  _loc3_ = 0;
               }
            }
            else if(param2 != 0)
            {
               if(param2 < 0)
               {
                  if((_loc4_ = this.getItemCountInColumn(_loc3_) - 1) != this.rowCount - 1)
                  {
                     _loc4_ = this.rowCount - 1;
                     _loc5_ = this.getItemAt(this.getItemCountInRow(_loc4_) - 1,_loc4_);
                     this.setSelection(_loc5_);
                     return;
                  }
               }
               else
               {
                  if(_loc4_ < this.rowCount)
                  {
                     _loc5_ = this.getItemAt(this.getItemCountInRow(_loc4_) - 1,_loc4_);
                     this.setSelection(_loc5_);
                     return;
                  }
                  _loc4_ = 0;
               }
            }
            if((_loc5_ = this.getItemAt(_loc3_,_loc4_)) != null)
            {
               this.setSelection(_loc5_);
            }
            else
            {
               this.setSelection(this.currentItem);
            }
         }
      }
      
      private function getItemAt(param1:int, param2:int) : GridItem
      {
         var _loc3_:GridItem = null;
         for each(_loc3_ in this.items)
         {
            if(_loc3_.column == param1 && _loc3_.row == param2)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      private function getItemCountInRow(param1:int) : int
      {
         var _loc3_:GridItem = null;
         var _loc2_:int = 0;
         for each(_loc3_ in this.items)
         {
            if(_loc3_.row == param1)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      private function getItemCountInColumn(param1:int) : int
      {
         var _loc3_:GridItem = null;
         var _loc2_:int = 0;
         for each(_loc3_ in this.items)
         {
            if(_loc3_.column == param1)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      override public function pressUpBtn() : void
      {
         this.modifySelection(0,-1);
      }
      
      override public function pressDwnBtn() : void
      {
         this.modifySelection(0,1);
      }
      
      override public function pressLftBtn() : void
      {
         this.modifySelection(-1,0);
      }
      
      override public function pressRhtBtn() : void
      {
         this.modifySelection(1,0);
      }
      
      override public function pressSpcBtn() : void
      {
      }
      
      override public function pressPseBtn() : void
      {
      }
      
      override protected function destroy() : void
      {
         super.destroy();
         instance = null;
      }
      
      override public function cancel() : void
      {
         super.cancel();
      }
   }
}
