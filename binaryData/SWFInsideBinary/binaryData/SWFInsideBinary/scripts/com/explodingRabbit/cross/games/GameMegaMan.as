package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameMegaMan extends Game
   {
      
      private static var instance:Game;
       
      
      public const Nsf:Class = GameMegaMan_Nsf;
      
      private const VOLUME:int = 55;
      
      public const SngWilyDefeated:Song = addSong(this.Nsf,1,null,this.VOLUME);
      
      public const SngLevelSelect:Song = addSong(this.Nsf,2,null,this.VOLUME);
      
      public const SngEnemyChosen:Song = addSong(this.Nsf,3,null,this.VOLUME);
      
      public const SngGameOver:Song = addSong(this.Nsf,4,null,this.VOLUME);
      
      public const SngVictory:Song = addSong(this.Nsf,5,null,this.VOLUME);
      
      public const SngCutMan:Song = addSong(this.Nsf,6,null,this.VOLUME);
      
      public const SngFireMan:Song = addSong(this.Nsf,7,null,this.VOLUME);
      
      public const SngBombMan:Song = addSong(this.Nsf,9,null,this.VOLUME);
      
      public const SngElecMan:Song = addSong(this.Nsf,10,null,this.VOLUME);
      
      public const SngGutsMan:Song = addSong(this.Nsf,11,null,this.VOLUME);
      
      public const SngFinalBoss:Song = addSong(this.Nsf,12,null,this.VOLUME);
      
      public const SngWilyCastle:Song = addSong(this.Nsf,13,null,this.VOLUME);
      
      public const SngBossBattle:Song = addSong(this.Nsf,14,null,this.VOLUME);
      
      public const SngEnding:Song = addSong(this.Nsf,15,null,this.VOLUME);
      
      public const SngIceMan:Song = addSong(this.Nsf,16,null,this.VOLUME);
      
      public const SngWilyCastle2:Song = addSong(this.Nsf,17,null,this.VOLUME);
      
      public function GameMegaMan(param1:int, param2:int = -1)
      {
         super("Mega Man","Capcom",Consoles.nintendo,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngWilyCastle2);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngGutsMan);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngCutMan);
         addToTypePlayList(LT_INTRO,this.SngLevelSelect);
         addToTypePlayList(LT_NORMAL,this.SngElecMan);
         addToTypePlayList(LT_PIPE_BONUS,this.SngFireMan);
         addToTypePlayList(LT_PLATFORM,this.SngBombMan);
         addToTypePlayList(LT_UNDER_GROUND,this.SngFireMan);
         addToTypePlayList(LT_WATER,this.SngIceMan);
         addToTypePlayList(MT_DARK_EPIC,this.SngWilyCastle);
         addToTypePlayList(BOSS,this.SngBossBattle);
         addToTypePlayList(CHAR_SEL,this.SngLevelSelect);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngEnemyChosen);
         addToTypePlayList(CREDITS,this.SngEnding);
         addToTypePlayList(DIE,null);
         addToTypePlayList(FINAL_BOSS,this.SngFinalBoss);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngFinalBoss);
         addToTypePlayList(STAR,null);
         addToTypePlayList(TITLE_SCREEN,this.SngElecMan);
         addToTypePlayList(WIN,this.SngVictory);
         addToTypePlayList(WIN_CASTLE,this.SngWilyDefeated);
      }
   }
}
