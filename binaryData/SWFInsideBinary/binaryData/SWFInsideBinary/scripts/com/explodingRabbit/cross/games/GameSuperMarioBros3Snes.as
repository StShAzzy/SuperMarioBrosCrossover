package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.data.MapPack;
   import com.smbc.errors.SingletonError;
   import com.smbc.graphics.ThemeGroup;
   
   public class GameSuperMarioBros3Snes extends Game
   {
      
      private static var instance:Game;
       
      
      private const TG_BLOCKS:ThemeGroup = addThemeGroup(1,1);
      
      private const TG_FOREST:ThemeGroup = addThemeGroup(1,2,MT_DARK_EPIC);
      
      private const TG_FOREST_TREETOPS:ThemeGroup = addThemeGroup(1,3);
      
      private const TG_SNOW_FOREST:ThemeGroup = addThemeGroup(2,1);
      
      private const TG_SNOW_HILLS:ThemeGroup = addThemeGroup(2,2);
      
      private const TG_CAVE:ThemeGroup = addThemeGroup(3,1);
      
      private const TG_CAVE_ICE:ThemeGroup = addThemeGroup(3,2);
      
      private const TG_CAVE_BONUS:ThemeGroup = addThemeGroup(3,3);
      
      private const TG_WATER:ThemeGroup = addThemeGroup(4,1);
      
      private const TG_WATERFALLS_WAVES:ThemeGroup = addThemeGroup(5,1);
      
      private const TG_PIPES:ThemeGroup = addThemeGroup(6,1,MT_DARK_EPIC);
      
      private const TG_PIPES_WATER:ThemeGroup = addThemeGroup(6,2,MT_DARK_EPIC);
      
      private const TG_SKY:ThemeGroup = addThemeGroup(7,1);
      
      private const TG_SKY_HILLS:ThemeGroup = addThemeGroup(7,2);
      
      private const TG_DESERT_PYRAMIDS:ThemeGroup = addThemeGroup(8,1);
      
      private const TG_DESERT_DUNES:ThemeGroup = addThemeGroup(8,2);
      
      private const TG_DESERT_CASTLE:ThemeGroup = addThemeGroup(8,3);
      
      private const TG_TANKS_VOLCANOS:ThemeGroup = addThemeGroup(9,1,MT_DARK_EPIC);
      
      private const TG_CASTLE_WALL:ThemeGroup = addThemeGroup(9,2,MT_DARK_EPIC);
      
      private const TG_FOREST_HILLS:ThemeGroup = addThemeGroup(10,1);
      
      private const TG_NIGHT_HILLS:ThemeGroup = addThemeGroup(10,2,MT_DARK_EPIC);
      
      private const TG_DESERT_HILLS:ThemeGroup = addThemeGroup(10,3);
      
      private const TG_BOWSER_CASTLE:ThemeGroup = addThemeGroup(11,1);
      
      private const TG_BOWSER_CASTLE_WATER:ThemeGroup = addThemeGroup(11,2);
      
      private const TG_BOWSER_CASTLE_FINAL:ThemeGroup = addThemeGroup(11,3);
      
      private const TG_BONUS_BLUE:ThemeGroup = addThemeGroup(12,1);
      
      private const TG_BONUS_GREEN:ThemeGroup = addThemeGroup(12,2);
      
      private const TG_CASTLE_BLUE:ThemeGroup = addThemeGroup(13,1);
      
      private const TG_CASTLE_GRAY:ThemeGroup = addThemeGroup(13,2);
      
      private const TG_CASTLE_WATER:ThemeGroup = addThemeGroup(13,3);
      
      private const TG_CASTLE_ICE:ThemeGroup = addThemeGroup(14,1);
      
      private const TG_BONUS_ICE:ThemeGroup = addThemeGroup(14,2);
      
      private const TG_TANK_INNER:ThemeGroup = addThemeGroup(15,1);
      
      private const VOLUME:int = 80;
      
      private const AirshipData:Class = GameSuperMarioBros3Snes_AirshipData;
      
      public const SngAirship:Song = addSong(this.AirshipData,-1,null,this.VOLUME);
      
      private const AirshipFastData:Class = GameSuperMarioBros3Snes_AirshipFastData;
      
      public const SngAirshipFast:Song = addSong(this.AirshipFastData,-1,null,this.VOLUME);
      
      private const AthleticData:Class = GameSuperMarioBros3Snes_AthleticData;
      
      public const SngAthletic:Song = addSong(this.AthleticData,-1,null,this.VOLUME);
      
      private const AthleticFastData:Class = GameSuperMarioBros3Snes_AthleticFastData;
      
      public const SngAthleticFast:Song = addSong(this.AthleticFastData,-1,null,this.VOLUME);
      
      private const BonusGameData:Class = GameSuperMarioBros3Snes_BonusGameData;
      
      public const SngBonusGame:Song = addSong(this.BonusGameData,-1,null,this.VOLUME);
      
      private const BonusWinData:Class = GameSuperMarioBros3Snes_BonusWinData;
      
      public const SngBonusWin:Song = addSong(this.BonusWinData,-1,null,this.VOLUME);
      
      private const BossData:Class = GameSuperMarioBros3Snes_BossData;
      
      public const SngBoss:Song = addSong(this.BossData,-1,null,this.VOLUME);
      
      private const BossFastData:Class = GameSuperMarioBros3Snes_BossFastData;
      
      public const SngBossFast:Song = addSong(this.BossFastData,-1,null,this.VOLUME);
      
      private const CourseClearData:Class = GameSuperMarioBros3Snes_CourseClearData;
      
      public const SngCourseClear:Song = addSong(this.CourseClearData,-1,null,this.VOLUME);
      
      private const EndingData:Class = GameSuperMarioBros3Snes_EndingData;
      
      public const SngEnding:Song = addSong(this.EndingData,-1,null,this.VOLUME);
      
      private const FortressData:Class = GameSuperMarioBros3Snes_FortressData;
      
      public const SngFortress:Song = addSong(this.FortressData,-1,null,this.VOLUME);
      
      private const FortressFastData:Class = GameSuperMarioBros3Snes_FortressFastData;
      
      public const SngFortressFast:Song = addSong(this.FortressFastData,-1,null,this.VOLUME);
      
      private const GameOverData:Class = GameSuperMarioBros3Snes_GameOverData;
      
      public const SngGameOver:Song = addSong(this.GameOverData,-1,null,this.VOLUME);
      
      private const GrassLandData:Class = GameSuperMarioBros3Snes_GrassLandData;
      
      public const SngGrassLand:Song = addSong(this.GrassLandData,-1,null,this.VOLUME);
      
      private const InTheCloudsData:Class = GameSuperMarioBros3Snes_InTheCloudsData;
      
      public const SngInTheClouds:Song = addSong(this.InTheCloudsData,-1,null,this.VOLUME);
      
      private const InTheCloudsFastData:Class = GameSuperMarioBros3Snes_InTheCloudsFastData;
      
      public const SngInTheCloudsFast:Song = addSong(this.InTheCloudsFastData,-1,null,this.VOLUME);
      
      private const InvincibleData:Class = GameSuperMarioBros3Snes_InvincibleData;
      
      public const SngInvincible:Song = addSong(this.InvincibleData,-1,null,this.VOLUME);
      
      private const InvincibleFastData:Class = GameSuperMarioBros3Snes_InvincibleFastData;
      
      public const SngInvincibleFast:Song = addSong(this.InvincibleFastData,-1,null,this.VOLUME);
      
      private const PlayerDownData:Class = GameSuperMarioBros3Snes_PlayerDownData;
      
      public const SngPlayerDown:Song = addSong(this.PlayerDownData,-1,null,this.VOLUME);
      
      private const SwimmingData:Class = GameSuperMarioBros3Snes_SwimmingData;
      
      public const SngSwimming:Song = addSong(this.SwimmingData,-1,null,this.VOLUME);
      
      private const SwimmingFastData:Class = GameSuperMarioBros3Snes_SwimmingFastData;
      
      public const SngSwimmingFast:Song = addSong(this.SwimmingFastData,-1,null,this.VOLUME);
      
      private const TitleData:Class = GameSuperMarioBros3Snes_TitleData;
      
      public const SngTitle:Song = addSong(this.TitleData,-1,null,this.VOLUME);
      
      private const TheEvilKingBowserData:Class = GameSuperMarioBros3Snes_TheEvilKingBowserData;
      
      public const SngTheEvilKingBowser:Song = addSong(this.TheEvilKingBowserData,-1,null,this.VOLUME);
      
      private const TheEvilKingBowserFastData:Class = GameSuperMarioBros3Snes_TheEvilKingBowserFastData;
      
      public const SngTheEvilKingBowserFast:Song = addSong(this.TheEvilKingBowserFastData,-1,null,this.VOLUME);
      
      private const WorldClearData:Class = GameSuperMarioBros3Snes_WorldClearData;
      
      public const SngWorldClear:Song = addSong(this.WorldClearData,-1,null,this.VOLUME);
      
      private const OverworldData:Class = GameSuperMarioBros3Snes_OverworldData;
      
      public const SngOverworld:Song = addSong(this.OverworldData,-1,null,this.VOLUME);
      
      private const OverworldFastData:Class = GameSuperMarioBros3Snes_OverworldFastData;
      
      public const SngOverworldFast:Song = addSong(this.OverworldFastData,-1,null,this.VOLUME);
      
      private const UnderworldData:Class = GameSuperMarioBros3Snes_UnderworldData;
      
      public const SngUnderworld:Song = addSong(this.UnderworldData,-1,null,this.VOLUME);
      
      private const UnderworldFastData:Class = GameSuperMarioBros3Snes_UnderworldFastData;
      
      public const SngUnderworldFast:Song = addSong(this.UnderworldFastData,-1,null,this.VOLUME);
      
      public function GameSuperMarioBros3Snes(param1:int, param2:int = -1)
      {
         super("Super Mario Bros. 3 SNES","Nintendo",Consoles.superNintendo,param1,"SMB3 (SNES)",param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override public function initiate() : void
      {
         super.initiate();
         creditsGame = Games.superMarioAllStars;
      }
      
      override protected function setUpLevelThemes() : void
      {
         addToThemeInfoGeneral(this.TG_BLOCKS,LT_NORMAL,LT_INTRO);
         addToThemeInfoGeneral(this.TG_CAVE,LT_UNDER_GROUND);
         addToThemeInfoGeneral(this.TG_FOREST_HILLS,LT_PLATFORM);
         addToThemeInfoGeneral(this.TG_CASTLE_BLUE,LT_CASTLE);
         addToThemeInfoGeneral(this.TG_SKY,LT_COIN_HEAVEN);
         addToThemeInfoGeneral(this.TG_WATERFALLS_WAVES,LT_CHEEP_CHEEP);
         addToThemeInfoGeneral(this.TG_WATER,LT_WATER);
         addToThemeInfoGeneral(this.TG_BONUS_BLUE,LT_PIPE_BONUS);
         addToThemeInfoGeneral(this.TG_CAVE_BONUS,"1-2c","4-2d");
         addToThemeInfoGeneral(this.TG_BONUS_ICE,"4-1b");
         addToThemeInfoGeneral(this.TG_DESERT_HILLS,"3-2a");
         addToThemeInfoGeneral(this.TG_TANKS_VOLCANOS,"8-2a");
         addToThemeInfoGeneral(this.TG_CASTLE_WALL,"8-3a");
         addToThemeInfoGeneral(this.TG_BOWSER_CASTLE_FINAL,"8-4c");
         addToThemeInfoWorld(2,this.TG_WATERFALLS_WAVES,LT_NORMAL,LT_INTRO);
         addToThemeInfoWorld(2,this.TG_BONUS_GREEN,LT_PIPE_BONUS);
         addToThemeInfoWorld(2,this.TG_CASTLE_WATER,LT_CASTLE);
         addToThemeInfoWorld(3,this.TG_DESERT_PYRAMIDS,LT_NORMAL);
         addToThemeInfoWorld(3,this.TG_DESERT_DUNES,LT_PLATFORM);
         addToThemeInfoWorld(3,this.TG_SKY,LT_COIN_HEAVEN);
         addToThemeInfoWorld(3,this.TG_DESERT_CASTLE,LT_CASTLE);
         addToThemeInfoWorld(4,this.TG_SNOW_FOREST,LT_NORMAL,LT_INTRO);
         addToThemeInfoWorld(4,this.TG_SNOW_HILLS,LT_PLATFORM);
         addToThemeInfoWorld(4,this.TG_CAVE_ICE,LT_UNDER_GROUND);
         addToThemeInfoWorld(4,this.TG_CASTLE_ICE,LT_CASTLE);
         addToThemeInfoWorld(5,this.TG_FOREST,LT_NORMAL);
         addToThemeInfoWorld(5,this.TG_FOREST_TREETOPS,LT_PLATFORM);
         addToThemeInfoWorld(6,this.TG_PIPES,LT_NORMAL,LT_PLATFORM);
         addToThemeInfoWorld(6,this.TG_BONUS_GREEN,LT_PIPE_BONUS);
         addToThemeInfoWorld(6,this.TG_CASTLE_GRAY,LT_CASTLE);
         addToThemeInfoWorld(7,this.TG_SKY,LT_NORMAL,LT_INTRO);
         addToThemeInfoWorld(7,this.TG_SKY_HILLS,LT_CHEEP_CHEEP);
         addToThemeInfoWorld(7,this.TG_BONUS_GREEN,LT_PIPE_BONUS);
         addToThemeInfoWorld(7,this.TG_CASTLE_GRAY,LT_CASTLE);
         addToThemeInfoWorld(8,this.TG_NIGHT_HILLS,LT_NORMAL);
         addToThemeInfoWorld(8,this.TG_BOWSER_CASTLE,LT_CASTLE);
         addToThemeInfoWorld(8,this.TG_BOWSER_CASTLE_WATER,LT_WATER);
         themeMapPack = MapPack.Special;
         addToThemeInfoGeneral(this.TG_CAVE_BONUS,"1-2c","4-2d");
         addToThemeInfoGeneral(this.TG_BONUS_ICE,"4-3b");
         addToThemeInfoGeneral(this.TG_FOREST_HILLS,"1-2d");
         addToThemeInfoGeneral(this.TG_DESERT_PYRAMIDS,"3-2a");
         addToThemeInfoGeneral(this.TG_DESERT_HILLS,"3-2b");
         addToThemeInfoGeneral(this.TG_PIPES_WATER,"6-2c");
         addToThemeInfoGeneral(this.TG_NIGHT_HILLS,"8-1a","8-2a");
         addToThemeInfoGeneral(this.TG_WATER,"8-2b");
         addToThemeInfoGeneral(this.TG_CASTLE_WALL,"8-2c");
         addToThemeInfoGeneral(this.TG_TANK_INNER,"8-3b");
         addToThemeInfoGeneral(this.TG_TANKS_VOLCANOS,"8-3c");
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngFortress);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngAthletic);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngInTheClouds);
         addToTypePlayList(LT_INTRO,this.SngBonusGame);
         addToTypePlayList(LT_NORMAL,this.SngOverworld);
         addToTypePlayList(LT_PIPE_BONUS,this.SngUnderworld);
         addToTypePlayList(LT_PLATFORM,this.SngAthletic);
         addToTypePlayList(LT_UNDER_GROUND,this.SngUnderworld);
         addToTypePlayList(LT_WATER,this.SngSwimming);
         addToTypePlayList(MT_DARK_EPIC,this.SngUnderworld);
         addToTypePlayList(BOSS,this.SngBoss);
         addToTypePlayList(CHAR_SEL,this.SngGrassLand);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngBonusWin);
         addToTypePlayList(CREDITS,this.SngEnding);
         addToTypePlayList(DIE,this.SngPlayerDown);
         addToTypePlayList(FINAL_BOSS,this.SngTheEvilKingBowser);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngOverworldFast);
         addToTypePlayList(STAR,this.SngInvincible);
         addToTypePlayList(TITLE_SCREEN,this.SngTitle);
         addToTypePlayList(WIN,this.SngCourseClear);
         addToTypePlayList(WIN_CASTLE,this.SngWorldClear);
         addHurryVersionOfSong(this.SngAirship,this.SngAirshipFast);
         addHurryVersionOfSong(this.SngAthletic,this.SngAthleticFast);
         addHurryVersionOfSong(this.SngBoss,this.SngBossFast);
         addHurryVersionOfSong(this.SngTheEvilKingBowser,this.SngTheEvilKingBowserFast);
         addHurryVersionOfSong(this.SngFortress,this.SngFortressFast);
         addHurryVersionOfSong(this.SngInTheClouds,this.SngInTheCloudsFast);
         addHurryVersionOfSong(this.SngInvincible,this.SngInvincibleFast);
         addHurryVersionOfSong(this.SngOverworld,this.SngOverworldFast);
         addHurryVersionOfSong(this.SngSwimming,this.SngSwimmingFast);
         addHurryVersionOfSong(this.SngUnderworld,this.SngUnderworldFast);
         addToThemePlayList(this.TG_TANKS_VOLCANOS,this.SngAirship,[LT_NORMAL]);
         addToThemePlayList(this.TG_CASTLE_WALL,this.SngAirship,[LT_NORMAL]);
         addToThemePlayList(this.TG_PIPES,this.SngUnderworld,[LT_NORMAL,LT_PLATFORM]);
         addToThemePlayList(this.TG_FOREST,this.SngUnderworld,[LT_NORMAL,LT_INTRO]);
         addToThemePlayList(this.TG_FOREST_TREETOPS,this.SngUnderworld,[LT_COIN_HEAVEN]);
         addToThemePlayList(this.TG_NIGHT_HILLS,this.SngUnderworld,[LT_NORMAL,LT_PLATFORM]);
         addToThemePlayList(this.TG_BOWSER_CASTLE_WATER,this.SngFortress,[LT_WATER]);
      }
   }
}
