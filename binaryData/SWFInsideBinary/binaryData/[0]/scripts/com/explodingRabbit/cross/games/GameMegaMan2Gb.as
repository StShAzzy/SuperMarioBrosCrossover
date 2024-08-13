package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameMegaMan2Gb extends Game
   {
      
      private static var instance:Game;
       
      
      public const Gbs:Class = GameMegaMan2Gb_Gbs;
      
      private const VOLUME:int = 35;
      
      public const SngTitleScreen:Song = addSong(this.Gbs,1,null,this.VOLUME);
      
      public const SngStageSelect:Song = addSong(this.Gbs,2,null,this.VOLUME);
      
      public const SngBossSelect:Song = addSong(this.Gbs,3,null,this.VOLUME);
      
      public const SngPassword:Song = addSong(this.Gbs,4,null,this.VOLUME);
      
      public const SngBossBattle:Song = addSong(this.Gbs,5,null,this.VOLUME);
      
      public const SngStageClear:Song = addSong(this.Gbs,6,null,this.VOLUME);
      
      public const SngWeaponGet:Song = addSong(this.Gbs,7,null,this.VOLUME);
      
      public const SngCrashMan:Song = addSong(this.Gbs,8,null,this.VOLUME);
      
      public const SngAirMan:Song = addSong(this.Gbs,9,null,this.VOLUME);
      
      public const SngMetalMan:Song = addSong(this.Gbs,10,null,this.VOLUME);
      
      public const SngHardMan:Song = addSong(this.Gbs,11,null,this.VOLUME);
      
      public const SngWoodMan:Song = addSong(this.Gbs,12,null,this.VOLUME);
      
      public const SngTopMan:Song = addSong(this.Gbs,13,null,this.VOLUME);
      
      public const SngMagnetMan:Song = addSong(this.Gbs,14,null,this.VOLUME);
      
      public const SngNeedleMan:Song = addSong(this.Gbs,15,null,this.VOLUME);
      
      public const SngEndingTheme:Song = addSong(this.Gbs,17,null,this.VOLUME);
      
      public function GameMegaMan2Gb(param1:int, param2:int = -1)
      {
         super("Mega Man II (GB)","Capcom",Consoles.gameBoy,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngTitleScreen);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngAirMan);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngCrashMan);
         addToTypePlayList(LT_INTRO,this.SngWeaponGet);
         addToTypePlayList(LT_NORMAL,this.SngHardMan);
         addToTypePlayList(LT_PIPE_BONUS,this.SngMagnetMan);
         addToTypePlayList(LT_PLATFORM,this.SngAirMan);
         addToTypePlayList(LT_UNDER_GROUND,this.SngWoodMan);
         addToTypePlayList(LT_WATER,this.SngMetalMan);
         addToTypePlayList(MT_DARK_EPIC,this.SngNeedleMan);
         addToTypePlayList(BOSS,this.SngBossBattle);
         addToTypePlayList(CHAR_SEL,this.SngStageSelect);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngBossSelect);
         addToTypePlayList(CREDITS,this.SngEndingTheme);
         addToTypePlayList(DIE,null);
         addToTypePlayList(FINAL_BOSS,this.SngBossBattle);
         addToTypePlayList(GAME_OVER,this.SngPassword);
         addToTypePlayList(HURRY,this.SngBossBattle);
         addToTypePlayList(STAR,this.SngTopMan);
         addToTypePlayList(TITLE_SCREEN,this.SngTitleScreen);
         addToTypePlayList(WIN,this.SngStageClear);
         addToTypePlayList(WIN_CASTLE,this.SngStageClear);
      }
   }
}
