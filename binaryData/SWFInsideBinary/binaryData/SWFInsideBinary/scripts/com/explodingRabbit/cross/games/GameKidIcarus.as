package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameKidIcarus extends Game
   {
      
      private static var instance:Game;
       
      
      public const Nsf:Class = GameKidIcarus_Nsf;
      
      private const VOLUME:int = 65;
      
      public const SngIntro:Song = addSong(this.Nsf,1,null,this.VOLUME);
      
      public const SngUnderworld:Song = addSong(this.Nsf,2,null,this.VOLUME);
      
      public const SngReaper:Song = addSong(this.Nsf,3,null,this.VOLUME);
      
      public const SngDeath:Song = addSong(this.Nsf,4,null,this.VOLUME);
      
      public const SngOverworld:Song = addSong(this.Nsf,5,null,this.VOLUME);
      
      public const SngBossBattle:Song = addSong(this.Nsf,6,null,this.VOLUME);
      
      public const SngStageComplete:Song = addSong(this.Nsf,7,null,this.VOLUME);
      
      public const SngFortress:Song = addSong(this.Nsf,8,null,this.VOLUME);
      
      public const SngSkyWorld:Song = addSong(this.Nsf,9,null,this.VOLUME);
      
      public const SngPalaceInTheSky:Song = addSong(this.Nsf,10,null,this.VOLUME);
      
      public const SngMedusa:Song = addSong(this.Nsf,11,null,this.VOLUME);
      
      public const SngCredits:Song = addSong(this.Nsf,12,null,this.VOLUME);
      
      public function GameKidIcarus(param1:int)
      {
         super("Kid Icarus","Nintendo",Consoles.nintendo,param1);
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
         addToTypePlayList(LT_CASTLE,this.SngFortress);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngSkyWorld);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngPalaceInTheSky);
         addToTypePlayList(LT_INTRO,this.SngSkyWorld);
         addToTypePlayList(LT_NORMAL,this.SngUnderworld);
         addToTypePlayList(LT_PIPE_BONUS,this.SngPalaceInTheSky);
         addToTypePlayList(LT_PLATFORM,this.SngSkyWorld);
         addToTypePlayList(LT_UNDER_GROUND,this.SngOverworld);
         addToTypePlayList(LT_WATER,this.SngOverworld);
         addToTypePlayList(MT_DARK_EPIC,this.SngOverworld);
         addToTypePlayList(BOSS,this.SngBossBattle);
         addToTypePlayList(CHAR_SEL,this.SngPalaceInTheSky);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngSkyWorld);
         addToTypePlayList(CREDITS,this.SngCredits);
         addToTypePlayList(DIE,null);
         addToTypePlayList(FINAL_BOSS,this.SngMedusa);
         addToTypePlayList(GAME_OVER,this.SngDeath);
         addToTypePlayList(HURRY,this.SngReaper);
         addToTypePlayList(STAR,null);
         addToTypePlayList(TITLE_SCREEN,this.SngIntro);
         addToTypePlayList(WIN,this.SngStageComplete);
         addToTypePlayList(WIN_CASTLE,this.SngStageComplete);
      }
   }
}
