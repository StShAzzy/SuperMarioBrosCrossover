package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.data.MapPack;
   import com.smbc.errors.SingletonError;
   import com.smbc.graphics.ThemeGroup;
   
   public class GameSuperMarioBros extends Game
   {
      
      private static var instance:Game;
      
      public static const NUM_WORLDS:int = 8;
       
      
      public const NSF:Class = GameSuperMarioBros_NSF;
      
      private const TG_OVERWORLD:ThemeGroup = addThemeGroup(1,1);
      
      private const TG_OVERWORLD_NIGHT:ThemeGroup = addThemeGroup(1,2,MT_DARK_EPIC);
      
      private const TG_OVERWORLD_SNOW:ThemeGroup = addThemeGroup(1,3);
      
      private const TG_OVERWORLD_SNOW_NIGHT:ThemeGroup = addThemeGroup(1,4,MT_DARK_EPIC);
      
      private const TG_OVERWORLD_GRAY:ThemeGroup = addThemeGroup(1,5,MT_DARK_EPIC);
      
      private const TG_UNDERGROUND:ThemeGroup = addThemeGroup(1,6);
      
      private const TG_UNDERGROUND_WATER:ThemeGroup = addThemeGroup(1,7);
      
      private const TG_OVERWORLD_CASTLE_WALL:ThemeGroup = addThemeGroup(1,8);
      
      private const TG_UNDERGROUND_SCENERY:ThemeGroup = addThemeGroup(1,9);
      
      private const TG_MUSHROOM_PLATFORM:ThemeGroup = addThemeGroup(2,1);
      
      private const TG_MUSHROOM_PLATFORM_ORANGE:ThemeGroup = addThemeGroup(2,2);
      
      private const TG_COIN_HEAVEN:ThemeGroup = addThemeGroup(3,1);
      
      private const TG_COIN_HEAVEN_NIGHT:ThemeGroup = addThemeGroup(3,2,MT_DARK_EPIC);
      
      private const TG_COIN_HEAVEN_BLUE:ThemeGroup = addThemeGroup(3,3);
      
      private const TG_COIN_HEAVEN_GRAY:ThemeGroup = addThemeGroup(3,4);
      
      private const TG_WATER:ThemeGroup = addThemeGroup(4,1);
      
      private const TG_WATER_NIGHT:ThemeGroup = addThemeGroup(4,2);
      
      private const TG_CASTLE:ThemeGroup = addThemeGroup(5,1);
      
      private const TG_CASTLE_WATER:ThemeGroup = addThemeGroup(5,2);
      
      private const TG_CLOUDS:ThemeGroup = addThemeGroup(6,1);
      
      private const TG_CLOUDS_OVERWORLD:ThemeGroup = addThemeGroup(6,2);
      
      private const TG_OVERWORLD_WATER:ThemeGroup = addThemeGroup(7,1);
      
      private const TG_WATER_GRAY:ThemeGroup = addThemeGroup(7,2);
      
      private const TG_CASTLE_OVERWORLD:ThemeGroup = addThemeGroup(8,1);
      
      private const VOLUME:int = 60;
      
      public const SngOverworld:Song = addSong(this.NSF,1,null,this.VOLUME);
      
      public const SngWater:Song = addSong(this.NSF,2,null,this.VOLUME);
      
      public const SngUnderGround:Song = addSong(this.NSF,3,null,this.VOLUME);
      
      public const SngBeatLevel:Song = addSong(this.NSF,4,null,this.VOLUME);
      
      public const SngCastle:Song = addSong(this.NSF,5,null,this.VOLUME);
      
      public const SngBeatWorld:Song = addSong(this.NSF,6,null,this.VOLUME);
      
      public const SngInvincible:Song = addSong(this.NSF,7,null,this.VOLUME);
      
      public const SngTransition:Song = addSong(this.NSF,8,null,this.VOLUME);
      
      public const SngSecondsLeft:Song = addSong(this.NSF,9,null,this.VOLUME);
      
      public const SngOverworldHurry:Song = addSong(this.NSF,10,null,this.VOLUME);
      
      public const SngWaterHurry:Song = addSong(this.NSF,11,null,this.VOLUME);
      
      public const SngUnderGroundHurry:Song = addSong(this.NSF,12,null,this.VOLUME);
      
      public const SngCastleHurry:Song = addSong(this.NSF,13,null,this.VOLUME);
      
      public const SngInvincibleHurry:Song = addSong(this.NSF,14,null,this.VOLUME);
      
      public const SngDie:Song = addSong(this.NSF,15,null,this.VOLUME);
      
      public const SngGameOver:Song = addSong(this.NSF,16,null,this.VOLUME);
      
      public const SngSuperMarioBrosEnding:Song = addSong(this.NSF,17,null,this.VOLUME);
      
      public const SngVsEnding:Song = addSong(this.NSF,18,null,this.VOLUME);
      
      public const SngLostLevelsEnding:Song = addSong(this.NSF,19,null,this.VOLUME);
      
      public const SngNameEntry:Song = addSong(this.NSF,21,null,this.VOLUME);
      
      public function GameSuperMarioBros(param1:int, param2:int)
      {
         super("Super Mario Bros.","Nintendo",Consoles.nintendo,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function setUpLevelThemes() : void
      {
         addToThemeInfoGeneral(this.TG_OVERWORLD,LT_NORMAL,LT_INTRO,LT_PLATFORM,LT_CHEEP_CHEEP);
         addToThemeInfoGeneral(this.TG_UNDERGROUND,LT_UNDER_GROUND,LT_PIPE_BONUS);
         addToThemeInfoGeneral(this.TG_COIN_HEAVEN,LT_COIN_HEAVEN);
         addToThemeInfoGeneral(this.TG_CASTLE,LT_CASTLE);
         addToThemeInfoGeneral(this.TG_WATER,LT_WATER);
         addToThemeInfoWorld(3,this.TG_OVERWORLD_SNOW_NIGHT,LT_NORMAL);
         addToThemeInfoWorld(3,this.TG_OVERWORLD_NIGHT,LT_PLATFORM);
         addToThemeInfoWorld(3,this.TG_COIN_HEAVEN_NIGHT,LT_COIN_HEAVEN);
         addToThemeInfoWorld(4,this.TG_MUSHROOM_PLATFORM,LT_NORMAL);
         addToThemeInfoWorld(4,this.TG_MUSHROOM_PLATFORM_ORANGE,LT_PLATFORM);
         addToThemeInfoWorld(5,this.TG_OVERWORLD_SNOW,LT_NORMAL);
         addToThemeInfoWorld(6,this.TG_OVERWORLD_NIGHT,LT_NORMAL);
         addToThemeInfoWorld(6,this.TG_COIN_HEAVEN_NIGHT,LT_COIN_HEAVEN);
         addToThemeInfoWorld(6,this.TG_OVERWORLD_GRAY,LT_PLATFORM);
         addToThemeInfoWorld(7,this.TG_OVERWORLD_SNOW,LT_NORMAL);
         addToThemeInfoWorld(8,this.TG_CASTLE_WATER,LT_WATER);
         addToThemeInfoGeneral(this.TG_OVERWORLD,"7-2c");
         themeMapPack = MapPack.Special;
         addToThemeInfoWorld(8,this.TG_MUSHROOM_PLATFORM_ORANGE,LT_PLATFORM);
         addToThemeInfoGeneral(this.TG_UNDERGROUND_SCENERY,"2-2c");
         addToThemeInfoGeneral(this.TG_WATER_NIGHT,"3-1b","6-2e");
         addToThemeInfoGeneral(this.TG_MUSHROOM_PLATFORM_ORANGE,"3-2b","8-3c");
         addToThemeInfoGeneral(this.TG_COIN_HEAVEN,"4-1b");
         addToThemeInfoGeneral(this.TG_COIN_HEAVEN_BLUE,"4-3b");
         addToThemeInfoGeneral(this.TG_UNDERGROUND_WATER,"6-2c");
         addToThemeInfoGeneral(this.TG_WATER,"8-2b");
         addToThemeInfoGeneral(this.TG_OVERWORLD_CASTLE_WALL,"8-2c");
         themeMapPack = MapPack.LostLevels;
         addToThemeInfoWorld(2,this.TG_OVERWORLD_NIGHT,LT_NORMAL,LT_CHEEP_CHEEP);
         addToThemeInfoWorld(3,this.TG_OVERWORLD_SNOW,LT_NORMAL,LT_PLATFORM);
         addToThemeInfoWorld(3,this.TG_COIN_HEAVEN,LT_COIN_HEAVEN);
         addToThemeInfoWorld(4,this.TG_OVERWORLD,LT_PLATFORM);
         addToThemeInfoWorld(5,this.TG_OVERWORLD_SNOW,LT_NORMAL);
         addToThemeInfoWorld(6,this.TG_OVERWORLD,LT_NORMAL);
         addToThemeInfoWorld(7,this.TG_OVERWORLD_SNOW_NIGHT,LT_NORMAL);
         addToThemeInfoWorld(7,this.TG_OVERWORLD_GRAY,LT_PLATFORM);
         addToThemeInfoWorld(8,this.TG_MUSHROOM_PLATFORM_ORANGE,LT_NORMAL);
         addToThemeInfoWorld(8,this.TG_CLOUDS,LT_PLATFORM);
         addToThemeInfoWorld(9,this.TG_OVERWORLD_WATER,LT_WATER);
         addToThemeInfoWorld(9,this.TG_COIN_HEAVEN_GRAY,LT_COIN_HEAVEN);
         addToThemeInfoWorld(10,this.TG_MUSHROOM_PLATFORM_ORANGE,LT_NORMAL);
         addToThemeInfoWorld(10,this.TG_CLOUDS,LT_PLATFORM);
         addToThemeInfoWorld(12,this.TG_OVERWORLD_NIGHT,LT_NORMAL,LT_PLATFORM,LT_CHEEP_CHEEP);
         addToThemeInfoWorld(13,this.TG_OVERWORLD_SNOW,LT_NORMAL);
         addToThemeInfoGeneral(this.TG_OVERWORLD,"3-2a","3-2c","5-2a","5-2c","5-2d","10-2a","13-4b");
         addToThemeInfoGeneral(this.TG_OVERWORLD_SNOW,"8-1a","8-1c");
         addToThemeInfoGeneral(this.TG_WATER,"8-1b");
         addToThemeInfoGeneral(this.TG_CASTLE,"8-4b");
         addToThemeInfoGeneral(this.TG_CASTLE_OVERWORLD,"9-3a");
         addToThemeInfoGeneral(this.TG_WATER_GRAY,"9-4a");
         addToThemeInfoGeneral(this.TG_CLOUDS_OVERWORLD,"10-2c");
         addToThemeInfoGeneral(this.TG_CLOUDS,"11-4b");
         addToThemeInfoGeneral(this.TG_OVERWORLD_GRAY,"12-3a");
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL,LT_CHEEP_CHEEP,LT_PLATFORM);
         addToTypePlayList(LT_CASTLE,this.SngCastle);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngOverworld);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngInvincible);
         addToTypePlayList(LT_INTRO,this.SngTransition);
         addToTypePlayList(LT_NORMAL,this.SngOverworld);
         addToTypePlayList(LT_PIPE_BONUS,this.SngUnderGround);
         addToTypePlayList(LT_PLATFORM,this.SngOverworld);
         addToTypePlayList(LT_UNDER_GROUND,this.SngUnderGround);
         addToTypePlayList(LT_WATER,this.SngWater);
         addToTypePlayList(MT_DARK_EPIC,this.SngOverworld);
         addToTypePlayList(BOSS,this.SngCastle);
         addToTypePlayList(CHAR_SEL,this.SngNameEntry);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngTransition);
         addToTypePlayList(CREDITS,this.SngSuperMarioBrosEnding);
         addToTypePlayList(DIE,this.SngDie);
         addToTypePlayList(FINAL_BOSS,this.SngCastle);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngOverworldHurry);
         addToTypePlayList(STAR,this.SngInvincible);
         addToTypePlayList(TITLE_SCREEN,this.SngOverworld);
         addToTypePlayList(WIN,this.SngBeatLevel);
         addToTypePlayList(WIN_CASTLE,this.SngBeatWorld);
         addHurryVersionOfSong(this.SngCastle,this.SngCastleHurry);
         addHurryVersionOfSong(this.SngInvincible,this.SngInvincibleHurry);
         addHurryVersionOfSong(this.SngOverworld,this.SngOverworldHurry);
         addHurryVersionOfSong(this.SngUnderGround,this.SngUnderGroundHurry);
         addHurryVersionOfSong(this.SngWater,this.SngWaterHurry);
      }
   }
}
