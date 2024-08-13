package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.data.MapPack;
   import com.smbc.errors.SingletonError;
   import com.smbc.graphics.ThemeGroup;
   
   public class GameZeldaAdventureOfLink extends Game
   {
      
      private static var instance:Game;
       
      
      private const TG_GRASS:ThemeGroup = addThemeGroup(1,1);
      
      private const TG_GRASS_PILLARS:ThemeGroup = addThemeGroup(1,2);
      
      private const TG_SWAMP:ThemeGroup = addThemeGroup(1,3);
      
      private const TG_CAVE_DARK:ThemeGroup = addThemeGroup(2,1);
      
      private const TG_CAVE_LIGHT:ThemeGroup = addThemeGroup(2,2);
      
      private const TG_CAVE_LAVA:ThemeGroup = addThemeGroup(2,3,MT_DARK_EPIC);
      
      private const TG_SEA:ThemeGroup = addThemeGroup(2,4);
      
      private const TG_SKY:ThemeGroup = addThemeGroup(2,5);
      
      private const TG_SKY_NIGHT:ThemeGroup = addThemeGroup(2,6);
      
      private const TG_WATER:ThemeGroup = addThemeGroup(3,1);
      
      private const TG_WATER_NIGHT:ThemeGroup = addThemeGroup(3,2);
      
      private const TG_FOREST_TREES:ThemeGroup = addThemeGroup(4,1,MT_DARK_EPIC);
      
      private const TG_FOREST_LEAVES:ThemeGroup = addThemeGroup(5,1,MT_DARK_EPIC);
      
      private const TG_DESERT_GREEN_CACTI:ThemeGroup = addThemeGroup(6,1);
      
      private const TG_DESERT_BROWN_CACTI:ThemeGroup = addThemeGroup(6,2);
      
      private const TG_PALACE_1:ThemeGroup = addThemeGroup(7,1);
      
      private const TG_PALACE_2:ThemeGroup = addThemeGroup(8,1);
      
      private const TG_PALACE_3:ThemeGroup = addThemeGroup(9,1);
      
      private const TG_PALACE_4:ThemeGroup = addThemeGroup(10,1);
      
      private const TG_PALACE_5:ThemeGroup = addThemeGroup(11,1);
      
      private const TG_PALACE_6:ThemeGroup = addThemeGroup(12,1);
      
      private const TG_PALACE_7:ThemeGroup = addThemeGroup(13,1);
      
      private const TG_PALACE_8:ThemeGroup = addThemeGroup(14,1);
      
      private const TG_PALACE_8_WATER:ThemeGroup = addThemeGroup(15,1);
      
      public const Nsf:Class = GameZeldaAdventureOfLink_Nsf;
      
      private const VOLUME:int = 60;
      
      public const SngTitle:Song = addSong(this.Nsf,1,null,this.VOLUME);
      
      public const SngGrass:Song = addSong(this.Nsf,2,null,this.VOLUME);
      
      public const SngAction1:Song = addSong(this.Nsf,4,null,this.VOLUME);
      
      public const SngAction2:Song = addSong(this.Nsf,5,null,this.VOLUME);
      
      public const SngEnterPipe:Song = addSong(this.Nsf,6,null,this.VOLUME);
      
      public const SngWater:Song = addSong(this.Nsf,10,null,this.VOLUME);
      
      public const SngPalace:Song = addSong(this.Nsf,12,null,this.VOLUME);
      
      public const SngStar:Song = addSong(this.Nsf,14,null,80);
      
      public const SngBoss:Song = addSong(this.Nsf,15,null,this.VOLUME);
      
      public const SngLevelWin:Song = addSong(this.Nsf,17,null,this.VOLUME);
      
      public const SngPalace8:Song = addSong(this.Nsf,18,null,this.VOLUME);
      
      public const SngPalace8c:Song = addSong(this.Nsf,19,null,this.VOLUME);
      
      public const SngCharacterSelect:Song = addSong(this.Nsf,9,null,this.VOLUME + 20);
      
      public const SngCredits:Song = addSong(this.Nsf,21,null,this.VOLUME);
      
      public const SngPalaceWin:Song = addSong(this.Nsf,22,null,this.VOLUME);
      
      public const SngBowser:Song = addSong(this.Nsf,23,null,this.VOLUME);
      
      public function GameZeldaAdventureOfLink(param1:int, param2:int = -1)
      {
         super("Zelda II: The Adventure of Link","Nintendo",Consoles.nintendo,param1,"Zelda II",param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override public function initiate() : void
      {
         super.initiate();
         creditsGame = Games.zeldaAdventureOfLink;
      }
      
      override protected function setUpLevelThemes() : void
      {
         addToThemeInfoGeneral(this.TG_GRASS,LT_NORMAL,LT_INTRO);
         addToThemeInfoGeneral(this.TG_CAVE_DARK,LT_UNDER_GROUND);
         addToThemeInfoGeneral(this.TG_SEA,LT_PLATFORM,LT_CHEEP_CHEEP);
         addToThemeInfoGeneral(this.TG_PALACE_1,LT_CASTLE);
         addToThemeInfoGeneral(this.TG_SKY,LT_COIN_HEAVEN);
         addToThemeInfoGeneral(this.TG_WATER,LT_WATER);
         addToThemeInfoGeneral(this.TG_CAVE_LIGHT,LT_PIPE_BONUS);
         addToThemeInfoGeneral(this.TG_SEA,"1-2d","2-2c","4-2c","4-2e","7-2c");
         addToThemeInfoWorld(2,this.TG_SWAMP,LT_NORMAL,LT_INTRO);
         addToThemeInfoWorld(2,this.TG_PALACE_2,LT_CASTLE);
         addToThemeInfoWorld(3,this.TG_FOREST_TREES,LT_NORMAL,LT_PLATFORM);
         addToThemeInfoWorld(3,this.TG_SKY_NIGHT,LT_COIN_HEAVEN);
         addToThemeInfoWorld(3,this.TG_WATER_NIGHT,LT_WATER);
         addToThemeInfoWorld(3,this.TG_PALACE_3,LT_CASTLE);
         addToThemeInfoWorld(4,this.TG_GRASS_PILLARS,LT_NORMAL,LT_INTRO);
         addToThemeInfoWorld(4,this.TG_PALACE_4,LT_CASTLE);
         addToThemeInfoWorld(5,this.TG_DESERT_GREEN_CACTI,LT_NORMAL);
         addToThemeInfoWorld(5,this.TG_PALACE_5,LT_CASTLE);
         addToThemeInfoWorld(6,this.TG_FOREST_LEAVES,LT_NORMAL,LT_PLATFORM);
         addToThemeInfoWorld(6,this.TG_SKY_NIGHT,LT_COIN_HEAVEN);
         addToThemeInfoWorld(6,this.TG_WATER_NIGHT,LT_WATER);
         addToThemeInfoWorld(6,this.TG_PALACE_6,LT_CASTLE);
         addToThemeInfoWorld(7,this.TG_DESERT_BROWN_CACTI,LT_NORMAL,LT_INTRO);
         addToThemeInfoWorld(7,this.TG_PALACE_7,LT_CASTLE);
         addToThemeInfoWorld(8,this.TG_CAVE_LAVA,LT_NORMAL);
         addToThemeInfoWorld(8,this.TG_PALACE_8,LT_CASTLE);
         addToThemeInfoWorld(8,this.TG_PALACE_8_WATER,LT_WATER);
         themeMapPack = MapPack.Special;
         addToThemeInfoGeneral(this.TG_GRASS_PILLARS,"4-2a");
         addToThemeInfoGeneral(this.TG_SWAMP,"3-2b");
         addToThemeInfoGeneral(this.TG_CAVE_DARK,"2-2c");
         addToThemeInfoGeneral(this.TG_SEA,"1-2d","2-2d","2-4b");
         addToThemeInfoGeneral(this.TG_SKY,"4-1b");
         addToThemeInfoGeneral(this.TG_FOREST_LEAVES,"6-2d");
         addToThemeInfoGeneral(this.TG_CAVE_LAVA,"8-1a","8-2a","8-3b");
         addToThemeInfoGeneral(this.TG_WATER_NIGHT,"8-2b");
         themeMapPack = MapPack.LostLevels;
         addToThemeInfoWorld(2,this.TG_FOREST_TREES,LT_NORMAL,LT_CHEEP_CHEEP);
         addToThemeInfoWorld(2,this.TG_SKY_NIGHT,LT_COIN_HEAVEN);
         addToThemeInfoWorld(2,this.TG_PALACE_2,LT_CASTLE);
         addToThemeInfoWorld(3,this.TG_SWAMP,LT_NORMAL,LT_INTRO);
         addToThemeInfoWorld(3,this.TG_WATER,LT_WATER);
         addToThemeInfoWorld(3,this.TG_SKY,LT_COIN_HEAVEN);
         addToThemeInfoWorld(3,this.TG_PALACE_3,LT_CASTLE);
         addToThemeInfoWorld(4,this.TG_DESERT_GREEN_CACTI,LT_NORMAL);
         addToThemeInfoWorld(4,this.TG_PALACE_4,LT_CASTLE);
         addToThemeInfoWorld(5,this.TG_DESERT_BROWN_CACTI,LT_NORMAL,LT_INTRO);
         addToThemeInfoWorld(5,this.TG_PALACE_5,LT_CASTLE);
         addToThemeInfoWorld(6,this.TG_GRASS_PILLARS,LT_NORMAL,LT_INTRO);
         addToThemeInfoWorld(6,this.TG_WATER,LT_WATER);
         addToThemeInfoWorld(6,this.TG_PALACE_6,LT_CASTLE);
         addToThemeInfoWorld(7,this.TG_FOREST_LEAVES,LT_NORMAL);
         addToThemeInfoWorld(7,this.TG_PALACE_7,LT_CASTLE);
         addToThemeInfoWorld(8,this.TG_CAVE_LAVA,LT_NORMAL);
         addToThemeInfoWorld(8,this.TG_SKY,LT_PLATFORM,LT_COIN_HEAVEN);
         addToThemeInfoWorld(8,this.TG_PALACE_8,LT_CASTLE);
         addToThemeInfoWorld(10,this.TG_SWAMP,LT_NORMAL,LT_INTRO);
         addToThemeInfoWorld(10,this.TG_PALACE_2,LT_CASTLE);
         addToThemeInfoWorld(11,this.TG_FOREST_LEAVES,LT_NORMAL,LT_INTRO,LT_PLATFORM);
         addToThemeInfoWorld(11,this.TG_PALACE_7,LT_CASTLE);
         addToThemeInfoWorld(12,this.TG_DESERT_BROWN_CACTI,LT_NORMAL,LT_CHEEP_CHEEP,LT_PLATFORM);
         addToThemeInfoWorld(12,this.TG_PALACE_6,LT_CASTLE);
         addToThemeInfoWorld(13,this.TG_CAVE_LAVA,LT_NORMAL);
         addToThemeInfoWorld(13,this.TG_PALACE_8,LT_CASTLE);
         addToThemeInfoGeneral(this.TG_SEA,"1-2d","3-2c","5-2c","6-2c","10-2c");
         addToThemeInfoGeneral(this.TG_WATER,"8-1b");
         addToThemeInfoGeneral(this.TG_GRASS_PILLARS,"9-3a");
         addToThemeInfoGeneral(this.TG_SKY_NIGHT,"11-1b","13-2c");
         addToThemeInfoGeneral(this.TG_WATER_NIGHT,"9-4a","B-2b");
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL,LT_PLATFORM);
         addToTypePlayList(LT_CASTLE,this.SngPalace);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngAction2);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngWater);
         addToTypePlayList(LT_INTRO,this.SngEnterPipe);
         addToTypePlayList(LT_NORMAL,this.SngGrass);
         addToTypePlayList(LT_PIPE_BONUS,this.SngWater);
         addToTypePlayList(LT_PLATFORM,this.SngAction2);
         addToTypePlayList(LT_UNDER_GROUND,this.SngAction1);
         addToTypePlayList(LT_WATER,this.SngWater);
         addToTypePlayList(MT_DARK_EPIC,this.SngAction2);
         addToTypePlayList(BOSS,this.SngBoss);
         addToTypePlayList(CHAR_SEL,this.SngCharacterSelect);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngEnterPipe);
         addToTypePlayList(CREDITS,this.SngCredits);
         addToTypePlayList(DIE,null);
         addToTypePlayList(FINAL_BOSS,this.SngBowser);
         addToTypePlayList(GAME_OVER,this.SngCharacterSelect);
         addToTypePlayList(HURRY,null);
         addToTypePlayList(STAR,this.SngBowser);
         addToTypePlayList(TITLE_SCREEN,this.SngTitle);
         addToTypePlayList(WIN,this.SngLevelWin);
         addToTypePlayList(WIN_CASTLE,this.SngPalaceWin);
         addToThemePlayList(this.TG_GRASS_PILLARS,this.SngAction2,[LT_NORMAL]);
         addToThemePlayList(this.TG_FOREST_TREES,this.SngAction1,[LT_NORMAL,LT_PLATFORM]);
         addToThemePlayList(this.TG_FOREST_LEAVES,this.SngAction2,[LT_NORMAL,LT_PLATFORM]);
         addToThemePlayList(this.TG_DESERT_GREEN_CACTI,this.SngAction1,[LT_NORMAL]);
         addToThemePlayList(this.TG_DESERT_BROWN_CACTI,this.SngAction2,[LT_NORMAL]);
         addToThemePlayList(this.TG_CAVE_LAVA,this.SngAction2,[LT_NORMAL]);
         addToThemePlayList(this.TG_PALACE_8,this.SngPalace8,[LT_CASTLE]);
         addToThemePlayList(this.TG_PALACE_8_WATER,this.SngPalace8c,[LT_WATER]);
      }
   }
}
