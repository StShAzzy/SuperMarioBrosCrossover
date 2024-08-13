package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.data.MapPack;
   import com.smbc.errors.SingletonError;
   import com.smbc.graphics.ThemeGroup;
   
   public class GameSuperMarioWorld extends Game
   {
      
      private static var instance:Game;
       
      
      private const TG_BLUE_MOUNTAINS:ThemeGroup = addThemeGroup(1,1);
      
      private const TG_CLIFFS_GREEN:ThemeGroup = addThemeGroup(1,2);
      
      private const TG_HILLS_GREEN:ThemeGroup = addThemeGroup(1,3);
      
      private const TG_CLIFFS_WHITE:ThemeGroup = addThemeGroup(1,4);
      
      private const TG_TREES_AND_STARS:ThemeGroup = addThemeGroup(1,5,MT_DARK_EPIC);
      
      private const TG_CLIFFS_CHOCOLATE:ThemeGroup = addThemeGroup(1,6);
      
      private const TG_CLIFFS_CHOCOLATE_SPIRAL:ThemeGroup = addThemeGroup(1,7);
      
      private const TG_CLIFFS_WHITE_SPIRAL:ThemeGroup = addThemeGroup(1,8);
      
      private const TG_HILLS_DARK_LOW:ThemeGroup = addThemeGroup(1,9,MT_DARK_EPIC);
      
      private const TG_HILLS_DARK:ThemeGroup = addThemeGroup(1,10,MT_DARK_EPIC);
      
      private const TG_HILLS_DARK_TALL:ThemeGroup = addThemeGroup(1,11,MT_DARK_EPIC);
      
      private const TG_HILLS_DARK_BLACK_SKY:ThemeGroup = addThemeGroup(1,12,MT_DARK_EPIC);
      
      private const TG_HILLS_DARK_TALL_DARK_SKY:ThemeGroup = addThemeGroup(1,13,MT_DARK_EPIC);
      
      private const TG_GREEN_GROUND_CLOUDS:ThemeGroup = addThemeGroup(1,14);
      
      private const TG_HILLS_LIGHT_GREEN:ThemeGroup = addThemeGroup(1,15);
      
      private const TG_CAVE_BROWN:ThemeGroup = addThemeGroup(2,1);
      
      private const TG_CAVE_GRAY:ThemeGroup = addThemeGroup(2,2);
      
      private const TG_CAVE_ICE:ThemeGroup = addThemeGroup(2,3);
      
      private const TG_WATER:ThemeGroup = addThemeGroup(2,4);
      
      private const TG_CAVE_BROWN_DARK:ThemeGroup = addThemeGroup(2,5);
      
      private const TG_FOREST_GREEN:ThemeGroup = addThemeGroup(3,1);
      
      private const TG_FOREST_GRAY:ThemeGroup = addThemeGroup(3,2);
      
      private const TG_FOREST_CYAN:ThemeGroup = addThemeGroup(3,3);
      
      private const TG_FOREST_GRAY_UNDERGROUND:ThemeGroup = addThemeGroup(3,4);
      
      private const TG_GHOST_HOUSE_BROWN_DARK:ThemeGroup = addThemeGroup(4,1,MT_DARK_EPIC);
      
      private const TG_GHOST_HOUSE_BROWN_BLACK:ThemeGroup = addThemeGroup(4,2,MT_DARK_EPIC);
      
      private const TG_GHOST_HOUSE_DARK:ThemeGroup = addThemeGroup(4,3,MT_DARK_EPIC);
      
      private const TG_GHOST_HOUSE_WATER:ThemeGroup = addThemeGroup(4,4,MT_DARK_EPIC);
      
      private const TG_CASTLE_GRAY_PILLARS:ThemeGroup = addThemeGroup(5,1);
      
      private const TG_CASTLE_GRAY_BLACK:ThemeGroup = addThemeGroup(5,2);
      
      private const TG_CASTLE_GRAY_DARK:ThemeGroup = addThemeGroup(5,3);
      
      private const TG_CASTLE_WHITE_PILLARS:ThemeGroup = addThemeGroup(5,4);
      
      private const TG_CASTLE_BROWN_BLACK:ThemeGroup = addThemeGroup(5,5);
      
      private const TG_CASTLE_BROWN_DARK:ThemeGroup = addThemeGroup(5,6);
      
      private const TG_CASTLE_DARK:ThemeGroup = addThemeGroup(5,7);
      
      private const TG_CASTLE_WATER:ThemeGroup = addThemeGroup(5,8);
      
      private const TG_BONUS:ThemeGroup = addThemeGroup(6,1);
      
      private const TG_SKY_PEACH:ThemeGroup = addThemeGroup(7,1);
      
      private const TG_SKY_STARS:ThemeGroup = addThemeGroup(7,2);
      
      private const TG_SKY_BLUE:ThemeGroup = addThemeGroup(7,3);
      
      private const TG_ICE_CLIFFS:ThemeGroup = addThemeGroup(8,1);
      
      private const TG_ICE_CLIFFS_SPIRAL:ThemeGroup = addThemeGroup(8,2);
      
      private const VOLUME:int = 100;
      
      private const BonusData:Class = GameSuperMarioWorld_BonusData;
      
      public const SngBonus:Song = addSong(this.BonusData,-1,null,this.VOLUME);
      
      private const BonusFastData:Class = GameSuperMarioWorld_BonusFastData;
      
      public const SngBonusFast:Song = addSong(this.BonusFastData,-1,null,this.VOLUME);
      
      private const CastleData:Class = GameSuperMarioWorld_CastleData;
      
      public const SngCastle:Song = addSong(this.CastleData,-1,null,this.VOLUME);
      
      private const CastleFastData:Class = GameSuperMarioWorld_CastleFastData;
      
      public const SngCastleFast:Song = addSong(this.CastleFastData,-1,null,this.VOLUME);
      
      private const GameSelect:Class = GameSuperMarioWorld_GameSelect;
      
      public const SngGameSelect:Song = addSong(this.GameSelect,-1,null,this.VOLUME + 20);
      
      private const CourseClear:Class = GameSuperMarioWorld_CourseClear;
      
      public const SngCourseClear:Song = addSong(this.CourseClear,-1,null,this.VOLUME);
      
      private const BossData:Class = GameSuperMarioWorld_BossData;
      
      public const SngBoss:Song = addSong(this.BossData,-1,null,this.VOLUME);
      
      private const BossFastData:Class = GameSuperMarioWorld_BossFastData;
      
      public const SngBossFast:Song = addSong(this.BossFastData,-1,null,this.VOLUME);
      
      private const KingBowserData:Class = GameSuperMarioWorld_KingBowserData;
      
      public const SngKingBowser:Song = addSong(this.KingBowserData,-1,null,this.VOLUME);
      
      private const KingBowserFastData:Class = GameSuperMarioWorld_KingBowserFastData;
      
      public const SngKingBowserFast:Song = addSong(this.KingBowserFastData,-1,null,this.VOLUME);
      
      private const IntroLevelData:Class = GameSuperMarioWorld_IntroLevelData;
      
      public const SngIntroLevel:Song = addSong(this.IntroLevelData,-1,null,this.VOLUME);
      
      private const GameOverData:Class = GameSuperMarioWorld_GameOverData;
      
      public const SngGameOver:Song = addSong(this.GameOverData,-1,null,this.VOLUME);
      
      private const OverworldData:Class = GameSuperMarioWorld_OverworldData;
      
      public const SngOverworld:Song = addSong(this.OverworldData,-1,null,this.VOLUME);
      
      private const OverworldFastData:Class = GameSuperMarioWorld_OverworldFastData;
      
      public const SngOverworldFast:Song = addSong(this.OverworldFastData,-1,null,this.VOLUME);
      
      private const OverworldYoshiData:Class = GameSuperMarioWorld_OverworldYoshiData;
      
      public const SngOverworldYoshi:Song = addSong(this.OverworldYoshiData,-1,null,this.VOLUME);
      
      private const OverworldYoshiFastData:Class = GameSuperMarioWorld_OverworldYoshiFastData;
      
      public const SngOverworldYoshiFast:Song = addSong(this.OverworldYoshiFastData,-1,null,this.VOLUME);
      
      private const AthleticData:Class = GameSuperMarioWorld_AthleticData;
      
      public const SngAthletic:Song = addSong(this.AthleticData,-1,null,this.VOLUME);
      
      private const AthleticFastData:Class = GameSuperMarioWorld_AthleticFastData;
      
      public const SngAthleticFast:Song = addSong(this.AthleticFastData,-1,null,this.VOLUME);
      
      private const GhostHouseData:Class = GameSuperMarioWorld_GhostHouseData;
      
      public const SngGhostHouse:Song = addSong(this.GhostHouseData,-1,null,this.VOLUME);
      
      private const GhostHouseFastData:Class = GameSuperMarioWorld_GhostHouseFastData;
      
      public const SngGhostHouseFast:Song = addSong(this.GhostHouseFastData,-1,null,this.VOLUME);
      
      private const DieData:Class = GameSuperMarioWorld_DieData;
      
      public const SngDie:Song = addSong(this.DieData,-1,null,this.VOLUME);
      
      private const WaterData:Class = GameSuperMarioWorld_WaterData;
      
      public const SngWater:Song = addSong(this.WaterData,-1,null,this.VOLUME);
      
      private const WaterFastData:Class = GameSuperMarioWorld_WaterFastData;
      
      public const SngWaterFast:Song = addSong(this.WaterFastData,-1,null,this.VOLUME);
      
      private const WinCastleData:Class = GameSuperMarioWorld_WinCastleData;
      
      public const SngWinCastle:Song = addSong(this.WinCastleData,-1,null,this.VOLUME);
      
      private const UnderGroundData:Class = GameSuperMarioWorld_UnderGroundData;
      
      public const SngUnderground:Song = addSong(this.UnderGroundData,-1,null,this.VOLUME + 20);
      
      private const UnderGroundFastData:Class = GameSuperMarioWorld_UnderGroundFastData;
      
      public const SngUnderGroundFast:Song = addSong(this.UnderGroundFastData,-1,null,this.VOLUME + 20);
      
      private const TitleData:Class = GameSuperMarioWorld_TitleData;
      
      public const SngTitle:Song = addSong(this.TitleData,-1,null,this.VOLUME);
      
      private const Invincible:Class = GameSuperMarioWorld_Invincible;
      
      public const SngInvincible:Song = addSong(this.Invincible,-1,null,this.VOLUME);
      
      private const InvincibleFastData:Class = GameSuperMarioWorld_InvincibleFastData;
      
      public const SngInvincibleFast:Song = addSong(this.InvincibleFastData,-1,null,this.VOLUME);
      
      private const EndingData:Class = GameSuperMarioWorld_EndingData;
      
      public const SngEnding:Song = addSong(this.EndingData,-1,null,this.VOLUME);
      
      public function GameSuperMarioWorld(param1:int, param2:int)
      {
         super("Super Mario World","Nintendo",Consoles.superNintendo,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override public function initiate() : void
      {
         super.initiate();
         creditsGame = Games.superMarioWorld;
      }
      
      override protected function setUpLevelThemes() : void
      {
         addToThemeInfoGeneral(this.TG_BLUE_MOUNTAINS,LT_NORMAL,LT_INTRO);
         addToThemeInfoGeneral(this.TG_CAVE_BROWN,LT_UNDER_GROUND);
         addToThemeInfoGeneral(this.TG_CLIFFS_GREEN,LT_PLATFORM);
         addToThemeInfoGeneral(this.TG_CASTLE_GRAY_PILLARS,LT_CASTLE);
         addToThemeInfoGeneral(this.TG_SKY_PEACH,LT_COIN_HEAVEN);
         addToThemeInfoGeneral(this.TG_CLIFFS_WHITE,LT_CHEEP_CHEEP);
         addToThemeInfoGeneral(this.TG_WATER,LT_WATER);
         addToThemeInfoGeneral(this.TG_BONUS,LT_PIPE_BONUS);
         addToThemeInfoWorld(2,this.TG_HILLS_GREEN,LT_NORMAL,LT_INTRO);
         addToThemeInfoWorld(2,this.TG_CASTLE_GRAY_BLACK,LT_CASTLE);
         addToThemeInfoWorld(3,this.TG_CAVE_BROWN_DARK,LT_NORMAL);
         addToThemeInfoWorld(3,this.TG_SKY_STARS,LT_COIN_HEAVEN);
         addToThemeInfoWorld(3,this.TG_TREES_AND_STARS,LT_PLATFORM);
         addToThemeInfoWorld(3,this.TG_CASTLE_GRAY_DARK,LT_CASTLE);
         addToThemeInfoWorld(4,this.TG_ICE_CLIFFS,LT_NORMAL,LT_INTRO);
         addToThemeInfoWorld(4,this.TG_CAVE_ICE,LT_UNDER_GROUND);
         addToThemeInfoWorld(4,this.TG_ICE_CLIFFS_SPIRAL,LT_PLATFORM);
         addToThemeInfoWorld(4,this.TG_CASTLE_WHITE_PILLARS,LT_CASTLE);
         addToThemeInfoWorld(5,this.TG_FOREST_GREEN,LT_NORMAL);
         addToThemeInfoWorld(5,this.TG_FOREST_CYAN,LT_PLATFORM);
         addToThemeInfoWorld(5,this.TG_CASTLE_BROWN_BLACK,LT_CASTLE);
         addToThemeInfoWorld(6,this.TG_CLIFFS_CHOCOLATE,LT_NORMAL);
         addToThemeInfoWorld(6,this.TG_SKY_BLUE,LT_COIN_HEAVEN);
         addToThemeInfoWorld(6,this.TG_CLIFFS_WHITE_SPIRAL,LT_PLATFORM);
         addToThemeInfoWorld(6,this.TG_CASTLE_BROWN_DARK,LT_CASTLE);
         addToThemeInfoWorld(7,this.TG_GHOST_HOUSE_BROWN_DARK,LT_NORMAL,LT_INTRO,LT_PIPE_BONUS);
         addToThemeInfoWorld(7,this.TG_GHOST_HOUSE_WATER,LT_WATER);
         addToThemeInfoWorld(7,this.TG_GHOST_HOUSE_BROWN_BLACK,LT_CHEEP_CHEEP,LT_PLATFORM);
         addToThemeInfoWorld(7,this.TG_GHOST_HOUSE_DARK,LT_CASTLE);
         addToThemeInfoWorld(8,this.TG_HILLS_DARK_LOW,LT_NORMAL);
         addToThemeInfoWorld(8,this.TG_CASTLE_DARK,LT_CASTLE);
         addToThemeInfoWorld(8,this.TG_CASTLE_WATER,LT_WATER);
         addToThemeInfoGeneral(this.TG_CAVE_GRAY,"3-2a");
         addToThemeInfoGeneral(this.TG_FOREST_GRAY,"5-2a");
         addToThemeInfoGeneral(this.TG_CLIFFS_CHOCOLATE_SPIRAL,"6-2a");
         addToThemeInfoGeneral(this.TG_HILLS_DARK,"8-2a");
         addToThemeInfoGeneral(this.TG_HILLS_DARK_TALL,"8-3a");
         themeMapPack = MapPack.Special;
         addToThemeInfoGeneral(this.TG_CLIFFS_WHITE,"3-1a");
         addToThemeInfoGeneral(this.TG_CAVE_BROWN_DARK,"3-1c");
         addToThemeInfoGeneral(this.TG_CAVE_GRAY,"3-2a");
         addToThemeInfoGeneral(this.TG_GREEN_GROUND_CLOUDS,"3-2b");
         addToThemeInfoGeneral(this.TG_CLIFFS_CHOCOLATE_SPIRAL,"6-2d");
         addToThemeInfoGeneral(this.TG_HILLS_DARK_LOW,"8-1a","8-2a");
         addToThemeInfoGeneral(this.TG_WATER,"8-2b");
         addToThemeInfoGeneral(this.TG_HILLS_DARK_TALL_DARK_SKY,"8-2c","8-3a");
         addToThemeInfoGeneral(this.TG_HILLS_DARK_BLACK_SKY,"8-3c");
         themeMapPack = MapPack.LostLevels;
         addToThemeInfoWorld(9,this.TG_GHOST_HOUSE_WATER,LT_WATER);
         addToThemeInfoWorld(10,this.TG_ICE_CLIFFS,LT_NORMAL,LT_INTRO);
         addToThemeInfoWorld(10,this.TG_SKY_BLUE,LT_COIN_HEAVEN);
         addToThemeInfoWorld(10,this.TG_CAVE_ICE,LT_UNDER_GROUND);
         addToThemeInfoWorld(10,this.TG_ICE_CLIFFS_SPIRAL,LT_PLATFORM);
         addToThemeInfoWorld(10,this.TG_CASTLE_WHITE_PILLARS,LT_CASTLE);
         addToThemeInfoWorld(11,this.TG_FOREST_GREEN,LT_NORMAL);
         addToThemeInfoWorld(11,this.TG_FOREST_CYAN,LT_PLATFORM);
         addToThemeInfoWorld(11,this.TG_CASTLE_BROWN_BLACK,LT_CASTLE);
         addToThemeInfoWorld(12,this.TG_CLIFFS_CHOCOLATE,LT_NORMAL);
         addToThemeInfoWorld(12,this.TG_SKY_BLUE,LT_COIN_HEAVEN);
         addToThemeInfoWorld(12,this.TG_CLIFFS_CHOCOLATE_SPIRAL,LT_CHEEP_CHEEP);
         addToThemeInfoWorld(12,this.TG_CLIFFS_WHITE_SPIRAL,LT_PLATFORM);
         addToThemeInfoWorld(12,this.TG_CASTLE_BROWN_DARK,LT_CASTLE);
         addToThemeInfoWorld(13,this.TG_HILLS_DARK_LOW,LT_NORMAL);
         addToThemeInfoWorld(13,this.TG_SKY_STARS,LT_COIN_HEAVEN);
         addToThemeInfoWorld(13,this.TG_CASTLE_DARK,LT_CASTLE);
         addToThemeInfoGeneral(this.TG_HILLS_LIGHT_GREEN,"2-2a");
         addToThemeInfoGeneral(this.TG_CAVE_BROWN_DARK,"3-1a");
         addToThemeInfoGeneral(this.TG_SKY_STARS,"3-1c","8-3b");
         addToThemeInfoGeneral(this.TG_TREES_AND_STARS,"3-2c","8-2b","8-3a");
         addToThemeInfoGeneral(this.TG_SKY_BLUE,"4-1c");
         addToThemeInfoGeneral(this.TG_FOREST_GRAY_UNDERGROUND,"5-2b");
         addToThemeInfoGeneral(this.TG_FOREST_GRAY,"5-2c","5-2d");
         addToThemeInfoGeneral(this.TG_CLIFFS_CHOCOLATE_SPIRAL,"6-2a","6-2c");
         addToThemeInfoGeneral(this.TG_CLIFFS_WHITE_SPIRAL,"6-3a");
         addToThemeInfoGeneral(this.TG_WATER,"8-1b");
         addToThemeInfoGeneral(this.TG_HILLS_DARK_LOW,"8-1c");
         addToThemeInfoGeneral(this.TG_HILLS_DARK,"8-2a");
         addToThemeInfoGeneral(this.TG_GHOST_HOUSE_DARK,"9-3a");
         addToThemeInfoGeneral(this.TG_GHOST_HOUSE_BROWN_DARK,"9-3b");
         addToThemeInfoGeneral(this.TG_FOREST_GRAY,"11-2a","11-2c");
         addToThemeInfoGeneral(this.TG_FOREST_CYAN,"11-4b");
         addToThemeInfoGeneral(this.TG_HILLS_DARK,"13-2a");
         addToThemeInfoGeneral(this.TG_HILLS_DARK_TALL,"13-3a","13-4b");
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL,LT_CHEEP_CHEEP,LT_PLATFORM);
         addToTypePlayList(LT_CASTLE,this.SngCastle);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngAthletic);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngBonus);
         addToTypePlayList(LT_INTRO,this.SngIntroLevel);
         addToTypePlayList(LT_NORMAL,this.SngOverworld);
         addToTypePlayList(LT_PIPE_BONUS,this.SngBonus);
         addToTypePlayList(LT_PLATFORM,this.SngAthletic);
         addToTypePlayList(LT_UNDER_GROUND,this.SngUnderground);
         addToTypePlayList(LT_WATER,this.SngWater);
         addToTypePlayList(MT_DARK_EPIC,this.SngOverworldYoshi);
         addToTypePlayList(BOSS,this.SngBoss);
         addToTypePlayList(CHAR_SEL,this.SngGameSelect);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngIntroLevel);
         addToTypePlayList(CREDITS,this.SngEnding);
         addToTypePlayList(DIE,this.SngDie);
         addToTypePlayList(FINAL_BOSS,this.SngKingBowser);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngAthleticFast);
         addToTypePlayList(STAR,this.SngInvincible);
         addToTypePlayList(TITLE_SCREEN,this.SngTitle);
         addToTypePlayList(WIN,this.SngCourseClear);
         addToTypePlayList(WIN_CASTLE,this.SngWinCastle);
         addHurryVersionOfSong(this.SngBoss,this.SngBossFast);
         addHurryVersionOfSong(this.SngKingBowser,this.SngKingBowserFast);
         addHurryVersionOfSong(this.SngBonus,this.SngBonusFast);
         addHurryVersionOfSong(this.SngInvincible,this.SngInvincibleFast);
         addHurryVersionOfSong(this.SngCastle,this.SngCastleFast);
         addHurryVersionOfSong(this.SngOverworld,this.SngOverworldFast);
         addHurryVersionOfSong(this.SngAthletic,this.SngAthleticFast);
         addHurryVersionOfSong(this.SngUnderground,this.SngUnderGroundFast);
         addHurryVersionOfSong(this.SngWater,this.SngWaterFast);
         addHurryVersionOfSong(this.SngGhostHouse,this.SngGhostHouseFast);
         addHurryVersionOfSong(this.SngOverworldYoshi,this.SngOverworldYoshiFast);
         addToThemePlayList(this.TG_CAVE_BROWN_DARK,this.SngUnderground,[LT_NORMAL]);
         addToThemePlayList(this.TG_CAVE_GRAY,this.SngUnderground,[LT_NORMAL]);
         addToThemePlayList(this.TG_GHOST_HOUSE_BROWN_DARK,this.SngGhostHouse,[LT_NORMAL,LT_INTRO,LT_PIPE_BONUS,LT_COIN_HEAVEN]);
         addToThemePlayList(this.TG_GHOST_HOUSE_WATER,this.SngGhostHouse,[LT_WATER]);
         addToThemePlayList(this.TG_GHOST_HOUSE_BROWN_BLACK,this.SngGhostHouse,[LT_CHEEP_CHEEP]);
         addToThemePlayList(this.TG_GHOST_HOUSE_DARK,this.SngGhostHouse,[LT_CASTLE,LT_NORMAL]);
         addToThemePlayList(this.TG_CASTLE_WATER,this.SngCastle,[LT_WATER]);
      }
   }
}
