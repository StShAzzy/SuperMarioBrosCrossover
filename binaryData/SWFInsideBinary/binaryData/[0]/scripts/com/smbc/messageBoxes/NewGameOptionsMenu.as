package com.smbc.messageBoxes
{
   import com.smbc.data.CampaignModes;
   import com.smbc.data.GameSettings;
   import com.smbc.data.MapDifficulty;
   import com.smbc.data.MapPack;
   import com.smbc.enums.PowerupMode;
   import com.smbc.graphics.SkinNames;
   import com.smbc.graphics.fontChars.FontCharMenu;
   import com.smbc.managers.ScreenManager;
   import com.smbc.text.TextFieldContainer;
   
   public class NewGameOptionsMenu extends SettingsMenuBox
   {
      
      public static var instance:NewGameOptionsMenu;
      
      private static var customizeWeaponsIndex:int;
       
      
      private var disableChooseItemSnd:Boolean;
      
      public function NewGameOptionsMenu(param1:int = 0)
      {
         super(this.loadItems(),param1);
         instance = this;
         MSG_BX_MNGR.writeNextMainMenu(this);
      }
      
      private function loadItems() : Array
      {
         var _loc1_:Array = [[MenuBoxItems.MAP_PACK,GameSettings.mapPack.NiceName],[MenuBoxItems.MAP_DIFFICULTY,MapDifficulty.swapNumAndName(GameSettings.mapDifficulty)],[MenuBoxItems.GAME_MODE,CampaignModes.swapNumAndName(GameSettings.campaignMode)],[MenuBoxItems.POWERUP_MODE,GameSettings.powerupMode.NiceName],[MenuBoxItems.CUSTOMIZE_WEAPONS],[MenuBoxItems.MORE_DIFFICULTY_SETTINGS],[MenuBoxItems.FULL_SCREEN_MODE],[MenuBoxItems.START_GAME]];
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            if(_loc1_[_loc2_][0] == MenuBoxItems.CUSTOMIZE_WEAPONS)
            {
               customizeWeaponsIndex = _loc2_;
               break;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      override public function initiate() : void
      {
         super.initiate();
         this.updateCustomizeWeaponsEnabled();
      }
      
      private function updateCustomizeWeaponsEnabled() : void
      {
         if(_cSelNum == customizeWeaponsIndex)
         {
            return;
         }
         var _loc1_:TextFieldContainer = getTfc(customizeWeaponsIndex);
         if(GameSettings.classicMode)
         {
            _loc1_.changeType(FontCharMenu.TYPE_NORMAL);
         }
         else
         {
            _loc1_.changeType(FontCharMenu.TYPE_DISABLED);
         }
      }
      
      override protected function setNewSelection(param1:int) : void
      {
         if(!GameSettings.classicMode)
         {
            if(param1 == customizeWeaponsIndex)
            {
               if(_cSelNum == customizeWeaponsIndex - 1)
               {
                  param1 = customizeWeaponsIndex + 1;
               }
               else if(_cSelNum == customizeWeaponsIndex + 1)
               {
                  param1 = customizeWeaponsIndex - 1;
               }
            }
         }
         super.setNewSelection(param1);
      }
      
      override protected function chooseItem(param1:String, param2:String, param3:TextFieldContainer, param4:int) : void
      {
         var _loc5_:String = null;
         switch(param1)
         {
            case MenuBoxItems.MAP_PACK:
               GameSettings.mapPack = GameSettings.mapPack.GetAtIndex(param4) as MapPack;
               _loc5_ = GameSettings.mapPack.NiceName;
               break;
            case MenuBoxItems.GAME_MODE:
               _loc5_ = GameSettings.changeCampaignMode(param4);
               break;
            case MenuBoxItems.MAP_DIFFICULTY:
               GameSettings.changeMapDifficulty(param4);
               _loc5_ = MapDifficulty.swapNumAndName(GameSettings.mapDifficulty);
               break;
            case MenuBoxItems.POWERUP_MODE:
               GameSettings.powerupMode = GameSettings.powerupMode.GetAtIndex(param4) as PowerupMode;
               _loc5_ = GameSettings.powerupMode.NiceName;
               this.updateCustomizeWeaponsEnabled();
               break;
            case MenuBoxItems.CUSTOMIZE_WEAPONS:
               nextMsgBxToCreate = new CustomizeWeaponsMenu();
               nextMsgBxToCreate.nextMsgBxToCreate = new NewGameOptionsMenu(_cSelNum);
               cancel();
               break;
            case MenuBoxItems.FULL_SCREEN_MODE:
               tryEnterFullScreen();
               break;
            case MenuBoxItems.MORE_DIFFICULTY_SETTINGS:
               nextMsgBxToCreate = new DifficultySettingsMenu();
               nextMsgBxToCreate.nextMsgBxToCreate = new NewGameOptionsMenu(_cSelNum);
               cancel();
               break;
            case MenuBoxItems.CHANGE_MAP_SKIN:
               GameSettings.changeMapSkin(param4);
               _loc5_ = SkinNames.getName(GameSettings.mapSkin);
               break;
            case MenuBoxItems.TUTORIALS:
               GameSettings.changeTutorials();
               _loc5_ = convertToOnOffStr(GameSettings.tutorials);
               break;
            case MenuBoxItems.START_GAME:
               if(GameSettings.campaignMode != CampaignModes.SINGLE_CHARACTER_RANDOM)
               {
                  ScreenManager.SCRN_MNGR.forceShowCharacterSelectScreen = true;
               }
               nextMsgBxToCreate = null;
               cancel();
               if(GameSettings.classicMode)
               {
                  GameSettings.startWithMushroom = false;
               }
               EVENT_MNGR.startNewGame();
               break;
            case MenuBoxItems.CANCEL:
               cancel();
         }
         afterChooseItem(param1,_loc5_,param3,this.disableChooseItemSnd);
         this.disableChooseItemSnd = false;
      }
      
      public function forceChooseItem(param1:String) : void
      {
         var _loc3_:int = 0;
         var _loc7_:String = null;
         var _loc2_:int = int(ARR_VEC.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc7_ = ARR_VEC[_loc4_][IND_ARR_VEC_NAME];
            if(param1 == _loc7_)
            {
               _loc3_ = _loc4_;
               break;
            }
            _loc4_++;
         }
         var _loc5_:String = ARR_VEC[_loc3_][IND_ARR_VEC_VALUE];
         var _loc6_:TextFieldContainer = ARR_VEC[_loc3_][IND_ARR_VEC_TEXT_FIELD] as TextFieldContainer;
         this.disableChooseItemSnd = true;
         this.chooseItem(param1,_loc5_,_loc6_,GameSettings.INCREASE_SETTING_NUM);
      }
      
      override public function pressAtkBtn() : void
      {
         cancel();
         SND_MNGR.playSoundNow(SN_CANCEL_ITEM);
      }
      
      override protected function destroy() : void
      {
         super.destroy();
         instance = null;
      }
   }
}
