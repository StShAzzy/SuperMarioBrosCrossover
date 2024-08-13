package com.smbc.messageBoxes
{
   import com.smbc.data.OnlineData;
   import com.smbc.events.CustomEvents;
   import com.smbc.managers.ScreenManager;
   import com.smbc.text.TextFieldContainer;
   import flash.events.Event;
   
   public class SettingsMenuBox extends MenuBox
   {
       
      
      protected var alwaysResizeWhenOptionsChanged:Boolean;
      
      public function SettingsMenuBox(param1:Array, param2:int = 0, param3:Number = NaN, param4:Boolean = false, param5:String = null)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      protected function convertToOnOffStr(param1:Boolean) : String
      {
         if(param1)
         {
            return ON_STR;
         }
         return OFF_STR;
      }
      
      protected function afterChooseItem(param1:String, param2:String, param3:TextFieldContainer, param4:Boolean = false) : void
      {
         var _loc5_:Number = TXT_CONT.width;
         if(param2)
         {
            param3.text = param1 + VALUE_SEP + param2;
            if(TXT_CONT.width > _loc5_ || this.alwaysResizeWhenOptionsChanged)
            {
               resizeBox(true,false);
            }
         }
         if(!param4)
         {
            if(param1 != MenuBoxItems.BACK_TO_MAIN_MENU)
            {
               SND_MNGR.playSoundNow(SN_CHOOSE_ITEM);
            }
            else
            {
               SND_MNGR.playSoundNow(SN_CANCEL_ITEM);
            }
         }
         EVENT_MNGR.dispatchEvent(new Event(CustomEvents.MSG_BX_CHOOSE_ITEM + param1));
      }
      
      protected function tryEnterFullScreen() : void
      {
         var _loc1_:SettingsMenuBox = null;
         if(ScreenManager.SCRN_MNGR.enterFullScreen())
         {
            nextMsgBxToCreate = new PlainMessageBox(MessageBoxMessages.HOW_TO_CANCEL_FULL_SCREEN);
         }
         else if(!OnlineData.onOfficialWebsite)
         {
            nextMsgBxToCreate = new PlainMessageMenuBox(MessageBoxMessages.FULL_SCREEN_ONLY_AVAILABLE_ON_DEVELOPER_WEBSITE,Vector.<String>([MenuBoxItems.NO,MenuBoxItems.YES]),1);
         }
         else
         {
            nextMsgBxToCreate = new PlainMessageBox(MessageBoxMessages.FULL_SCREEN_MODE_NOT_WORKING);
         }
         if(this is NewGameOptionsMenu)
         {
            _loc1_ = new NewGameOptionsMenu(_cSelNum);
         }
         else
         {
            _loc1_ = new GeneralOptions(_cSelNum);
         }
         nextMsgBxToCreate.nextMsgBxToCreate = _loc1_;
         cancel();
      }
      
      override public function pressAtkBtn() : void
      {
         if(nextMsgBxToCreate)
         {
            cancel();
            SND_MNGR.playSoundNow(SN_CANCEL_ITEM);
         }
      }
   }
}
