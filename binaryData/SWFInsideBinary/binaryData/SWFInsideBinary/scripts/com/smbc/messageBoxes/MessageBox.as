package com.smbc.messageBoxes
{
   import com.customClasses.TDCalculator;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.SuperMarioBrosCrossover;
   import com.smbc.data.GameSettings;
   import com.smbc.graphics.MessageBoxBackground;
   import com.smbc.graphics.skins.BmdInfo;
   import com.smbc.interfaces.IInitiater;
   import com.smbc.interfaces.IKeyPressable;
   import com.smbc.main.GlobVars;
   import com.smbc.managers.ButtonManager;
   import com.smbc.managers.EventManager;
   import com.smbc.managers.GraphicsManager;
   import com.smbc.managers.MessageBoxManager;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class MessageBox extends Sprite implements IKeyPressable, IInitiater
   {
      
      public static var activeInstance:MessageBox;
      
      public static const SCALE_INC:Number = 7;
      
      private static const FRAME_CROP:int = 0;
      
      private static const END_WIDTH:int = 400;
       
      
      public var nonActive:Boolean;
      
      protected const CONTAINER_PADDING:int = 0;
      
      protected const TXT_LEADING:int = 7;
      
      protected var endBoxHeight:int = 200;
      
      protected var endXPos:Number = 256.0;
      
      protected var endYPos:Number = 240.0;
      
      protected const BOX_HEIGHT_MIN:int = 1;
      
      protected const CORNER_SQUARE_OFFSET:int = 2;
      
      protected var endBoxWidth:int = 400;
      
      protected const BOX_WIDTH_MIN:int = 1;
      
      protected const ASPECT_RATIO:Number = this.endBoxWidth / this.endBoxHeight;
      
      protected var _readyToShrink:Boolean;
      
      protected var _readyToGrow:Boolean = true;
      
      protected var _interactive:Boolean;
      
      protected var cancelTmr:CustomTimer;
      
      public var nextMsgBxToCreate:MessageBox;
      
      public var nextMsgBxToFocus:MessageBox;
      
      public var nextMsgBxToReappear:MessageBox;
      
      protected const CANCEL_TMR_DUR:int = 1000;
      
      protected const UPD_TMR_INT:Number = 16.666666666666668;
      
      protected const UPD_TMR:CustomTimer = new CustomTimer(this.UPD_TMR_INT);
      
      protected const EVENT_MNGR:EventManager = EventManager.EVENT_MNGR;
      
      protected const MSG_BX_MNGR:MessageBoxManager = MessageBoxManager.INSTANCE;
      
      protected const GAME:SuperMarioBrosCrossover = SuperMarioBrosCrossover.game;
      
      protected const TXT_CONT:Sprite = new Sprite();
      
      protected const BTN_MNGR:ButtonManager = ButtonManager.BTN_MNGR;
      
      protected var maxHeight:int;
      
      public var nonInteractive:Boolean;
      
      public var mbName:String;
      
      protected var endHeight:Number;
      
      protected var endWidth:Number;
      
      private var hiding:Boolean;
      
      protected const MAX_FINAL_POSITION_OFFSET_BEFORE_FIX:int = 8;
      
      private var dt:Number = 0.03;
      
      private var ldt:Number;
      
      private const DT_MAX:Number = 0.045;
      
      private const TD_CALC:TDCalculator = new TDCalculator();
      
      protected var contentMaskRect:Shape;
      
      protected var contentOverflowHeight:Number;
      
      protected var bg:Sprite;
      
      protected var instantGrow:Boolean;
      
      protected var forceWidth:Number;
      
      protected var forceHeight:Number;
      
      protected var createdGraphicsFirstTime:Boolean;
      
      protected var txtContDefY:Number;
      
      public function MessageBox(param1:Number = NaN, param2:Number = NaN)
      {
         super();
         this.forceWidth = param1;
         this.forceHeight = param2;
      }
      
      public static function getVisibleBounds(param1:DisplayObject) : Rectangle
      {
         var _loc2_:Matrix = new Matrix();
         var _loc3_:Rectangle = param1.getBounds(null);
         _loc2_.tx = -_loc3_.x;
         _loc2_.ty = -_loc3_.y;
         var _loc4_:BitmapData;
         (_loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0)).draw(param1,_loc2_);
         var _loc5_:Rectangle = _loc4_.getColorBoundsRect(4294967295,0,false);
         _loc4_.dispose();
         return _loc5_;
      }
      
      public function initiate() : void
      {
         if(!this.nonActive)
         {
            activeInstance = this;
            this.BTN_MNGR.activeMsgBx = this;
         }
         this.GAME.addChild(this);
         x = this.endXPos;
         y = this.endYPos;
         this.cancelTmr = new CustomTimer(this.CANCEL_TMR_DUR,1);
         this.cancelTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.cancelTmrHandeler,false,0,true);
         this.UPD_TMR.addEventListener(TimerEvent.TIMER,this.updTmrHandeler,false,0,true);
         this.cancelTmr.start();
         this.UPD_TMR.start();
         this.setUpText();
         this.createGraphics();
         this.endWidth = this.width;
         this.endHeight = this.height;
         if(!this.instantGrow)
         {
            scaleX = 0.01;
            scaleY = 0.01;
         }
         else
         {
            this.reachedMaxSize();
         }
      }
      
      protected function createGraphics(param1:Number = NaN, param2:Number = NaN, param3:int = 0, param4:int = 0) : void
      {
         var _loc5_:MessageBoxBackground = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:MessageBoxBackground = null;
         var _loc10_:MessageBoxBackground = null;
         var _loc12_:MessageBoxBackground = null;
         var _loc14_:MessageBoxBackground = null;
         this.TXT_CONT.mask = null;
         (_loc5_ = new MessageBoxBackground(MessageBoxBackground.FL_TOP_LEFT)).x = FRAME_CROP;
         _loc5_.y = FRAME_CROP;
         addChild(_loc5_);
         var _loc6_:Rectangle;
         _loc7_ = (_loc6_ = getVisibleBounds(_loc5_)).width;
         _loc8_ = _loc6_.height;
         this.bg = new Sprite();
         this.bg.x = _loc7_;
         this.bg.y = _loc8_;
         _loc5_.x = _loc7_;
         _loc5_.y = _loc8_;
         this.TXT_CONT.x = _loc7_;
         this.TXT_CONT.y = _loc8_;
         this.txtContDefY = this.TXT_CONT.y;
         this.changeBackgroundColor();
         if(isNaN(param1))
         {
            this.bg.width = this.TXT_CONT.width + param3;
            if(this is MenuBox && !(this is LinksMenu))
            {
               this.bg.width += MenuBox.LEFT_MARGIN;
            }
            else if(GameSettings.getInterfaceSkinLimited() == BmdInfo.SKIN_NUM_SMB2_SNES)
            {
               this.bg.width += 8;
            }
            else
            {
               this.bg.width += 2;
            }
         }
         else
         {
            this.bg.width = param1;
         }
         if(isNaN(param2))
         {
            this.bg.height = this.TXT_CONT.height + param4;
         }
         else
         {
            this.bg.height = param2;
         }
         if(this.maxHeight && this.bg.height > this.maxHeight)
         {
            this.bg.height = this.maxHeight;
         }
         addChild(this.bg);
         this.contentMaskRect = new Shape();
         this.contentMaskRect.graphics.beginFill(16711680);
         this.contentMaskRect.graphics.drawRect(0,0,this.bg.width,this.bg.height);
         this.contentMaskRect.graphics.endFill();
         this.contentMaskRect.x = this.bg.x;
         this.contentMaskRect.y = this.bg.y;
         addChild(this.contentMaskRect);
         this.TXT_CONT.mask = this.contentMaskRect;
         (_loc9_ = new MessageBoxBackground(MessageBoxBackground.FL_TOP_MID)).width = this.bg.width;
         _loc9_.x = this.bg.x + FRAME_CROP;
         _loc9_.y = this.bg.y + FRAME_CROP;
         addChild(_loc9_);
         (_loc10_ = new MessageBoxBackground(MessageBoxBackground.FL_MID_RIGHT)).height = this.bg.height;
         _loc10_.x = this.bg.x + this.bg.width - FRAME_CROP;
         _loc10_.y = this.bg.y + FRAME_CROP;
         addChild(_loc10_);
         var _loc11_:MessageBoxBackground;
         (_loc11_ = new MessageBoxBackground(MessageBoxBackground.FL_BOT_MID)).width = this.bg.width;
         _loc11_.x = this.bg.x + FRAME_CROP;
         _loc11_.y = this.bg.y + this.bg.height - FRAME_CROP;
         addChild(_loc11_);
         (_loc12_ = new MessageBoxBackground(MessageBoxBackground.FL_MID_LEFT)).height = this.bg.height;
         _loc12_.x = this.bg.x + FRAME_CROP;
         _loc12_.y = this.bg.y + FRAME_CROP;
         addChild(_loc12_);
         var _loc13_:MessageBoxBackground;
         (_loc13_ = new MessageBoxBackground(MessageBoxBackground.FL_TOP_RIGHT)).x = this.bg.x + this.bg.width - FRAME_CROP;
         _loc13_.y = this.bg.y + FRAME_CROP;
         addChild(_loc13_);
         (_loc14_ = new MessageBoxBackground(MessageBoxBackground.FL_BOT_LEFT)).x = this.bg.x + FRAME_CROP;
         _loc14_.y = this.bg.y + this.bg.height - FRAME_CROP;
         addChild(_loc14_);
         var _loc15_:MessageBoxBackground;
         (_loc15_ = new MessageBoxBackground(MessageBoxBackground.FL_BOT_RIGHT)).x = this.bg.x + this.bg.width - FRAME_CROP;
         _loc15_.y = this.bg.y + this.bg.height - FRAME_CROP;
         addChild(_loc15_);
         addChild(this.TXT_CONT);
         this.contentOverflowHeight = 0;
         if(this.contentOverflowHeight < 0)
         {
            this.contentOverflowHeight = 0;
         }
         this.createdGraphicsFirstTime = true;
      }
      
      public function resizeBox(param1:Boolean = true, param2:Boolean = true, param3:int = 0, param4:int = 0) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc8_:DisplayObject = null;
         if(!param1)
         {
            _loc5_ = this.bg.width;
         }
         if(!param2)
         {
            _loc6_ = this.bg.height;
         }
         var _loc7_:int = 0;
         while(_loc7_ < numChildren)
         {
            if((_loc8_ = getChildAt(_loc7_)) != this.TXT_CONT)
            {
               removeChild(_loc8_);
               _loc7_--;
            }
            else
            {
               _loc8_.mask = null;
            }
            _loc7_++;
         }
         this.bg = null;
         this.contentMaskRect = null;
         this.createGraphics(_loc5_,_loc6_,param3,param4);
         x = GlobVars.STAGE_WIDTH / 2 - this.width / 2;
      }
      
      public function changeBackgroundColor() : void
      {
         var _loc1_:Point = GraphicsManager.MESSAGE_BOX_BG_COLOR_PNT;
         var _loc2_:uint = GraphicsManager.INSTANCE.drawingBoardInterfaceSkinCont.bmd.getPixel(_loc1_.x,_loc1_.y);
         var _loc3_:Number = 1;
         if(GameSettings.getInterfaceSkinLimited() == BmdInfo.SKIN_NUM_INVISIBLE)
         {
            _loc3_ = 0;
         }
         this.bg.graphics.beginFill(_loc2_,_loc3_);
         this.bg.graphics.drawRect(0,0,1,1);
         this.bg.graphics.endFill();
      }
      
      protected function makeBackgroundTransparent() : void
      {
         this.bg.graphics.clear();
         this.bg.graphics.beginFill(0,0);
         this.bg.graphics.drawRect(0,0,1,1);
         this.bg.graphics.endFill();
      }
      
      protected function getBackgroundColor() : uint
      {
         var _loc1_:Point = GraphicsManager.MESSAGE_BOX_BG_COLOR_PNT;
         return GraphicsManager.INSTANCE.drawingBoardInterfaceSkinCont.bmd.getPixel(_loc1_.x,_loc1_.y);
      }
      
      override public function get height() : Number
      {
         var _loc1_:Number = getVisibleBounds(this).height * scaleY;
         if(_loc1_ < 0)
         {
            _loc1_ = -_loc1_;
         }
         return _loc1_;
      }
      
      override public function get width() : Number
      {
         var _loc1_:Number = getVisibleBounds(this).width * scaleX;
         if(_loc1_ < 0)
         {
            _loc1_ = -_loc1_;
         }
         return _loc1_;
      }
      
      public function cancel() : void
      {
         this.UPD_TMR.start();
         this._readyToShrink = true;
         this._readyToGrow = false;
         this._interactive = false;
      }
      
      protected function updTmrHandeler(param1:TimerEvent) : void
      {
         this.dt = this.TD_CALC.getTD();
         if(this.dt > this.DT_MAX)
         {
            this.dt = this.DT_MAX;
         }
         if(this.readyToGrow)
         {
            this.grow();
         }
         else if(this.readyToShrink)
         {
            this.shrink();
         }
      }
      
      public function grow() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this._readyToGrow)
         {
            _loc1_ = this.width;
            _loc2_ = this.height - this.contentOverflowHeight * scaleX;
            scaleX += SCALE_INC * this.dt;
            if(scaleX > 1)
            {
               scaleX = 1;
            }
            scaleY = scaleX;
            _loc3_ = (this.width - _loc1_) * 0.5;
            _loc4_ = (this.height - this.contentOverflowHeight * scaleX - _loc2_) * 0.5;
            x = this.endXPos - this.width / 2;
            y = this.endYPos - this.height / 2;
            if(scaleX == 1)
            {
               this.reachedMaxSize();
            }
         }
      }
      
      protected function reachedMaxSize() : void
      {
         this.UPD_TMR.stop();
         this._readyToGrow = false;
         scaleX = 1;
         scaleY = 1;
         var _loc1_:Number = this.endXPos - this.width / 2;
         var _loc2_:Number = this.endYPos - this.height / 2;
         var _loc3_:Number = _loc1_ - x;
         var _loc4_:Number = _loc2_ - y;
         if(_loc3_ < 0)
         {
            _loc3_ = -_loc3_;
         }
         if(_loc4_ < 0)
         {
            _loc4_ = -_loc4_;
         }
         if(_loc3_ > this.MAX_FINAL_POSITION_OFFSET_BEFORE_FIX)
         {
            x = this.endXPos - this.width / 2;
         }
         if(_loc4_ > this.MAX_FINAL_POSITION_OFFSET_BEFORE_FIX)
         {
            y = this.endYPos - this.height / 2;
         }
         if(!this.nonInteractive)
         {
            this._interactive = true;
         }
         GlobVars.STAGE.focus = null;
      }
      
      protected function setUpText() : void
      {
      }
      
      public function shrink() : void
      {
         var _loc1_:Number = this.width;
         var _loc2_:Number = this.height;
         scaleX -= SCALE_INC * this.dt;
         scaleY = scaleX;
         var _loc3_:Number = (_loc1_ - this.width) * 0.5;
         var _loc4_:Number = (_loc2_ - this.height) * 0.5;
         x = this.endXPos - this.width / 2;
         y = this.endYPos - this.height / 2;
         if(scaleX <= 0)
         {
            if(this.hiding)
            {
               this.disappear();
            }
            else
            {
               this.destroy();
            }
         }
      }
      
      protected function cancelTmrHandeler(param1:TimerEvent) : void
      {
         this.cancelTmr.stop();
         this.cancelTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.cancelTmrHandeler);
         this.cancelTmr = null;
         if(!this.nonInteractive)
         {
            this._interactive = true;
         }
      }
      
      public function hide() : void
      {
         this.hiding = true;
         this.UPD_TMR.start();
         this._readyToShrink = true;
         this._readyToGrow = false;
      }
      
      public function get interactive() : Boolean
      {
         return this._interactive;
      }
      
      public function pressUpBtn() : void
      {
      }
      
      public function pressDwnBtn() : void
      {
      }
      
      public function pressLftBtn() : void
      {
      }
      
      public function pressRhtBtn() : void
      {
      }
      
      public function pressJmpBtn() : void
      {
      }
      
      public function pressAtkBtn() : void
      {
      }
      
      public function pressSpcBtn() : void
      {
      }
      
      public function pressPseBtn() : void
      {
      }
      
      protected function destroy() : void
      {
         if(activeInstance == this)
         {
            activeInstance = null;
         }
         if(this.cancelTmr && this.cancelTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.cancelTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.cancelTmrHandeler);
         }
         this.UPD_TMR.stop();
         this.UPD_TMR.removeEventListener(TimerEvent.TIMER,this.updTmrHandeler);
         if(parent)
         {
            parent.removeChild(this);
         }
         if(this.BTN_MNGR.activeMsgBx == this)
         {
            this.BTN_MNGR.activeMsgBx = null;
         }
         if(this.nextMsgBxToCreate)
         {
            this.nextMsgBxToCreate.initiate();
         }
         else if(this.nextMsgBxToFocus)
         {
            this.BTN_MNGR.activeMsgBx = this.nextMsgBxToFocus;
         }
         else if(this.nextMsgBxToReappear)
         {
            this.nextMsgBxToReappear.reappear();
         }
         GlobVars.STAGE.focus = null;
      }
      
      protected function disappear() : void
      {
         if(this.cancelTmr && this.cancelTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.cancelTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.cancelTmrHandeler);
         }
         this.UPD_TMR.stop();
         this._readyToGrow = false;
         this._readyToShrink = false;
         if(this.BTN_MNGR.activeMsgBx == this)
         {
            this.BTN_MNGR.activeMsgBx = null;
         }
         if(this.nextMsgBxToCreate)
         {
            this.nextMsgBxToCreate.initiate();
         }
         else if(this.nextMsgBxToFocus)
         {
            this.BTN_MNGR.activeMsgBx = this.nextMsgBxToFocus;
         }
         else if(this.nextMsgBxToReappear)
         {
            this.nextMsgBxToReappear.reappear();
         }
         visible = false;
      }
      
      public function reappear() : void
      {
         this.UPD_TMR.start();
         this._readyToGrow = true;
         this._readyToShrink = false;
         this.BTN_MNGR.activeMsgBx = this;
         visible = true;
      }
      
      public function get readyToShrink() : Boolean
      {
         return this._readyToShrink;
      }
      
      public function get readyToGrow() : Boolean
      {
         return this._readyToGrow;
      }
   }
}
