package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameZelda extends Game
   {
      
      private static var instance:Game;
       
      
      public const Nsf:Class = GameZelda_Nsf;
      
      private const VOLUME:int = 60;
      
      public const SngTitle:Song = addSong(this.Nsf,1,null,this.VOLUME);
      
      public const SngCredits:Song = addSong(this.Nsf,2,null,this.VOLUME);
      
      public const SngOverworld:Song = addSong(this.Nsf,3,null,this.VOLUME);
      
      public const SngDungeon:Song = addSong(this.Nsf,4,null,this.VOLUME);
      
      public const SngGetItem:Song = addSong(this.Nsf,5,null,this.VOLUME);
      
      public const SngVictoryTriforce:Song = addSong(this.Nsf,6,null,this.VOLUME);
      
      public const SngGanonIntro:Song = addSong(this.Nsf,7,null,this.VOLUME);
      
      public const SngGanonsFortress:Song = addSong(this.Nsf,8,null,this.VOLUME);
      
      public const SngNameEntry:Song = addSong(this.Nsf,9,null,this.VOLUME);
      
      public const SngFlute:Song = addSong(this.Nsf,11,null,this.VOLUME);
      
      public const SngVictorySmall:Song = addSong(this.Nsf,12,null,this.VOLUME);
      
      public const SngSecret:Song = addSong(this.Nsf,23,null,this.VOLUME);
      
      public function GameZelda(param1:int, param2:int = -1)
      {
         super("The Legend of Zelda","Nintendo",Consoles.nintendo,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngGanonsFortress);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngOverworld);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngCredits);
         addToTypePlayList(LT_INTRO,this.SngSecret);
         addToTypePlayList(LT_NORMAL,this.SngOverworld);
         addToTypePlayList(LT_PIPE_BONUS,this.SngDungeon);
         addToTypePlayList(LT_PLATFORM,this.SngOverworld);
         addToTypePlayList(LT_UNDER_GROUND,this.SngDungeon);
         addToTypePlayList(LT_WATER,this.SngTitle);
         addToTypePlayList(MT_DARK_EPIC,this.SngOverworld);
         addToTypePlayList(BOSS,null);
         addToTypePlayList(CHAR_SEL,this.SngNameEntry);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngFlute);
         addToTypePlayList(CREDITS,this.SngCredits);
         addToTypePlayList(DIE,null);
         addToTypePlayList(FINAL_BOSS,null);
         addToTypePlayList(GAME_OVER,this.SngNameEntry);
         addToTypePlayList(HURRY,null);
         addToTypePlayList(STAR,null);
         addToTypePlayList(TITLE_SCREEN,this.SngTitle);
         addToTypePlayList(WIN,this.SngVictorySmall);
         addToTypePlayList(WIN_CASTLE,this.SngVictoryTriforce);
      }
   }
}
