package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameDragonWarrior extends Game
   {
      
      private static var instance:Game;
       
      
      public const Nsfe:Class = GameDragonWarrior_Nsfe;
      
      private const VOLUME:int = 65;
      
      public const SngTitleTheme:Song = addSong(this.Nsfe,1,null,this.VOLUME);
      
      public const SngTown:Song = addSong(this.Nsfe,2,null,this.VOLUME);
      
      public const SngCastleThroneRoom:Song = addSong(this.Nsfe,3,null,this.VOLUME);
      
      public const SngCastleCourtyard:Song = addSong(this.Nsfe,4,null,this.VOLUME);
      
      public const SngOverworld:Song = addSong(this.Nsfe,5,null,this.VOLUME);
      
      public const SngUnderworld1:Song = addSong(this.Nsfe,6,null,this.VOLUME);
      
      public const SngUnderworld2:Song = addSong(this.Nsfe,7,null,this.VOLUME);
      
      public const SngUnderworld3:Song = addSong(this.Nsfe,8,null,this.VOLUME);
      
      public const SngUnderworld4:Song = addSong(this.Nsfe,9,null,this.VOLUME);
      
      public const SngBattleTheme:Song = addSong(this.Nsfe,14,null,this.VOLUME);
      
      public const SngFinalBattleTheme:Song = addSong(this.Nsfe,16,null,this.VOLUME);
      
      public const SngDeathTheme:Song = addSong(this.Nsfe,18,null,this.VOLUME);
      
      public const SngCursed:Song = addSong(this.Nsfe,19,null,this.VOLUME);
      
      public const SngMagicFlute:Song = addSong(this.Nsfe,21,null,this.VOLUME);
      
      public const SngRainbowAppears:Song = addSong(this.Nsfe,22,null,this.VOLUME);
      
      public const SngLoveTheme:Song = addSong(this.Nsfe,23,null,this.VOLUME);
      
      public const SngEndingTheme:Song = addSong(this.Nsfe,24,null,this.VOLUME);
      
      public const SngLevelUp:Song = addSong(this.Nsfe,25,null,this.VOLUME);
      
      public function GameDragonWarrior(param1:int, param2:int = -1)
      {
         super("Dragon Warrior","Square-Enix",Consoles.nintendo,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function setUpLevelThemes() : void
      {
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngUnderworld4);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngOverworld);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngTown);
         addToTypePlayList(LT_INTRO,this.SngRainbowAppears);
         addToTypePlayList(LT_NORMAL,this.SngOverworld);
         addToTypePlayList(LT_PIPE_BONUS,this.SngUnderworld2);
         addToTypePlayList(LT_PLATFORM,this.SngOverworld);
         addToTypePlayList(LT_UNDER_GROUND,this.SngUnderworld3);
         addToTypePlayList(LT_WATER,this.SngCastleThroneRoom);
         addToTypePlayList(MT_DARK_EPIC,this.SngCastleCourtyard);
         addToTypePlayList(BOSS,this.SngBattleTheme);
         addToTypePlayList(CHAR_SEL,this.SngTown);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngMagicFlute);
         addToTypePlayList(CREDITS,this.SngEndingTheme);
         addToTypePlayList(DIE,null);
         addToTypePlayList(FINAL_BOSS,this.SngFinalBattleTheme);
         addToTypePlayList(GAME_OVER,this.SngDeathTheme);
         addToTypePlayList(HURRY,this.SngUnderworld1);
         addToTypePlayList(STAR,Games.superMarioBros.SngInvincible);
         addToTypePlayList(TITLE_SCREEN,this.SngTitleTheme);
         addToTypePlayList(WIN,this.SngLevelUp);
         addToTypePlayList(WIN_CASTLE,this.SngLoveTheme);
      }
   }
}
