package com.smbc.messageBoxes
{
   import com.smbc.level.Level;
   import com.smbc.text.TextFieldContainer;
   import flash.utils.Dictionary;
   
   public class OptionsMenu extends MenuBox
   {
      
      public static var lastIndex:int;
       
      
      public function OptionsMenu(param1:int = 0)
      {
         super(this.loadItems(),param1);
      }
      
      private function loadItems() : Array
      {
         return [[MenuBoxItems.SET_BUTTONS],[MenuBoxItems.GENERAL_OPTIONS],[MenuBoxItems.SOUND_OPTIONS],[MenuBoxItems.GRAPHICS_OPTIONS],[MenuBoxItems.CHEATS],[MenuBoxItems.BACK]];
      }
      
      override protected function chooseItem(param1:String, param2:String, param3:TextFieldContainer, param4:int) : void
      {
         var _loc7_:Vector.<String> = null;
         var _loc9_:String = null;
         var _loc10_:String = null;
         var _loc11_:PlainMessageMenuBox = null;
         var _loc12_:PlainMessageBox = null;
         var _loc13_:PlainMessageBox = null;
         var _loc14_:PlainMessageBox = null;
         var _loc15_:PlainMessageBox = null;
         var _loc16_:PlainMessageBox = null;
         var _loc17_:PlainMessageBox = null;
         var _loc18_:PlainMessageBox = null;
         var _loc19_:PlainMessageBox = null;
         var _loc20_:PlainMessageBox = null;
         var _loc21_:PlainMessageMenuBox = null;
         var _loc5_:String = MenuBoxItems.ON;
         var _loc6_:String = MenuBoxItems.OFF;
         var _loc8_:Level = Level.levelInstance;
         lastIndex = cSelNum;
         switch(param1)
         {
            case MenuBoxItems.SET_BUTTONS:
               (_loc7_ = new Vector.<String>()).push(MenuBoxItems.NO);
               _loc7_.push(MenuBoxItems.YES);
               _loc11_ = new PlainMessageMenuBox(MessageBoxMessages.SET_BUTTONS_START,_loc7_);
               _loc12_ = new PlainMessageBox(MessageBoxMessages.SET_BUTTONS_LFT);
               _loc13_ = new PlainMessageBox(MessageBoxMessages.SET_BUTTONS_RHT);
               _loc14_ = new PlainMessageBox(MessageBoxMessages.SET_BUTTONS_UP);
               _loc15_ = new PlainMessageBox(MessageBoxMessages.SET_BUTTONS_DWN);
               _loc16_ = new PlainMessageBox(MessageBoxMessages.SET_BUTTONS_JMP);
               _loc17_ = new PlainMessageBox(MessageBoxMessages.SET_BUTTONS_ATK);
               _loc18_ = new PlainMessageBox(MessageBoxMessages.SET_BUTTONS_SPC);
               _loc19_ = new PlainMessageBox(MessageBoxMessages.SET_BUTTONS_PSE);
               _loc20_ = new PlainMessageBox(MessageBoxMessages.SET_BUTTONS_SEL);
               _loc21_ = new PlainMessageMenuBox(MessageBoxMessages.SET_BUTTONS_END,_loc7_);
               _loc12_.nextMsgBxToCreate = _loc13_;
               _loc13_.nextMsgBxToCreate = _loc14_;
               _loc14_.nextMsgBxToCreate = _loc15_;
               _loc15_.nextMsgBxToCreate = _loc16_;
               _loc16_.nextMsgBxToCreate = _loc17_;
               _loc17_.nextMsgBxToCreate = _loc18_;
               _loc18_.nextMsgBxToCreate = _loc19_;
               _loc19_.nextMsgBxToCreate = _loc20_;
               _loc20_.nextMsgBxToCreate = _loc21_;
               _loc11_.mbName = PlainMessageMenuBox.SET_BUTTONS_START_NAME;
               _loc21_.mbName = PlainMessageMenuBox.SET_BUTTONS_END_NAME;
               MSG_BX_MNGR.setBtnsDct = new Dictionary();
               MSG_BX_MNGR.setBtnsDct[_loc12_.msgStr] = _loc12_;
               MSG_BX_MNGR.setBtnsDct[_loc13_.msgStr] = _loc13_;
               MSG_BX_MNGR.setBtnsDct[_loc14_.msgStr] = _loc14_;
               MSG_BX_MNGR.setBtnsDct[_loc15_.msgStr] = _loc15_;
               MSG_BX_MNGR.setBtnsDct[_loc16_.msgStr] = _loc16_;
               MSG_BX_MNGR.setBtnsDct[_loc17_.msgStr] = _loc17_;
               MSG_BX_MNGR.setBtnsDct[_loc18_.msgStr] = _loc18_;
               MSG_BX_MNGR.setBtnsDct[_loc19_.msgStr] = _loc19_;
               MSG_BX_MNGR.setBtnsDct[_loc20_.msgStr] = _loc20_;
               _loc11_.nextMsgBxToCreate = new OptionsMenu();
               nextMsgBxToCreate = _loc11_;
               cancel();
               break;
            case MenuBoxItems.GENERAL_OPTIONS:
               nextMsgBxToCreate = new GeneralOptions();
               cancel();
               break;
            case MenuBoxItems.SOUND_OPTIONS:
               nextMsgBxToCreate = new SoundOptions();
               cancel();
               break;
            case MenuBoxItems.GRAPHICS_OPTIONS:
               nextMsgBxToCreate = new GraphicsOptions();
               cancel();
               break;
            case MenuBoxItems.BACK:
               if(!nextMsgBxToCreate)
               {
                  MSG_BX_MNGR.writeNextMainMenu(this);
               }
               cancel();
               break;
            case MenuBoxItems.CHEATS:
               nextMsgBxToCreate = new CheatMenu();
               cancel();
         }
         SND_MNGR.playSoundNow(SN_CHOOSE_ITEM);
      }
      
      override public function pressAtkBtn() : void
      {
         MSG_BX_MNGR.writeNextMainMenu(this);
         cancel();
         SND_MNGR.playSoundNow(SN_CANCEL_ITEM);
      }
   }
}
