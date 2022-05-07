package com.smbc.messageBoxes
{
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.OnlineData;
   import com.smbc.errors.SingletonError;
   import com.smbc.events.CustomEvents;
   import com.smbc.graphics.FundingIcon;
   import com.smbc.graphics.fontChars.FontCharMenu;
   import com.smbc.level.Level;
   import com.smbc.main.GlobVars;
   import com.smbc.text.TextFieldContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class FundingBox extends PlainMessageBox
   {
      
      private static var instance:FundingBox;
      
      private static const WIDTH:Number = 282;
      
      private static const HEIGHT:Number = 16;
      
      private static const X_POS:Number = 350;
      
      private static const Y_POS:Number = 452;
      
      private static const SCROLL_SPEED:Number = 40;
      
      private static const SPACE_BETWEEN_TEXT_FIELDS:int = 20;
      
      private static const SPACE_BETWEEN_ICONS:int = 8;
      
      private static const TEXT_FIELD_POSITION:int = 0;
      
      private static const PADDING_FROM_EDGE_OF_SCREEN:int = 8;
      
      private static const ICON_COUNT:int = 10;
       
      
      private var startTransitionTimer:CustomTimer;
      
      private var iconContainer:Sprite;
      
      private var textField1:TextFieldContainer;
      
      private var textField2:TextFieldContainer;
      
      private var longestTextField:TextFieldContainer;
      
      private var textToDisplay:Vector.<String>;
      
      private var textIndex:int = -1;
      
      private var topItemContainer:Sprite;
      
      private var bottomItemContainer:Sprite;
      
      private var level:Level;
      
      private var initiated:Boolean;
      
      private var icons:Vector.<FundingIcon>;
      
      public function FundingBox()
      {
         this.startTransitionTimer = new CustomTimer(4000,1);
         this.textField1 = new TextFieldContainer(FontCharMenu.FONT_NUM);
         this.textField2 = new TextFieldContainer(FontCharMenu.FONT_NUM);
         this.longestTextField = new TextFieldContainer(FontCharMenu.FONT_NUM);
         this.textToDisplay = new Vector.<String>();
         super("");
         if(instance != null)
         {
            throw new SingletonError();
         }
         instance = this;
         instantGrow = true;
         nonActive = true;
         nonInteractive = true;
         endXPos = X_POS;
         endYPos = Y_POS;
         EVENT_MNGR.addEventListener(CustomEvents.CHANGE_INTERFACE_SKIN,this.changeInterfaceSkinHandler,false,0,true);
      }
      
      public static function getInstance() : FundingBox
      {
         if(instance == null)
         {
            return new FundingBox();
         }
         return instance;
      }
      
      protected function changeInterfaceSkinHandler(param1:Event) : void
      {
         changeBackgroundColor();
         resizeBox(true,false);
         this.arrangeIcons();
         x = GlobVars.STAGE_WIDTH - width - PADDING_FROM_EDGE_OF_SCREEN;
         y = GlobVars.STAGE_HEIGHT - height - PADDING_FROM_EDGE_OF_SCREEN;
      }
      
      override public function initiate() : void
      {
         super.initiate();
         this.initiated = true;
         this.startTransitionTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.startTransitionTimerHandler,false,0,true);
         this.topItemContainer = new Sprite();
         this.bottomItemContainer = new Sprite();
         TXT_CONT.addChild(this.topItemContainer);
         TXT_CONT.addChild(this.bottomItemContainer);
         this.startTransitionTimerHandler(null);
         this.bottomItemContainer.y = TEXT_FIELD_POSITION;
         this.gameLoopEndHandler(null);
         this.topItemContainer.y = TEXT_FIELD_POSITION;
         this.changeInterfaceSkinHandler(null);
         addEventListener(MouseEvent.CLICK,this.mouseClickHandler,false,0,true);
         addEventListener(MouseEvent.MOUSE_OVER,this.mouseOverHandler,false,0,true);
         addEventListener(MouseEvent.MOUSE_OUT,this.mouseOutHandler,false,0,true);
      }
      
      protected function mouseOverHandler(param1:MouseEvent) : void
      {
         var _loc2_:FundingIcon = null;
         if(this.textField1 != null)
         {
            this.textField1.changeType(FontCharMenu.TYPE_SELECTED);
         }
         if(this.textField2 != null)
         {
            this.textField2.changeType(FontCharMenu.TYPE_SELECTED);
         }
         for each(_loc2_ in this.icons)
         {
            _loc2_.mouseIn();
         }
      }
      
      protected function mouseOutHandler(param1:MouseEvent) : void
      {
         var _loc2_:FundingIcon = null;
         if(this.textField1 != null)
         {
            this.textField1.changeType(FontCharMenu.TYPE_NORMAL);
         }
         if(this.textField2 != null)
         {
            this.textField2.changeType(FontCharMenu.TYPE_NORMAL);
         }
         for each(_loc2_ in this.icons)
         {
            _loc2_.mouseOut();
         }
      }
      
      protected function mouseClickHandler(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest(OnlineData.fundingBoxUrl),PlainMessageMenuBox.BLANK_PAGE);
      }
      
      protected function gameLoopEndHandler(param1:Event) : void
      {
         if(!this.startTransitionTimer.running)
         {
            this.topItemContainer.y -= SCROLL_SPEED * this.level.dt;
            this.bottomItemContainer.y = this.topItemContainer.y + SPACE_BETWEEN_TEXT_FIELDS;
            if(this.bottomItemContainer.y <= TEXT_FIELD_POSITION)
            {
               this.bottomItemContainer.y = TEXT_FIELD_POSITION;
               TXT_CONT.removeChild(this.topItemContainer);
               this.topItemContainer.removeChildren();
               this.swapItemContainers();
               this.startTransitionTimer.start();
            }
         }
      }
      
      private function swapItemContainers() : void
      {
         var _loc1_:Sprite = this.topItemContainer;
         this.topItemContainer = this.bottomItemContainer;
         this.bottomItemContainer = _loc1_;
      }
      
      protected function startTransitionTimerHandler(param1:TimerEvent) : void
      {
         var _loc3_:TextFieldContainer = null;
         this.startTransitionTimer.reset();
         TXT_CONT.addChild(this.bottomItemContainer);
         var _loc2_:String = this.getNextText();
         if(_loc2_ == OnlineData.FUNDING_BOX_ICONS_REPLACEMENT_STRING)
         {
            this.bottomItemContainer.addChild(this.iconContainer);
         }
         else
         {
            _loc3_ = this.getTextFieldContainerThatIsOffScreen();
            _loc3_.text = _loc2_;
            this.bottomItemContainer.addChild(_loc3_);
         }
         this.bottomItemContainer.x = bg.width / 2 - this.bottomItemContainer.width / 2;
         this.bottomItemContainer.y = this.topItemContainer.y + SPACE_BETWEEN_TEXT_FIELDS;
      }
      
      private function getTextFieldContainerThatIsOffScreen() : TextFieldContainer
      {
         if(this.textField1.parent == null)
         {
            return this.textField1;
         }
         return this.textField2;
      }
      
      private function getNextText() : String
      {
         if(this.textIndex + 1 < this.textToDisplay.length)
         {
            return this.textToDisplay[++this.textIndex];
         }
         return this.textToDisplay[this.textIndex = 0];
      }
      
      override protected function setUpText() : void
      {
         var _loc3_:String = null;
         this.textToDisplay = OnlineData.fundingBoxText;
         var _loc1_:String = "";
         var _loc2_:int = 0;
         while(_loc2_ < this.textToDisplay.length)
         {
            _loc3_ = this.textToDisplay[_loc2_];
            if(_loc3_ != OnlineData.FUNDING_BOX_ICONS_REPLACEMENT_STRING && _loc3_.length > _loc1_.length)
            {
               _loc1_ = _loc3_;
            }
            _loc2_++;
         }
         this.longestTextField.text = _loc1_ + "0";
         this.setUpIcons();
      }
      
      private function setUpIcons() : void
      {
         var _loc5_:String = null;
         var _loc6_:FundingIcon = null;
         this.iconContainer = new Sprite();
         this.icons = new Vector.<FundingIcon>(ICON_COUNT,true);
         var _loc1_:Number = 0;
         var _loc2_:int = OnlineData.currentMoney;
         var _loc3_:int = OnlineData.targetMoney;
         if(_loc3_ > 0)
         {
            _loc1_ = _loc2_ / _loc3_;
         }
         if(_loc3_ <= 0)
         {
            _loc1_ = 0;
         }
         if(_loc1_ < 0)
         {
            _loc1_ = 0;
         }
         else if(_loc1_ > 1)
         {
            _loc1_ = 1;
         }
         _loc1_ *= ICON_COUNT;
         var _loc4_:int = 0;
         while(_loc4_ < ICON_COUNT)
         {
            _loc5_ = FundingIcon.FL_FULL;
            if(_loc4_ <= _loc1_)
            {
               if(_loc4_ + 1 <= _loc1_)
               {
                  _loc5_ = FundingIcon.FL_FULL;
               }
               else if(_loc4_ + 0.5 <= _loc1_)
               {
                  _loc5_ = FundingIcon.FL_HALF;
               }
               else
               {
                  _loc5_ = FundingIcon.FL_EMPTY;
               }
            }
            else
            {
               _loc5_ = FundingIcon.FL_EMPTY;
            }
            _loc6_ = new FundingIcon(_loc5_);
            this.iconContainer.addChild(_loc6_);
            this.icons[_loc4_] = _loc6_;
            _loc4_++;
         }
         this.arrangeIcons();
      }
      
      private function arrangeIcons() : void
      {
         var _loc3_:FundingIcon = null;
         var _loc1_:Number = MessageBox.getVisibleBounds(this.icons[0]).width;
         var _loc2_:int = 0;
         while(_loc2_ < ICON_COUNT)
         {
            _loc3_ = this.icons[_loc2_];
            _loc3_.x = _loc2_ * (_loc1_ + SPACE_BETWEEN_ICONS);
            _loc3_.gotoAndStop(_loc3_.currentFrame);
            _loc2_++;
         }
      }
      
      public function kill() : void
      {
         EVENT_MNGR.removeEventListener(CustomEvents.CHANGE_INTERFACE_SKIN,this.changeInterfaceSkinHandler);
         instance = null;
         destroy();
      }
      
      override protected function createGraphics(param1:Number = NaN, param2:Number = NaN, param3:int = 0, param4:int = 0) : void
      {
         TXT_CONT.addChild(this.longestTextField);
         super.createGraphics(param1,param2,param3,param4);
         TXT_CONT.removeChild(this.longestTextField);
         if(this.bottomItemContainer != null && this.bottomItemContainer.parent != null)
         {
            this.bottomItemContainer.x = bg.width / 2 - this.bottomItemContainer.width / 2;
         }
         if(this.topItemContainer != null && this.topItemContainer.parent != null)
         {
            this.topItemContainer.x = bg.width / 2 - this.topItemContainer.width / 2;
         }
      }
      
      public function initiateLevelHandler() : void
      {
         this.level = Level.levelInstance;
         this.level.addEventListener(CustomEvents.GAME_LOOP_END,this.gameLoopEndHandler,false,0,true);
         if(!this.initiated)
         {
            this.initiate();
         }
         if(parent != null)
         {
            parent.setChildIndex(this,parent.numChildren - 1);
         }
      }
      
      override protected function reachedMaxSize() : void
      {
         super.reachedMaxSize();
      }
   }
}
