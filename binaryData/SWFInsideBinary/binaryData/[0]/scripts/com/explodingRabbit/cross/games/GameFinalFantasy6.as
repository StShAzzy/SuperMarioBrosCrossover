package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameFinalFantasy6 extends Game
   {
      
      private static var instance:Game;
       
      
      private const VOLUME:int = 100;
      
      private const DarkEpicData:Class = GameFinalFantasy6_DarkEpicData;
      
      public const SngBattleTheme:Song = addSong(this.DarkEpicData,-1,null,this.VOLUME);
      
      private const CharSelectData:Class = GameFinalFantasy6_CharSelectData;
      
      public const SngPrelude:Song = addSong(this.CharSelectData,-1,null,this.VOLUME);
      
      private const ChooseCharacterData:Class = GameFinalFantasy6_ChooseCharacterData;
      
      public const SngFanfare2:Song = addSong(this.ChooseCharacterData,-1,null,this.VOLUME);
      
      private const CreditsData:Class = GameFinalFantasy6_CreditsData;
      
      public const SndEndingTheme1:Song = addSong(this.CreditsData,-1,null,this.VOLUME);
      
      private const BossData:Class = GameFinalFantasy6_BossData;
      
      public const SngBoss:Song = addSong(this.BossData,-1,null,this.VOLUME);
      
      private const GameOverData:Class = GameFinalFantasy6_GameOverData;
      
      public const SngRestInPeace:Song = addSong(this.GameOverData,-1,null,this.VOLUME);
      
      private const HurryData:Class = GameFinalFantasy6_HurryData;
      
      public const SngUnforgiven:Song = addSong(this.HurryData,-1,null,this.VOLUME);
      
      private const StarData:Class = GameFinalFantasy6_StarData;
      
      public const SngTechnoDeChocobo:Song = addSong(this.StarData,-1,null,this.VOLUME);
      
      private const TitleData:Class = GameFinalFantasy6_TitleData;
      
      public const SngOpeningTheme2:Song = addSong(this.TitleData,-1,null,this.VOLUME);
      
      private const WinData:Class = GameFinalFantasy6_WinData;
      
      public const SngFanfare:Song = addSong(this.WinData,-1,null,this.VOLUME);
      
      private const CastleData:Class = GameFinalFantasy6_CastleData;
      
      public const SngLastDungeon:Song = addSong(this.CastleData,-1,null,this.VOLUME);
      
      private const CheepCheepData:Class = GameFinalFantasy6_CheepCheepData;
      
      public const SngSaveThem:Song = addSong(this.CheepCheepData,-1,null,this.VOLUME);
      
      private const CoinHeavenData:Class = GameFinalFantasy6_CoinHeavenData;
      
      public const SngBlackjack:Song = addSong(this.CoinHeavenData,-1,null,this.VOLUME);
      
      private const IntroData:Class = GameFinalFantasy6_IntroData;
      
      public const SngIntro:Song = addSong(this.IntroData,-1,null,this.VOLUME);
      
      private const TerraData:Class = GameFinalFantasy6_TerraData;
      
      public const SngTerra:Song = addSong(this.TerraData,-1,null,this.VOLUME);
      
      private const PipeBonusData:Class = GameFinalFantasy6_PipeBonusData;
      
      public const SngReturners:Song = addSong(this.PipeBonusData,-1,null,this.VOLUME);
      
      private const UnderGroundData:Class = GameFinalFantasy6_UnderGroundData;
      
      public const SngPhantomForest:Song = addSong(this.UnderGroundData,-1,null,this.VOLUME);
      
      private const WaterData:Class = GameFinalFantasy6_WaterData;
      
      public const SngSerpentTrench:Song = addSong(this.WaterData,-1,null,this.VOLUME);
      
      private const PlatformData:Class = GameFinalFantasy6_PlatformData;
      
      public const SngMtKoltz:Song = addSong(this.PlatformData,-1,null,this.VOLUME);
      
      private const FinalBossData:Class = GameFinalFantasy6_FinalBossData;
      
      public const SngDancingMad5:Song = addSong(this.FinalBossData,-1,null,this.VOLUME);
      
      private const DieData:Class = GameFinalFantasy6_DieData;
      
      public const SngCoinSong:Song = addSong(this.DieData,-1,null,this.VOLUME,0,0,1500,200);
      
      public function GameFinalFantasy6(param1:int, param2:int = -1)
      {
         super("Final Fantasy VI","Square-Enix",Consoles.superNintendo,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override public function initiate() : void
      {
         super.initiate();
         creditsGame = Games.finalFantasy6;
      }
      
      override protected function setUpLevelThemes() : void
      {
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngLastDungeon);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngSaveThem);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngBlackjack);
         addToTypePlayList(LT_INTRO,this.SngIntro);
         addToTypePlayList(LT_NORMAL,this.SngTerra);
         addToTypePlayList(LT_PIPE_BONUS,this.SngReturners);
         addToTypePlayList(LT_PLATFORM,this.SngMtKoltz);
         addToTypePlayList(LT_UNDER_GROUND,this.SngPhantomForest);
         addToTypePlayList(LT_WATER,this.SngSerpentTrench);
         addToTypePlayList(MT_DARK_EPIC,this.SngBattleTheme);
         addToTypePlayList(BOSS,this.SngBoss);
         addToTypePlayList(CHAR_SEL,this.SngPrelude);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngFanfare2);
         addToTypePlayList(CREDITS,this.SndEndingTheme1);
         addToTypePlayList(DIE,this.SngCoinSong);
         addToTypePlayList(FINAL_BOSS,this.SngDancingMad5);
         addToTypePlayList(GAME_OVER,this.SngRestInPeace);
         addToTypePlayList(HURRY,this.SngUnforgiven);
         addToTypePlayList(STAR,this.SngTechnoDeChocobo);
         addToTypePlayList(TITLE_SCREEN,this.SngOpeningTheme2);
         addToTypePlayList(WIN,this.SngFanfare);
         addToTypePlayList(WIN_CASTLE,this.SngFanfare);
      }
   }
}
