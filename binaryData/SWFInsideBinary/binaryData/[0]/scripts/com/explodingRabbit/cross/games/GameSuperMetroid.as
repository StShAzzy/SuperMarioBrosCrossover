package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameSuperMetroid extends Game
   {
      
      private static var instance:Game;
       
      
      private const VOLUME:int = 88;
      
      private const ItemRoomData:Class = GameSuperMetroid_ItemRoomData;
      
      public const SngItemRoom:Song = addSong(this.ItemRoomData,-1,null,this.VOLUME);
      
      private const ItemFanfareData:Class = GameSuperMetroid_ItemFanfareData;
      
      public const SngItemFanfare:Song = addSong(this.ItemFanfareData,-1,null,this.VOLUME);
      
      private const MaridiaRockyUnderwaterData:Class = GameSuperMetroid_MaridiaRockyUnderwaterData;
      
      public const SngMaridiaRockyUnderwater:Song = addSong(this.MaridiaRockyUnderwaterData,-1,null,this.VOLUME);
      
      private const SamusAppearanceFanfareData:Class = GameSuperMetroid_SamusAppearanceFanfareData;
      
      public const SngSamusAppearanceFanfare:Song = addSong(this.SamusAppearanceFanfareData,-1,null,this.VOLUME);
      
      private const SamusDieData:Class = GameSuperMetroid_SamusDieData;
      
      public const SngSamusDie:Song = addSong(this.SamusDieData,-1,null,this.VOLUME);
      
      private const BrinstarVegetationData:Class = GameSuperMetroid_BrinstarVegetationData;
      
      public const SngBrinstarVegetation:Song = addSong(this.BrinstarVegetationData,-1,null,this.VOLUME);
      
      private const CriteriaSpacePiratesData:Class = GameSuperMetroid_CriteriaSpacePiratesData;
      
      public const SngCriteriaSpacePirates:Song = addSong(this.CriteriaSpacePiratesData,-1,null,this.VOLUME);
      
      private const NorfairAncientRuinsData:Class = GameSuperMetroid_NorfairAncientRuinsData;
      
      public const SngNorfairAncientRuins:Song = addSong(this.NorfairAncientRuinsData,-1,null,this.VOLUME);
      
      private const ContinueData:Class = GameSuperMetroid_ContinueData;
      
      public const SngContinue:Song = addSong(this.ContinueData,-1,null,this.VOLUME);
      
      private const EscapeData:Class = GameSuperMetroid_EscapeData;
      
      public const SngEscape:Song = addSong(this.EscapeData,-1,null,this.VOLUME);
      
      private const BigBossConfrontation2Data:Class = GameSuperMetroid_BigBossConfrontation2Data;
      
      public const SngBigBossConfrontation2:Song = addSong(this.BigBossConfrontation2Data,-1,null,this.VOLUME);
      
      private const MotherBrainData:Class = GameSuperMetroid_MotherBrainData;
      
      public const SngMotherBrain:Song = addSong(this.MotherBrainData,-1,null,this.VOLUME);
      
      private const EndingData:Class = GameSuperMetroid_EndingData;
      
      public const SngEnding:Song = addSong(this.EndingData,-1,null,this.VOLUME);
      
      private const OpeningData:Class = GameSuperMetroid_OpeningData;
      
      public const SngOpening:Song = addSong(this.OpeningData,-1,null,this.VOLUME);
      
      private const BrinstarRedSwampyAreaData:Class = GameSuperMetroid_BrinstarRedSwampyAreaData;
      
      public const SngBrinstarRedSwampyArea:Song = addSong(this.BrinstarRedSwampyAreaData,-1,null,this.VOLUME);
      
      private const PlanetZebesArrivalOnCrateriaData:Class = GameSuperMetroid_PlanetZebesArrivalOnCrateriaData;
      
      public const SngPlanetZebesArrivalOnCrateria:Song = addSong(this.PlanetZebesArrivalOnCrateriaData,-1,null,this.VOLUME);
      
      private const CrateriaUndergroundData:Class = GameSuperMetroid_CrateriaUndergroundData;
      
      public const SngCrateriaUnderground:Song = addSong(this.CrateriaUndergroundData,-1,null,this.VOLUME);
      
      private const WreckedShipData:Class = GameSuperMetroid_WreckedShipData;
      
      public const SngWreckedShip:Song = addSong(this.WreckedShipData,-1,null,this.VOLUME + 10);
      
      public function GameSuperMetroid(param1:int, param2:int = -1)
      {
         super("Super Metroid","Nintendo",Consoles.superNintendo,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngWreckedShip);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngNorfairAncientRuins);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngPlanetZebesArrivalOnCrateria);
         addToTypePlayList(LT_INTRO,this.SngCrateriaUnderground);
         addToTypePlayList(LT_NORMAL,this.SngBrinstarVegetation);
         addToTypePlayList(LT_PIPE_BONUS,this.SngItemRoom);
         addToTypePlayList(LT_PLATFORM,this.SngBrinstarRedSwampyArea);
         addToTypePlayList(LT_UNDER_GROUND,this.SngCriteriaSpacePirates);
         addToTypePlayList(LT_WATER,this.SngMaridiaRockyUnderwater);
         addToTypePlayList(MT_DARK_EPIC,this.SngNorfairAncientRuins);
         addToTypePlayList(BOSS,this.SngBigBossConfrontation2);
         addToTypePlayList(CHAR_SEL,this.SngItemRoom);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngSamusAppearanceFanfare);
         addToTypePlayList(CREDITS,this.SngEnding);
         addToTypePlayList(DIE,this.SngSamusDie);
         addToTypePlayList(FINAL_BOSS,this.SngMotherBrain);
         addToTypePlayList(GAME_OVER,this.SngContinue);
         addToTypePlayList(HURRY,this.SngEscape);
         addToTypePlayList(STAR,null);
         addToTypePlayList(TITLE_SCREEN,this.SngOpening);
         addToTypePlayList(WIN,this.SngItemFanfare);
         addToTypePlayList(WIN_CASTLE,this.SngItemFanfare);
      }
   }
}
