package com.smbc.messageBoxes
{
   import com.smbc.graphics.fontChars.FontCharMenu;
   import com.smbc.text.TextFieldContainer;
   
   public class CharNameBox extends PlainMessageBox
   {
      
      private static const LINE_SPACE:int = 28;
       
      
      private var nameTfc:TextFieldContainer;
      
      private var skinNameTfc:TextFieldContainer;
      
      private var gameTfc:TextFieldContainer;
      
      private var boxyWidth:Number;
      
      private var boxyHeight:Number;
      
      public function CharNameBox(param1:String, param2:Number = NaN, param3:Number = NaN, param4:Number = NaN, param5:String = null, param6:Boolean = false)
      {
         this.nameTfc = new TextFieldContainer(FontCharMenu.FONT_NUM);
         this.skinNameTfc = new TextFieldContainer(FontCharMenu.FONT_NUM,FontCharMenu.TYPE_SELECTED);
         this.gameTfc = new TextFieldContainer(FontCharMenu.FONT_NUM,FontCharMenu.TYPE_SELECTED);
         super(param1,param2,param3,param4,param5);
         nonActive = true;
         nonInteractive = true;
         this.instantGrow = param6;
         this.boxyWidth = param2;
         this.boxyHeight = param3;
         this.nameTfc.text = "Mario";
         this.gameTfc.text = "The Legend of Zelda 2";
         this.gameTfc.y = LINE_SPACE * 2;
         this.skinNameTfc.y = LINE_SPACE;
         endYPos = param4;
      }
      
      override protected function setUpText() : void
      {
         TXT_CONT.addChild(this.nameTfc);
         TXT_CONT.addChild(this.gameTfc);
         TXT_CONT.addChild(this.skinNameTfc);
         TXT_CONT.x = CONTAINER_PADDING;
         TXT_CONT.y = CONTAINER_PADDING;
      }
      
      public function changeText(param1:String, param2:String, param3:String = null) : void
      {
         var _loc4_:Number = NaN;
         _loc4_ = bg.width / 2;
         this.nameTfc.text = param1;
         this.gameTfc.text = param2;
         this.nameTfc.x = _loc4_ - this.nameTfc.width * 0.5;
         this.gameTfc.x = _loc4_ - this.gameTfc.width * 0.5;
         if(param3)
         {
            this.skinNameTfc.text = "\"" + param3 + "\"";
            this.skinNameTfc.x = _loc4_ - this.skinNameTfc.width * 0.5;
            this.skinNameTfc.y = 0;
            this.nameTfc.y = LINE_SPACE;
            this.gameTfc.y = LINE_SPACE * 2;
         }
         else
         {
            this.nameTfc.y = 0;
            this.gameTfc.y = LINE_SPACE;
            this.skinNameTfc.text = "";
         }
         resizeBox(false,true);
      }
      
      override public function cancel() : void
      {
         endYPos = y + height / 2;
         super.cancel();
      }
   }
}
