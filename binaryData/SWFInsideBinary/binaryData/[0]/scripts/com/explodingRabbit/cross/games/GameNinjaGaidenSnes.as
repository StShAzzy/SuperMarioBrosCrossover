package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameNinjaGaidenSnes extends Game
   {
      
      private static var instance:Game;
       
      
      private const VOLUME:int = 80;
      
      private const ConstructionSiteData:Class = GameNinjaGaidenSnes_ConstructionSiteData;
      
      public const SngConstructionSite:Song = addSong(this.ConstructionSiteData,-1,null,this.VOLUME);
      
      private const DeathData:Class = GameNinjaGaidenSnes_DeathData;
      
      public const SngDeath:Song = addSong(this.DeathData,-1,null,this.VOLUME);
      
      private const UndergroundData:Class = GameNinjaGaidenSnes_UndergroundData;
      
      public const SngUnderground:Song = addSong(this.UndergroundData,-1,null,this.VOLUME);
      
      private const SnowfieldData:Class = GameNinjaGaidenSnes_SnowfieldData;
      
      public const SngSnowfield:Song = addSong(this.SnowfieldData,-1,null,this.VOLUME);
      
      private const WalterSmithThemeData:Class = GameNinjaGaidenSnes_WalterSmithThemeData;
      
      public const SngWalterSmithTheme:Song = addSong(this.WalterSmithThemeData,-1,null,this.VOLUME);
      
      private const IreneLewsThemeData:Class = GameNinjaGaidenSnes_IreneLewsThemeData;
      
      public const SngIreneLewsTheme:Song = addSong(this.IreneLewsThemeData,-1,null,this.VOLUME);
      
      private const PrisonData:Class = GameNinjaGaidenSnes_PrisonData;
      
      public const SngPrison:Song = addSong(this.PrisonData,-1,null,this.VOLUME);
      
      private const MineData:Class = GameNinjaGaidenSnes_MineData;
      
      public const SngMine:Song = addSong(this.MineData,-1,null,this.VOLUME);
      
      private const BossFightData:Class = GameNinjaGaidenSnes_BossFightData;
      
      public const SngBossFight:Song = addSong(this.BossFightData,-1,null,this.VOLUME);
      
      private const ActData:Class = GameNinjaGaidenSnes_ActData;
      
      public const SngAct:Song = addSong(this.ActData,-1,null,this.VOLUME);
      
      private const RunningData:Class = GameNinjaGaidenSnes_RunningData;
      
      public const SngRunning:Song = addSong(this.RunningData,-1,null,this.VOLUME);
      
      private const SunriseData:Class = GameNinjaGaidenSnes_SunriseData;
      
      public const SngSunrise:Song = addSong(this.SunriseData,-1,null,this.VOLUME);
      
      private const AfterHimData:Class = GameNinjaGaidenSnes_AfterHimData;
      
      public const SngAfterHim:Song = addSong(this.AfterHimData,-1,null,this.VOLUME);
      
      private const FostersThemeData:Class = GameNinjaGaidenSnes_FostersThemeData;
      
      public const SngFostersTheme:Song = addSong(this.FostersThemeData,-1,null,this.VOLUME);
      
      private const TheCityData:Class = GameNinjaGaidenSnes_TheCityData;
      
      public const SngTheCity:Song = addSong(this.TheCityData,-1,null,this.VOLUME);
      
      private const OutpostData:Class = GameNinjaGaidenSnes_OutpostData;
      
      public const SngOutpost:Song = addSong(this.OutpostData,-1,null,this.VOLUME);
      
      private const TheLightStatueData:Class = GameNinjaGaidenSnes_TheLightStatueData;
      
      public const SngTheLightStatue:Song = addSong(this.TheLightStatueData,-1,null,this.VOLUME);
      
      private const SorrowData:Class = GameNinjaGaidenSnes_SorrowData;
      
      public const SngSorrow:Song = addSong(this.SorrowData,-1,null,this.VOLUME);
      
      public function GameNinjaGaidenSnes(param1:int, param2:int = -1)
      {
         super("Ninja Gaiden 1 (SNES)","Tecmo",Consoles.superNintendo,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override public function initiate() : void
      {
         super.initiate();
         creditsGame = Games.ninjaGaidenTrilogy;
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngUnderground);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngSnowfield);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngWalterSmithTheme);
         addToTypePlayList(LT_INTRO,this.SngIreneLewsTheme);
         addToTypePlayList(LT_NORMAL,this.SngMine);
         addToTypePlayList(LT_PIPE_BONUS,this.SngFostersTheme);
         addToTypePlayList(LT_PLATFORM,this.SngTheCity);
         addToTypePlayList(LT_UNDER_GROUND,this.SngOutpost);
         addToTypePlayList(LT_WATER,this.SngTheLightStatue);
         addToTypePlayList(MT_DARK_EPIC,this.SngConstructionSite);
         addToTypePlayList(BOSS,this.SngBossFight);
         addToTypePlayList(CHAR_SEL,this.SngPrison);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngAct);
         addToTypePlayList(CREDITS,this.SngSunrise);
         addToTypePlayList(DIE,this.SngDeath);
         addToTypePlayList(FINAL_BOSS,this.SngBossFight);
         addToTypePlayList(GAME_OVER,this.SngDeath);
         addToTypePlayList(HURRY,this.SngRunning);
         addToTypePlayList(STAR,null);
         addToTypePlayList(TITLE_SCREEN,this.SngMine);
         addToTypePlayList(WIN,this.SngAfterHim);
         addToTypePlayList(WIN_CASTLE,this.SngSorrow);
      }
   }
}
