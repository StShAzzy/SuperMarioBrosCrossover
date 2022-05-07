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
      
      public const SngDarkEpic:Song = addSong(this.DarkEpicData,-1,null,this.VOLUME);
      
      private const CharSelectData:Class = GameFinalFantasy6_CharSelectData;
      
      public const SngCharSelect:Song = addSong(this.CharSelectData,-1,null,this.VOLUME);
      
      private const ChooseCharacterData:Class = GameFinalFantasy6_ChooseCharacterData;
      
      public const SngChooseCharacter:Song = addSong(this.ChooseCharacterData,-1,null,this.VOLUME);
      
      private const CreditsData:Class = GameFinalFantasy6_CreditsData;
      
      public const SngCredits:Song = addSong(this.CreditsData,-1,null,this.VOLUME);
      
      private const BossData:Class = GameFinalFantasy6_BossData;
      
      public const SngBoss:Song = addSong(this.BossData,-1,null,this.VOLUME);
      
      private const GameOverData:Class = GameFinalFantasy6_GameOverData;
      
      public const SngGameOver:Song = addSong(this.GameOverData,-1,null,this.VOLUME);
      
      private const HurryData:Class = GameFinalFantasy6_HurryData;
      
      public const SngHurry:Song = addSong(this.HurryData,-1,null,this.VOLUME);
      
      private const StarData:Class = GameFinalFantasy6_StarData;
      
      public const SngStar:Song = addSong(this.StarData,-1,null,this.VOLUME);
      
      private const TitleData:Class = GameFinalFantasy6_TitleData;
      
      public const SngTitle:Song = addSong(this.TitleData,-1,null,this.VOLUME);
      
      private const WinData:Class = GameFinalFantasy6_WinData;
      
      public const SngWin:Song = addSong(this.WinData,-1,null,this.VOLUME);
      
      private const CastleData:Class = GameFinalFantasy6_CastleData;
      
      public const SngCastle:Song = addSong(this.CastleData,-1,null,this.VOLUME);
      
      private const CheepCheepData:Class = GameFinalFantasy6_CheepCheepData;
      
      public const SngCheepCheep:Song = addSong(this.CheepCheepData,-1,null,this.VOLUME);
      
      private const CoinHeavenData:Class = GameFinalFantasy6_CoinHeavenData;
      
      public const SngCoinHeaven:Song = addSong(this.CoinHeavenData,-1,null,this.VOLUME);
      
      private const IntroData:Class = GameFinalFantasy6_IntroData;
      
      public const SngIntro:Song = addSong(this.IntroData,-1,null,this.VOLUME);
      
      private const TerraData:Class = GameFinalFantasy6_TerraData;
      
      public const SngTerra:Song = addSong(this.TerraData,-1,null,this.VOLUME);
      
      private const PipeBonusData:Class = GameFinalFantasy6_PipeBonusData;
      
      public const SngPipeBonus:Song = addSong(this.PipeBonusData,-1,null,this.VOLUME);
      
      private const UnderGroundData:Class = GameFinalFantasy6_UnderGroundData;
      
      public const SngUnderGround:Song = addSong(this.UnderGroundData,-1,null,this.VOLUME);
      
      private const WaterData:Class = GameFinalFantasy6_WaterData;
      
      public const SngWater:Song = addSong(this.WaterData,-1,null,this.VOLUME);
      
      private const PlatformData:Class = GameFinalFantasy6_PlatformData;
      
      public const SngPlatform:Song = addSong(this.PlatformData,-1,null,this.VOLUME);
      
      private const FinalBossData:Class = GameFinalFantasy6_FinalBossData;
      
      public const SngFinalBoss:Song = addSong(this.FinalBossData,-1,null,this.VOLUME);
      
      private const DieData:Class = GameFinalFantasy6_DieData;
      
      public const SngDie:Song = addSong(this.DieData,-1,null,this.VOLUME,0,0,1500,200);
      
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
         addToTypePlayList(LT_CASTLE,this.SngCastle);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngCheepCheep);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngCoinHeaven);
         addToTypePlayList(LT_INTRO,this.SngIntro);
         addToTypePlayList(LT_NORMAL,this.SngTerra);
         addToTypePlayList(LT_PIPE_BONUS,this.SngPipeBonus);
         addToTypePlayList(LT_PLATFORM,this.SngPlatform);
         addToTypePlayList(LT_UNDER_GROUND,this.SngUnderGround);
         addToTypePlayList(LT_WATER,this.SngWater);
         addToTypePlayList(MT_DARK_EPIC,this.SngDarkEpic);
         addToTypePlayList(BOSS,this.SngBoss);
         addToTypePlayList(CHAR_SEL,this.SngCharSelect);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngChooseCharacter);
         addToTypePlayList(CREDITS,this.SngCredits);
         addToTypePlayList(DIE,this.SngDie);
         addToTypePlayList(FINAL_BOSS,this.SngFinalBoss);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngHurry);
         addToTypePlayList(STAR,this.SngStar);
         addToTypePlayList(TITLE_SCREEN,this.SngTitle);
         addToTypePlayList(WIN,this.SngWin);
         addToTypePlayList(WIN_CASTLE,this.SngWin);
      }
   }
}
