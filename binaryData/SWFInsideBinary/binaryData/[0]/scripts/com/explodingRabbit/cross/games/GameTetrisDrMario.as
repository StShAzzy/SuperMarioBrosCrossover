package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameTetrisDrMario extends Game
   {
      
      private static var instance:Game;
       
      
      private const VOLUME:int = 80;
      
      private const TetrisThemeData:Class = GameTetrisDrMario_TetrisThemeData;
      
      public const SngTetrisTheme:Song = addSong(this.TetrisThemeData,-1,null,this.VOLUME);
      
      private const Music1Data:Class = GameTetrisDrMario_Music1Data;
      
      public const SngMusic1:Song = addSong(this.Music1Data,-1,null,this.VOLUME);
      
      private const Music1HurryData:Class = GameTetrisDrMario_Music1HurryData;
      
      public const SngMusic1Hurry:Song = addSong(this.Music1HurryData,-1,null,this.VOLUME);
      
      private const Music2Data:Class = GameTetrisDrMario_Music2Data;
      
      public const SngMusic2:Song = addSong(this.Music2Data,-1,null,this.VOLUME);
      
      private const Music2HurryData:Class = GameTetrisDrMario_Music2HurryData;
      
      public const SngMusic2Hurry:Song = addSong(this.Music2HurryData,-1,null,this.VOLUME);
      
      private const Music3Data:Class = GameTetrisDrMario_Music3Data;
      
      public const SngMusic3:Song = addSong(this.Music3Data,-1,null,this.VOLUME);
      
      private const Music3HurryData:Class = GameTetrisDrMario_Music3HurryData;
      
      public const SngMusic3Hurry:Song = addSong(this.Music3HurryData,-1,null,this.VOLUME);
      
      private const GameOverData:Class = GameTetrisDrMario_GameOverData;
      
      public const SngGameOver:Song = addSong(this.GameOverData,-1,null,this.VOLUME);
      
      private const HighScoreData:Class = GameTetrisDrMario_HighScoreData;
      
      public const SngHighScore:Song = addSong(this.HighScoreData,-1,null,this.VOLUME);
      
      private const MixedMusic1Data:Class = GameTetrisDrMario_MixedMusic1Data;
      
      public const SngMixedMusic1:Song = addSong(this.MixedMusic1Data,-1,null,this.VOLUME);
      
      private const MixedMusic1HurryData:Class = GameTetrisDrMario_MixedMusic1HurryData;
      
      public const SngMixedMusic1Hurry:Song = addSong(this.MixedMusic1HurryData,-1,null,this.VOLUME);
      
      private const MixedMusic2Data:Class = GameTetrisDrMario_MixedMusic2Data;
      
      public const SngMixedMusic2:Song = addSong(this.MixedMusic2Data,-1,null,this.VOLUME);
      
      private const MixedMusic2HurryData:Class = GameTetrisDrMario_MixedMusic2HurryData;
      
      public const SngMixedMusic2Hurry:Song = addSong(this.MixedMusic2HurryData,-1,null,this.VOLUME);
      
      private const MixedMusic3Data:Class = GameTetrisDrMario_MixedMusic3Data;
      
      public const SngMixedMusic3:Song = addSong(this.MixedMusic3Data,-1,null,this.VOLUME);
      
      private const MixedMusic3HurryData:Class = GameTetrisDrMario_MixedMusic3HurryData;
      
      public const SngMixedMusic3Hurry:Song = addSong(this.MixedMusic3HurryData,-1,null,this.VOLUME);
      
      private const MixedGameOverData:Class = GameTetrisDrMario_MixedGameOverData;
      
      public const SngMixedGameOver:Song = addSong(this.MixedGameOverData,-1,null,this.VOLUME);
      
      public function GameTetrisDrMario(param1:int, param2:int = -1)
      {
         super("Tetris & Dr. Mario","Nintendo",Consoles.superNintendo,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngMixedMusic3);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngMusic2);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngMixedMusic2);
         addToTypePlayList(LT_INTRO,this.SngHighScore);
         addToTypePlayList(LT_NORMAL,this.SngMusic1);
         addToTypePlayList(LT_PIPE_BONUS,this.SngMixedMusic2);
         addToTypePlayList(LT_PLATFORM,this.SngMusic2);
         addToTypePlayList(LT_UNDER_GROUND,this.SngMixedMusic1);
         addToTypePlayList(LT_WATER,this.SngMusic3);
         addToTypePlayList(MT_DARK_EPIC,this.SngMusic2);
         addToTypePlayList(BOSS,this.SngMixedMusic3);
         addToTypePlayList(CHAR_SEL,this.SngHighScore);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngTetrisTheme);
         addToTypePlayList(CREDITS,this.SngMusic1);
         addToTypePlayList(DIE,this.SngMixedGameOver);
         addToTypePlayList(FINAL_BOSS,this.SngMixedMusic3);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,null);
         addToTypePlayList(STAR,this.SngTetrisTheme);
         addToTypePlayList(TITLE_SCREEN,this.SngHighScore);
         addToTypePlayList(WIN,this.SngHighScore);
         addToTypePlayList(WIN_CASTLE,this.SngHighScore);
         addHurryVersionOfSong(this.SngMusic1,this.SngMusic1Hurry);
         addHurryVersionOfSong(this.SngMusic2,this.SngMusic2Hurry);
         addHurryVersionOfSong(this.SngMusic3,this.SngMusic3Hurry);
         addHurryVersionOfSong(this.SngMixedMusic1,this.SngMixedMusic1Hurry);
         addHurryVersionOfSong(this.SngMixedMusic2,this.SngMixedMusic2Hurry);
         addHurryVersionOfSong(this.SngMixedMusic3,this.SngMixedMusic3Hurry);
      }
   }
}
