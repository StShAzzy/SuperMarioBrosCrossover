package com.smbc.messageBoxes
{
   import com.explodingRabbit.cross.data.ConsoleType;
   import com.smbc.data.GameSettings;
   import com.smbc.data.MusicSets;
   import com.smbc.enums.CoinSoundType;
   import com.smbc.text.TextFieldContainer;
   
   public class SoundOptions extends SettingsMenuBox
   {
       
      
      public function SoundOptions()
      {
         super(this.loadItems());
         nextMsgBxToCreate = new OptionsMenu(OptionsMenu.lastIndex);
      }
      
      private function loadItems() : Array
      {
         return [[MenuBoxItems.SFX,!GameSettings.muteSfx],[MenuBoxItems.MUSIC,!GameSettings.muteMusic],[MenuBoxItems.MUSIC_TYPE,ConsoleType.convNumToName(GameSettings.musicType)],[MenuBoxItems.MUSIC_SET,MusicSets.convNumToStr(GameSettings.musicSet)],[MenuBoxItems.COIN_SOUND_TYPE,GameSettings.coinSoundType.Name],[MenuBoxItems.BACK]];
      }
      
      override protected function chooseItem(param1:String, param2:String, param3:TextFieldContainer, param4:int) : void
      {
         var _loc5_:String = null;
         switch(param1)
         {
            case MenuBoxItems.SFX:
               GameSettings.changeMuteSfx();
               _loc5_ = convertToOnOffStr(!GameSettings.muteSfx);
               break;
            case MenuBoxItems.MUSIC:
               GameSettings.changeMuteMusic();
               _loc5_ = convertToOnOffStr(!GameSettings.muteMusic);
               break;
            case MenuBoxItems.MUSIC_TYPE:
               _loc5_ = ConsoleType.convNumToName(GameSettings.changeMusicType(param4));
               break;
            case MenuBoxItems.MUSIC_SET:
               _loc5_ = GameSettings.changeMusicSet(param4);
               break;
            case MenuBoxItems.COIN_SOUND_TYPE:
               GameSettings.coinSoundType = GameSettings.coinSoundType.GetAtIndex(param4) as CoinSoundType;
               _loc5_ = GameSettings.coinSoundType.NiceName;
               break;
            case MenuBoxItems.BACK:
               cancel();
         }
         afterChooseItem(param1,_loc5_,param3);
      }
   }
}
