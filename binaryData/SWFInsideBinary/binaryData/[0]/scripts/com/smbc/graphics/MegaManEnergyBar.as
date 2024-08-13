package com.smbc.graphics
{
   import com.smbc.characters.Character;
   import com.smbc.characters.MegaMan;
   import com.smbc.characters.base.MegaManBase;
   import com.smbc.data.CharacterInfo;
   import com.smbc.data.GameSettings;
   import com.smbc.events.CustomEvents;
   import com.smbc.level.Level;
   import com.smbc.level.LevelForeground;
   import com.smbc.main.SkinObj;
   import com.smbc.managers.EventManager;
   import flash.events.Event;
   
   public class MegaManEnergyBar extends SkinObj
   {
      
      private static const FRAME_OFS:int = 1;
      
      private static const X_POS:int = 32;
      
      private static const Y_POS:int = 70;
      
      protected static const NUM_BARS:int = 30;
      
      public static const NUM_UNITS_PER_BAR:int = 4;
      
      private static const MEGA_MAN_CHANGE_Y_SKIN_NUMS:Array = [1,4,7,9,11,17,21,22];
      
      private static const BASS_CHANGE_Y_SKIN_NUMS:Array = [1,4,6,8,11,14];
       
      
      private var megaMan:MegaManBase;
      
      public function MegaManEnergyBar(param1:MegaManBase)
      {
         this.megaMan = param1;
         inheritedForceShortClassName = CharacterInfo.CHAR_ARR[param1.charNum][CharacterInfo.IND_CHAR_NAME_CLASS] + "EnergyBar";
         super();
         x = X_POS;
         y = Y_POS;
         LevelForeground.instance.addChild(this);
         EventManager.EVENT_MNGR.addEventListener(CustomEvents.CHANGE_CHARACTER_SKIN,this.changeCharacterSkinHandler,false,0,true);
         this.checkYPos();
      }
      
      private function checkYPos() : void
      {
         if(this.yPositionShouldBeChanged)
         {
            y = Y_POS + 8;
         }
         else
         {
            y = Y_POS;
         }
      }
      
      private function get yPositionShouldBeChanged() : Boolean
      {
         var _loc1_:Level = Level.levelInstance;
         if(_loc1_ == null)
         {
            return false;
         }
         var _loc2_:Character = _loc1_.player;
         if(_loc2_ == null)
         {
            return false;
         }
         var _loc3_:int = _loc2_.skinNum;
         if(_loc2_ is MegaMan)
         {
            return MEGA_MAN_CHANGE_Y_SKIN_NUMS.indexOf(_loc3_) != -1;
         }
         return BASS_CHANGE_Y_SKIN_NUMS.indexOf(_loc3_) != -1;
      }
      
      protected function changeCharacterSkinHandler(param1:Event) : void
      {
         this.checkYPos();
      }
      
      public function update(param1:int) : void
      {
         visible = this.megaMan.primaryOrSecondaryWeaponUsesEnergy;
         if(GameSettings.hideNewStuff)
         {
            visible = false;
         }
         if(!visible)
         {
            return;
         }
         var _loc2_:int = 0;
         if(param1 > 0)
         {
            _loc2_ = int(param1 / NUM_UNITS_PER_BAR);
         }
         gotoAndStop(_loc2_ + FRAME_OFS);
         this.checkYPos();
      }
   }
}
