package com.smbc.messageBoxes
{
   import com.smbc.data.GameSettings;
   import com.smbc.level.Level;
   import com.smbc.text.TextFieldContainer;
   
   public class GeneralOptions extends SettingsMenuBox
   {
      
      public static var lastIndex:int;
       
      
      public function GeneralOptions(param1:int = 0)
      {
         super(this.loadItems(),param1);
         nextMsgBxToCreate = new OptionsMenu(OptionsMenu.lastIndex);
      }
      
      private function loadItems() : Array
      {
         return [[MenuBoxItems.FULL_SCREEN_MODE],[MenuBoxItems.DISABLE_CHARACTERS],[MenuBoxItems.CLASSIC_SPECIAL_INPUT,GameSettings.classicSpecialInput],[MenuBoxItems.TUTORIALS,GameSettings.tutorials],[MenuBoxItems.CHEAT_NOTIFY,GameSettings.cheatNotify],[MenuBoxItems.LOCK_FRAME_RATE,GameSettings.lockFrameRate],[MenuBoxItems.GAME_BOY_FILTER,GameSettings.gameBoyFilter],[MenuBoxItems.BACK]];
      }
      
      override protected function chooseItem(param1:String, param2:String, param3:TextFieldContainer, param4:int) : void
      {
         var _loc7_:Vector.<String> = null;
         var _loc9_:String = null;
         var _loc10_:String = null;
         var _loc11_:* = false;
         lastIndex = cSelNum;
         var _loc5_:String = MenuBoxItems.ON;
         var _loc6_:String = MenuBoxItems.OFF;
         var _loc8_:Level = Level.levelInstance;
         switch(param1)
         {
            case MenuBoxItems.DISABLE_CHARACTERS:
               nextMsgBxToCreate = new CharacterSelectBox();
               nextMsgBxToCreate.nextMsgBxToCreate = new GeneralOptions(lastIndex);
               cancel();
               break;
            case MenuBoxItems.TUTORIALS:
               GameSettings.changeTutorials();
               _loc10_ = convertToOnOffStr(GameSettings.tutorials);
               break;
            case MenuBoxItems.LOCK_FRAME_RATE:
               _loc10_ = convertToOnOffStr(GameSettings.changeLockFrameRate());
               break;
            case MenuBoxItems.GAME_BOY_FILTER:
               GameSettings.changeGameBoyFilter();
               _loc10_ = convertToOnOffStr(GameSettings.gameBoyFilter);
               break;
            case MenuBoxItems.CLASSIC_SPECIAL_INPUT:
               _loc10_ = _loc10_ = convertToOnOffStr(GameSettings.classicSpecialInput = !GameSettings.classicSpecialInput);
               break;
            case MenuBoxItems.CHEAT_NOTIFY:
               _loc11_ = !GameSettings.cheatNotify;
               GameSettings.cheatNotify = _loc11_;
               _loc10_ = convertToOnOffStr(GameSettings.cheatNotify);
               break;
            case MenuBoxItems.FULL_SCREEN_MODE:
               tryEnterFullScreen();
               break;
            case MenuBoxItems.BACK:
               cancel();
         }
         afterChooseItem(param1,_loc10_,param3);
      }
      
      override public function pressAtkBtn() : void
      {
         cancel();
         SND_MNGR.playSoundNow(SN_CANCEL_ITEM);
      }
   }
}
