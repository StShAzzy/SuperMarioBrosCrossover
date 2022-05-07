package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.data.MapPack;
   import com.smbc.errors.SingletonError;
   import com.smbc.graphics.ThemeGroup;
   
   public class GameSuperMarioBros3 extends Game
   {
      
      private static var instance:Game;
       
      
      public const Nsf:Class = GameSuperMarioBros3_Nsf;
      
      public const Nsfe:Class = GameSuperMarioBros3_Nsfe;
      
      private const VOLUME:int = 55;
      
      private const TG_OVERWORLD:ThemeGroup = addThemeGroup(1,1);
      
      private const TG_OVERWORLD_NIGHT:ThemeGroup = addThemeGroup(1,2,MT_DARK_EPIC);
      
      private const TG_ICE:ThemeGroup = addThemeGroup(2,1);
      
      private const TG_UNDER_GROUND:ThemeGroup = addThemeGroup(3,1);
      
      private const TG_UNDER_GROUND_ICE:ThemeGroup = addThemeGroup(3,2);
      
      private const TG_WATER_SWIMMING:ThemeGroup = addThemeGroup(4,1);
      
      private const TG_WATER_SWIMMING_ICE:ThemeGroup = addThemeGroup(4,2);
      
      private const TG_WATER_SWIMMING_MUD:ThemeGroup = addThemeGroup(4,3);
      
      private const TG_WATER_OVERWORLD:ThemeGroup = addThemeGroup(5,1);
      
      private const TG_PIPE_BONUS:ThemeGroup = addThemeGroup(5,2);
      
      private const TG_CASTLE_NORMAL:ThemeGroup = addThemeGroup(5,3);
      
      private const TG_CASTLE_WATER:ThemeGroup = addThemeGroup(5,4);
      
      private const TG_CASTLE_PIPE:ThemeGroup = addThemeGroup(5,5);
      
      private const TG_CASTLE_CLOUD:ThemeGroup = addThemeGroup(5,6);
      
      private const TG_CASTLE_DARK:ThemeGroup = addThemeGroup(5,7);
      
      private const TG_PIPE_BONUS_BLUE:ThemeGroup = addThemeGroup(5,8);
      
      private const TG_PIPE_BONUS_ICE:ThemeGroup = addThemeGroup(5,9);
      
      private const TG_PIPE_BONUS_PIPE:ThemeGroup = addThemeGroup(5,10);
      
      private const TG_PIPES:ThemeGroup = addThemeGroup(6,1,MT_DARK_EPIC);
      
      private const TG_CLOUDS:ThemeGroup = addThemeGroup(7,1);
      
      private const TG_DESERT_BLUE_SKY:ThemeGroup = addThemeGroup(8,1);
      
      private const TG_DESERT_PINK_SKY:ThemeGroup = addThemeGroup(8,2);
      
      private const TG_AIRSHIP:ThemeGroup = addThemeGroup(9,1,MT_DARK_EPIC);
      
      private const TG_GRASS:ThemeGroup = addThemeGroup(10,1);
      
      private const TG_GRASS_NIGHT:ThemeGroup = addThemeGroup(10,2,MT_DARK_EPIC);
      
      private const TG_GRASS_DESERT:ThemeGroup = addThemeGroup(10,3);
      
      private const TG_BOWSER_CASTLE:ThemeGroup = addThemeGroup(11,1);
      
      private const TG_BOWSER_CASTLE_WATER:ThemeGroup = addThemeGroup(11,2);
      
      private const TG_AIRSHIP_INNER:ThemeGroup = addThemeGroup(12,1,MT_DARK_EPIC);
      
      private const TG_CASTLE_ICE:ThemeGroup = addThemeGroup(13,1);
      
      private const TG_CASTLE_DESERT:ThemeGroup = addThemeGroup(14,1);
      
      private const TG_PIPE_BONUS_DESERT:ThemeGroup = addThemeGroup(15,1);
      
      public const SngGrassLand:Song = addSong(this.Nsfe,1,null,this.VOLUME);
      
      public const SngDesertLand:Song = addSong(this.Nsfe,2,null,this.VOLUME);
      
      public const SngWaterWorld:Song = addSong(this.Nsfe,3,null,this.VOLUME);
      
      public const SngGiantsWorld:Song = addSong(this.Nsfe,4,null,this.VOLUME);
      
      public const SngCloudWorld:Song = addSong(this.Nsfe,5,null,this.VOLUME);
      
      public const SngIceWorld:Song = addSong(this.Nsfe,6,null,this.VOLUME);
      
      public const SngPipeWorld:Song = addSong(this.Nsfe,7,null,this.VOLUME);
      
      public const SngDarkWorld:Song = addSong(this.Nsfe,8,null,this.VOLUME);
      
      public const SngOverWorld:Song = addSong(this.Nsfe,9,null,this.VOLUME);
      
      public const SngAthletic:Song = addSong(this.Nsfe,10,null,this.VOLUME);
      
      public const SngSwimming:Song = addSong(this.Nsfe,11,null,this.VOLUME);
      
      public const SngUnderGround:Song = addSong(this.Nsfe,12,null,this.VOLUME);
      
      public const SngUpAbove:Song = addSong(this.Nsfe,13,null,this.VOLUME);
      
      public const SngInvincible:Song = addSong(this.Nsfe,14,null,this.VOLUME);
      
      public const SngWarpWhistle:Song = addSong(this.Nsfe,15,null,this.VOLUME);
      
      public const SngMusicBox:Song = addSong(this.Nsfe,16,null,this.VOLUME);
      
      public const SngCardGame:Song = addSong(this.Nsfe,17,null,this.VOLUME);
      
      public const SngChestGame:Song = addSong(this.Nsfe,18,null,this.VOLUME);
      
      public const SngHammerBros:Song = addSong(this.Nsfe,19,null,this.VOLUME);
      
      public const SngSaveTheKing:Song = addSong(this.Nsfe,20,null,this.VOLUME);
      
      public const SngAirship:Song = addSong(this.Nsfe,21,null,this.VOLUME);
      
      public const SngBossFight:Song = addSong(this.Nsfe,22,null,this.VOLUME);
      
      public const SngCastle:Song = addSong(this.Nsfe,23,null,this.VOLUME);
      
      public const SngBowserBattle:Song = addSong(this.Nsfe,24,null,this.VOLUME);
      
      public const SngSaveThePrincess:Song = addSong(this.Nsfe,25,null,this.VOLUME);
      
      public const SngOverWorldHurry:Song = addSong(this.Nsfe,27,null,this.VOLUME);
      
      public const SngAthleticHurry:Song = addSong(this.Nsfe,28,null,this.VOLUME);
      
      public const SngSwimmingHurry:Song = addSong(this.Nsfe,29,null,this.VOLUME);
      
      public const SngUnderGroundHurry:Song = addSong(this.Nsfe,30,null,this.VOLUME);
      
      public const SngInvincibleHurry:Song = addSong(this.Nsfe,31,null,this.VOLUME);
      
      public const SngChestGameHurry:Song = addSong(this.Nsfe,32,null,this.VOLUME);
      
      public const SngHammerBrosHurry:Song = addSong(this.Nsfe,33,null,this.VOLUME);
      
      public const SngAirshipHurry:Song = addSong(this.Nsfe,34,null,this.VOLUME);
      
      public const SngBossHurry:Song = addSong(this.Nsfe,35,null,this.VOLUME);
      
      public const SngCastleHurry:Song = addSong(this.Nsfe,36,null,this.VOLUME);
      
      public const SngBowserBattleHurry:Song = addSong(this.Nsfe,37,null,this.VOLUME);
      
      public const SngBeatLevel:Song = addSong(this.Nsfe,38,null,this.VOLUME);
      
      public const SngBeatAirship:Song = addSong(this.Nsfe,40,null,this.VOLUME);
      
      public const SngBeatBoomBoom:Song = addSong(this.Nsfe,41,null,this.VOLUME);
      
      public const SngGameOver:Song = addSong(this.Nsfe,42,null,this.VOLUME);
      
      public const SngDie:Song = addSong(this.Nsfe,43,null,this.VOLUME);
      
      public function GameSuperMarioBros3(param1:int, param2:int)
      {
         super("Super Mario Bros. 3","Nintendo",Consoles.nintendo,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function setUpLevelThemes() : void
      {
         addToThemeInfoGeneral(this.TG_OVERWORLD,LT_NORMAL,LT_INTRO,LT_PLATFORM,LT_CHEEP_CHEEP);
         addToThemeInfoGeneral(this.TG_UNDER_GROUND,LT_UNDER_GROUND);
         addToThemeInfoGeneral(this.TG_PIPE_BONUS_BLUE,LT_PIPE_BONUS);
         addToThemeInfoGeneral(this.TG_CLOUDS,LT_COIN_HEAVEN);
         addToThemeInfoGeneral(this.TG_CASTLE_NORMAL,LT_CASTLE);
         addToThemeInfoGeneral(this.TG_WATER_SWIMMING,LT_WATER);
         addToThemeInfoGeneral(this.TG_GRASS,"1-2d","1-3a");
         addToThemeInfoGeneral(this.TG_GRASS_DESERT,"3-2a");
         addToThemeInfoGeneral(this.TG_GRASS_NIGHT,"8-1a");
         addToThemeInfoWorld(2,this.TG_WATER_OVERWORLD,LT_NORMAL,LT_INTRO,LT_CHEEP_CHEEP);
         addToThemeInfoWorld(2,this.TG_CASTLE_WATER,LT_CASTLE);
         addToThemeInfoWorld(2,this.TG_PIPE_BONUS,LT_PIPE_BONUS);
         addToThemeInfoWorld(3,this.TG_DESERT_BLUE_SKY,LT_NORMAL,LT_INTRO);
         addToThemeInfoWorld(3,this.TG_DESERT_PINK_SKY,LT_PLATFORM);
         addToThemeInfoWorld(3,this.TG_CASTLE_DESERT,LT_CASTLE);
         addToThemeInfoWorld(3,this.TG_PIPE_BONUS_DESERT,LT_PIPE_BONUS);
         addToThemeInfoWorld(4,this.TG_ICE,LT_NORMAL,LT_INTRO,LT_PLATFORM);
         addToThemeInfoWorld(4,this.TG_UNDER_GROUND_ICE,LT_UNDER_GROUND);
         addToThemeInfoWorld(4,this.TG_CASTLE_ICE,LT_CASTLE);
         addToThemeInfoWorld(4,this.TG_PIPE_BONUS_ICE,LT_PIPE_BONUS);
         addToThemeInfoWorld(5,this.TG_OVERWORLD_NIGHT,LT_NORMAL,LT_INTRO,LT_PLATFORM);
         addToThemeInfoWorld(5,this.TG_CASTLE_DARK,LT_CASTLE);
         addToThemeInfoWorld(5,this.TG_PIPE_BONUS,LT_PIPE_BONUS);
         addToThemeInfoWorld(6,this.TG_PIPES,LT_NORMAL,LT_INTRO,LT_PLATFORM);
         addToThemeInfoWorld(6,this.TG_CASTLE_PIPE,LT_CASTLE);
         addToThemeInfoWorld(6,this.TG_PIPE_BONUS_PIPE,LT_PIPE_BONUS);
         addToThemeInfoWorld(7,this.TG_CLOUDS,LT_NORMAL,LT_INTRO,LT_CHEEP_CHEEP);
         addToThemeInfoWorld(7,this.TG_CASTLE_CLOUD,LT_CASTLE);
         addToThemeInfoWorld(7,this.TG_PIPE_BONUS,LT_PIPE_BONUS);
         addToThemeInfoWorld(8,this.TG_AIRSHIP,LT_NORMAL);
         addToThemeInfoWorld(8,this.TG_BOWSER_CASTLE,LT_CASTLE);
         addToThemeInfoWorld(8,this.TG_BOWSER_CASTLE_WATER,LT_WATER);
         addToThemeInfoWorld(8,this.TG_PIPE_BONUS,LT_PIPE_BONUS);
         themeMapPack = MapPack.Special;
         addToThemeInfoGeneral(this.TG_DESERT_BLUE_SKY,"3-2a");
         addToThemeInfoGeneral(this.TG_GRASS_DESERT,"3-2b");
         addToThemeInfoGeneral(this.TG_WATER_SWIMMING_ICE,"6-2c");
         addToThemeInfoGeneral(this.TG_GRASS_NIGHT,"8-2a");
         addToThemeInfoGeneral(this.TG_WATER_SWIMMING_MUD,"8-2b");
         addToThemeInfoGeneral(this.TG_AIRSHIP_INNER,"8-3b");
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL,LT_CHEEP_CHEEP,LT_PLATFORM);
         addToTypePlayList(LT_CASTLE,this.SngCastle);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngAthletic);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngUpAbove);
         addToTypePlayList(LT_INTRO,this.SngChestGame);
         addToTypePlayList(LT_NORMAL,this.SngOverWorld);
         addToTypePlayList(LT_PIPE_BONUS,this.SngUnderGround);
         addToTypePlayList(LT_PLATFORM,this.SngAthletic);
         addToTypePlayList(LT_UNDER_GROUND,this.SngUnderGround);
         addToTypePlayList(LT_WATER,this.SngSwimming);
         addToTypePlayList(MT_DARK_EPIC,this.SngUnderGround);
         addToTypePlayList(BOSS,this.SngBossFight);
         addToTypePlayList(CHAR_SEL,this.SngGrassLand);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngWarpWhistle);
         addToTypePlayList(CREDITS,this.SngSaveThePrincess);
         addToTypePlayList(DIE,this.SngDie);
         addToTypePlayList(FINAL_BOSS,this.SngBowserBattle);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngAthleticHurry);
         addToTypePlayList(STAR,this.SngInvincible);
         addToTypePlayList(TITLE_SCREEN,this.SngOverWorld);
         addToTypePlayList(WIN,this.SngBeatLevel);
         addToTypePlayList(WIN_CASTLE,this.SngBeatAirship);
         addHurryVersionOfSong(this.SngAirship,this.SngAirshipHurry);
         addHurryVersionOfSong(this.SngAthletic,this.SngAthleticHurry);
         addHurryVersionOfSong(this.SngBossFight,this.SngBossHurry);
         addHurryVersionOfSong(this.SngBowserBattle,this.SngBowserBattleHurry);
         addHurryVersionOfSong(this.SngCastle,this.SngCastleHurry);
         addHurryVersionOfSong(this.SngHammerBros,this.SngHammerBrosHurry);
         addHurryVersionOfSong(this.SngInvincible,this.SngInvincibleHurry);
         addHurryVersionOfSong(this.SngOverWorld,this.SngOverWorldHurry);
         addHurryVersionOfSong(this.SngSwimming,this.SngSwimmingHurry);
         addHurryVersionOfSong(this.SngUnderGround,this.SngUnderGroundHurry);
         addToThemePlayList(this.TG_AIRSHIP,this.SngAirship,[LT_NORMAL]);
         addToThemePlayList(this.TG_OVERWORLD_NIGHT,this.SngUnderGround,[LT_NORMAL,LT_PLATFORM]);
         addToThemePlayList(this.TG_PIPES,this.SngUnderGround,[LT_NORMAL]);
         addToThemePlayList(this.TG_GRASS_NIGHT,this.SngUnderGround,[LT_NORMAL]);
         addToThemePlayList(this.TG_BOWSER_CASTLE_WATER,this.SngCastle,[LT_WATER]);
      }
   }
}
