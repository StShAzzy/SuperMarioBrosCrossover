package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameGradius extends Game
   {
      
      private static var instance:Game;
       
      
      public const Nsfe:Class = GameGradius_Nsfe;
      
      private const VOLUME:int = 65;
      
      public const SngStart:Song = addSong(this.Nsfe,1,null,this.VOLUME);
      
      public const SngBeginning:Song = addSong(this.Nsfe,2,null,this.VOLUME);
      
      public const SngStage1Mountains:Song = addSong(this.Nsfe,3,null,this.VOLUME);
      
      public const SngStage2Rocks:Song = addSong(this.Nsfe,4,null,this.VOLUME);
      
      public const SngStage3MoaiIslands:Song = addSong(this.Nsfe,5,null,this.VOLUME);
      
      public const SngStage4MirroredMountains:Song = addSong(this.Nsfe,6,null,this.VOLUME);
      
      public const SngStage5GravityOfLives:Song = addSong(this.Nsfe,7,null,this.VOLUME);
      
      public const SngStage6Cells:Song = addSong(this.Nsfe,8,null,this.VOLUME);
      
      public const SngStage7ControlCenter:Song = addSong(this.Nsfe,9,null,this.VOLUME);
      
      public const SngBoss:Song = addSong(this.Nsfe,10,null,this.VOLUME);
      
      public const SngTaskAccomplished:Song = addSong(this.Nsfe,13,null,this.VOLUME);
      
      public const SngGameOver:Song = addSong(this.Nsfe,15,null,this.VOLUME);
      
      public function GameGradius(param1:int, param2:int = -1)
      {
         super("Gradius","Konami",Consoles.nintendo,param1,null,param2);
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
         addToTypePlayList(LT_CASTLE,this.SngStage5GravityOfLives);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngStage4MirroredMountains);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngStage7ControlCenter);
         addToTypePlayList(LT_INTRO,this.SngBeginning);
         addToTypePlayList(LT_NORMAL,this.SngStage1Mountains);
         addToTypePlayList(LT_PIPE_BONUS,this.SngStage3MoaiIslands);
         addToTypePlayList(LT_PLATFORM,this.SngStage6Cells);
         addToTypePlayList(LT_UNDER_GROUND,this.SngStage2Rocks);
         addToTypePlayList(LT_WATER,this.SngStage7ControlCenter);
         addToTypePlayList(MT_DARK_EPIC,this.SngStage4MirroredMountains);
         addToTypePlayList(BOSS,this.SngBoss);
         addToTypePlayList(CHAR_SEL,this.SngStage3MoaiIslands);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngStart);
         addToTypePlayList(CREDITS,this.SngStage6Cells);
         addToTypePlayList(DIE,null);
         addToTypePlayList(FINAL_BOSS,this.SngBoss);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,null);
         addToTypePlayList(STAR,this.SngStage1Mountains);
         addToTypePlayList(TITLE_SCREEN,this.SngBeginning);
         addToTypePlayList(WIN,this.SngTaskAccomplished);
         addToTypePlayList(WIN_CASTLE,this.SngTaskAccomplished);
      }
   }
}
