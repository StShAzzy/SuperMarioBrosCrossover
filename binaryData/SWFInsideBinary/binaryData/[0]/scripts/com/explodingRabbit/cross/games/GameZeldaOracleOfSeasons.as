package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameZeldaOracleOfSeasons extends Game
   {
      
      private static var instance:Game;
       
      
      public const Gbs:Class = GameZeldaOracleOfSeasons_Gbs;
      
      private const VOLUME:int = 70;
      
      public const SngTitle:Song = addSong(this.Gbs,1,null,this.VOLUME);
      
      public const SngOverworld:Song = addSong(this.Gbs,3,null,this.VOLUME);
      
      public const SngLostWoods:Song = addSong(this.Gbs,5,null,this.VOLUME);
      
      public const SngWinLevel:Song = addSong(this.Gbs,6,null,this.VOLUME);
      
      public const SngPlatform:Song = addSong(this.Gbs,7,null,this.VOLUME);
      
      public const SngGameOver:Song = addSong(this.Gbs,9,null,this.VOLUME);
      
      public const SngFileSelect:Song = addSong(this.Gbs,17,null,this.VOLUME);
      
      public const SngHerosCave:Song = addSong(this.Gbs,18,null,this.VOLUME);
      
      public const SngDungeon:Song = addSong(this.Gbs,19,null,this.VOLUME);
      
      public const SngCastle:Song = addSong(this.Gbs,26,null,this.VOLUME);
      
      public const SngMarch:Song = addSong(this.Gbs,32,null,this.VOLUME);
      
      public const SngSneak:Song = addSong(this.Gbs,38,null,this.VOLUME);
      
      public const SngCredits:Song = addSong(this.Gbs,40,null,this.VOLUME);
      
      public const SngHurry:Song = addSong(this.Gbs,43,null,this.VOLUME);
      
      public const SngBoss:Song = addSong(this.Gbs,44,null,this.VOLUME);
      
      public const SngFinalBoss:Song = addSong(this.Gbs,45,null,this.VOLUME);
      
      public const SngWinCastle:Song = addSong(this.Gbs,59,null,this.VOLUME);
      
      public const SngSolveTune:Song = addSong(this.Gbs,77,null,this.VOLUME);
      
      public const SngDie:Song = addSong(this.Gbs,86,null,this.VOLUME);
      
      public const SngFlute:Song = addSong(this.Gbs,144,null,this.VOLUME);
      
      public function GameZeldaOracleOfSeasons(param1:int, param2:int = -1)
      {
         super("The Legend of Zelda: Oracle of Seasons","Nintendo",Consoles.gameBoy,param1,"LoZ: Oracle of Seasons",param2);
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
         addToTypePlayList(LT_CASTLE,this.SngCastle);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngPlatform);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngSneak);
         addToTypePlayList(LT_INTRO,this.SngSolveTune);
         addToTypePlayList(LT_NORMAL,this.SngOverworld);
         addToTypePlayList(LT_PIPE_BONUS,this.SngHerosCave);
         addToTypePlayList(LT_PLATFORM,this.SngPlatform);
         addToTypePlayList(LT_UNDER_GROUND,this.SngDungeon);
         addToTypePlayList(LT_WATER,this.SngLostWoods);
         addToTypePlayList(MT_DARK_EPIC,this.SngMarch);
         addToTypePlayList(BOSS,this.SngBoss);
         addToTypePlayList(CHAR_SEL,this.SngFileSelect);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngFlute);
         addToTypePlayList(CREDITS,this.SngCredits);
         addToTypePlayList(DIE,this.SngDie);
         addToTypePlayList(FINAL_BOSS,this.SngFinalBoss);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngHurry);
         addToTypePlayList(STAR,Games.zeldaLinksAwakening.SngAdrenaline);
         addToTypePlayList(TITLE_SCREEN,this.SngTitle);
         addToTypePlayList(WIN,this.SngWinLevel);
         addToTypePlayList(WIN_CASTLE,this.SngWinCastle);
      }
   }
}
