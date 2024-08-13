package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameTetris extends Game
   {
      
      private static var instance:Game;
       
      
      public const Nsfe:Class = GameTetris_Nsfe;
      
      private const VOLUME:int = 65;
      
      public const SngMusic1:Song = addSong(this.Nsfe,1,null,this.VOLUME);
      
      public const SngMusic2:Song = addSong(this.Nsfe,2,null,this.VOLUME);
      
      public const SngMusic3:Song = addSong(this.Nsfe,3,null,this.VOLUME);
      
      public const SngSuccess:Song = addSong(this.Nsfe,4,null,this.VOLUME);
      
      public const SngEnding:Song = addSong(this.Nsfe,5,null,this.VOLUME);
      
      public const SngHighScore:Song = addSong(this.Nsfe,6,null,this.VOLUME);
      
      public const SngUnknown:Song = addSong(this.Nsfe,7,null,this.VOLUME);
      
      public function GameTetris(param1:int, param2:int = -1)
      {
         super("Tetris","Nintendo",Consoles.nintendo,param1,null,param2);
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
         addToTypePlayList(LT_CASTLE,this.SngMusic1);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngMusic2);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngEnding);
         addToTypePlayList(LT_INTRO,this.SngHighScore);
         addToTypePlayList(LT_NORMAL,this.SngMusic1);
         addToTypePlayList(LT_PIPE_BONUS,this.SngMusic3);
         addToTypePlayList(LT_PLATFORM,this.SngMusic2);
         addToTypePlayList(LT_UNDER_GROUND,this.SngMusic3);
         addToTypePlayList(LT_WATER,this.SngMusic3);
         addToTypePlayList(MT_DARK_EPIC,this.SngMusic2);
         addToTypePlayList(BOSS,this.SngMusic2);
         addToTypePlayList(CHAR_SEL,this.SngHighScore);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngSuccess);
         addToTypePlayList(CREDITS,this.SngEnding);
         addToTypePlayList(DIE,null);
         addToTypePlayList(FINAL_BOSS,this.SngMusic2);
         addToTypePlayList(GAME_OVER,this.SngUnknown);
         addToTypePlayList(HURRY,null);
         addToTypePlayList(STAR,this.SngEnding);
         addToTypePlayList(TITLE_SCREEN,this.SngHighScore);
         addToTypePlayList(WIN,this.SngSuccess);
         addToTypePlayList(WIN_CASTLE,this.SngSuccess);
      }
   }
}
