package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameZeldaLinkToThePast extends Game
   {
      
      private static var instance:Game;
       
      
      private const VOLUME:int = 75;
      
      private const HyruleFieldData:Class = GameZeldaLinkToThePast_HyruleFieldData;
      
      public const SngHyruleField:Song = addSong(this.HyruleFieldData,-1,null,this.VOLUME);
      
      private const DarkGoldenLandData:Class = GameZeldaLinkToThePast_DarkGoldenLandData;
      
      public const SngDarkGoldenLand:Song = addSong(this.DarkGoldenLandData,-1,null,this.VOLUME);
      
      private const GuessingGameHouseData:Class = GameZeldaLinkToThePast_GuessingGameHouseData;
      
      public const SngGuessingGameHouse:Song = addSong(this.GuessingGameHouseData,-1,null,this.VOLUME);
      
      private const LostAncientRuinsData:Class = GameZeldaLinkToThePast_LostAncientRuinsData;
      
      public const SngLostAncientRuins:Song = addSong(this.LostAncientRuinsData,-1,null,this.VOLUME);
      
      private const BeginningOfTheJourneyData:Class = GameZeldaLinkToThePast_BeginningOfTheJourneyData;
      
      public const SngBeginningOfTheJourney:Song = addSong(this.BeginningOfTheJourneyData,-1,null,this.VOLUME);
      
      private const GreatVictoryData:Class = GameZeldaLinkToThePast_GreatVictoryData;
      
      public const SngGreatVictory:Song = addSong(this.GreatVictoryData,-1,null,this.VOLUME);
      
      private const PrincessZeldasRescueData:Class = GameZeldaLinkToThePast_PrincessZeldasRescueData;
      
      public const SngPrincessZeldasRescue:Song = addSong(this.PrincessZeldasRescueData,-1,null,this.VOLUME);
      
      private const DankDungeonsData:Class = GameZeldaLinkToThePast_DankDungeonsData;
      
      public const SngDankDungeons:Song = addSong(this.DankDungeonsData,-1,null,this.VOLUME);
      
      private const TheSillyPinkRabbitData:Class = GameZeldaLinkToThePast_TheSillyPinkRabbitData;
      
      public const SngTheSillyPinkRabbit:Song = addSong(this.TheSillyPinkRabbitData,-1,null,this.VOLUME);
      
      private const SoldiersOfKakarikoVillageData:Class = GameZeldaLinkToThePast_SoldiersOfKakarikoVillageData;
      
      public const SngSoldiersOfKakarikoVillage:Song = addSong(this.SoldiersOfKakarikoVillageData,-1,null,this.VOLUME);
      
      private const SealOfSevenMaidensData:Class = GameZeldaLinkToThePast_SealOfSevenMaidensData;
      
      public const SngSealOfSevenMaidens:Song = addSong(this.SealOfSevenMaidensData,-1,null,this.VOLUME);
      
      private const ThePrinceOfDarknessData:Class = GameZeldaLinkToThePast_ThePrinceOfDarknessData;
      
      public const SngThePrinceOfDarknessData:Song = addSong(this.ThePrinceOfDarknessData,-1,null,this.VOLUME);
      
      private const EpilogueData:Class = GameZeldaLinkToThePast_EpilogueData;
      
      public const SngEpilogue:Song = addSong(this.EpilogueData,-1,null,this.VOLUME);
      
      private const DungeonOfShadowsData:Class = GameZeldaLinkToThePast_DungeonOfShadowsData;
      
      public const SngDungeonOfShadows:Song = addSong(this.DungeonOfShadowsData,-1,null,this.VOLUME);
      
      private const ForestOfMysteryData:Class = GameZeldaLinkToThePast_ForestOfMysteryData;
      
      public const SngForestOfMystery:Song = addSong(this.ForestOfMysteryData,-1,null,this.VOLUME);
      
      private const AngerOfTheGuardiansData:Class = GameZeldaLinkToThePast_AngerOfTheGuardiansData;
      
      public const SngAngerOfTheGuardians:Song = addSong(this.AngerOfTheGuardiansData,-1,null,this.VOLUME);
      
      private const OcarinaSongShortData:Class = GameZeldaLinkToThePast_OcarinaSongShortData;
      
      public const SngOcarinaSongShort:Song = addSong(this.OcarinaSongShortData,-1,null,this.VOLUME);
      
      private const BlackMistData:Class = GameZeldaLinkToThePast_BlackMistData;
      
      public const SngBlackMist:Song = addSong(this.BlackMistData,-1,null,this.VOLUME);
      
      private const KakarikoVillageData:Class = GameZeldaLinkToThePast_KakarikoVillageData;
      
      public const SngKakarikoVillage:Song = addSong(this.KakarikoVillageData,-1,null,this.VOLUME);
      
      public function GameZeldaLinkToThePast(param1:int, param2:int = -1)
      {
         super("The Legend of Zelda: A Link To The Past","Nintendo",Consoles.superNintendo,param1,"LOZ: A Link to the Past",param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngDungeonOfShadows);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngBlackMist);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngGuessingGameHouse);
         addToTypePlayList(LT_INTRO,this.SngKakarikoVillage);
         addToTypePlayList(LT_NORMAL,this.SngHyruleField);
         addToTypePlayList(LT_PIPE_BONUS,this.SngDankDungeons);
         addToTypePlayList(LT_PLATFORM,this.SngForestOfMystery);
         addToTypePlayList(LT_UNDER_GROUND,this.SngLostAncientRuins);
         addToTypePlayList(LT_WATER,this.SngSealOfSevenMaidens);
         addToTypePlayList(MT_DARK_EPIC,this.SngDarkGoldenLand);
         addToTypePlayList(BOSS,this.SngAngerOfTheGuardians);
         addToTypePlayList(CHAR_SEL,this.SngBeginningOfTheJourney);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngOcarinaSongShort);
         addToTypePlayList(CREDITS,this.SngEpilogue);
         addToTypePlayList(DIE,null);
         addToTypePlayList(FINAL_BOSS,this.SngThePrinceOfDarknessData);
         addToTypePlayList(GAME_OVER,this.SngBeginningOfTheJourney);
         addToTypePlayList(HURRY,this.SngSoldiersOfKakarikoVillage);
         addToTypePlayList(STAR,this.SngTheSillyPinkRabbit);
         addToTypePlayList(TITLE_SCREEN,this.SngHyruleField);
         addToTypePlayList(WIN,this.SngGreatVictory);
         addToTypePlayList(WIN_CASTLE,this.SngPrincessZeldasRescue);
      }
   }
}
