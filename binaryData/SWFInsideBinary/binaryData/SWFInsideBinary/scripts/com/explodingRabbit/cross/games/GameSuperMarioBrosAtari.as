package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.data.MapPack;
   import com.smbc.errors.SingletonError;
   import com.smbc.graphics.ThemeGroup;
   
   public class GameSuperMarioBrosAtari extends Game
   {
      
      private static var instance:Game;
      
      private static const VOLUME_DR_MARIO:int = 60;
       
      
      public const NSF:Class = GameSuperMarioBrosAtari_NSF;
      
      public const SuperMarioBrosOverworld:Class = GameSuperMarioBrosAtari_SuperMarioBrosOverworld;
      
      public const SuperMarioBros2Overworld:Class = GameSuperMarioBrosAtari_SuperMarioBros2Overworld;
      
      public const DrMario:Class = GameSuperMarioBrosAtari_DrMario;
      
      public const MarioBros:Class = GameSuperMarioBrosAtari_MarioBros;
      
      private const VOLUME:int = 50;
      
      public const SngOverworld:Song = addSong(this.SuperMarioBrosOverworld,1,null,30);
      
      public const SngOverworldMario2:Song = addSong(this.SuperMarioBros2Overworld,1,null,this.VOLUME);
      
      public const SngDrMarioIntro:Song = addSong(this.DrMario,1,null,VOLUME_DR_MARIO + 20);
      
      public const SngDrMarioMain:Song = addSong(this.DrMario,2,null,VOLUME_DR_MARIO);
      
      public const SngDrMarioUnderground:Song = addSong(this.DrMario,3,null,VOLUME_DR_MARIO - 10);
      
      public const SngDrMarioSlow:Song = addSong(this.DrMario,4,null,VOLUME_DR_MARIO);
      
      public const SngDrMarioHappy:Song = addSong(this.DrMario,5,null,VOLUME_DR_MARIO);
      
      public const SngDrMarioCredits:Song = addSong(this.DrMario,6,null,VOLUME_DR_MARIO);
      
      public const SngMarioBrosIntro:Song = addSong(this.MarioBros,1,null,this.VOLUME);
      
      public const SngMarioBrosWin:Song = addSong(this.MarioBros,2,null,this.VOLUME);
      
      public const SngMarioBrosGameOver:Song = addSong(this.MarioBros,3,null,this.VOLUME);
      
      public const SngMarioBrosRespawn:Song = addSong(this.MarioBros,4,null,this.VOLUME);
      
      public const SngMarioBrosJingle:Song = addSong(this.MarioBros,5,null,this.VOLUME);
      
      private const TG_OVERWORLD:ThemeGroup = addThemeGroup(1,1);
      
      private const TG_OVERWORLD_NIGHT:ThemeGroup = addThemeGroup(1,2,MT_DARK_EPIC);
      
      private const TG_SNOW:ThemeGroup = addThemeGroup(1,3);
      
      private const TG_SNOW_NIGHT:ThemeGroup = addThemeGroup(1,4,MT_DARK_EPIC);
      
      private const TG_OVERWORLD_GRAY:ThemeGroup = addThemeGroup(1,5,MT_DARK_EPIC);
      
      private const TG_UNDER_GROUND:ThemeGroup = addThemeGroup(1,6);
      
      private const TG_UNDER_GROUND_WATER:ThemeGroup = addThemeGroup(1,7);
      
      private const TG_MUSHROOM_PLATFORM:ThemeGroup = addThemeGroup(2,1);
      
      private const TG_COIN_HEAVEN:ThemeGroup = addThemeGroup(3,1);
      
      private const TG_COIN_HEAVEN_NIGHT:ThemeGroup = addThemeGroup(3,2,MT_DARK_EPIC);
      
      private const TG_COIN_HEAVEN_BLUE:ThemeGroup = addThemeGroup(3,3);
      
      private const TG_WATER:ThemeGroup = addThemeGroup(4,1);
      
      private const TG_WATER_NIGHT:ThemeGroup = addThemeGroup(4,2);
      
      private const TG_CASTLE:ThemeGroup = addThemeGroup(5,1);
      
      private const TG_CASTLE_WATER:ThemeGroup = addThemeGroup(5,2);
      
      private const TG_CLOUDS:ThemeGroup = addThemeGroup(6,1);
      
      public function GameSuperMarioBrosAtari(param1:int, param2:int)
      {
         super("Super Mario Bros.","Nintendo",Consoles.atari,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function setUpLevelThemes() : void
      {
         addToThemeInfoGeneral(this.TG_OVERWORLD,LT_NORMAL,LT_INTRO,LT_PLATFORM,LT_CHEEP_CHEEP);
         addToThemeInfoGeneral(this.TG_UNDER_GROUND,LT_UNDER_GROUND,LT_PIPE_BONUS);
         addToThemeInfoGeneral(this.TG_COIN_HEAVEN,LT_COIN_HEAVEN);
         addToThemeInfoGeneral(this.TG_CASTLE,LT_CASTLE);
         addToThemeInfoGeneral(this.TG_WATER,LT_WATER);
         addToThemeInfoWorld(3,this.TG_SNOW_NIGHT,LT_NORMAL);
         addToThemeInfoWorld(3,this.TG_OVERWORLD_NIGHT,LT_PLATFORM);
         addToThemeInfoWorld(3,this.TG_COIN_HEAVEN_NIGHT,LT_COIN_HEAVEN);
         addToThemeInfoWorld(4,this.TG_MUSHROOM_PLATFORM,LT_NORMAL,LT_PLATFORM);
         addToThemeInfoWorld(5,this.TG_SNOW,LT_NORMAL);
         addToThemeInfoWorld(6,this.TG_OVERWORLD_NIGHT,LT_NORMAL);
         addToThemeInfoWorld(6,this.TG_COIN_HEAVEN_NIGHT,LT_COIN_HEAVEN);
         addToThemeInfoWorld(6,this.TG_OVERWORLD_GRAY,LT_PLATFORM);
         addToThemeInfoWorld(7,this.TG_SNOW,LT_NORMAL);
         addToThemeInfoWorld(8,this.TG_CASTLE_WATER,LT_WATER);
         themeMapPack = MapPack.Special;
         addToThemeInfoGeneral(this.TG_WATER_NIGHT,"3-1b","6-2e");
         addToThemeInfoGeneral(this.TG_MUSHROOM_PLATFORM,"3-2b");
         addToThemeInfoGeneral(this.TG_COIN_HEAVEN,"4-1b");
         addToThemeInfoGeneral(this.TG_COIN_HEAVEN_BLUE,"4-3b");
         addToThemeInfoGeneral(this.TG_UNDER_GROUND_WATER,"6-2c");
         addToThemeInfoGeneral(this.TG_WATER,"8-2b");
      }
      
      override protected function createPlayList() : void
      {
         addToTypePlayList(LT_CASTLE,this.SngDrMarioSlow);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngOverworld);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngDrMarioMain);
         addToTypePlayList(LT_INTRO,this.SngMarioBrosIntro);
         addToTypePlayList(LT_NORMAL,this.SngOverworld);
         addToTypePlayList(LT_PIPE_BONUS,this.SngDrMarioUnderground);
         addToTypePlayList(LT_PLATFORM,this.SngOverworld);
         addToTypePlayList(LT_UNDER_GROUND,this.SngDrMarioUnderground);
         addToTypePlayList(LT_WATER,this.SngDrMarioHappy);
         addToTypePlayList(MT_DARK_EPIC,this.SngOverworld);
         addToTypePlayList(BOSS,this.SngDrMarioMain);
         addToTypePlayList(CHAR_SEL,this.SngDrMarioIntro);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngMarioBrosRespawn);
         addToTypePlayList(CREDITS,this.SngDrMarioCredits);
         addToTypePlayList(DIE,this.SngMarioBrosJingle);
         addToTypePlayList(FINAL_BOSS,this.SngDrMarioMain);
         addToTypePlayList(GAME_OVER,this.SngMarioBrosGameOver);
         addToTypePlayList(HURRY,this.SngDrMarioSlow);
         addToTypePlayList(STAR,this.SngDrMarioMain);
         addToTypePlayList(TITLE_SCREEN,this.SngOverworld);
         addToTypePlayList(WIN,this.SngMarioBrosWin);
         addToTypePlayList(WIN_CASTLE,this.SngMarioBrosGameOver);
         addToThemePlayList(this.TG_CASTLE_WATER,this.SngDrMarioSlow,[LT_WATER]);
      }
   }
}
