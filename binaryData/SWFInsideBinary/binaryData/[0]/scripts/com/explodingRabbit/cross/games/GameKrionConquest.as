package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameKrionConquest extends Game
   {
      
      private static var instance:Game;
       
      
      public const Nsf:Class = GameKrionConquest_Nsf;
      
      private const VOLUME:int = 55;
      
      public const SngIntro2:Song = addSong(this.Nsf,1,null,this.VOLUME);
      
      public const SngTitle:Song = addSong(this.Nsf,2,null,this.VOLUME);
      
      public const SngPipeIntro:Song = addSong(this.Nsf,3,null,this.VOLUME);
      
      public const SngStage2:Song = addSong(this.Nsf,4,null,this.VOLUME);
      
      public const SngStage1:Song = addSong(this.Nsf,5,null,this.VOLUME);
      
      public const SngStage3:Song = addSong(this.Nsf,6,null,this.VOLUME);
      
      public const SngStage4:Song = addSong(this.Nsf,7,null,this.VOLUME);
      
      public const SngBossTheme2:Song = addSong(this.Nsf,9,null,this.VOLUME);
      
      public const SngBossTheme3:Song = addSong(this.Nsf,10,null,this.VOLUME);
      
      public const SngDarkEpic:Song = addSong(this.Nsf,11,null,this.VOLUME);
      
      public const SngCastleComplete:Song = addSong(this.Nsf,12,null,this.VOLUME);
      
      public const SngGameOver:Song = addSong(this.Nsf,13,null,this.VOLUME);
      
      public const SngStaffRoll:Song = addSong(this.Nsf,14,null,this.VOLUME);
      
      public const SngStageComplete:Song = addSong(this.Nsf,16,null,this.VOLUME);
      
      public const SngCharacterChosen:Song = addSong(this.Nsf,17,null,this.VOLUME);
      
      public const SngBossTheme1:Song = addSong(this.Nsf,20,null,this.VOLUME);
      
      public const SngPipeBonus:Song = addSong(this.Nsf,21,null,this.VOLUME);
      
      public const SngCoinHeaven:Song = addSong(this.Nsf,22,null,this.VOLUME);
      
      public const SngStage5:Song = addSong(this.Nsf,25,null,this.VOLUME);
      
      public function GameKrionConquest(param1:int, param2:int = -1)
      {
         super("The Krion Conquest","Vic Tokai",Consoles.nintendo,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngStage5);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngStage2);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngCoinHeaven);
         addToTypePlayList(LT_INTRO,this.SngPipeIntro);
         addToTypePlayList(LT_NORMAL,this.SngStage1);
         addToTypePlayList(LT_PIPE_BONUS,this.SngPipeBonus);
         addToTypePlayList(LT_PLATFORM,this.SngStage2);
         addToTypePlayList(LT_UNDER_GROUND,this.SngStage4);
         addToTypePlayList(LT_WATER,this.SngStage3);
         addToTypePlayList(MT_DARK_EPIC,this.SngStage5);
         addToTypePlayList(BOSS,this.SngBossTheme2);
         addToTypePlayList(CHAR_SEL,this.SngPipeIntro);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngCharacterChosen);
         addToTypePlayList(CREDITS,this.SngStaffRoll);
         addToTypePlayList(DIE,null);
         addToTypePlayList(FINAL_BOSS,this.SngBossTheme3);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngBossTheme1);
         addToTypePlayList(STAR,this.SngTitle);
         addToTypePlayList(TITLE_SCREEN,this.SngTitle);
         addToTypePlayList(WIN,this.SngStageComplete);
         addToTypePlayList(WIN_CASTLE,this.SngCastleComplete);
      }
   }
}
