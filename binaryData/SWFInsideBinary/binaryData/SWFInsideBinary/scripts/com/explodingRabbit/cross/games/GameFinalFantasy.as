package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameFinalFantasy extends Game
   {
      
      private static var instance:Game;
       
      
      public const Nsf:Class = GameFinalFantasy_Nsf;
      
      private const VOLUME:int = 50;
      
      public const SngTitle:Song = addSong(this.Nsf,1,null,this.VOLUME);
      
      public const SngPrelude:Song = addSong(this.Nsf,2,null,this.VOLUME);
      
      public const SngEnding:Song = addSong(this.Nsf,3,null,this.VOLUME);
      
      public const SngOverworld:Song = addSong(this.Nsf,4,null,this.VOLUME);
      
      public const SngShip:Song = addSong(this.Nsf,5,null,this.VOLUME);
      
      public const SngAirship:Song = addSong(this.Nsf,6,null,this.VOLUME);
      
      public const SngTown:Song = addSong(this.Nsf,7,null,this.VOLUME);
      
      public const SngCastle:Song = addSong(this.Nsf,8,null,this.VOLUME);
      
      public const SngCave1:Song = addSong(this.Nsf,9,null,this.VOLUME);
      
      public const SngCave2:Song = addSong(this.Nsf,10,null,this.VOLUME);
      
      public const SngCave3:Song = addSong(this.Nsf,11,null,this.VOLUME);
      
      public const SngCave4:Song = addSong(this.Nsf,12,null,this.VOLUME);
      
      public const SngSkyCastle:Song = addSong(this.Nsf,13,null,this.VOLUME);
      
      public const SngFinalCastle:Song = addSong(this.Nsf,14,null,this.VOLUME);
      
      public const SngShop:Song = addSong(this.Nsf,15,null,this.VOLUME);
      
      public const SngBattle:Song = addSong(this.Nsf,16,null,this.VOLUME);
      
      public const SngInn:Song = addSong(this.Nsf,17,null,this.VOLUME);
      
      public const SngGameOver:Song = addSong(this.Nsf,18,null,this.VOLUME);
      
      public const SngVictory:Song = addSong(this.Nsf,19,null,this.VOLUME);
      
      public const SngItemFanfare:Song = addSong(this.Nsf,20,null,this.VOLUME);
      
      public function GameFinalFantasy(param1:int, param2:int = -1)
      {
         super("Final Fantasy","Square-Enix",Consoles.nintendo,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function setUpLevelThemes() : void
      {
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngFinalCastle);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngShip);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngPrelude);
         addToTypePlayList(LT_INTRO,this.SngInn);
         addToTypePlayList(LT_NORMAL,this.SngOverworld);
         addToTypePlayList(LT_PIPE_BONUS,this.SngCave2);
         addToTypePlayList(LT_PLATFORM,this.SngShip);
         addToTypePlayList(LT_UNDER_GROUND,this.SngCave1);
         addToTypePlayList(LT_WATER,this.SngSkyCastle);
         addToTypePlayList(MT_DARK_EPIC,this.SngCave4);
         addToTypePlayList(BOSS,this.SngBattle);
         addToTypePlayList(CHAR_SEL,this.SngTown);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngItemFanfare);
         addToTypePlayList(CREDITS,this.SngEnding);
         addToTypePlayList(DIE,null);
         addToTypePlayList(FINAL_BOSS,this.SngBattle);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngCave3);
         addToTypePlayList(STAR,this.SngAirship);
         addToTypePlayList(TITLE_SCREEN,this.SngTitle);
         addToTypePlayList(WIN,this.SngVictory);
         addToTypePlayList(WIN_CASTLE,this.SngVictory);
      }
   }
}
