package com.smbc.messageBoxes
{
   import com.smbc.data.Cheats;
   import com.smbc.data.GameSettings;
   import com.smbc.text.TextFieldContainer;
   
   public final class PauseMenu extends MenuBox
   {
      
      public static var lastIndex:int;
       
      
      public function PauseMenu(param1:int = 0)
      {
         super(this.loadItems(),param1);
         if(GameSettings.invisiblePause)
         {
            visible = false;
         }
      }
      
      private function loadItems() : Array
      {
         var _loc1_:Array = [[MenuBoxItems.RESUME_GAME],[MenuBoxItems.LOAD_SAVE_GAME],[MenuBoxItems.OPTIONS],[MenuBoxItems.LINKS]];
         if(!Cheats.getLockStatus(MenuBoxItems.LEVEL_SELECT))
         {
            _loc1_.push([MenuBoxItems.LEVEL_SELECT]);
         }
         _loc1_.push([MenuBoxItems.QUIT_GAME]);
         return _loc1_;
      }
      
      override protected function chooseItem(param1:String, param2:String, param3:TextFieldContainer, param4:int) : void
      {
         lastIndex = _cSelNum;
         super.chooseItem(param1,param2,param3,param4);
      }
      
      override protected function destroy() : void
      {
         MSG_BX_MNGR.saveLastMenuPosition();
         super.destroy();
      }
   }
}
