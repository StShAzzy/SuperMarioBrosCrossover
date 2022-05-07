package com.smbc.messageBoxes
{
   import com.smbc.data.GameSettings;
   import com.smbc.data.MapDifficulty;
   import com.smbc.data.MapPack;
   import com.smbc.data.SoundNames;
   import com.smbc.level.Level;
   import com.smbc.managers.ScreenManager;
   import com.smbc.text.TextFieldContainer;
   
   public class LevelSelectMenu extends SettingsMenuBox
   {
      
      private static const WORLD_IND:int = 2;
      
      private static const LEV_IND:int = WORLD_IND + 1;
      
      private static const GO_TO_LEVEL_IND:int = LEV_IND + 1;
      
      private static const BACK_TO_CHEAT_MENU_IND:int = 5;
       
      
      private const WORLD_NUM_MAX:int = 8;
      
      private const WORLD_NUM_MIN:int = 1;
      
      private const LEV_NUM_MAX:int = 4;
      
      private const LEV_NUM_MIN:int = 1;
      
      private const LEV_SEP:String = "-";
      
      private const AREA_STR:String = "a";
      
      private var worldNum:int;
      
      private var levNum:int;
      
      private var level:Level;
      
      private var strVec:Vector.<String>;
      
      private var mapPackToSet:MapPack;
      
      private var mapDifficultyToSet:int;
      
      public function LevelSelectMenu()
      {
         this.level = Level.levelInstance;
         this.strVec = new Vector.<String>();
         if(this.level)
         {
            this.worldNum = this.level.worldNum;
            this.levNum = this.level.levNum;
         }
         if(this.worldNum < this.WORLD_NUM_MIN || this.worldNum > this.WORLD_NUM_MAX)
         {
            this.worldNum = this.WORLD_NUM_MIN;
         }
         if(this.levNum < this.LEV_NUM_MIN || this.levNum > this.LEV_NUM_MAX)
         {
            this.levNum = this.LEV_NUM_MIN;
         }
         this.mapPackToSet = GameSettings.mapPack;
         this.mapDifficultyToSet = GameSettings.mapDifficulty;
         super(this.loadItems());
         nextMsgBxToCreate = new CheatMenu();
         this.strVec = null;
      }
      
      override public function initiate() : void
      {
         super.initiate();
         var _loc1_:TextFieldContainer = ARR_VEC[GO_TO_LEVEL_IND][IND_ARR_VEC_TEXT_FIELD] as TextFieldContainer;
         _loc1_.text = MenuBoxItems.GO_TO_WORLD + VALUE_SEP + this.worldNum.toString() + this.LEV_SEP + this.levNum.toString();
      }
      
      private function loadItems() : Array
      {
         return [[MenuBoxItems.MAP_PACK,this.mapPackToSet.Name],[MenuBoxItems.MAP_DIFFICULTY,MapDifficulty.swapNumAndName(this.mapDifficultyToSet)],[MenuBoxItems.WORLD_NUMBER,this.worldNum.toString()],[MenuBoxItems.LEVEL_NUMBER,this.levNum.toString()],[MenuBoxItems.GO_TO_WORLD],[MenuBoxItems.BACK_TO_MAIN_MENU]];
      }
      
      override protected function chooseItem(param1:String, param2:String, param3:TextFieldContainer, param4:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc7_:TextFieldContainer = null;
         var _loc6_:Boolean = true;
         if(param4 == GameSettings.DECREASE_SETTING_NUM)
         {
            _loc6_ = false;
         }
         switch(param1)
         {
            case MenuBoxItems.MAP_PACK:
               this.mapPackToSet = this.mapPackToSet.GetAtIndex(param4) as MapPack;
               afterChooseItem(param1,this.mapPackToSet.Name,param3);
               break;
            case MenuBoxItems.MAP_DIFFICULTY:
               this.mapDifficultyToSet = GameSettings.changeMapDifficulty(param4,this.mapDifficultyToSet);
               afterChooseItem(param1,MapDifficulty.swapNumAndName(this.mapDifficultyToSet),param3);
               break;
            case MenuBoxItems.WORLD_NUMBER:
               if(_loc6_)
               {
                  ++this.worldNum;
               }
               else
               {
                  --this.worldNum;
               }
               if(this.worldNum > this.WORLD_NUM_MAX)
               {
                  this.worldNum = this.WORLD_NUM_MIN;
               }
               else if(this.worldNum < this.WORLD_NUM_MIN)
               {
                  this.worldNum = this.WORLD_NUM_MAX;
               }
               param3.text = MenuBoxItems.WORLD_NUMBER + VALUE_SEP + this.worldNum.toString();
               _loc5_ = true;
               SND_MNGR.playSoundNow(SN_CHOOSE_ITEM);
               break;
            case MenuBoxItems.LEVEL_NUMBER:
               if(_loc6_)
               {
                  ++this.levNum;
               }
               else
               {
                  --this.levNum;
               }
               if(this.levNum > this.LEV_NUM_MAX)
               {
                  this.levNum = this.LEV_NUM_MIN;
               }
               else if(this.levNum < this.LEV_NUM_MIN)
               {
                  this.levNum = this.LEV_NUM_MAX;
               }
               param3.text = MenuBoxItems.LEVEL_NUMBER + VALUE_SEP + this.levNum.toString();
               _loc5_ = true;
               SND_MNGR.playSoundNow(SN_CHOOSE_ITEM);
               break;
            case MenuBoxItems.GO_TO_WORLD:
               if(this.level)
               {
                  this.level.destroyLevel();
               }
               GameSettings.mapPack = this.mapPackToSet;
               GameSettings.changeMapDifficulty(this.mapDifficultyToSet);
               SND_MNGR.removeAllSounds();
               STAT_MNGR.newLev = true;
               STAT_MNGR.passedHw = false;
               STAT_MNGR.resetLevelStats();
               if(this.level && this.level.player)
               {
                  STAT_MNGR.writePlayerStats(STAT_MNGR.curCharNum,this.level.player.pState,0);
               }
               ScreenManager.SCRN_MNGR.createLevel(this.worldNum.toString() + this.LEV_SEP + this.levNum.toString() + this.AREA_STR);
               nextMsgBxToCreate = null;
               cancel();
               SND_MNGR.playSoundNow(SoundNames.SFX_GAME_CANON);
               break;
            case MenuBoxItems.BACK_TO_MAIN_MENU:
               MSG_BX_MNGR.writeNextMainMenu(this);
               cancel();
               SND_MNGR.playSoundNow(SN_CANCEL_ITEM);
         }
         if(_loc5_)
         {
            (_loc7_ = ARR_VEC[GO_TO_LEVEL_IND][IND_ARR_VEC_TEXT_FIELD] as TextFieldContainer).text = MenuBoxItems.GO_TO_WORLD + VALUE_SEP + this.worldNum.toString() + this.LEV_SEP + this.levNum.toString();
         }
      }
      
      override public function pressAtkBtn() : void
      {
         cancel();
         SND_MNGR.playSoundNow(SN_CANCEL_ITEM);
      }
   }
}
