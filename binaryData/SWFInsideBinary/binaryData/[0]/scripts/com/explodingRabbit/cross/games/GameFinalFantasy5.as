package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameFinalFantasy5 extends Game
   {
      
      private static var instance:Game;
       
      
      private const VOLUME:int = 100;
      
      private const AheadOnOurWayData:Class = GameFinalFantasy5_AheadOnOurWayData;
      
      public const SngAheadOnOurWay:Song = addSong(this.AheadOnOurWayData,-1,null,this.VOLUME);
      
      private const FourValiantHeartsData:Class = GameFinalFantasy5_FourValiantHeartsData;
      
      public const SngFourValiantHearts:Song = addSong(this.FourValiantHeartsData,-1,null,this.VOLUME);
      
      private const HurryData:Class = GameFinalFantasy5_HurryData;
      
      public const SngHurry:Song = addSong(this.HurryData,-1,null,this.VOLUME);
      
      private const FateInHazeData:Class = GameFinalFantasy5_FateInHazeData;
      
      public const SngFateInHaze:Song = addSong(this.FateInHazeData,-1,null,this.VOLUME);
      
      private const VictoryFanfareData:Class = GameFinalFantasy5_VictoryFanfareData;
      
      public const SngVictoryFanfare:Song = addSong(this.VictoryFanfareData,-1,null,this.VOLUME);
      
      private const RequiemData:Class = GameFinalFantasy5_RequiemData;
      
      public const SngRequiem:Song = addSong(this.RequiemData,-1,null,this.VOLUME);
      
      private const GoodNightData:Class = GameFinalFantasy5_GoodNightData;
      
      public const SngGoodNight:Song = addSong(this.GoodNightData,-1,null,this.VOLUME);
      
      private const WalkingTheSnowyMountainsData:Class = GameFinalFantasy5_WalkingTheSnowyMountainsData;
      
      public const SngWalkingTheSnowyMountains:Song = addSong(this.WalkingTheSnowyMountainsData,-1,null,this.VOLUME);
      
      private const FierceBattleData:Class = GameFinalFantasy5_FierceBattleData;
      
      public const SngFierceBattle:Song = addSong(this.FierceBattleData,-1,null,this.VOLUME);
      
      private const TheDragonSpreadsItsWingsData:Class = GameFinalFantasy5_TheDragonSpreadsItsWingsData;
      
      public const SngTheDragonSpreadsItsWings:Song = addSong(this.TheDragonSpreadsItsWingsData,-1,null,this.VOLUME);
      
      private const FirePoweredShipData:Class = GameFinalFantasy5_FirePoweredShipData;
      
      public const SngFirePoweredShip:Song = addSong(this.FirePoweredShipData,-1,null,this.VOLUME);
      
      private const AirshipData:Class = GameFinalFantasy5_AirshipData;
      
      public const SngAirship:Song = addSong(this.AirshipData,-1,null,this.VOLUME);
      
      private const ExdeathsCastleData:Class = GameFinalFantasy5_ExdeathsCastleData;
      
      public const SngExdeathsCastle:Song = addSong(this.ExdeathsCastleData,-1,null,this.VOLUME);
      
      private const BattleWithGilgameshData:Class = GameFinalFantasy5_BattleWithGilgameshData;
      
      public const SngBattleWithGilgamesh:Song = addSong(this.BattleWithGilgameshData,-1,null,this.VOLUME);
      
      private const BeyondTheDeepBlueSeaData:Class = GameFinalFantasy5_BeyondTheDeepBlueSeaData;
      
      public const SngBeyondTheDeepBlueSea:Song = addSong(this.BeyondTheDeepBlueSeaData,-1,null,this.VOLUME);
      
      private const IntentionOfTheEarthData:Class = GameFinalFantasy5_IntentionOfTheEarthData;
      
      public const SngIntentionOfTheEarth:Song = addSong(this.IntentionOfTheEarthData,-1,null,this.VOLUME);
      
      private const SearchingTheLightData:Class = GameFinalFantasy5_SearchingTheLightData;
      
      public const SngSearchingTheLight:Song = addSong(this.SearchingTheLightData,-1,null,this.VOLUME);
      
      private const SilentBeyondData:Class = GameFinalFantasy5_SilentBeyondData;
      
      public const SngSilentBeyond:Song = addSong(this.SilentBeyondData,-1,null,this.VOLUME);
      
      private const NewOriginData:Class = GameFinalFantasy5_NewOriginData;
      
      public const SngNewOrigin:Song = addSong(this.NewOriginData,-1,null,this.VOLUME);
      
      private const PreludeData:Class = GameFinalFantasy5_PreludeData;
      
      public const SngPrelude:Song = addSong(this.PreludeData,-1,null,this.VOLUME);
      
      private const Fanfare1Data:Class = GameFinalFantasy5_Fanfare1Data;
      
      public const SngFanfare1:Song = addSong(this.Fanfare1Data,-1,null,this.VOLUME);
      
      public function GameFinalFantasy5(param1:int, param2:int = -1)
      {
         super("Final Fantasy V","Square-Enix",Consoles.superNintendo,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override public function initiate() : void
      {
         super.initiate();
         creditsGame = Games.finalFantasy5;
      }
      
      override protected function setUpLevelThemes() : void
      {
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngExdeathsCastle);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngFirePoweredShip);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngAirship);
         addToTypePlayList(LT_INTRO,this.SngIntentionOfTheEarth);
         addToTypePlayList(LT_NORMAL,this.SngFourValiantHearts);
         addToTypePlayList(LT_PIPE_BONUS,this.SngSilentBeyond);
         addToTypePlayList(LT_PLATFORM,this.SngWalkingTheSnowyMountains);
         addToTypePlayList(LT_UNDER_GROUND,this.SngFateInHaze);
         addToTypePlayList(LT_WATER,this.SngBeyondTheDeepBlueSea);
         addToTypePlayList(MT_DARK_EPIC,this.SngSearchingTheLight);
         addToTypePlayList(BOSS,this.SngFierceBattle);
         addToTypePlayList(CHAR_SEL,this.SngPrelude);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngFanfare1);
         addToTypePlayList(CREDITS,this.SngNewOrigin);
         addToTypePlayList(DIE,this.SngGoodNight);
         addToTypePlayList(FINAL_BOSS,this.SngBattleWithGilgamesh);
         addToTypePlayList(GAME_OVER,this.SngRequiem);
         addToTypePlayList(HURRY,this.SngHurry);
         addToTypePlayList(STAR,this.SngAirship);
         addToTypePlayList(TITLE_SCREEN,this.SngAheadOnOurWay);
         addToTypePlayList(WIN,this.SngVictoryFanfare);
         addToTypePlayList(WIN_CASTLE,this.SngVictoryFanfare);
      }
   }
}
