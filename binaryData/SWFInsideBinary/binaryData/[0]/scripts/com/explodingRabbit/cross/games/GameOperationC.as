package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameOperationC extends Game
   {
      
      private static var instance:Game;
       
      
      public const Gbs:Class = GameOperationC_Gbs;
      
      private const VOLUME:int = 50;
      
      public const SngTitle:Song = addSong(this.Gbs,1,null,this.VOLUME);
      
      public const SngJungle:Song = addSong(this.Gbs,2,null,this.VOLUME);
      
      public const SngStage2:Song = addSong(this.Gbs,3,null,this.VOLUME);
      
      public const SngWaterfall:Song = addSong(this.Gbs,4,null,this.VOLUME);
      
      public const SngWaterfallNoIntro:Song = addSong(this.Gbs,5,null,this.VOLUME);
      
      public const SngSnowField:Song = addSong(this.Gbs,6,null,this.VOLUME);
      
      public const SngEnergyZone:Song = addSong(this.Gbs,7,null,this.VOLUME);
      
      public const SngGameOver:Song = addSong(this.Gbs,8,null,this.VOLUME);
      
      public const SngVictory:Song = addSong(this.Gbs,9,null,this.VOLUME);
      
      public const SngVictoryBeatGame:Song = addSong(this.Gbs,10,null,this.VOLUME);
      
      public const SngBossBattle:Song = addSong(this.Gbs,11,null,this.VOLUME);
      
      public const SngBossMinor:Song = addSong(this.Gbs,12,null,this.VOLUME);
      
      public const SngEnding:Song = addSong(this.Gbs,13,null,this.VOLUME);
      
      public const SngAlienLairFinalBoss:Song = addSong(this.Gbs,14,null,this.VOLUME);
      
      public function GameOperationC(param1:int, param2:int = -1)
      {
         super("Operation C","Konami",Consoles.gameBoy,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngAlienLairFinalBoss);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngStage2);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngWaterfall);
         addToTypePlayList(LT_INTRO,this.SngBossMinor);
         addToTypePlayList(LT_NORMAL,this.SngJungle);
         addToTypePlayList(LT_PIPE_BONUS,this.SngEnergyZone);
         addToTypePlayList(LT_PLATFORM,this.SngStage2);
         addToTypePlayList(LT_UNDER_GROUND,this.SngEnergyZone);
         addToTypePlayList(LT_WATER,this.SngWaterfall);
         addToTypePlayList(MT_DARK_EPIC,this.SngSnowField);
         addToTypePlayList(BOSS,this.SngBossBattle);
         addToTypePlayList(CHAR_SEL,this.SngTitle);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngGameOver);
         addToTypePlayList(CREDITS,this.SngEnding);
         addToTypePlayList(DIE,null);
         addToTypePlayList(FINAL_BOSS,this.SngBossBattle);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngBossMinor);
         addToTypePlayList(STAR,null);
         addToTypePlayList(TITLE_SCREEN,this.SngJungle);
         addToTypePlayList(WIN,this.SngVictory);
         addToTypePlayList(WIN_CASTLE,this.SngVictoryBeatGame);
      }
   }
}
