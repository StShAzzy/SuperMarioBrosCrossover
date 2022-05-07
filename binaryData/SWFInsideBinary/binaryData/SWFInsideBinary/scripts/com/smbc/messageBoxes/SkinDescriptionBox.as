package com.smbc.messageBoxes
{
   import com.customClasses.TDCalculator;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.graphics.fontChars.FontCharMenu;
   import com.smbc.level.Level;
   import com.smbc.managers.StatManager;
   import com.smbc.text.TextFieldContainer;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.text.TextFormatAlign;
   
   public class SkinDescriptionBox extends PlainMessageBox
   {
      
      private static const WIDTH:Number = 450;
      
      private static const HEIGHT:Number = 16;
      
      private static const Y_POS:Number = 450;
      
      private static const SCROLL_SPEED:Number = 120;
      
      private static var instance:NewsTicker;
      
      private static const TEXT_SEPARATOR:String = "()";
      
      private static const SPACE_BETWEEN_TEXT_FIELDS:Number = 120;
      
      private static const DT_MAX:Number = 0.045;
       
      
      private var level:Level;
      
      private const SCROLL_DELAY_TIMER:CustomTimer = new CustomTimer(2000,1);
      
      private const SCROLL_TIMER:CustomTimer = new CustomTimer(1000 / 60);
      
      private var textField1:TextFieldContainer;
      
      private var textField2:TextFieldContainer;
      
      private var initiated:Boolean;
      
      private var textToDisplay:Vector.<String>;
      
      private var textIndex:int = -1;
      
      private var textLeftPosition:Number = 0;
      
      private var textRightPosition:Number = 450;
      
      private var frontTextField:TextFieldContainer;
      
      private var backTextField:TextFieldContainer;
      
      private var moveBackTextField:Boolean;
      
      private var statManager:StatManager;
      
      private var timeDifferenceCalculator:TDCalculator;
      
      private var dt:Number = 0.03;
      
      public function SkinDescriptionBox()
      {
         this.textField1 = new TextFieldContainer(FontCharMenu.FONT_NUM);
         this.textField2 = new TextFieldContainer(FontCharMenu.FONT_NUM);
         this.textToDisplay = new Vector.<String>();
         super("test",WIDTH,HEIGHT,0,TextFormatAlign.LEFT);
         nonActive = true;
         nonInteractive = true;
         this.textField1.text = "temp";
         endYPos = Y_POS;
         this.statManager = StatManager.STAT_MNGR;
         this.timeDifferenceCalculator = new TDCalculator();
      }
      
      override public function initiate() : void
      {
         super.initiate();
         this.frontTextField = this.textField1;
         this.backTextField = this.textField2;
         this.level = Level.levelInstance;
         this.SCROLL_DELAY_TIMER.addEventListener(TimerEvent.TIMER_COMPLETE,this.scrollDelayTimerHandler,false,0,true);
         this.SCROLL_TIMER.addEventListener(TimerEvent.TIMER,this.scrollTimerHandler,false,0,true);
         this.SCROLL_TIMER.start();
      }
      
      protected function scrollDelayTimerHandler(param1:TimerEvent) : void
      {
         this.SCROLL_DELAY_TIMER.reset();
      }
      
      public function updateText() : void
      {
         var _loc1_:String = this.statManager.getCurrentBmc(this.statManager.curCharNum).skinDescription;
         if(_loc1_ != null)
         {
            this.frontTextField.text = _loc1_;
            this.backTextField.text = _loc1_;
            this.frontTextField.x = this.textLeftPosition;
            this.backTextField.x = this.textRightPosition;
            visible = true;
            this.SCROLL_DELAY_TIMER.start();
            this.moveBackTextField = false;
         }
         else
         {
            visible = false;
         }
      }
      
      override protected function createGraphics(param1:Number = NaN, param2:Number = NaN, param3:int = 0, param4:int = 0) : void
      {
         super.createGraphics(WIDTH,HEIGHT);
      }
      
      protected function scrollTimerHandler(param1:Event) : void
      {
         var _loc2_:TextFieldContainer = null;
         this.dt = this.timeDifferenceCalculator.getTD();
         if(this.dt > DT_MAX)
         {
            this.dt = DT_MAX;
         }
         if(this.SCROLL_DELAY_TIMER.running || this.frontTextField.width < bg.width)
         {
            return;
         }
         this.frontTextField.x -= SCROLL_SPEED * this.dt;
         if(this.frontTextField.x + this.frontTextField.width < WIDTH - SPACE_BETWEEN_TEXT_FIELDS && !this.moveBackTextField)
         {
            this.backTextField.x = this.textRightPosition;
            this.moveBackTextField = true;
         }
         else if(this.frontTextField.x + this.frontTextField.width < this.textLeftPosition)
         {
            this.moveBackTextField = false;
            _loc2_ = this.frontTextField;
            this.frontTextField = this.backTextField;
            this.backTextField = _loc2_;
            this.backTextField.x = this.textRightPosition;
         }
         if(this.moveBackTextField)
         {
            this.backTextField.x = this.frontTextField.x + this.frontTextField.width + SPACE_BETWEEN_TEXT_FIELDS;
         }
      }
      
      override protected function setUpText() : void
      {
         TXT_CONT.addChild(this.textField1);
         TXT_CONT.x = CONTAINER_PADDING;
         TXT_CONT.y = CONTAINER_PADDING;
         TXT_CONT.addChild(this.textField2);
      }
      
      override public function cancel() : void
      {
         super.cancel();
         this.SCROLL_TIMER.removeEventListener(TimerEvent.TIMER,this.scrollTimerHandler);
         this.SCROLL_DELAY_TIMER.removeEventListener(TimerEvent.TIMER_COMPLETE,this.scrollDelayTimerHandler);
      }
   }
}
