package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   import com.smbc.graphics.ThemeGroup;
   
   public class GameContra extends Game
   {
      
      private static var instance:Game;
       
      
      public const Nsf:Class = GameContra_Nsf;
      
      public const Nsfe:Class = GameContra_Nsfe;
      
      private const VOLUME:int = 70;
      
      private const TG_OVERWORLD:ThemeGroup = addThemeGroup(1,1);
      
      public const SngTitle:Song = addSong(this.Nsfe,1,null,this.VOLUME);
      
      public const SngIntroduction:Song = addSong(this.Nsfe,2,null,this.VOLUME);
      
      public const SngJungle:Song = addSong(this.Nsfe,3,null,this.VOLUME);
      
      public const SngBeatLevel:Song = addSong(this.Nsfe,4,null,this.VOLUME);
      
      public const SngBase:Song = addSong(this.Nsfe,5,null,this.VOLUME);
      
      public const SngBoss:Song = addSong(this.Nsfe,6,null,this.VOLUME);
      
      public const SngWaterfall:Song = addSong(this.Nsfe,7,null,this.VOLUME);
      
      public const SngSnowField:Song = addSong(this.Nsfe,8,null,this.VOLUME);
      
      public const SngEnergyZone:Song = addSong(this.Nsfe,9,null,this.VOLUME);
      
      public const SngAliensLair:Song = addSong(this.Nsfe,10,null,this.VOLUME);
      
      public const SngBeatFinalBoss:Song = addSong(this.Nsfe,11,null,this.VOLUME);
      
      public const SngCredits:Song = addSong(this.Nsfe,12,null,this.VOLUME);
      
      public const SngGameOver:Song = addSong(this.Nsfe,13,null,this.VOLUME);
      
      public function GameContra(param1:int, param2:int = -1)
      {
         super("Contra","Konami",Consoles.nintendo,param1,null,param2);
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
         addOverridableMusicTypes(LT_NORMAL,LT_PLATFORM,LT_CHEEP_CHEEP);
         addToTypePlayList(LT_CASTLE,this.SngAliensLair);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngJungle);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngEnergyZone);
         addToTypePlayList(LT_INTRO,this.SngIntroduction);
         addToTypePlayList(LT_NORMAL,this.SngJungle);
         addToTypePlayList(LT_PIPE_BONUS,this.SngBase);
         addToTypePlayList(LT_PLATFORM,this.SngJungle);
         addToTypePlayList(LT_UNDER_GROUND,this.SngBase);
         addToTypePlayList(LT_WATER,this.SngWaterfall);
         addToTypePlayList(MT_DARK_EPIC,this.SngSnowField);
         addToTypePlayList(BOSS,this.SngBoss);
         addToTypePlayList(CHAR_SEL,this.SngIntroduction);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngTitle);
         addToTypePlayList(CREDITS,this.SngCredits);
         addToTypePlayList(DIE,null);
         addToTypePlayList(FINAL_BOSS,this.SngBoss);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngBoss);
         addToTypePlayList(STAR,null);
         addToTypePlayList(TITLE_SCREEN,this.SngJungle);
         addToTypePlayList(WIN,this.SngBeatLevel);
         addToTypePlayList(WIN_CASTLE,this.SngBeatFinalBoss);
      }
   }
}
