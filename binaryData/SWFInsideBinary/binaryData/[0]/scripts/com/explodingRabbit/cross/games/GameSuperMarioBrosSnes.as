package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.data.MapPack;
   import com.smbc.errors.SingletonError;
   import com.smbc.graphics.ThemeGroup;
   
   public class GameSuperMarioBrosSnes extends Game
   {
      
      private static var instance:Game;
       
      
      private const TG_OVERWORLD_BIG_HILLS:ThemeGroup = addThemeGroup(1,1);
      
      private const TG_OVERWORLD_WATER_FALL:ThemeGroup = addThemeGroup(1,2);
      
      private const TG_OVERWORLD_SMALL_GREEN_HILLS:ThemeGroup = addThemeGroup(1,3);
      
      private const TG_OVERWORLD_GOOMBA_STATUES:ThemeGroup = addThemeGroup(1,4);
      
      private const TG_OVERWORLD_FOREST:ThemeGroup = addThemeGroup(1,5);
      
      private const TG_OVERWORLD_SMALL_BROWN_HILLS:ThemeGroup = addThemeGroup(1,6);
      
      private const TG_OVERWORLD_CASTLE_WALLS:ThemeGroup = addThemeGroup(1,7);
      
      private const TG_OVERWORLD_NIGHT_WITHOUT_TREES:ThemeGroup = addThemeGroup(1,8,MT_DARK_EPIC);
      
      private const TG_OVERWORLD_NIGHT_WITH_TREES:ThemeGroup = addThemeGroup(1,9,MT_DARK_EPIC);
      
      private const TG_OVERWORLD_SKY:ThemeGroup = addThemeGroup(1,10);
      
      private const TG_OVERWORLD_SNOW:ThemeGroup = addThemeGroup(2,1);
      
      private const TG_OVERWORLD_SNOW_NIGHT:ThemeGroup = addThemeGroup(2,2,MT_DARK_EPIC);
      
      private const TG_UNDERGROUND:ThemeGroup = addThemeGroup(3,1);
      
      private const TG_UNDERGROUND_BONUS:ThemeGroup = addThemeGroup(3,2);
      
      private const TG_UNDERGROUND_WATER:ThemeGroup = addThemeGroup(3,3);
      
      private const TG_UNDERGROUND_SCENERY:ThemeGroup = addThemeGroup(3,4);
      
      private const TG_WATER:ThemeGroup = addThemeGroup(4,1);
      
      private const TG_WATER_NIGHT:ThemeGroup = addThemeGroup(4,2);
      
      private const TG_CASTLE:ThemeGroup = addThemeGroup(5,1);
      
      private const TG_CASTLE_WATER:ThemeGroup = addThemeGroup(5,2);
      
      private const TG_CASTLE_BOWSER:ThemeGroup = addThemeGroup(5,3);
      
      private const TG_MUSHROOM_PLATFORMS:ThemeGroup = addThemeGroup(6,1);
      
      private const TG_MUSHROOM_PLATFORMS_OVERWORLD:ThemeGroup = addThemeGroup(6,2);
      
      private const TG_COIN_HEAVEN:ThemeGroup = addThemeGroup(7,1);
      
      private const TG_COIN_HEAVEN_NIGHT:ThemeGroup = addThemeGroup(7,2,MT_DARK_EPIC);
      
      private const TG_CLOUDS:ThemeGroup = addThemeGroup(8,1);
      
      private const TG_CLOUDS_BRIGHT:ThemeGroup = addThemeGroup(8,2);
      
      private const TG_CLOUDS_GOOMBA_STATUES:ThemeGroup = addThemeGroup(8,3);
      
      private const TG_CLOUDS_OVERWORLD:ThemeGroup = addThemeGroup(8,4);
      
      private const TG_OVERWORLD_CASTLE:ThemeGroup = addThemeGroup(9,1);
      
      private const TG_WATER_DARK_GROUND_GREEN:ThemeGroup = addThemeGroup(10,1);
      
      private const TG_WATER_DARK_GROUND_BROWN:ThemeGroup = addThemeGroup(11,1);
      
      private const VOLUME:int = 80;
      
      private const BonusData:Class = GameSuperMarioBrosSnes_BonusData;
      
      public const SngBonus:Song = addSong(this.BonusData,-1,null,this.VOLUME);
      
      private const BonusFastData:Class = GameSuperMarioBrosSnes_BonusFastData;
      
      public const SngBonusFast:Song = addSong(this.BonusFastData,-1,null,this.VOLUME);
      
      private const CastleData:Class = GameSuperMarioBrosSnes_CastleData;
      
      public const SngCastle:Song = addSong(this.CastleData,-1,null,this.VOLUME);
      
      private const CastleFastData:Class = GameSuperMarioBrosSnes_CastleFastData;
      
      public const SngCastleFast:Song = addSong(this.CastleFastData,-1,null,this.VOLUME);
      
      private const GameSelect:Class = GameSuperMarioBrosSnes_GameSelect;
      
      public const SngGameSelect:Song = addSong(this.GameSelect,-1,null,this.VOLUME);
      
      private const CourseClear:Class = GameSuperMarioBrosSnes_CourseClear;
      
      public const SngCourseClear:Song = addSong(this.CourseClear,-1,null,this.VOLUME);
      
      private const KingBowserData:Class = GameSuperMarioBrosSnes_KingBowserData;
      
      public const SngKingBowser:Song = addSong(this.KingBowserData,-1,null,this.VOLUME);
      
      private const KingBowserFastData:Class = GameSuperMarioBrosSnes_KingBowserFastData;
      
      public const SngKingBowserFast:Song = addSong(this.KingBowserFastData,-1,null,this.VOLUME);
      
      private const LastBattleFastData:Class = GameSuperMarioBrosSnes_LastBattleFastData;
      
      public const SngLastBattleFast:Song = addSong(this.LastBattleFastData,-1,null,this.VOLUME);
      
      private const LastBattleData:Class = GameSuperMarioBrosSnes_LastBattleData;
      
      public const SngLastBattle:Song = addSong(this.LastBattleData,-1,null,this.VOLUME);
      
      private const IntroLevelData:Class = GameSuperMarioBrosSnes_IntroLevelData;
      
      public const SngIntroLevel:Song = addSong(this.IntroLevelData,-1,null,this.VOLUME);
      
      private const GameOverData:Class = GameSuperMarioBrosSnes_GameOverData;
      
      public const SngGameOver:Song = addSong(this.GameOverData,-1,null,this.VOLUME);
      
      private const OverworldData:Class = GameSuperMarioBrosSnes_OverworldData;
      
      public const SngOverworld:Song = addSong(this.OverworldData,-1,null,this.VOLUME);
      
      private const OverworldFastData:Class = GameSuperMarioBrosSnes_OverworldFastData;
      
      public const SngOverworldFast:Song = addSong(this.OverworldFastData,-1,null,this.VOLUME);
      
      private const DieData:Class = GameSuperMarioBrosSnes_DieData;
      
      public const SngDie:Song = addSong(this.DieData,-1,null,this.VOLUME);
      
      private const WaterData:Class = GameSuperMarioBrosSnes_WaterData;
      
      public const SngWater:Song = addSong(this.WaterData,-1,null,this.VOLUME);
      
      private const WaterFastData:Class = GameSuperMarioBrosSnes_WaterFastData;
      
      public const SngWaterFast:Song = addSong(this.WaterFastData,-1,null,this.VOLUME);
      
      private const WinCastleData:Class = GameSuperMarioBrosSnes_WinCastleData;
      
      public const SngWinCastle:Song = addSong(this.WinCastleData,-1,null,this.VOLUME);
      
      private const UnderGroundData:Class = GameSuperMarioBrosSnes_UnderGroundData;
      
      public const SngUnderGround:Song = addSong(this.UnderGroundData,-1,null,this.VOLUME);
      
      private const TitleData:Class = GameSuperMarioBrosSnes_TitleData;
      
      public const SngTitle:Song = addSong(this.TitleData,-1,null,this.VOLUME);
      
      private const UndergroundFastData:Class = GameSuperMarioBrosSnes_UndergroundFastData;
      
      public const SngUndergroundFast:Song = addSong(this.UndergroundFastData,-1,null,this.VOLUME);
      
      private const Invincible:Class = GameSuperMarioBrosSnes_Invincible;
      
      public const SngInvincible:Song = addSong(this.Invincible,-1,null,this.VOLUME);
      
      private const InvincibleFastData:Class = GameSuperMarioBrosSnes_InvincibleFastData;
      
      public const SngInvincibleFast:Song = addSong(this.InvincibleFastData,-1,null,this.VOLUME);
      
      private const EndingData:Class = GameSuperMarioBrosSnes_EndingData;
      
      public const SngEnding:Song = addSong(this.EndingData,-1,null,this.VOLUME);
      
      private const TimeUpWarningData:Class = GameSuperMarioBrosSnes_TimeUpWarningData;
      
      public const SngTimeUpWarning:Song = addSong(this.TimeUpWarningData,-1,null,this.VOLUME);
      
      public function GameSuperMarioBrosSnes(param1:int, param2:int)
      {
         super("Super Mario Bros. (SNES)","Nintendo",Consoles.superNintendo,param1,null,param2);
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
         addToThemeInfoGeneral(this.TG_OVERWORLD_BIG_HILLS,LT_NORMAL,LT_INTRO);
         addToThemeInfoGeneral(this.TG_UNDERGROUND,LT_UNDER_GROUND);
         addToThemeInfoGeneral(this.TG_UNDERGROUND_BONUS,LT_PIPE_BONUS);
         addToThemeInfoGeneral(this.TG_COIN_HEAVEN,LT_COIN_HEAVEN);
         addToThemeInfoGeneral(this.TG_CASTLE,LT_CASTLE);
         addToThemeInfoGeneral(this.TG_WATER,LT_WATER);
         addToThemeInfoGeneral(this.TG_OVERWORLD_WATER_FALL,LT_PLATFORM);
         addToThemeInfoGeneral(this.TG_OVERWORLD_GOOMBA_STATUES,LT_CHEEP_CHEEP);
         addToThemeInfoWorld(3,this.TG_COIN_HEAVEN_NIGHT,LT_COIN_HEAVEN);
         addToThemeInfoWorld(3,this.TG_OVERWORLD_SNOW_NIGHT,LT_NORMAL);
         addToThemeInfoWorld(4,this.TG_MUSHROOM_PLATFORMS,LT_PLATFORM);
         addToThemeInfoWorld(5,this.TG_OVERWORLD_SNOW,LT_NORMAL);
         addToThemeInfoWorld(6,this.TG_COIN_HEAVEN_NIGHT,LT_COIN_HEAVEN);
         addToThemeInfoWorld(6,this.TG_OVERWORLD_NIGHT_WITH_TREES,LT_NORMAL);
         addToThemeInfoWorld(7,this.TG_OVERWORLD_SNOW,LT_NORMAL);
         addToThemeInfoWorld(8,this.TG_CASTLE_BOWSER,LT_CASTLE);
         addToThemeInfoWorld(8,this.TG_CASTLE_WATER,LT_WATER);
         addToThemeInfoGeneral(this.TG_OVERWORLD_SMALL_GREEN_HILLS,"2-1a");
         addToThemeInfoGeneral(this.TG_OVERWORLD_NIGHT_WITHOUT_TREES,"3-3a","6-3a");
         addToThemeInfoGeneral(this.TG_MUSHROOM_PLATFORMS_OVERWORLD,"4-1a","4-2e");
         addToThemeInfoGeneral(this.TG_COIN_HEAVEN_NIGHT,"6-2d");
         addToThemeInfoGeneral(this.TG_OVERWORLD_BIG_HILLS,"7-2c");
         addToThemeInfoGeneral(this.TG_OVERWORLD_SMALL_BROWN_HILLS,"8-2a");
         addToThemeInfoGeneral(this.TG_OVERWORLD_CASTLE_WALLS,"8-3a");
         themeMapPack = MapPack.Special;
         addToThemeInfoWorld(4,this.TG_MUSHROOM_PLATFORMS_OVERWORLD,LT_NORMAL);
         addToThemeInfoWorld(4,this.TG_COIN_HEAVEN,LT_COIN_HEAVEN);
         addToThemeInfoWorld(8,this.TG_MUSHROOM_PLATFORMS,LT_PLATFORM);
         addToThemeInfoGeneral(this.TG_UNDERGROUND_SCENERY,"2-2c");
         addToThemeInfoGeneral(this.TG_WATER_NIGHT,"3-1b","6-2e");
         addToThemeInfoGeneral(this.TG_MUSHROOM_PLATFORMS_OVERWORLD,"3-2b","4-2a");
         addToThemeInfoGeneral(this.TG_UNDERGROUND_WATER,"6-2c");
         addToThemeInfoGeneral(this.TG_OVERWORLD_NIGHT_WITHOUT_TREES,"6-2d");
         addToThemeInfoGeneral(this.TG_WATER,"8-2b");
         addToThemeInfoGeneral(this.TG_OVERWORLD_CASTLE_WALLS,"8-2c");
         addToThemeInfoGeneral(this.TG_OVERWORLD_SMALL_BROWN_HILLS,"8-3a","8-3c");
         themeMapPack = MapPack.LostLevels;
         addToThemeInfoWorld(2,this.TG_OVERWORLD_NIGHT_WITH_TREES,LT_NORMAL);
         addToThemeInfoWorld(2,this.TG_COIN_HEAVEN_NIGHT,LT_COIN_HEAVEN);
         addToThemeInfoWorld(2,this.TG_OVERWORLD_NIGHT_WITHOUT_TREES,LT_CHEEP_CHEEP);
         addToThemeInfoWorld(4,this.TG_MUSHROOM_PLATFORMS_OVERWORLD,LT_NORMAL);
         addToThemeInfoWorld(4,this.TG_OVERWORLD_WATER_FALL,LT_PLATFORM);
         addToThemeInfoWorld(6,this.TG_OVERWORLD_SMALL_GREEN_HILLS,LT_NORMAL);
         addToThemeInfoWorld(6,this.TG_OVERWORLD_GOOMBA_STATUES,LT_CHEEP_CHEEP);
         addToThemeInfoWorld(7,this.TG_OVERWORLD_NIGHT_WITH_TREES,LT_NORMAL);
         addToThemeInfoWorld(7,this.TG_OVERWORLD_NIGHT_WITHOUT_TREES,LT_PLATFORM);
         addToThemeInfoWorld(8,this.TG_CASTLE_BOWSER,LT_CASTLE);
         addToThemeInfoWorld(9,this.TG_WATER_DARK_GROUND_BROWN,LT_WATER);
         addToThemeInfoWorld(10,this.TG_CLOUDS_OVERWORLD,LT_NORMAL);
         addToThemeInfoWorld(12,this.TG_OVERWORLD_NIGHT_WITHOUT_TREES,LT_CHEEP_CHEEP,LT_PLATFORM);
         addToThemeInfoWorld(13,this.TG_OVERWORLD_SMALL_GREEN_HILLS,LT_NORMAL);
         addToThemeInfoWorld(13,this.TG_CASTLE_BOWSER,LT_CASTLE);
         addToThemeInfoGeneral(this.TG_OVERWORLD_SNOW,"3-1a","5-1a","8-1c");
         addToThemeInfoGeneral(this.TG_OVERWORLD_BIG_HILLS,"3-2c","5-2d","6-2c");
         addToThemeInfoGeneral(this.TG_OVERWORLD_WATER_FALL,"3-3a","5-2c");
         addToThemeInfoGeneral(this.TG_OVERWORLD_SMALL_GREEN_HILLS,"8-1a");
         addToThemeInfoGeneral(this.TG_WATER,"8-1b");
         addToThemeInfoGeneral(this.TG_OVERWORLD_SMALL_BROWN_HILLS,"8-2a");
         addToThemeInfoGeneral(this.TG_CLOUDS,"8-2b");
         addToThemeInfoGeneral(this.TG_CLOUDS_BRIGHT,"8-3a");
         addToThemeInfoGeneral(this.TG_CASTLE_WATER,"8-4b");
         addToThemeInfoGeneral(this.TG_OVERWORLD_CASTLE,"9-3a");
         addToThemeInfoGeneral(this.TG_WATER_DARK_GROUND_GREEN,"9-4a");
         addToThemeInfoGeneral(this.TG_CLOUDS_GOOMBA_STATUES,"10-3a");
         addToThemeInfoGeneral(this.TG_OVERWORLD_FOREST,"11-1a");
         addToThemeInfoGeneral(this.TG_OVERWORLD_SKY,"11-4b");
         addToThemeInfoGeneral(this.TG_OVERWORLD_SNOW_NIGHT,"12-1a");
         addToThemeInfoGeneral(this.TG_OVERWORLD_CASTLE_WALLS,"13-3a");
         addToThemeInfoGeneral(this.TG_OVERWORLD_FOREST,"13-4b");
      }
      
      override protected function createPlayList() : void
      {
         addToTypePlayList(LT_CASTLE,this.SngCastle);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngOverworld);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngBonus);
         addToTypePlayList(LT_INTRO,this.SngIntroLevel);
         addToTypePlayList(LT_NORMAL,this.SngOverworld);
         addToTypePlayList(LT_PIPE_BONUS,this.SngBonus);
         addToTypePlayList(LT_PLATFORM,this.SngOverworld);
         addToTypePlayList(LT_UNDER_GROUND,this.SngUnderGround);
         addToTypePlayList(LT_WATER,this.SngWater);
         addToTypePlayList(MT_DARK_EPIC,this.SngOverworld);
         addToTypePlayList(BOSS,this.SngKingBowser);
         addToTypePlayList(CHAR_SEL,this.SngGameSelect);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngIntroLevel);
         addToTypePlayList(CREDITS,this.SngEnding);
         addToTypePlayList(DIE,this.SngDie);
         addToTypePlayList(FINAL_BOSS,this.SngLastBattle);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngOverworldFast);
         addToTypePlayList(STAR,this.SngInvincible);
         addToTypePlayList(TITLE_SCREEN,this.SngTitle);
         addToTypePlayList(WIN,this.SngCourseClear);
         addToTypePlayList(WIN_CASTLE,this.SngWinCastle);
         addHurryVersionOfSong(this.SngKingBowser,this.SngKingBowserFast);
         addHurryVersionOfSong(this.SngLastBattle,this.SngLastBattleFast);
         addHurryVersionOfSong(this.SngBonus,this.SngBonusFast);
         addHurryVersionOfSong(this.SngInvincible,this.SngInvincibleFast);
         addHurryVersionOfSong(this.SngCastle,this.SngCastleFast);
         addHurryVersionOfSong(this.SngOverworld,this.SngOverworldFast);
         addHurryVersionOfSong(this.SngUnderGround,this.SngUndergroundFast);
         addHurryVersionOfSong(this.SngWater,this.SngWaterFast);
         addToThemePlayList(this.TG_CASTLE_WATER,this.SngCastle,[LT_WATER]);
      }
   }
}
