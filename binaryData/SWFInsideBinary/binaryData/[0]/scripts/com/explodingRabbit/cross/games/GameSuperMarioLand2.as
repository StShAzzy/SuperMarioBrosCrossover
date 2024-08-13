package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.data.MapPack;
   import com.smbc.errors.SingletonError;
   import com.smbc.graphics.ThemeGroup;
   
   public class GameSuperMarioLand2 extends Game
   {
      
      private static var instance:Game;
      
      public static const NUM_WORLDS:int = 8;
       
      
      public const Gbs:Class = GameSuperMarioLand2_Gbs;
      
      private const TG_OVERWORLD:ThemeGroup = addThemeGroup(1,1);
      
      private const TG_OVERWORLD_TREES:ThemeGroup = addThemeGroup(1,2);
      
      private const TG_OVERWORLD_NIGHT:ThemeGroup = addThemeGroup(1,3,MT_DARK_EPIC);
      
      private const TG_OVERWORLD_NIGHT_FENCE:ThemeGroup = addThemeGroup(1,4,MT_DARK_EPIC);
      
      private const TG_UNDERGROUND:ThemeGroup = addThemeGroup(2,1);
      
      private const TG_WARIO_CASTLE:ThemeGroup = addThemeGroup(3,1);
      
      private const TG_WARIO_CASTLE_WATER:ThemeGroup = addThemeGroup(3,2);
      
      private const TG_WATER:ThemeGroup = addThemeGroup(4,1);
      
      private const TG_JUNGLE:ThemeGroup = addThemeGroup(5,1);
      
      private const TG_MOON:ThemeGroup = addThemeGroup(6,1,MT_DARK_EPIC);
      
      private const TG_GHOST_HOUSE:ThemeGroup = addThemeGroup(7,1,MT_DARK_EPIC);
      
      private const TG_BEE_HIVE:ThemeGroup = addThemeGroup(8,1);
      
      private const TG_LIBRARY:ThemeGroup = addThemeGroup(9,1);
      
      private const TG_CASTLE:ThemeGroup = addThemeGroup(10,1);
      
      private const TG_SUB:ThemeGroup = addThemeGroup(11,1);
      
      private const TG_CHECKER_BOARD:ThemeGroup = addThemeGroup(12,1);
      
      private const VOLUME:int = 60;
      
      public const SngAthletic:Song = addSong(this.Gbs,1,null,this.VOLUME);
      
      public const SngDie:Song = addSong(this.Gbs,2,null,this.VOLUME);
      
      public const SngLevelClear:Song = addSong(this.Gbs,3,null,this.VOLUME);
      
      public const SngInvincible:Song = addSong(this.Gbs,4,null,this.VOLUME);
      
      public const SngMacroZone:Song = addSong(this.Gbs,5,null,this.VOLUME);
      
      public const SngOverworldMap:Song = addSong(this.Gbs,6,null,this.VOLUME);
      
      public const SngGameOver:Song = addSong(this.Gbs,7,null,this.VOLUME);
      
      public const SngBonusAttempted:Song = addSong(this.Gbs,8,null,this.VOLUME);
      
      public const SngTimeRunningOut:Song = addSong(this.Gbs,9,null,this.VOLUME);
      
      public const SngWarioCastle:Song = addSong(this.Gbs,11,null,this.VOLUME);
      
      public const SngBossDefeated:Song = addSong(this.Gbs,12,null,this.VOLUME);
      
      public const SngFileSelect:Song = addSong(this.Gbs,13,null,this.VOLUME + 20);
      
      public const SngCastleGates:Song = addSong(this.Gbs,14,null,this.VOLUME);
      
      public const SngUnknown:Song = addSong(this.Gbs,15,null,this.VOLUME);
      
      public const SngTreeZone:Song = addSong(this.Gbs,16,null,this.VOLUME);
      
      public const SngGraveyard:Song = addSong(this.Gbs,17,null,this.VOLUME);
      
      public const SngUnknown2:Song = addSong(this.Gbs,18,null,this.VOLUME);
      
      public const SngMoon:Song = addSong(this.Gbs,19,null,this.VOLUME);
      
      public const SngTreeTop:Song = addSong(this.Gbs,20,null,this.VOLUME);
      
      public const SngBonusChance:Song = addSong(this.Gbs,21,null,this.VOLUME);
      
      public const SngBonusComplete:Song = addSong(this.Gbs,22,null,this.VOLUME);
      
      public const SngSeaShore:Song = addSong(this.Gbs,23,null,this.VOLUME);
      
      public const SngWarioDefeated:Song = addSong(this.Gbs,24,null,this.VOLUME);
      
      public const SngCredits:Song = addSong(this.Gbs,24,null,this.VOLUME,45);
      
      public const SngUknownSelection:Song = addSong(this.Gbs,25,null,this.VOLUME);
      
      public const SngUnknownLevelIntro:Song = addSong(this.Gbs,26,null,this.VOLUME);
      
      public const SngMarioZone:Song = addSong(this.Gbs,27,null,this.VOLUME);
      
      public const SngSpaceZone:Song = addSong(this.Gbs,28,null,this.VOLUME);
      
      public const SngStarMaze:Song = addSong(this.Gbs,29,null,this.VOLUME);
      
      public const SngPumpkinZone:Song = addSong(this.Gbs,30,null,this.VOLUME);
      
      public const SngHauntedHouse:Song = addSong(this.Gbs,31,null,this.VOLUME);
      
      public const SngBossBattle:Song = addSong(this.Gbs,32,null,this.VOLUME);
      
      public const SngWarioBattle:Song = addSong(this.Gbs,33,null,this.VOLUME);
      
      public const SngWarioBattle2:Song = addSong(this.Gbs,34,null,this.VOLUME);
      
      public const SngWarioBattle3:Song = addSong(this.Gbs,35,null,this.VOLUME);
      
      public const SngBossBattleNoIntro:Song = addSong(this.Gbs,36,null,this.VOLUME);
      
      public const SngWarioBattleNoIntro:Song = addSong(this.Gbs,37,null,this.VOLUME);
      
      public const SngWarioBattle2NoIntro:Song = addSong(this.Gbs,38,null,this.VOLUME);
      
      public const SngWarioBattle3NoIntro:Song = addSong(this.Gbs,39,null,this.VOLUME);
      
      public const SngMachine:Song = addSong(this.Gbs,40,null,this.VOLUME);
      
      public const SngLevelStart:Song = addSong(this.Gbs,61,null,this.VOLUME);
      
      public function GameSuperMarioLand2(param1:int, param2:int)
      {
         super("Super Mario Land 2: 6 Golden Coins","Nintendo",Consoles.gameBoy,param1,"Super Mario Land 2",param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function setUpLevelThemes() : void
      {
         addToThemeInfoGeneral(this.TG_OVERWORLD,LT_NORMAL,LT_INTRO,LT_PLATFORM,LT_CHEEP_CHEEP);
         addToThemeInfoGeneral(this.TG_UNDERGROUND,LT_UNDER_GROUND);
         addToThemeInfoGeneral(this.TG_CHECKER_BOARD,LT_COIN_HEAVEN,LT_PIPE_BONUS);
         addToThemeInfoGeneral(this.TG_CASTLE,LT_CASTLE);
         addToThemeInfoGeneral(this.TG_WATER,LT_WATER);
         addToThemeInfoWorld(1,this.TG_OVERWORLD_TREES,LT_PLATFORM);
         addToThemeInfoWorld(2,this.TG_LIBRARY,LT_NORMAL,LT_INTRO,LT_CHEEP_CHEEP,LT_PLATFORM);
         addToThemeInfoWorld(3,this.TG_GHOST_HOUSE,LT_NORMAL,LT_INTRO,LT_CHEEP_CHEEP,LT_PLATFORM);
         addToThemeInfoWorld(4,this.TG_OVERWORLD_NIGHT,LT_NORMAL,LT_INTRO,LT_CHEEP_CHEEP);
         addToThemeInfoWorld(4,this.TG_OVERWORLD_NIGHT_FENCE,LT_PLATFORM);
         addToThemeInfoWorld(5,this.TG_JUNGLE,LT_NORMAL,LT_INTRO,LT_CHEEP_CHEEP,LT_PLATFORM);
         addToThemeInfoWorld(6,this.TG_SUB,LT_NORMAL,LT_INTRO,LT_CHEEP_CHEEP,LT_PLATFORM);
         addToThemeInfoWorld(7,this.TG_BEE_HIVE,LT_NORMAL,LT_INTRO,LT_CHEEP_CHEEP,LT_PLATFORM);
         addToThemeInfoWorld(8,this.TG_MOON,LT_NORMAL,LT_PLATFORM);
         addToThemeInfoWorld(8,this.TG_WARIO_CASTLE,LT_CASTLE);
         addToThemeInfoWorld(8,this.TG_WARIO_CASTLE_WATER,LT_WATER);
         themeMapPack = MapPack.Special;
         addToThemeInfoGeneral(this.TG_WATER,"8-2b");
         themeMapPack = MapPack.LostLevels;
         addToThemeInfoWorld(2,this.TG_OVERWORLD_NIGHT,LT_NORMAL);
         addToThemeInfoWorld(2,this.TG_OVERWORLD_NIGHT_FENCE,LT_CHEEP_CHEEP);
         addToThemeInfoWorld(3,this.TG_LIBRARY,LT_NORMAL,LT_INTRO,LT_PLATFORM);
         addToThemeInfoWorld(4,this.TG_GHOST_HOUSE,LT_NORMAL,LT_PLATFORM);
         addToThemeInfoWorld(5,this.TG_JUNGLE,LT_NORMAL,LT_INTRO,LT_PLATFORM);
         addToThemeInfoWorld(6,this.TG_SUB,LT_NORMAL,LT_INTRO,LT_CHEEP_CHEEP);
         addToThemeInfoWorld(7,this.TG_BEE_HIVE,LT_NORMAL,LT_PLATFORM);
         addToThemeInfoWorld(8,this.TG_MOON,LT_NORMAL,LT_PLATFORM);
         addToThemeInfoWorld(9,this.TG_SUB,LT_NORMAL,LT_CASTLE);
         addToThemeInfoWorld(10,this.TG_BEE_HIVE,LT_NORMAL,LT_INTRO,LT_PLATFORM);
         addToThemeInfoWorld(12,this.TG_GHOST_HOUSE,LT_NORMAL,LT_CHEEP_CHEEP,LT_PLATFORM);
         addToThemeInfoWorld(13,this.TG_MOON,LT_NORMAL);
         addToThemeInfoWorld(13,this.TG_WARIO_CASTLE,LT_CASTLE);
         addToThemeInfoGeneral(this.TG_WATER,"8-1b");
         addToThemeInfoGeneral(this.TG_WARIO_CASTLE_WATER,"8-4b");
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngWarioCastle);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngTreeTop);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngMoon);
         addToTypePlayList(LT_INTRO,this.SngOverworldMap);
         addToTypePlayList(LT_NORMAL,this.SngAthletic);
         addToTypePlayList(LT_PIPE_BONUS,this.SngMachine);
         addToTypePlayList(LT_PLATFORM,this.SngTreeTop);
         addToTypePlayList(LT_UNDER_GROUND,this.SngHauntedHouse);
         addToTypePlayList(LT_WATER,this.SngSeaShore);
         addToTypePlayList(MT_DARK_EPIC,this.SngStarMaze);
         addToTypePlayList(BOSS,this.SngBossBattle);
         addToTypePlayList(CHAR_SEL,this.SngFileSelect);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngLevelStart);
         addToTypePlayList(CREDITS,this.SngCredits);
         addToTypePlayList(DIE,this.SngDie);
         addToTypePlayList(FINAL_BOSS,this.SngWarioBattle);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngWarioBattle2NoIntro);
         addToTypePlayList(STAR,this.SngInvincible);
         addToTypePlayList(TITLE_SCREEN,this.SngAthletic);
         addToTypePlayList(WIN,this.SngLevelClear);
         addToTypePlayList(WIN_CASTLE,this.SngBossDefeated);
         addToThemePlayList(this.TG_GHOST_HOUSE,this.SngGraveyard,[LT_NORMAL,LT_PLATFORM]);
         addToThemePlayList(this.TG_OVERWORLD_NIGHT,this.SngStarMaze,[LT_NORMAL,LT_PLATFORM]);
         addToThemePlayList(this.TG_OVERWORLD_NIGHT_FENCE,this.SngStarMaze,[LT_NORMAL,LT_PLATFORM]);
         addToThemePlayList(this.TG_MOON,this.SngStarMaze,[LT_NORMAL,LT_PLATFORM]);
         addToThemePlayList(this.TG_LIBRARY,this.SngSeaShore,[LT_NORMAL]);
         addToThemePlayList(this.TG_SUB,this.SngSeaShore,[LT_NORMAL]);
         addToThemePlayList(this.TG_WARIO_CASTLE_WATER,this.SngWarioCastle,[LT_WATER]);
      }
   }
}
