package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameFinalFantasy4 extends Game
   {
      
      private static var instance:Game;
       
      
      private const VOLUME:int = 100;
      
      private const PreludeData:Class = GameFinalFantasy4_PreludeData;
      
      public const SngPrelude:Song = addSong(this.PreludeData,-1,null,this.VOLUME);
      
      private const MainThemeData:Class = GameFinalFantasy4_MainThemeData;
      
      public const SngMainTheme:Song = addSong(this.MainThemeData,-1,null,this.VOLUME);
      
      private const Fight1Data:Class = GameFinalFantasy4_Fight1Data;
      
      public const SngFight1:Song = addSong(this.Fight1Data,-1,null,this.VOLUME);
      
      private const FanfareData:Class = GameFinalFantasy4_FanfareData;
      
      public const SngFanfare:Song = addSong(this.FanfareData,-1,null,this.VOLUME);
      
      private const IntoTheDarknessData:Class = GameFinalFantasy4_IntoTheDarknessData;
      
      public const SngIntoTheDarkness:Song = addSong(this.IntoTheDarknessData,-1,null,this.VOLUME);
      
      private const Fight2Data:Class = GameFinalFantasy4_Fight2Data;
      
      public const SngFight2:Song = addSong(this.Fight2Data,-1,null,this.VOLUME);
      
      private const CryInSorrowData:Class = GameFinalFantasy4_CryInSorrowData;
      
      public const SngCryInSorrow:Song = addSong(this.CryInSorrowData,-1,null,this.VOLUME);
      
      private const MtOrdealsData:Class = GameFinalFantasy4_MtOrdealsData;
      
      public const SngMtOrdeals:Song = addSong(this.MtOrdealsData,-1,null,this.VOLUME);
      
      private const RunData:Class = GameFinalFantasy4_RunData;
      
      public const SngRun:Song = addSong(this.RunData,-1,null,this.VOLUME);
      
      private const MysticMysidiaData:Class = GameFinalFantasy4_MysticMysidiaData;
      
      public const SngMysticMysidia:Song = addSong(this.MysticMysidiaData,-1,null,this.VOLUME);
      
      private const LongWayToGoData:Class = GameFinalFantasy4_LongWayToGoData;
      
      public const SngLongWayToGo:Song = addSong(this.LongWayToGoData,-1,null,this.VOLUME);
      
      private const AirshipData:Class = GameFinalFantasy4_AirshipData;
      
      public const SngAirship:Song = addSong(this.AirshipData,-1,null,this.VOLUME);
      
      private const TowerOfBabelData:Class = GameFinalFantasy4_TowerOfBabelData;
      
      public const SngTowerOfBabel:Song = addSong(this.TowerOfBabelData,-1,null,this.VOLUME);
      
      private const SomewhereInTheWorldData:Class = GameFinalFantasy4_SomewhereInTheWorldData;
      
      public const SngSomewhereInTheWorld:Song = addSong(this.SomewhereInTheWorldData,-1,null,this.VOLUME);
      
      private const IllusionaryWorldData:Class = GameFinalFantasy4_IllusionaryWorldData;
      
      public const SngIllusionaryWorld:Song = addSong(this.IllusionaryWorldData,-1,null,this.VOLUME);
      
      private const BigWhaleData:Class = GameFinalFantasy4_BigWhaleData;
      
      public const SngBigWhale:Song = addSong(this.BigWhaleData,-1,null,this.VOLUME);
      
      private const WithinTheGiantData:Class = GameFinalFantasy4_WithinTheGiantData;
      
      public const SngWithinTheGiant:Song = addSong(this.WithinTheGiantData,-1,null,this.VOLUME);
      
      private const FinalBattleData:Class = GameFinalFantasy4_FinalBattleData;
      
      public const SngFinalBattle:Song = addSong(this.FinalBattleData,-1,null,this.VOLUME);
      
      private const Epilogue3Data:Class = GameFinalFantasy4_Epilogue3Data;
      
      public const SngEpilogue3:Song = addSong(this.Epilogue3Data,-1,null,this.VOLUME);
      
      private const JoinThePartyData:Class = GameFinalFantasy4_JoinThePartyData;
      
      public const SngJoinTheParty:Song = addSong(this.JoinThePartyData,-1,null,this.VOLUME);
      
      private const SurpriseData:Class = GameFinalFantasy4_SurpriseData;
      
      public const SngSurprise:Song = addSong(this.SurpriseData,-1,null,this.VOLUME);
      
      public function GameFinalFantasy4(param1:int, param2:int = -1)
      {
         super("Final Fantasy IV","Square-Enix",Consoles.superNintendo,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override public function initiate() : void
      {
         super.initiate();
         creditsGame = Games.finalFantasy4;
      }
      
      override protected function setUpLevelThemes() : void
      {
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngWithinTheGiant);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngTowerOfBabel);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngAirship);
         addToTypePlayList(LT_INTRO,this.SngSomewhereInTheWorld);
         addToTypePlayList(LT_NORMAL,this.SngMainTheme);
         addToTypePlayList(LT_PIPE_BONUS,this.SngMysticMysidia);
         addToTypePlayList(LT_PLATFORM,this.SngMtOrdeals);
         addToTypePlayList(LT_UNDER_GROUND,this.SngIntoTheDarkness);
         addToTypePlayList(LT_WATER,this.SngIllusionaryWorld);
         addToTypePlayList(MT_DARK_EPIC,this.SngFight1);
         addToTypePlayList(BOSS,this.SngFight2);
         addToTypePlayList(CHAR_SEL,this.SngLongWayToGo);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngJoinTheParty);
         addToTypePlayList(CREDITS,this.SngEpilogue3);
         addToTypePlayList(DIE,this.SngSurprise);
         addToTypePlayList(FINAL_BOSS,this.SngFinalBattle);
         addToTypePlayList(GAME_OVER,this.SngCryInSorrow);
         addToTypePlayList(HURRY,this.SngRun);
         addToTypePlayList(STAR,this.SngBigWhale);
         addToTypePlayList(TITLE_SCREEN,this.SngPrelude);
         addToTypePlayList(WIN,this.SngFanfare);
         addToTypePlayList(WIN_CASTLE,this.SngFanfare);
      }
   }
}
