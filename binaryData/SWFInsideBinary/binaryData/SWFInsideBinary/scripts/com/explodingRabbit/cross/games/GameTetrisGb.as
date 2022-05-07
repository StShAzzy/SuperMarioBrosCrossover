package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameTetrisGb extends Game
   {
      
      private static var instance:Game;
       
      
      public const Gbs:Class = GameTetrisGb_Gbs;
      
      private const VOLUME:int = 60;
      
      public const SngTitle:Song = addSong(this.Gbs,1,null,this.VOLUME);
      
      public const SngMusic1:Song = addSong(this.Gbs,2,null,this.VOLUME);
      
      public const SngMusic2:Song = addSong(this.Gbs,3,null,this.VOLUME);
      
      public const SngMusic3:Song = addSong(this.Gbs,4,null,this.VOLUME);
      
      public const SngSuccess:Song = addSong(this.Gbs,5,null,this.VOLUME);
      
      public const SngRapid:Song = addSong(this.Gbs,6,null,this.VOLUME);
      
      public const SngGameOver:Song = addSong(this.Gbs,8,null,this.VOLUME);
      
      public const SngEnding1:Song = addSong(this.Gbs,15,null,this.VOLUME);
      
      public const SngEnding2:Song = addSong(this.Gbs,16,null,this.VOLUME);
      
      public const SngEnding3:Song = addSong(this.Gbs,17,null,this.VOLUME);
      
      public function GameTetrisGb(param1:int, param2:int = -1)
      {
         super("Tetris (GB)","Nintendo",Consoles.gameBoy,param1,null,param2);
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
         addToTypePlayList(LT_CASTLE,this.SngMusic3);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngMusic2);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngRapid);
         addToTypePlayList(LT_INTRO,this.SngEnding3);
         addToTypePlayList(LT_NORMAL,this.SngMusic1);
         addToTypePlayList(LT_PIPE_BONUS,this.SngMusic3);
         addToTypePlayList(LT_PLATFORM,this.SngMusic2);
         addToTypePlayList(LT_UNDER_GROUND,this.SngMusic3);
         addToTypePlayList(LT_WATER,this.SngMusic3);
         addToTypePlayList(MT_DARK_EPIC,this.SngMusic2);
         addToTypePlayList(BOSS,this.SngMusic2);
         addToTypePlayList(CHAR_SEL,this.SngEnding3);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngSuccess);
         addToTypePlayList(CREDITS,this.SngEnding2);
         addToTypePlayList(DIE,null);
         addToTypePlayList(FINAL_BOSS,this.SngMusic2);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngRapid);
         addToTypePlayList(STAR,this.SngRapid);
         addToTypePlayList(TITLE_SCREEN,this.SngTitle);
         addToTypePlayList(WIN,this.SngSuccess);
         addToTypePlayList(WIN_CASTLE,this.SngEnding1);
      }
   }
}
