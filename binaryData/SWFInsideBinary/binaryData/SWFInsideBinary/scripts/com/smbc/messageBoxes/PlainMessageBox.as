package com.smbc.messageBoxes
{
   import com.explodingRabbit.utils.KeyCodeToString;
   import com.smbc.graphics.fontChars.FontCharMenu;
   import com.smbc.managers.TutorialManager;
   import com.smbc.text.TextFieldContainer;
   import flash.text.TextFormatAlign;
   
   public class PlainMessageBox extends MessageBox
   {
      
      private static const DEFAULT_ALIGN:String = TextFormatAlign.LEFT;
       
      
      protected var _msgStr:String;
      
      protected const PLAIN_MSG_MAX_WIDTH:int = 460;
      
      protected const MSG_TXT:TextFieldContainer = new TextFieldContainer(FontCharMenu.TYPE_NORMAL);
      
      public var tutorial:Boolean;
      
      protected var oRdMaxWidth:int;
      
      protected var align:String;
      
      private var boxWidth:Number;
      
      private var boxHeight:Number;
      
      public function PlainMessageBox(param1:String, param2:Number = NaN, param3:Number = NaN, param4:Number = NaN, param5:String = null)
      {
         this._msgStr = param1;
         if(param5)
         {
            this.align = param5;
         }
         else
         {
            param5 = DEFAULT_ALIGN;
         }
         this.boxWidth = param2;
         this.boxHeight = param3;
         super(param2,param3);
         if(!isNaN(param4))
         {
            endYPos = param4;
         }
      }
      
      override protected function setUpText() : void
      {
         this.replaceButtonStrings();
         this.MSG_TXT.multiline = true;
         if(isNaN(this.boxWidth))
         {
            this.MSG_TXT.textBlockWidth = endBoxWidth - CONTAINER_PADDING * 2;
         }
         else
         {
            this.MSG_TXT.textBlockWidth = this.boxWidth;
         }
         this.MSG_TXT.text = this._msgStr;
         TXT_CONT.addChild(this.MSG_TXT);
         TXT_CONT.x = CONTAINER_PADDING;
         TXT_CONT.y = CONTAINER_PADDING;
      }
      
      override protected function reachedMaxSize() : void
      {
         super.reachedMaxSize();
         if(this.tutorial && cancelTmr && cancelTmr.running)
         {
            _interactive = false;
         }
      }
      
      private function replaceButtonStrings() : void
      {
         var checkString:Function = function(param1:String, param2:int):void
         {
            while(_msgStr.indexOf(param1) != -1)
            {
               _msgStr = _msgStr.replace(param1,KeyCodeToString.convertKeyCode(param2));
            }
         };
         checkString(TutorialManager.LFT_BTN_STR,BTN_MNGR.lftBtnKeyCode);
         checkString(TutorialManager.RHT_BTN_STR,BTN_MNGR.rhtBtnKeyCode);
         checkString(TutorialManager.UP_BTN_STR,BTN_MNGR.upBtnKeyCode);
         checkString(TutorialManager.DWN_BTN_STR,BTN_MNGR.dwnBtnKeyCode);
         checkString(TutorialManager.JMP_BTN_STR,BTN_MNGR.jmpBtnKeyCode);
         checkString(TutorialManager.ATK_BTN_STR,BTN_MNGR.atkBtnKeyCode);
         checkString(TutorialManager.SPC_BTN_STR,BTN_MNGR.spcBtnKeyCode);
         checkString(TutorialManager.PSE_BTN_STR,BTN_MNGR.pseBtnKeyCode);
         checkString(TutorialManager.SEL_BTN_STR,BTN_MNGR.selBtnKeyCode);
      }
      
      override public function pressJmpBtn() : void
      {
         cancel();
      }
      
      override public function pressAtkBtn() : void
      {
         cancel();
      }
      
      override public function pressSpcBtn() : void
      {
         cancel();
      }
      
      override public function pressPseBtn() : void
      {
         cancel();
      }
      
      override protected function destroy() : void
      {
         super.destroy();
         if(this.tutorial)
         {
            MSG_BX_MNGR.tutorialEnd();
         }
      }
      
      public function get msgStr() : String
      {
         return this._msgStr;
      }
   }
}
