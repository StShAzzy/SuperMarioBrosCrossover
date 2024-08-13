package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameFinalFantasyMysticQuest extends Game
   {
      
      private static var instance:Game;
       
      
      private const VOLUME:int = 100;
      
      private const MysticQuestData:Class = GameFinalFantasyMysticQuest_MysticQuestData;
      
      public const SngMysticQuest:Song = addSong(this.MysticQuestData,-1,null,this.VOLUME);
      
      private const HillOfFateData:Class = GameFinalFantasyMysticQuest_HillOfFateData;
      
      public const SngHillOfFate:Song = addSong(this.HillOfFateData,-1,null,this.VOLUME);
      
      private const WorldData:Class = GameFinalFantasyMysticQuest_WorldData;
      
      public const SngWorld:Song = addSong(this.WorldData,-1,null,this.VOLUME);
      
      private const BeautifulForestData:Class = GameFinalFantasyMysticQuest_BeautifulForestData;
      
      public const SngBeautifulForest:Song = addSong(this.BeautifulForestData,-1,null,this.VOLUME);
      
      private const Battle1Data:Class = GameFinalFantasyMysticQuest_Battle1Data;
      
      public const SngBattle1:Song = addSong(this.Battle1Data,-1,null,this.VOLUME);
      
      private const VictoryFanfareData:Class = GameFinalFantasyMysticQuest_VictoryFanfareData;
      
      public const SngVictoryFanfare:Song = addSong(this.VictoryFanfareData,-1,null,this.VOLUME);
      
      private const CityOfForestData:Class = GameFinalFantasyMysticQuest_CityOfForestData;
      
      public const SngCityOfForest:Song = addSong(this.CityOfForestData,-1,null,this.VOLUME);
      
      private const Battle2Data:Class = GameFinalFantasyMysticQuest_Battle2Data;
      
      public const SngBattle2:Song = addSong(this.Battle2Data,-1,null,this.VOLUME);
      
      private const MiddleTowerData:Class = GameFinalFantasyMysticQuest_MiddleTowerData;
      
      public const SngMiddleTower:Song = addSong(this.MiddleTowerData,-1,null,this.VOLUME);
      
      private const ShrineOfLightData:Class = GameFinalFantasyMysticQuest_ShrineOfLightData;
      
      public const SngShrineOfLight:Song = addSong(this.ShrineOfLightData,-1,null,this.VOLUME);
      
      private const RockThemeData:Class = GameFinalFantasyMysticQuest_RockThemeData;
      
      public const SngRockTheme:Song = addSong(this.RockThemeData,-1,null,this.VOLUME);
      
      private const FanfareOfFriendshipData:Class = GameFinalFantasyMysticQuest_FanfareOfFriendshipData;
      
      public const SngFanfareOfFriendship:Song = addSong(this.FanfareOfFriendshipData,-1,null,this.VOLUME);
      
      private const DungeonOfIceData:Class = GameFinalFantasyMysticQuest_DungeonOfIceData;
      
      public const SngDungeonOfIce:Song = addSong(this.DungeonOfIceData,-1,null,this.VOLUME);
      
      private const CityOfFireData:Class = GameFinalFantasyMysticQuest_CityOfFireData;
      
      public const SngCityOfFire:Song = addSong(this.CityOfFireData,-1,null,this.VOLUME);
      
      private const LavaDomeData:Class = GameFinalFantasyMysticQuest_LavaDomeData;
      
      public const SngLavaDome:Song = addSong(this.LavaDomeData,-1,null,this.VOLUME);
      
      private const MountainRangeData:Class = GameFinalFantasyMysticQuest_MountainRangeData;
      
      public const SngMountainRange:Song = addSong(this.MountainRangeData,-1,null,this.VOLUME);
      
      private const LastCastleData:Class = GameFinalFantasyMysticQuest_LastCastleData;
      
      public const SngLastCastle:Song = addSong(this.LastCastleData,-1,null,this.VOLUME);
      
      private const EndingData:Class = GameFinalFantasyMysticQuest_EndingData;
      
      public const SngEnding:Song = addSong(this.EndingData,-1,null,this.VOLUME);
      
      public function GameFinalFantasyMysticQuest(param1:int, param2:int = -1)
      {
         super("Final Fantasy Mystic Quest","Square-Enix",Consoles.superNintendo,param1,"FF: Mystic Quest",param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngMiddleTower);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngBattle1);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngCityOfFire);
         addToTypePlayList(LT_INTRO,this.SngWorld);
         addToTypePlayList(LT_NORMAL,this.SngMysticQuest);
         addToTypePlayList(LT_PIPE_BONUS,this.SngCityOfForest);
         addToTypePlayList(LT_PLATFORM,this.SngMountainRange);
         addToTypePlayList(LT_UNDER_GROUND,this.SngDungeonOfIce);
         addToTypePlayList(LT_WATER,this.SngShrineOfLight);
         addToTypePlayList(MT_DARK_EPIC,this.SngLavaDome);
         addToTypePlayList(BOSS,this.SngBattle2);
         addToTypePlayList(CHAR_SEL,this.SngWorld);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngFanfareOfFriendship);
         addToTypePlayList(CREDITS,this.SngEnding);
         addToTypePlayList(DIE,null);
         addToTypePlayList(FINAL_BOSS,this.SngLastCastle);
         addToTypePlayList(GAME_OVER,this.SngBeautifulForest);
         addToTypePlayList(HURRY,this.SngHillOfFate);
         addToTypePlayList(STAR,this.SngRockTheme);
         addToTypePlayList(TITLE_SCREEN,this.SngMysticQuest);
         addToTypePlayList(WIN,this.SngVictoryFanfare);
         addToTypePlayList(WIN_CASTLE,this.SngVictoryFanfare);
      }
   }
}
