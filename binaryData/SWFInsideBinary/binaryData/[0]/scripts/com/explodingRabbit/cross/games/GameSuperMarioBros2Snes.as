package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.data.MapPack;
   import com.smbc.errors.SingletonError;
   import com.smbc.graphics.ThemeGroup;
   
   public class GameSuperMarioBros2Snes extends Game
   {
      
      private static var instance:Game;
       
      
      private const VOLUME:int = 80;
      
      private const BirdoData:Class = GameSuperMarioBros2Snes_BirdoData;
      
      public const SngBirdo:Song = addSong(this.BirdoData,-1,null,this.VOLUME);
      
      private const BonusGameData:Class = GameSuperMarioBros2Snes_BonusGameData;
      
      public const SngBonusGame:Song = addSong(this.BonusGameData,-1,null,this.VOLUME);
      
      private const EndingData:Class = GameSuperMarioBros2Snes_EndingData;
      
      public const SngEnding:Song = addSong(this.EndingData,-1,null,this.VOLUME);
      
      private const GameOverData:Class = GameSuperMarioBros2Snes_GameOverData;
      
      public const SngGameOver:Song = addSong(this.GameOverData,-1,null,this.VOLUME);
      
      private const OverworldData:Class = GameSuperMarioBros2Snes_OverworldData;
      
      public const SngOverworld:Song = addSong(this.OverworldData,-1,null,this.VOLUME);
      
      private const PlayerDownData:Class = GameSuperMarioBros2Snes_PlayerDownData;
      
      public const SngPlayerDown:Song = addSong(this.PlayerDownData,-1,null,this.VOLUME);
      
      private const PlayerSelectData:Class = GameSuperMarioBros2Snes_PlayerSelectData;
      
      public const SngPlayerSelect:Song = addSong(this.PlayerSelectData,-1,null,this.VOLUME);
      
      private const PowerUpFanfareData:Class = GameSuperMarioBros2Snes_PowerUpFanfareData;
      
      public const SngPowerUpFanfare:Song = addSong(this.PowerUpFanfareData,-1,null,this.VOLUME);
      
      private const SubspaceData:Class = GameSuperMarioBros2Snes_SubspaceData;
      
      public const SngSubspace:Song = addSong(this.SubspaceData,-1,null,this.VOLUME);
      
      private const TitleData:Class = GameSuperMarioBros2Snes_TitleData;
      
      public const SngTitle:Song = addSong(this.TitleData,-1,null,this.VOLUME);
      
      private const UnderworldData:Class = GameSuperMarioBros2Snes_UnderworldData;
      
      public const SngUnderworld:Song = addSong(this.UnderworldData,-1,null,this.VOLUME);
      
      private const VictoryData:Class = GameSuperMarioBros2Snes_VictoryData;
      
      public const SngVictory:Song = addSong(this.VictoryData,-1,null,this.VOLUME);
      
      private const WartData:Class = GameSuperMarioBros2Snes_WartData;
      
      public const SngWart:Song = addSong(this.WartData,-1,null,this.VOLUME);
      
      private const WorldClearData:Class = GameSuperMarioBros2Snes_WorldClearData;
      
      public const SngWorldClear:Song = addSong(this.WorldClearData,-1,null,this.VOLUME);
      
      private const TG_GRASS:ThemeGroup = addThemeGroup(1,1);
      
      private const TG_PLATFORM:ThemeGroup = addThemeGroup(1,2);
      
      private const TG_WATERFALL:ThemeGroup = addThemeGroup(1,3);
      
      private const TG_NIGHT:ThemeGroup = addThemeGroup(1,4,MT_DARK_EPIC);
      
      private const TG_SUB_SPACE:ThemeGroup = addThemeGroup(1,5);
      
      private const TG_SUB_SPACE_CHEEP_CHEEP:ThemeGroup = addThemeGroup(1,6);
      
      private const TG_CAVE:ThemeGroup = addThemeGroup(2,1);
      
      private const TG_PLATFORM_NIGHT:ThemeGroup = addThemeGroup(2,2,MT_DARK_EPIC);
      
      private const TG_WATER:ThemeGroup = addThemeGroup(2,3);
      
      private const TG_SUB_SPACE_WATER:ThemeGroup = addThemeGroup(2,4);
      
      private const TG_CASTLE_RED:ThemeGroup = addThemeGroup(3,1);
      
      private const TG_SUB_SPACE_CASTLE:ThemeGroup = addThemeGroup(3,2);
      
      private const TG_DESERT:ThemeGroup = addThemeGroup(4,1);
      
      private const TG_DESERT_DAY:ThemeGroup = addThemeGroup(4,2);
      
      private const TG_CAVE_DESERT:ThemeGroup = addThemeGroup(5,1);
      
      private const TG_CASTLE_DESERT:ThemeGroup = addThemeGroup(6,1);
      
      private const TG_ICE:ThemeGroup = addThemeGroup(7,1);
      
      private const TG_ICE_HILLS:ThemeGroup = addThemeGroup(7,2);
      
      private const TG_CAVE_ICE:ThemeGroup = addThemeGroup(8,1);
      
      private const TG_CASTLE_ICE:ThemeGroup = addThemeGroup(9,1);
      
      private const TG_CASTLE_TREE:ThemeGroup = addThemeGroup(10,1);
      
      private const TG_CASTLE_DESERT_2:ThemeGroup = addThemeGroup(11,1);
      
      private const TG_SKY:ThemeGroup = addThemeGroup(12,1);
      
      private const TG_CASTLE_SKY:ThemeGroup = addThemeGroup(13,1);
      
      private const TG_CASTLE_WATER:ThemeGroup = addThemeGroup(13,2);
      
      private const TG_BONUS_CAVE:ThemeGroup = addThemeGroup(14,1);
      
      private const TG_BONUS_DESERT:ThemeGroup = addThemeGroup(14,2);
      
      private const TG_BONUS_ICE:ThemeGroup = addThemeGroup(14,3);
      
      private const TG_BONUS_SUB_SPACE:ThemeGroup = addThemeGroup(14,4);
      
      private const TG_BONUS_SKY:ThemeGroup = addThemeGroup(14,5);
      
      private const TG_COIN_HEAVEN:ThemeGroup = addThemeGroup(15,1);
      
      private const TG_COIN_HEAVEN_NIGHT:ThemeGroup = addThemeGroup(15,2);
      
      private const TG_COIN_HEAVEN_SUB_SPACE:ThemeGroup = addThemeGroup(15,3);
      
      public function GameSuperMarioBros2Snes(param1:int, param2:int)
      {
         super("Super Mario Bros. 2 SNES","Nintendo",Consoles.superNintendo,param1,"SMB2 (SNES)",param2);
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
         addToThemeInfoGeneral(this.TG_GRASS,LT_NORMAL,LT_INTRO);
         addToThemeInfoGeneral(this.TG_PLATFORM,LT_PLATFORM);
         addToThemeInfoGeneral(this.TG_WATERFALL,LT_CHEEP_CHEEP);
         addToThemeInfoGeneral(this.TG_CAVE,LT_UNDER_GROUND);
         addToThemeInfoGeneral(this.TG_WATER,LT_WATER);
         addToThemeInfoGeneral(this.TG_CASTLE_RED,LT_CASTLE);
         addToThemeInfoGeneral(this.TG_BONUS_CAVE,LT_PIPE_BONUS);
         addToThemeInfoGeneral(this.TG_COIN_HEAVEN,LT_COIN_HEAVEN);
         addToThemeInfoWorld(3,this.TG_DESERT,LT_NORMAL);
         addToThemeInfoWorld(3,this.TG_CAVE_DESERT,LT_PLATFORM);
         addToThemeInfoWorld(3,this.TG_CASTLE_DESERT,LT_CASTLE);
         addToThemeInfoWorld(3,this.TG_COIN_HEAVEN_NIGHT,LT_COIN_HEAVEN);
         addToThemeInfoWorld(3,this.TG_BONUS_DESERT,LT_PIPE_BONUS);
         addToThemeInfoWorld(4,this.TG_ICE_HILLS,LT_NORMAL,LT_INTRO);
         addToThemeInfoWorld(4,this.TG_ICE,LT_PLATFORM,LT_COIN_HEAVEN);
         addToThemeInfoWorld(4,this.TG_CAVE_ICE,LT_UNDER_GROUND);
         addToThemeInfoWorld(4,this.TG_CASTLE_ICE,LT_CASTLE);
         addToThemeInfoWorld(4,this.TG_BONUS_ICE,LT_PIPE_BONUS);
         addToThemeInfoWorld(5,this.TG_NIGHT,LT_NORMAL,LT_INTRO);
         addToThemeInfoWorld(5,this.TG_PLATFORM_NIGHT,LT_PLATFORM);
         addToThemeInfoWorld(5,this.TG_CASTLE_TREE,LT_CASTLE);
         addToThemeInfoWorld(5,this.TG_COIN_HEAVEN_NIGHT,LT_COIN_HEAVEN);
         addToThemeInfoWorld(6,this.TG_DESERT,LT_NORMAL);
         addToThemeInfoWorld(6,this.TG_DESERT_DAY,LT_PLATFORM);
         addToThemeInfoWorld(6,this.TG_CASTLE_DESERT_2,LT_CASTLE);
         addToThemeInfoWorld(6,this.TG_BONUS_DESERT,LT_PIPE_BONUS);
         addToThemeInfoWorld(7,this.TG_SUB_SPACE,LT_NORMAL,LT_INTRO);
         addToThemeInfoWorld(7,this.TG_SUB_SPACE_CHEEP_CHEEP,LT_CHEEP_CHEEP);
         addToThemeInfoWorld(7,this.TG_SUB_SPACE_WATER,LT_WATER);
         addToThemeInfoWorld(7,this.TG_SUB_SPACE_CASTLE,LT_CASTLE);
         addToThemeInfoWorld(7,this.TG_BONUS_SUB_SPACE,LT_PIPE_BONUS);
         addToThemeInfoWorld(8,this.TG_SKY,LT_NORMAL,LT_PLATFORM);
         addToThemeInfoWorld(8,this.TG_CASTLE_SKY,LT_CASTLE);
         addToThemeInfoWorld(8,this.TG_CASTLE_WATER,LT_WATER);
         addToThemeInfoWorld(8,this.TG_BONUS_SKY,LT_PIPE_BONUS);
         addToThemeInfoGeneral(this.TG_DESERT_DAY,"3-2a","6-2a");
         themeMapPack = MapPack.Special;
         addToThemeInfoGeneral(this.TG_COIN_HEAVEN,"4-3b");
         addToThemeInfoGeneral(this.TG_DESERT_DAY,"6-2d");
         addToThemeInfoGeneral(this.TG_WATER,"8-2b");
         themeMapPack = MapPack.LostLevels;
         addToThemeInfoWorld(2,this.TG_DESERT,LT_NORMAL);
         addToThemeInfoWorld(2,this.TG_DESERT_DAY,LT_CHEEP_CHEEP);
         addToThemeInfoWorld(2,this.TG_CASTLE_DESERT,LT_CASTLE);
         addToThemeInfoWorld(2,this.TG_BONUS_DESERT,LT_PIPE_BONUS);
         addToThemeInfoWorld(2,this.TG_COIN_HEAVEN_NIGHT,LT_COIN_HEAVEN);
         addToThemeInfoWorld(3,this.TG_GRASS,LT_NORMAL,LT_INTRO);
         addToThemeInfoWorld(3,this.TG_PLATFORM,LT_PLATFORM);
         addToThemeInfoWorld(3,this.TG_CASTLE_RED,LT_CASTLE);
         addToThemeInfoWorld(3,this.TG_BONUS_CAVE,LT_PIPE_BONUS);
         addToThemeInfoWorld(6,this.TG_GRASS,LT_NORMAL,LT_INTRO);
         addToThemeInfoWorld(6,this.TG_WATERFALL,LT_CHEEP_CHEEP);
         addToThemeInfoWorld(6,this.TG_CASTLE_RED,LT_CASTLE);
         addToThemeInfoWorld(7,this.TG_DESERT_DAY,LT_NORMAL);
         addToThemeInfoWorld(7,this.TG_DESERT,LT_PLATFORM);
         addToThemeInfoWorld(7,this.TG_CASTLE_DESERT_2,LT_CASTLE);
         addToThemeInfoWorld(7,this.TG_BONUS_DESERT,LT_PIPE_BONUS);
         addToThemeInfoWorld(9,this.TG_SUB_SPACE,LT_NORMAL);
         addToThemeInfoWorld(9,this.TG_SUB_SPACE_CASTLE,LT_CASTLE);
         addToThemeInfoWorld(9,this.TG_SUB_SPACE_WATER,LT_WATER);
         addToThemeInfoWorld(9,this.TG_COIN_HEAVEN_SUB_SPACE,LT_COIN_HEAVEN);
         addToThemeInfoWorld(10,this.TG_DESERT,LT_NORMAL,LT_INTRO);
         addToThemeInfoWorld(10,this.TG_DESERT_DAY,LT_PLATFORM);
         addToThemeInfoWorld(10,this.TG_CASTLE_DESERT_2,LT_CASTLE);
         addToThemeInfoWorld(10,this.TG_BONUS_DESERT,LT_PIPE_BONUS);
         addToThemeInfoWorld(10,this.TG_COIN_HEAVEN_NIGHT,LT_COIN_HEAVEN);
         addToThemeInfoWorld(12,this.TG_NIGHT,LT_NORMAL);
         addToThemeInfoWorld(12,this.TG_PLATFORM_NIGHT,LT_CHEEP_CHEEP,LT_PLATFORM);
         addToThemeInfoWorld(12,this.TG_CASTLE_TREE,LT_CASTLE);
         addToThemeInfoWorld(12,this.TG_COIN_HEAVEN_NIGHT,LT_COIN_HEAVEN);
         addToThemeInfoWorld(13,this.TG_SKY,LT_NORMAL);
         addToThemeInfoWorld(13,this.TG_BONUS_SKY,LT_PIPE_BONUS);
         addToThemeInfoWorld(13,this.TG_CASTLE_SKY,LT_CASTLE);
         addToThemeInfoGeneral(this.TG_PLATFORM,"1-2d","3-2c","11-2c");
         addToThemeInfoGeneral(this.TG_DESERT_DAY,"2-2a","10-2c");
         addToThemeInfoGeneral(this.TG_PLATFORM_NIGHT,"5-2d","7-2a");
         addToThemeInfoGeneral(this.TG_WATERFALL,"6-2c");
         addToThemeInfoGeneral(this.TG_WATER,"8-1b");
         addToThemeInfoGeneral(this.TG_CAVE,"8-1c");
         addToThemeInfoGeneral(this.TG_CASTLE_SKY,"13-4c");
      }
      
      override protected function createPlayList() : void
      {
         addToTypePlayList(LT_CASTLE,this.SngUnderworld);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngOverworld);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngSubspace);
         addToTypePlayList(LT_INTRO,this.SngBonusGame);
         addToTypePlayList(LT_NORMAL,this.SngOverworld);
         addToTypePlayList(LT_PIPE_BONUS,this.SngUnderworld);
         addToTypePlayList(LT_PLATFORM,this.SngOverworld);
         addToTypePlayList(LT_UNDER_GROUND,this.SngUnderworld);
         addToTypePlayList(LT_WATER,this.SngSubspace);
         addToTypePlayList(MT_DARK_EPIC,this.SngOverworld);
         addToTypePlayList(BOSS,this.SngBirdo);
         addToTypePlayList(CHAR_SEL,this.SngPlayerSelect);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngPowerUpFanfare);
         addToTypePlayList(CREDITS,this.SngEnding);
         addToTypePlayList(DIE,this.SngPlayerDown);
         addToTypePlayList(FINAL_BOSS,this.SngWart);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngBirdo);
         addToTypePlayList(TITLE_SCREEN,this.SngOverworld);
         addToTypePlayList(STAR,Games.superMarioBrosSnes.SngInvincible);
         addToTypePlayList(WIN,this.SngVictory);
         addToTypePlayList(WIN_CASTLE,this.SngWorldClear);
         addToThemePlayList(this.TG_CASTLE_WATER,this.SngUnderworld,[LT_WATER]);
      }
   }
}
