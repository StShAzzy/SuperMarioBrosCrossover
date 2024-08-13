package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameNinjaGaidenSms extends Game
   {
      
      private static var instance:Game;
       
      
      public const Kss:Class = GameNinjaGaidenSms_Kss;
      
      private const VOLUME:int = 30;
      
      public const SngTitle:Song = addSong(this.Kss,1,null,this.VOLUME);
      
      public const SngIntroduction:Song = addSong(this.Kss,2,null,this.VOLUME);
      
      public const SngLevelStart:Song = addSong(this.Kss,3,null,this.VOLUME);
      
      public const SngStory:Song = addSong(this.Kss,4,null,this.VOLUME);
      
      public const SngLevel1Forest:Song = addSong(this.Kss,5,null,this.VOLUME);
      
      public const SngLevel2Tokyo:Song = addSong(this.Kss,6,null,this.VOLUME);
      
      public const SngLevel3Samurai:Song = addSong(this.Kss,7,null,this.VOLUME);
      
      public const SngLevel4Rescue:Song = addSong(this.Kss,8,null,this.VOLUME);
      
      public const SngLevel5EnemyLand:Song = addSong(this.Kss,9,null,this.VOLUME);
      
      public const SngLevel6Raid:Song = addSong(this.Kss,10,null,this.VOLUME);
      
      public const SngLevel7Overcome:Song = addSong(this.Kss,11,null,this.VOLUME);
      
      public const SngFinalBossDecisive:Song = addSong(this.Kss,12,null,this.VOLUME);
      
      public const SngBossBattle:Song = addSong(this.Kss,13,null,this.VOLUME);
      
      public const SngContinue:Song = addSong(this.Kss,14,null,this.VOLUME);
      
      public const SngGameOver:Song = addSong(this.Kss,15,null,this.VOLUME);
      
      public const SngCredits:Song = addSong(this.Kss,16,null,this.VOLUME);
      
      public const SngDeath:Song = addSong(this.Kss,17,null,this.VOLUME);
      
      public function GameNinjaGaidenSms(param1:int, param2:int = -1)
      {
         super("Ninja Gaiden (Sega Master System)","Tecmo",Consoles.segaMasterSystem,param1,"Ninja Gaiden (SMS)",param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngLevel7Overcome);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngLevel6Raid);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngLevel2Tokyo);
         addToTypePlayList(LT_INTRO,this.SngIntroduction);
         addToTypePlayList(LT_NORMAL,this.SngLevel1Forest);
         addToTypePlayList(LT_PIPE_BONUS,this.SngLevel3Samurai);
         addToTypePlayList(LT_PLATFORM,this.SngLevel6Raid);
         addToTypePlayList(LT_UNDER_GROUND,this.SngLevel3Samurai);
         addToTypePlayList(LT_WATER,this.SngLevel4Rescue);
         addToTypePlayList(MT_DARK_EPIC,this.SngLevel5EnemyLand);
         addToTypePlayList(BOSS,this.SngBossBattle);
         addToTypePlayList(CHAR_SEL,this.SngStory);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngLevelStart);
         addToTypePlayList(CREDITS,this.SngCredits);
         addToTypePlayList(DIE,this.SngDeath);
         addToTypePlayList(FINAL_BOSS,this.SngFinalBossDecisive);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngFinalBossDecisive);
         addToTypePlayList(STAR,null);
         addToTypePlayList(TITLE_SCREEN,this.SngTitle);
         addToTypePlayList(WIN,this.SngGameOver);
         addToTypePlayList(WIN_CASTLE,this.SngCredits);
      }
   }
}
