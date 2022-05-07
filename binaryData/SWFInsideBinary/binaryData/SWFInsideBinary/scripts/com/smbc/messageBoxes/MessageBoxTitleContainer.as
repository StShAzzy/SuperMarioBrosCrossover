package com.smbc.messageBoxes
{
   import com.smbc.graphics.TitleBmp;
   import com.smbc.level.TitleLevel;
   import flash.display.DisplayObject;
   
   public class MessageBoxTitleContainer extends PlainMessageBox
   {
      
      public static var currentInstance:MessageBoxTitleContainer;
       
      
      private var contents:TitleBmp;
      
      private const END_Y:int = 200;
      
      public function MessageBoxTitleContainer()
      {
         currentInstance = this;
         super("");
         endYPos = this.END_Y;
      }
      
      override public function initiate() : void
      {
         this.contents = new TitleBmp();
         super.initiate();
         while(scaleX < 1)
         {
            grow();
         }
         TitleLevel.instance.addChild(this);
      }
      
      override protected function setUpText() : void
      {
         var _loc1_:DisplayObject = null;
         TXT_CONT.addChild(this.contents);
         _loc1_ = this.contents.getChildAt(0);
         this.contents.x -= _loc1_.x;
         this.contents.y -= _loc1_.y;
         TXT_CONT.x = CONTAINER_PADDING;
         TXT_CONT.y = CONTAINER_PADDING;
      }
      
      override public function pressUpBtn() : void
      {
      }
      
      override public function pressDwnBtn() : void
      {
      }
      
      override public function pressLftBtn() : void
      {
      }
      
      override public function pressRhtBtn() : void
      {
      }
      
      override public function pressJmpBtn() : void
      {
      }
      
      override public function pressAtkBtn() : void
      {
      }
      
      override public function pressSpcBtn() : void
      {
      }
      
      override public function pressPseBtn() : void
      {
      }
      
      override protected function destroy() : void
      {
         MSG_BX_MNGR.writeNextMainMenu(this);
         super.destroy();
         TXT_CONT.removeChild(this.contents);
         this.contents = null;
         currentInstance = null;
      }
   }
}
