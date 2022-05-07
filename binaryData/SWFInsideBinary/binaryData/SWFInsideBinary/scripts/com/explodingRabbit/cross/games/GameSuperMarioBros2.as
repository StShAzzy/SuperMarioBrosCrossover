package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.data.MapPack;
   import com.smbc.errors.SingletonError;
   import com.smbc.graphics.ThemeGroup;
   
   public class GameSuperMarioBros2 extends Game
   {
      
      private static var instance:Game;
       
      
      public const Nsfe:Class = GameSuperMarioBros2_Nsfe;
      
      private const VOLUME:int = 50;
      
      public const SngTitleScreen:Song = addSong(this.Nsfe,1,null,this.VOLUME);
      
      public const SngCharacterSelect:Song = addSong(this.Nsfe,2,null,this.VOLUME);
      
      public const SngOverworld:Song = addSong(this.Nsfe,3,null,this.VOLUME);
      
      public const SngUnderGround:Song = addSong(this.Nsfe,4,null,this.VOLUME);
      
      public const SngInvincible:Song = addSong(this.Nsfe,5,null,this.VOLUME);
      
      public const SngPotionLand:Song = addSong(this.Nsfe,6,null,this.VOLUME);
      
      public const SngBoss:Song = addSong(this.Nsfe,7,null,this.VOLUME);
      
      public const SngBonusGameStart:Song = addSong(this.Nsfe,8,null,this.VOLUME);
      
      public const SngBonusGameWin:Song = addSong(this.Nsfe,9,null,this.VOLUME);
      
      public const SngBonusGameLose:Song = addSong(this.Nsfe,10,null,this.VOLUME);
      
      public const SngFightWart:Song = addSong(this.Nsfe,11,null,this.VOLUME);
      
      public const SngBeatWorld:Song = addSong(this.Nsfe,12,null,this.VOLUME);
      
      public const SngGameOver:Song = addSong(this.Nsfe,13,null,this.VOLUME);
      
      public const SngEnding:Song = addSong(this.Nsfe,14,null,this.VOLUME);
      
      private const TG_GRASS:ThemeGroup = addThemeGroup(1,1);
      
      private const TG_GRASS_NIGHT:ThemeGroup = addThemeGroup(1,2,MT_DARK_EPIC);
      
      private const TG_SUB_SPACE:ThemeGroup = addThemeGroup(1,3);
      
      private const TG_WATERFALL:ThemeGroup = addThemeGroup(1,4);
      
      private const TG_CAVE:ThemeGroup = addThemeGroup(2,1);
      
      private const TG_PLATFORM_NIGHT:ThemeGroup = addThemeGroup(2,2);
      
      private const TG_CASTLE:ThemeGroup = addThemeGroup(3,1);
      
      private const TG_CASTLE_SUB_SPACE:ThemeGroup = addThemeGroup(3,2);
      
      private const TG_DESERT:ThemeGroup = addThemeGroup(4,1);
      
      private const TG_DESERT_NIGHT:ThemeGroup = addThemeGroup(5,1);
      
      private const TG_CASTLE_DESERT:ThemeGroup = addThemeGroup(6,1);
      
      private const TG_ICE:ThemeGroup = addThemeGroup(7,1);
      
      private const TG_CAVE_ICE:ThemeGroup = addThemeGroup(8,1);
      
      private const TG_CASTLE_ICE:ThemeGroup = addThemeGroup(9,1);
      
      private const TG_CASTLE_TREE:ThemeGroup = addThemeGroup(10,1);
      
      private const TG_CASTLE_RED:ThemeGroup = addThemeGroup(11,1);
      
      private const TG_SKY:ThemeGroup = addThemeGroup(12,1);
      
      private const TG_CASTLE_SKY:ThemeGroup = addThemeGroup(13,1);
      
      private const TG_CASTLE_SKY_WATER:ThemeGroup = addThemeGroup(13,2);
      
      private const TG_PIPE_BONUS:ThemeGroup = addThemeGroup(14,1);
      
      private const TG_COIN_HEAVEN:ThemeGroup = addThemeGroup(15,1);
      
      private const TG_COIN_HEAVEN_NIGHT:ThemeGroup = addThemeGroup(15,2);
      
      private const TG_WATER:ThemeGroup = addThemeGroup(16,1);
      
      private const TG_WATER_SUB_SPACE:ThemeGroup = addThemeGroup(16,2);
      
      public function GameSuperMarioBros2(param1:int, param2:int)
      {
         super("Super Mario Bros. 2","Nintendo",Consoles.nintendo,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function setUpLevelThemes() : void
      {
         addToThemeInfoGeneral(this.TG_GRASS,LT_NORMAL,LT_INTRO,LT_CHEEP_CHEEP);
         addToThemeInfoGeneral(this.TG_WATERFALL,LT_PLATFORM);
         addToThemeInfoGeneral(this.TG_CAVE,LT_UNDER_GROUND);
         addToThemeInfoGeneral(this.TG_WATER,LT_WATER);
         addToThemeInfoGeneral(this.TG_CASTLE,LT_CASTLE);
         addToThemeInfoGeneral(this.TG_PIPE_BONUS,LT_PIPE_BONUS);
         addToThemeInfoGeneral(this.TG_COIN_HEAVEN,LT_COIN_HEAVEN);
         addToThemeInfoWorld(3,this.TG_DESERT,LT_NORMAL);
         addToThemeInfoWorld(3,this.TG_DESERT_NIGHT,LT_PLATFORM);
         addToThemeInfoWorld(3,this.TG_CASTLE_DESERT,LT_CASTLE);
         addToThemeInfoWorld(4,this.TG_ICE,LT_NORMAL,LT_INTRO,LT_PLATFORM,LT_COIN_HEAVEN);
         addToThemeInfoWorld(4,this.TG_CAVE_ICE,LT_UNDER_GROUND);
         addToThemeInfoWorld(4,this.TG_CASTLE_ICE,LT_CASTLE);
         addToThemeInfoWorld(5,this.TG_GRASS_NIGHT,LT_NORMAL);
         addToThemeInfoWorld(5,this.TG_PLATFORM_NIGHT,LT_PLATFORM);
         addToThemeInfoWorld(5,this.TG_CASTLE_TREE,LT_CASTLE);
         addToThemeInfoWorld(5,this.TG_COIN_HEAVEN_NIGHT,LT_COIN_HEAVEN);
         addToThemeInfoWorld(6,this.TG_DESERT,LT_NORMAL);
         addToThemeInfoWorld(6,this.TG_DESERT_NIGHT,LT_PLATFORM);
         addToThemeInfoWorld(6,this.TG_CASTLE_RED,LT_CASTLE);
         addToThemeInfoWorld(7,this.TG_SUB_SPACE,LT_NORMAL,LT_INTRO,LT_CHEEP_CHEEP);
         addToThemeInfoWorld(7,this.TG_WATER_SUB_SPACE,LT_WATER);
         addToThemeInfoWorld(7,this.TG_CASTLE_SUB_SPACE,LT_CASTLE);
         addToThemeInfoWorld(8,this.TG_SKY,LT_NORMAL,LT_PLATFORM);
         addToThemeInfoWorld(8,this.TG_CASTLE_SKY,LT_CASTLE);
         addToThemeInfoWorld(8,this.TG_CASTLE_SKY_WATER,LT_WATER);
         themeMapPack = MapPack.Special;
         addToThemeInfoGeneral(this.TG_CAVE_ICE,"4-3b");
         addToThemeInfoGeneral(this.TG_DESERT,"6-2d");
         addToThemeInfoGeneral(this.TG_WATER,"8-2b");
      }
      
      override protected function createPlayList() : void
      {
         addToTypePlayList(LT_CASTLE,this.SngUnderGround);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngOverworld);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngPotionLand);
         addToTypePlayList(LT_INTRO,this.SngPotionLand);
         addToTypePlayList(LT_NORMAL,this.SngOverworld);
         addToTypePlayList(LT_PIPE_BONUS,this.SngUnderGround);
         addToTypePlayList(LT_PLATFORM,this.SngOverworld);
         addToTypePlayList(LT_UNDER_GROUND,this.SngUnderGround);
         addToTypePlayList(LT_WATER,this.SngPotionLand);
         addToTypePlayList(MT_DARK_EPIC,this.SngOverworld);
         addToTypePlayList(BOSS,this.SngBoss);
         addToTypePlayList(CHAR_SEL,this.SngCharacterSelect);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngBonusGameStart);
         addToTypePlayList(CREDITS,this.SngEnding);
         addToTypePlayList(DIE,this.SngBonusGameLose);
         addToTypePlayList(FINAL_BOSS,this.SngFightWart);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngBoss);
         addToTypePlayList(TITLE_SCREEN,this.SngOverworld);
         addToTypePlayList(STAR,this.SngInvincible);
         addToTypePlayList(WIN,this.SngBonusGameWin);
         addToTypePlayList(WIN_CASTLE,this.SngBeatWorld);
         addToThemePlayList(this.TG_SUB_SPACE,this.SngPotionLand,[LT_NORMAL]);
         addToThemePlayList(this.TG_CASTLE_SUB_SPACE,this.SngPotionLand,[LT_CASTLE]);
         addToThemePlayList(this.TG_DESERT_NIGHT,this.SngUnderGround,[LT_PLATFORM]);
         addToThemePlayList(this.TG_CASTLE_SKY_WATER,this.SngUnderGround,[LT_WATER]);
      }
   }
}
