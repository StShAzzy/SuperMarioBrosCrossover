package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameShadowOfTheNinja extends Game
   {
      
      private static var instance:Game;
       
      
      public const Nsf:Class = GameShadowOfTheNinja_Nsf;
      
      private const VOLUME:int = 65;
      
      public const SngIntro:Song = addSong(this.Nsf,1,null,this.VOLUME);
      
      public const SngStageIntro:Song = addSong(this.Nsf,2,null,this.VOLUME);
      
      public const SngStage1:Song = addSong(this.Nsf,3,null,this.VOLUME);
      
      public const SngStage2:Song = addSong(this.Nsf,4,null,this.VOLUME);
      
      public const SngStage3:Song = addSong(this.Nsf,5,null,this.VOLUME);
      
      public const SngStage4:Song = addSong(this.Nsf,6,null,this.VOLUME);
      
      public const SngStage5:Song = addSong(this.Nsf,7,null,this.VOLUME);
      
      public const SngBoss:Song = addSong(this.Nsf,8,null,this.VOLUME);
      
      public const SngStageClear:Song = addSong(this.Nsf,9,null,this.VOLUME);
      
      public const SngGameOver:Song = addSong(this.Nsf,10,null,this.VOLUME);
      
      public const SngEnding:Song = addSong(this.Nsf,11,null,this.VOLUME);
      
      public const SngFinalBoss:Song = addSong(this.Nsf,12,null,this.VOLUME);
      
      public function GameShadowOfTheNinja(param1:int, param2:int = -1)
      {
         super("Shadow of the Ninja","Natsume",Consoles.nintendo,param1,null,param2);
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
         addToTypePlayList(LT_CASTLE,this.SngStage5);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngStage4);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngStage2);
         addToTypePlayList(LT_INTRO,this.SngStage2);
         addToTypePlayList(LT_NORMAL,this.SngStage1);
         addToTypePlayList(LT_PIPE_BONUS,this.SngStage3);
         addToTypePlayList(LT_PLATFORM,this.SngStage2);
         addToTypePlayList(LT_UNDER_GROUND,this.SngStage3);
         addToTypePlayList(LT_WATER,this.SngStage4);
         addToTypePlayList(MT_DARK_EPIC,this.SngIntro);
         addToTypePlayList(BOSS,this.SngBoss);
         addToTypePlayList(CHAR_SEL,this.SngStage1);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngStage2);
         addToTypePlayList(CREDITS,this.SngEnding);
         addToTypePlayList(DIE,null);
         addToTypePlayList(FINAL_BOSS,this.SngFinalBoss);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,null);
         addToTypePlayList(STAR,null);
         addToTypePlayList(TITLE_SCREEN,this.SngIntro);
         addToTypePlayList(WIN,this.SngStageClear);
         addToTypePlayList(WIN_CASTLE,this.SngStageClear);
      }
   }
}
