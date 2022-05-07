package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameMetroid extends Game
   {
      
      private static var instance:Game;
       
      
      public const Nsf:Class = GameMetroid_Nsf;
      
      private const VOLUME:int = 65;
      
      public const SngTitle:Song = addSong(this.Nsf,1,null,this.VOLUME);
      
      public const SngEnding:Song = addSong(this.Nsf,2,null,this.VOLUME);
      
      public const SngGetPowerUp:Song = addSong(this.Nsf,3,null,this.VOLUME);
      
      public const SngSamusAppear:Song = addSong(this.Nsf,4,null,this.VOLUME);
      
      public const SngBrinstar:Song = addSong(this.Nsf,5,null,this.VOLUME);
      
      public const SngMotherBrain:Song = addSong(this.Nsf,6,null,this.VOLUME);
      
      public const SngEscape:Song = addSong(this.Nsf,7,null,this.VOLUME);
      
      public const SngNorfair:Song = addSong(this.Nsf,8,null,this.VOLUME);
      
      public const SngKraidsLair:Song = addSong(this.Nsf,9,null,this.VOLUME);
      
      public const SngChozos:Song = addSong(this.Nsf,10,null,this.VOLUME);
      
      public const SngTourian:Song = addSong(this.Nsf,11,null,this.VOLUME);
      
      public const SngRidleysLair:Song = addSong(this.Nsf,12,null,this.VOLUME);
      
      public function GameMetroid(param1:int, param2:int = -1)
      {
         super("Metroid","Nintendo",Consoles.nintendo,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL,LT_PLATFORM,LT_CHEEP_CHEEP);
         addToTypePlayList(LT_CASTLE,this.SngTourian);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngBrinstar);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngChozos);
         addToTypePlayList(LT_INTRO,this.SngChozos);
         addToTypePlayList(LT_NORMAL,this.SngBrinstar);
         addToTypePlayList(LT_PIPE_BONUS,this.SngKraidsLair);
         addToTypePlayList(LT_PLATFORM,this.SngBrinstar);
         addToTypePlayList(LT_UNDER_GROUND,this.SngRidleysLair);
         addToTypePlayList(LT_WATER,this.SngNorfair);
         addToTypePlayList(MT_DARK_EPIC,this.SngBrinstar);
         addToTypePlayList(BOSS,null);
         addToTypePlayList(CHAR_SEL,this.SngTitle);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngSamusAppear);
         addToTypePlayList(CREDITS,this.SngEnding);
         addToTypePlayList(DIE,null);
         addToTypePlayList(FINAL_BOSS,this.SngMotherBrain);
         addToTypePlayList(GAME_OVER,null);
         addToTypePlayList(HURRY,this.SngEscape);
         addToTypePlayList(STAR,null);
         addToTypePlayList(TITLE_SCREEN,this.SngTitle);
         addToTypePlayList(WIN,this.SngGetPowerUp);
         addToTypePlayList(WIN_CASTLE,this.SngChozos);
      }
   }
}
