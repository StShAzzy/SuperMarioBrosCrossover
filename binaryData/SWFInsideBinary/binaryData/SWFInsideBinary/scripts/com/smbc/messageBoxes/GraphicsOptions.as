package com.smbc.messageBoxes
{
   import com.smbc.characters.Character;
   import com.smbc.data.GameBoyPalettes;
   import com.smbc.data.GameSettings;
   import com.smbc.data.GameSettingsValues;
   import com.smbc.graphics.skins.SkinNames;
   import com.smbc.level.Level;
   import com.smbc.level.TitleLevel;
   import com.smbc.text.TextFieldContainer;
   
   public class GraphicsOptions extends SettingsMenuBox
   {
      
      public static var instance:GraphicsOptions;
      
      public static var lastIndex:int;
       
      
      private var disableChooseItemSnd:Boolean;
      
      public function GraphicsOptions(param1:int = 0)
      {
         super(this.loadItems(),param1);
         instance = this;
         nextMsgBxToCreate = new OptionsMenu(OptionsMenu.lastIndex);
         alwaysResizeWhenOptionsChanged = true;
      }
      
      private function loadItems() : Array
      {
         var _loc1_:Array = [[MenuBoxItems.LIMIT_SKINS,GameSettingsValues.numToName(GameSettingsValues.PALETTE_TARGET_PREFIX,GameSettings.activeSkins)],[MenuBoxItems.GAME_BOY_FILTER,GameSettings.gameBoyFilter],[MenuBoxItems.CHANGE_MAP_SKIN],[MenuBoxItems.RANDOM_MAP_SKIN,GameSettings.randomMapSkin],[MenuBoxItems.ENEMY_SKIN,SkinNames.getName(GameSettings.enemySkin)],[MenuBoxItems.INTERFACE_SKIN,SkinNames.getName(GameSettings.interfaceSkin)],[MenuBoxItems.BACK]];
         if(!(Level.levelInstance is TitleLevel))
         {
            _loc1_.splice(3,0,[MenuBoxItems.CHANGE_CHAR_SKIN]);
         }
         return _loc1_;
      }
      
      override protected function chooseItem(param1:String, param2:String, param3:TextFieldContainer, param4:int) : void
      {
         var _loc5_:String = null;
         var _loc6_:Character = null;
         lastIndex = cSelNum;
         switch(param1)
         {
            case MenuBoxItems.LIMIT_SKINS:
               _loc5_ = GameSettingsValues.numToName(GameSettingsValues.PALETTE_TARGET_PREFIX,GameSettings.changeActiveSkins(param4));
               break;
            case MenuBoxItems.CHANGE_MAP_SKIN:
               if(GameSettings.randomMapSkin)
               {
                  nextMsgBxToCreate = new PlainMessageBox(MessageBoxMessages.CANNOT_CHANGE_MAP_SKIN);
                  nextMsgBxToCreate.nextMsgBxToCreate = new GraphicsOptions(selectorStartIndex);
               }
               else
               {
                  nextMsgBxToCreate = new MapSkinMenu();
               }
               cancel();
               break;
            case MenuBoxItems.ENEMY_SKIN:
               GameSettings.changeEnemySkin(param4);
               _loc5_ = SkinNames.getName(GameSettings.enemySkin);
               break;
            case MenuBoxItems.INTERFACE_SKIN:
               GameSettings.changeInterfaceSkin(param4);
               _loc5_ = SkinNames.getName(GameSettings.interfaceSkin);
               break;
            case MenuBoxItems.GAME_BOY_FILTER:
               GameSettings.changeGameBoyFilter();
               _loc5_ = convertToOnOffStr(GameSettings.gameBoyFilter);
               break;
            case MenuBoxItems.RANDOM_MAP_SKIN:
               GameSettings.randomMapSkin = !GameSettings.randomMapSkin;
               _loc5_ = convertToOnOffStr(GameSettings.randomMapSkin);
               break;
            case MenuBoxItems.CHANGE_CHAR_SKIN:
               if(Level.levelInstance)
               {
                  _loc6_ = Level.levelInstance.player;
               }
               if(_loc6_)
               {
                  nextMsgBxToCreate = new CharacterSkinMenu(_loc6_.charNum);
                  cancel();
               }
               break;
            case MenuBoxItems.GAME_BOY_FILTER:
               GameSettings.changeGameBoyFilter();
               _loc5_ = convertToOnOffStr(GameSettings.gameBoyFilter);
               break;
            case MenuBoxItems.PALETTE_TARGET:
               GameSettings.changePaletteTarget(param4);
               _loc5_ = GameSettingsValues.numToName(GameSettingsValues.PALETTE_TARGET_PREFIX,GameSettings.paletteTarget);
               break;
            case MenuBoxItems.MAP_PALETTE:
               GameSettings.changeMapPalette(param4);
               _loc5_ = GameBoyPalettes.VEC[GameSettings.mapPalette];
               break;
            case MenuBoxItems.CHARACTER_PALETTE:
               GameSettings.changeCharacterPalette(param4);
               _loc5_ = GameBoyPalettes.VEC[GameSettings.characterPalette];
               break;
            case MenuBoxItems.ENEMY_PALETTE:
               GameSettings.changeEnemyPalette(param4);
               _loc5_ = GameBoyPalettes.VEC[GameSettings.enemyPalette];
               break;
            case MenuBoxItems.INTERFACE_PALETTE:
               GameSettings.changeInterfacePalette(param4);
               _loc5_ = GameBoyPalettes.VEC[GameSettings.interfacePalette];
               break;
            case MenuBoxItems.BACK:
               cancel();
         }
         afterChooseItem(param1,_loc5_,param3,this.disableChooseItemSnd);
         this.disableChooseItemSnd = false;
      }
      
      public function forceChooseItem(param1:String) : void
      {
         var _loc3_:int = 0;
         var _loc7_:String = null;
         var _loc2_:int = ARR_VEC.length;
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
      
      override protected function destroy() : void
      {
         super.destroy();
         instance = null;
      }
   }
}
