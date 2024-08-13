package com.smbc.messageBoxes
{
   import com.smbc.main.GlobVars;
   import com.smbc.managers.MessageBoxManager;
   import com.smbc.managers.SoundManager;
   import com.smbc.text.TextFieldContainer;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   
   public class StartMenu extends MenuBox
   {
      
      public static var instance:StartMenu;
      
      public static var lastIndex:int;
       
      
      private const END_Y:int = 190;
      
      private const STAGE:Stage = GlobVars.STAGE;
      
      public function StartMenu(param1:int = 0)
      {
         instance = this;
         super(this.loadItems(),param1);
      }
      
      private function loadItems() : Array
      {
         return [[MenuBoxItems.NEW_GAME],[MenuBoxItems.LOAD_GAME],[MenuBoxItems.OPTIONS],[MenuBoxItems.LINKS]];
      }
      
      override protected function chooseItem(param1:String, param2:String, param3:TextFieldContainer, param4:int) : void
      {
         lastIndex = _cSelNum;
         super.chooseItem(param1,param2,param3,param4);
      }
      
      override protected function reachedMaxSize() : void
      {
         super.reachedMaxSize();
         this.STAGE.addEventListener(MouseEvent.CLICK,this.mouseClickHandler,false,0,true);
      }
      
      override public function cancel() : void
      {
         this.STAGE.removeEventListener(MouseEvent.CLICK,this.mouseClickHandler);
         super.cancel();
      }
      
      private function mouseClickHandler(param1:MouseEvent) : void
      {
         if(param1.stageY > GlobVars.STAGE_HEIGHT - GlobVars.TILE_SIZE * 2)
         {
            return;
         }
         nextMsgBxToCreate = new PlainMessageBox(MessageBoxMessages.USE_ARROW_KEYS);
         MessageBoxManager.INSTANCE.writeNextMainMenu(nextMsgBxToCreate);
         this.cancel();
         SoundManager.SND_MNGR.playSoundNow(MessageBoxSounds.SN_CANCEL_ITEM);
      }
      
      override protected function destroy() : void
      {
         MSG_BX_MNGR.saveLastMenuPosition();
         instance = null;
         super.destroy();
      }
      
      override public function pressPseBtn() : void
      {
         this.mouseClickHandler(new MouseEvent(MouseEvent.CLICK));
      }
      
      override public function pressAtkBtn() : void
      {
         this.cancel();
      }
   }
}
