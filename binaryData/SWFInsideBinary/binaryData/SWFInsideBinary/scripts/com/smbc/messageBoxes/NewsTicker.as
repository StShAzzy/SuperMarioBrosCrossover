package com.smbc.messageBoxes
{
   import com.smbc.data.OnlineData;
   import com.smbc.errors.SingletonError;
   import com.smbc.events.CustomEvents;
   import com.smbc.graphics.fontChars.FontCharMenu;
   import com.smbc.level.Level;
   import com.smbc.text.TextFieldContainer;
   import flash.events.Event;
   import flash.text.TextFormatAlign;
   
   public class NewsTicker extends PlainMessageBox
   {
      
      private static const WIDTH:Number = 450;
      
      private static const HEIGHT:Number = 18;
      
      private static const Y_POS:Number = 40;
      
      private static const SCROLL_SPEED:Number = 75;
      
      private static var instance:NewsTicker;
      
      private static const TEXT_SEPARATOR:String = "()";
      
      private static const SPACE_BETWEEN_TEXT_FIELDS:Number = 10;
       
      
      private var level:Level;
      
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
      
      public function NewsTicker()
      {
         this.textField1 = new TextFieldContainer(FontCharMenu.FONT_NUM);
         this.textField2 = new TextFieldContainer(FontCharMenu.FONT_NUM);
         this.textToDisplay = new Vector.<String>();
         super("test",WIDTH,HEIGHT,Y_POS,TextFormatAlign.LEFT);
         if(instance != null)
         {
            throw new SingletonError();
         }
         instance = this;
         nonActive = true;
         nonInteractive = true;
         this.textField1.text = "temp";
         this.textField2.text = "temp";
         endYPos = Y_POS;
         EVENT_MNGR.addEventListener(CustomEvents.CHANGE_INTERFACE_SKIN,this.changeInterfaceSkinHandler,false,0,true);
      }
      
      public static function getInstance() : NewsTicker
      {
         if(instance == null)
         {
            return new NewsTicker();
         }
         return instance;
      }
      
      override public function initiate() : void
      {
         super.initiate();
         this.initiated = true;
         this.textToDisplay = OnlineData.tickerText;
         this.textField1.text = this.getNextText();
         this.frontTextField = this.textField1;
         this.backTextField = this.textField2;
         this.frontTextField.x = this.textRightPosition;
         this.backTextField.x = this.textRightPosition;
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
      
      protected function changeInterfaceSkinHandler(param1:Event) : void
      {
         changeBackgroundColor();
         resizeBox();
      }
      
      override protected function createGraphics(param1:Number = NaN, param2:Number = NaN, param3:int = 0, param4:int = 0) : void
      {
         super.createGraphics(WIDTH,HEIGHT);
      }
      
      protected function gameLoopEndHandler(param1:Event) : void
      {
         var _loc2_:TextFieldContainer = null;
         this.frontTextField.x -= SCROLL_SPEED * this.level.dt;
         if(this.frontTextField.x + this.frontTextField.width < this.textRightPosition && !this.moveBackTextField)
         {
            this.backTextField.text = this.getNextText();
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
         TXT_CONT.addChild(this.textField1);
         TXT_CONT.x = CONTAINER_PADDING;
         TXT_CONT.y = CONTAINER_PADDING;
         TXT_CONT.addChild(this.textField2);
      }
      
      public function kill() : void
      {
         EVENT_MNGR.removeEventListener(CustomEvents.CHANGE_INTERFACE_SKIN,this.changeInterfaceSkinHandler);
         instance = null;
         destroy();
      }
   }
}
