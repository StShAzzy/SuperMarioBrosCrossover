package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameContra3 extends Game
   {
      
      private static var instance:Game;
       
      
      private const VOLUME:int = 70;
      
      private const CasualtyOfWarData:Class = GameContra3_CasualtyOfWarData;
      
      public const SngCasualtyOfWar:Song = addSong(this.CasualtyOfWarData,-1,null,this.VOLUME);
      
      private const GroundZeroData:Class = GameContra3_GroundZeroData;
      
      public const SngGroundZero:Song = addSong(this.GroundZeroData,-1,null,this.VOLUME);
      
      private const MissionAccomplishedData:Class = GameContra3_MissionAccomplishedData;
      
      public const SngMissionAccomplished:Song = addSong(this.MissionAccomplishedData,-1,null,this.VOLUME);
      
      private const InvasionData:Class = GameContra3_InvasionData;
      
      public const SngInvasion:Song = addSong(this.InvasionData,-1,null,this.VOLUME);
      
      private const NoMansLandData:Class = GameContra3_NoMansLandData;
      
      public const SngNoMansLand:Song = addSong(this.NoMansLandData,-1,null,this.VOLUME);
      
      private const TearingUpTheTurnpikeData:Class = GameContra3_TearingUpTheTurnpikeData;
      
      public const SngTearingUpTheTurnpike:Song = addSong(this.TearingUpTheTurnpikeData,-1,null,this.VOLUME);
      
      private const RoadWarriorsData:Class = GameContra3_RoadWarriorsData;
      
      public const SngRoadWarriors:Song = addSong(this.RoadWarriorsData,-1,null,this.VOLUME);
      
      private const NestingInTheSandsData:Class = GameContra3_NestingInTheSandsData;
      
      public const SngNestingInTheSands:Song = addSong(this.NestingInTheSandsData,-1,null,this.VOLUME);
      
      private const NeoKobeSteelFactoryData:Class = GameContra3_NeoKobeSteelFactoryData;
      
      public const SngNeoKobeSteelFactory:Song = addSong(this.NeoKobeSteelFactoryData,-1,null,this.VOLUME);
      
      private const PointOfEntryData:Class = GameContra3_PointOfEntryData;
      
      public const SngPointOfEntry:Song = addSong(this.PointOfEntryData,-1,null,this.VOLUME);
      
      private const CeaseFireData:Class = GameContra3_CeaseFireData;
      
      public const SngCeaseFire:Song = addSong(this.CeaseFireData,-1,null,this.VOLUME);
      
      private const TheFinalGauntletPart1Data:Class = GameContra3_TheFinalGauntletPart1Data;
      
      public const SngTheFinalGauntletPart1:Song = addSong(this.TheFinalGauntletPart1Data,-1,null,this.VOLUME);
      
      private const TheFinalGauntletPart2Data:Class = GameContra3_TheFinalGauntletPart2Data;
      
      public const SngTheFinalGauntletPart2:Song = addSong(this.TheFinalGauntletPart2Data,-1,null,this.VOLUME);
      
      private const TheFinalGauntletPart3Data:Class = GameContra3_TheFinalGauntletPart3Data;
      
      public const SngTheFinalGauntletPart3:Song = addSong(this.TheFinalGauntletPart3Data,-1,null,this.VOLUME);
      
      public function GameContra3(param1:int, param2:int = -1)
      {
         super("Contra 3: The Alien Wars","Konami",Consoles.superNintendo,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngInvasion);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngRoadWarriors);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngNestingInTheSands);
         addToTypePlayList(LT_INTRO,this.SngPointOfEntry);
         addToTypePlayList(LT_NORMAL,this.SngGroundZero);
         addToTypePlayList(LT_PIPE_BONUS,this.SngTearingUpTheTurnpike);
         addToTypePlayList(LT_PLATFORM,this.SngNeoKobeSteelFactory);
         addToTypePlayList(LT_UNDER_GROUND,this.SngTearingUpTheTurnpike);
         addToTypePlayList(LT_WATER,this.SngNestingInTheSands);
         addToTypePlayList(MT_DARK_EPIC,this.SngNoMansLand);
         addToTypePlayList(BOSS,this.SngTheFinalGauntletPart2);
         addToTypePlayList(CHAR_SEL,this.SngPointOfEntry);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngCeaseFire);
         addToTypePlayList(CREDITS,this.SngCeaseFire);
         addToTypePlayList(DIE,null);
         addToTypePlayList(FINAL_BOSS,this.SngTheFinalGauntletPart3);
         addToTypePlayList(GAME_OVER,this.SngCasualtyOfWar);
         addToTypePlayList(HURRY,this.SngTheFinalGauntletPart1);
         addToTypePlayList(STAR,this.SngRoadWarriors);
         addToTypePlayList(TITLE_SCREEN,this.SngGroundZero);
         addToTypePlayList(WIN,this.SngMissionAccomplished);
         addToTypePlayList(WIN_CASTLE,this.SngMissionAccomplished);
      }
   }
}
