package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameBlasterMasterSnes extends Game
   {
      
      private static var instance:Game;
       
      
      private const VOLUME:int = 70;
      
      private const OverworldData:Class = GameBlasterMasterSnes_OverworldData;
      
      public const SngOverworld:Song = addSong(this.OverworldData,-1,null,this.VOLUME);
      
      private const Area2Data:Class = GameBlasterMasterSnes_Area2Data;
      
      public const SngArea2:Song = addSong(this.Area2Data,-1,null,this.VOLUME);
      
      private const Area3Data:Class = GameBlasterMasterSnes_Area3Data;
      
      public const SngArea3:Song = addSong(this.Area3Data,-1,null,this.VOLUME);
      
      private const GameOverData:Class = GameBlasterMasterSnes_GameOverData;
      
      public const SngGameOver:Song = addSong(this.GameOverData,-1,null,this.VOLUME,0,0,3200);
      
      private const OpeningData:Class = GameBlasterMasterSnes_OpeningData;
      
      public const SngOpening:Song = addSong(this.OpeningData,-1,null,this.VOLUME,0,0);
      
      private const VictoryData:Class = GameBlasterMasterSnes_VictoryData;
      
      public const SngVictory:Song = addSong(this.VictoryData,-1,null,this.VOLUME,0,0,4000);
      
      public function GameBlasterMasterSnes(param1:int, param2:int = -1)
      {
         super("Blaster Master (SNES)","Sunsoft",Consoles.superNintendo,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override public function initiate() : void
      {
         super.initiate();
         creditsGame = Games.blasterMaster;
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,Games.blasterMaster.SngArea4Frog);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngArea3);
         addToTypePlayList(LT_COIN_HEAVEN,Games.blasterMaster.SngArea5Water);
         addToTypePlayList(LT_INTRO,Games.blasterMaster.SngArea8Final);
         addToTypePlayList(LT_NORMAL,this.SngOverworld);
         addToTypePlayList(LT_PIPE_BONUS,this.SngArea2);
         addToTypePlayList(LT_PLATFORM,this.SngArea3);
         addToTypePlayList(LT_UNDER_GROUND,this.SngArea2);
         addToTypePlayList(LT_WATER,Games.blasterMaster.SngArea5Water);
         addToTypePlayList(MT_DARK_EPIC,Games.blasterMaster.SngArea6);
         addToTypePlayList(BOSS,Games.blasterMaster.SngBossEasy);
         addToTypePlayList(CHAR_SEL,this.SngOpening);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngOverworld);
         addToTypePlayList(CREDITS,Games.blasterMaster.SngEnding);
         addToTypePlayList(DIE,null);
         addToTypePlayList(FINAL_BOSS,Games.blasterMaster.SngBossHard);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,Games.blasterMaster.SngArea7);
         addToTypePlayList(STAR,Games.blasterMaster.SngBossHard);
         addToTypePlayList(TITLE_SCREEN,this.SngOpening);
         addToTypePlayList(WIN,this.SngVictory);
         addToTypePlayList(WIN_CASTLE,this.SngVictory);
      }
   }
}
