package com.smbc.messageBoxes
{
   import com.smbc.data.GameSettings;
   import com.smbc.enums.AttackStrength;
   import com.smbc.enums.DamageResponse;
   import com.smbc.enums.EnemySpeed;
   import com.smbc.enums.GoombaReplacementType;
   import com.smbc.enums.InitialLivesCount;
   import com.smbc.enums.ItemDropRate;
   import com.smbc.enums.PiranhaSpawnType;
   import com.smbc.text.TextFieldContainer;
   
   public class DifficultySettingsMenu extends SettingsMenuBox
   {
      
      public static var instance:DifficultySettingsMenu;
       
      
      private var disableChooseItemSnd:Boolean;
      
      private var gameDifficultyToSet:int;
      
      private var mapDifficultyToSet:int;
      
      private var mapPackToSet:int;
      
      public function DifficultySettingsMenu(param1:int = 0)
      {
         super(this.loadItems(),param1);
         instance = this;
         nextMsgBxToCreate = new OptionsMenu(OptionsMenu.lastIndex);
      }
      
      private function loadItems() : Array
      {
         return [[MenuBoxItems.LIVES_START,GameSettings.initialLivesCount.NiceName],[MenuBoxItems.START_WITH_MUSHROOM,GameSettings.startWithMushroom],[MenuBoxItems.ATTACK_STRENGTH,GameSettings.attackStrength.NiceName],[MenuBoxItems.DAMAGE_RESPONSE,GameSettings.damageResponse.NiceName],[MenuBoxItems.ITEM_DROP_RATE,GameSettings.itemDropRate.NiceName],[MenuBoxItems.PIRANHAS,GameSettings.piranhaSpawnType.NiceName],[MenuBoxItems.REPLACE_GOOMBAS,GameSettings.goombaReplacementType.NiceName],[MenuBoxItems.ENEMY_SPEED,GameSettings.enemySpeed.NiceName],[MenuBoxItems.BACK]];
      }
      
      override protected function chooseItem(param1:String, param2:String, param3:TextFieldContainer, param4:int) : void
      {
         var _loc5_:String = null;
         switch(param1)
         {
            case MenuBoxItems.LIVES_START:
               GameSettings.initialLivesCount = GameSettings.initialLivesCount.GetAtIndex(param4) as InitialLivesCount;
               _loc5_ = GameSettings.initialLivesCount.NiceName;
               break;
            case MenuBoxItems.ATTACK_STRENGTH:
               GameSettings.attackStrength = GameSettings.attackStrength.GetAtIndex(param4) as AttackStrength;
               _loc5_ = GameSettings.attackStrength.NiceName;
               break;
            case MenuBoxItems.PIRANHAS:
               GameSettings.piranhaSpawnType = GameSettings.piranhaSpawnType.GetAtIndex(param4) as PiranhaSpawnType;
               _loc5_ = GameSettings.piranhaSpawnType.NiceName;
               break;
            case MenuBoxItems.ENEMY_SPEED:
               GameSettings.enemySpeed = GameSettings.enemySpeed.GetAtIndex(param4) as EnemySpeed;
               _loc5_ = GameSettings.enemySpeed.NiceName;
               break;
            case MenuBoxItems.ITEM_DROP_RATE:
               GameSettings.itemDropRate = GameSettings.itemDropRate.GetAtIndex(param4) as ItemDropRate;
               _loc5_ = GameSettings.itemDropRate.NiceName;
               break;
            case MenuBoxItems.REPLACE_GOOMBAS:
               GameSettings.goombaReplacementType = GameSettings.goombaReplacementType.GetAtIndex(param4) as GoombaReplacementType;
               _loc5_ = GameSettings.goombaReplacementType.NiceName;
               break;
            case MenuBoxItems.DAMAGE_RESPONSE:
               GameSettings.damageResponse = GameSettings.damageResponse.GetAtIndex(param4) as DamageResponse;
               _loc5_ = GameSettings.damageResponse.NiceName;
               break;
            case MenuBoxItems.START_WITH_MUSHROOM:
               _loc5_ = convertToOnOffStr(GameSettings.startWithMushroom = !GameSettings.startWithMushroom);
               break;
            case MenuBoxItems.RESTORE_DEFAULTS:
               GameSettings.resetDifficultySettings();
               nextMsgBxToCreate = new DifficultySettingsMenu(_cSelNum);
               cancel();
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
