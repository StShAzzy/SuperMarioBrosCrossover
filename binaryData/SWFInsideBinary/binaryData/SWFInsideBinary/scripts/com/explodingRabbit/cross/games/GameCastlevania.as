package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.data.MapPack;
   import com.smbc.errors.SingletonError;
   import com.smbc.graphics.ThemeGroup;
   
   public class GameCastlevania extends Game
   {
      
      private static var instance:Game;
       
      
      public const Nsf:Class = GameCastlevania_Nsf;
      
      private const VOLUME:int = 80;
      
      public const SngIntro:Song = addSong(this.Nsf,1,null,this.VOLUME);
      
      public const SngVampireKiller:Song = addSong(this.Nsf,2,null,this.VOLUME);
      
      public const SngArmory:Song = addSong(this.Nsf,3,null,this.VOLUME);
      
      public const SngWickedChild:Song = addSong(this.Nsf,4,null,this.VOLUME);
      
      public const SngOutOfTime:Song = addSong(this.Nsf,5,null,this.VOLUME);
      
      public const SngPrison:Song = addSong(this.Nsf,6,null,this.VOLUME);
      
      public const SngSwamp:Song = addSong(this.Nsf,7,null,this.VOLUME);
      
      public const SngDraculasQuarters:Song = addSong(this.Nsf,8,null,this.VOLUME);
      
      public const SngBoss:Song = addSong(this.Nsf,9,null,this.VOLUME);
      
      public const SngBossFinal:Song = addSong(this.Nsf,10,null,this.VOLUME);
      
      public const SngEnding:Song = addSong(this.Nsf,11,null,this.VOLUME);
      
      public const SngVictory:Song = addSong(this.Nsf,12,null,this.VOLUME);
      
      public const SngGameComplete:Song = addSong(this.Nsf,13,null,this.VOLUME);
      
      public const SngDie:Song = addSong(this.Nsf,14,null,this.VOLUME);
      
      public const SngGameOver:Song = addSong(this.Nsf,15,null,this.VOLUME);
      
      public const SngChar:Song = addSong(this.Nsf,54,null,this.VOLUME);
      
      private const TG_COURTYARD:ThemeGroup = addThemeGroup(1,1);
      
      private const TG_ENTRYWAY:ThemeGroup = addThemeGroup(2,1);
      
      private const TG_WATER:ThemeGroup = addThemeGroup(2,2);
      
      private const TG_RED_PILLARS_1:ThemeGroup = addThemeGroup(2,3);
      
      private const TG_RED_PILLARS_2:ThemeGroup = addThemeGroup(2,4);
      
      private const TG_RED_PILLARS_3:ThemeGroup = addThemeGroup(2,5);
      
      private const TG_BLUE_WALLS:ThemeGroup = addThemeGroup(3,1);
      
      private const TG_CATACOMBS:ThemeGroup = addThemeGroup(3,2);
      
      private const TG_CAVE:ThemeGroup = addThemeGroup(4,1);
      
      private const TG_GARDEN:ThemeGroup = addThemeGroup(5,1);
      
      private const TG_SEWER:ThemeGroup = addThemeGroup(5,2);
      
      private const TG_BLUE_PILLARS:ThemeGroup = addThemeGroup(5,3);
      
      private const TG_PRISON:ThemeGroup = addThemeGroup(6,1);
      
      private const TG_GREAT_HALL:ThemeGroup = addThemeGroup(6,2);
      
      private const TG_RUINS:ThemeGroup = addThemeGroup(7,1);
      
      private const TG_FINAL:ThemeGroup = addThemeGroup(8,1);
      
      public function GameCastlevania(param1:int, param2:int)
      {
         super("Castlevania","Konami",Consoles.nintendo,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function setUpLevelThemes() : void
      {
         addToThemeInfoGeneral(this.TG_COURTYARD,LT_NORMAL,LT_INTRO,LT_PLATFORM);
         addToThemeInfoGeneral(this.TG_WATER,LT_WATER);
         addToThemeInfoGeneral(this.TG_CAVE,LT_UNDER_GROUND,LT_PIPE_BONUS);
         addToThemeInfoGeneral(this.TG_ENTRYWAY,LT_CASTLE,LT_CHEEP_CHEEP);
         addToThemeInfoGeneral(this.TG_BLUE_WALLS,LT_COIN_HEAVEN);
         addToThemeInfoWorld(2,this.TG_ENTRYWAY,LT_NORMAL);
         addToThemeInfoWorld(3,this.TG_RED_PILLARS_1,LT_NORMAL);
         addToThemeInfoWorld(4,this.TG_BLUE_WALLS,LT_NORMAL,LT_INTRO,LT_PLATFORM);
         addToThemeInfoWorld(4,this.TG_CATACOMBS,LT_CASTLE);
         addToThemeInfoWorld(5,this.TG_GARDEN,LT_NORMAL,LT_PLATFORM);
         addToThemeInfoWorld(5,this.TG_BLUE_PILLARS,LT_CASTLE);
         addToThemeInfoWorld(6,this.TG_SEWER,LT_NORMAL,LT_PLATFORM);
         addToThemeInfoWorld(6,this.TG_GARDEN,LT_COIN_HEAVEN);
         addToThemeInfoWorld(6,this.TG_BLUE_PILLARS,LT_CASTLE);
         addToThemeInfoWorld(7,this.TG_PRISON,LT_NORMAL,LT_INTRO,LT_CHEEP_CHEEP);
         addToThemeInfoWorld(7,this.TG_GREAT_HALL,LT_CASTLE);
         addToThemeInfoWorld(8,this.TG_RUINS,LT_NORMAL);
         addToThemeInfoWorld(8,this.TG_FINAL,LT_CASTLE);
         addToThemeInfoGeneral(this.TG_RED_PILLARS_2,"3-3a");
         addToThemeInfoGeneral(this.TG_RED_PILLARS_3,"3-4a");
         themeMapPack = MapPack.Special;
         addToThemeInfoGeneral(this.TG_COURTYARD,"2-4b");
         addToThemeInfoGeneral(this.TG_BLUE_WALLS,"4-3b");
         addToThemeInfoGeneral(this.TG_RUINS,"8-1a","8-2a");
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngDraculasQuarters);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngOutOfTime);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngArmory);
         addToTypePlayList(LT_INTRO,this.SngVampireKiller);
         addToTypePlayList(LT_NORMAL,this.SngVampireKiller);
         addToTypePlayList(LT_PIPE_BONUS,this.SngPrison);
         addToTypePlayList(LT_PLATFORM,this.SngOutOfTime);
         addToTypePlayList(LT_UNDER_GROUND,this.SngPrison);
         addToTypePlayList(LT_WATER,this.SngSwamp);
         addToTypePlayList(MT_DARK_EPIC,this.SngWickedChild);
         addToTypePlayList(BOSS,this.SngBoss);
         addToTypePlayList(CHAR_SEL,this.SngPrison);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngIntro);
         addToTypePlayList(CREDITS,this.SngEnding);
         addToTypePlayList(DIE,this.SngDie);
         addToTypePlayList(FINAL_BOSS,this.SngBossFinal);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngBossFinal);
         addToTypePlayList(STAR,this.SngBoss);
         addToTypePlayList(TITLE_SCREEN,this.SngArmory);
         addToTypePlayList(WIN,this.SngVictory);
         addToTypePlayList(WIN_CASTLE,this.SngGameComplete);
      }
   }
}
