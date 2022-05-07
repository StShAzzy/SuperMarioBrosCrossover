package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameFinalFantasy3 extends Game
   {
      
      private static var instance:Game;
       
      
      public const Nsf:Class = GameFinalFantasy3_Nsf;
      
      private const VOLUME:int = 50;
      
      public const SngSleep:Song = addSong(this.Nsf,1,null,this.VOLUME);
      
      public const SngPrelude:Song = addSong(this.Nsf,2,null,this.VOLUME);
      
      public const SngVictory:Song = addSong(this.Nsf,8,null,this.VOLUME);
      
      public const SngGoAboveTheClouds:Song = addSong(this.Nsf,11,null,this.VOLUME);
      
      public const SngJinnTheFire:Song = addSong(this.Nsf,13,null,this.VOLUME);
      
      public const SngHurry:Song = addSong(this.Nsf,15,null,this.VOLUME);
      
      public const SngVictoryCastle:Song = addSong(this.Nsf,17,null,this.VOLUME);
      
      public const SngGameOver:Song = addSong(this.Nsf,20,null,this.VOLUME);
      
      public const SngDeepUnderTheWater:Song = addSong(this.Nsf,22,null,this.VOLUME);
      
      public const SngItemFanfare:Song = addSong(this.Nsf,24,null,this.VOLUME);
      
      public const SngDungeon:Song = addSong(this.Nsf,30,null,this.VOLUME);
      
      public const SngEternalWind:Song = addSong(this.Nsf,31,null,this.VOLUME);
      
      public const SngMyHomeTown:Song = addSong(this.Nsf,32,null,this.VOLUME);
      
      public const SngBattle:Song = addSong(this.Nsf,33,null,this.VOLUME);
      
      public const SngTheWayToTheTop:Song = addSong(this.Nsf,34,null,this.VOLUME);
      
      public const SngSailingEnterprise:Song = addSong(this.Nsf,35,null,this.VOLUME);
      
      public const SngTheInvincible:Song = addSong(this.Nsf,36,null,this.VOLUME);
      
      public const SngLetMeKnowTheTruth:Song = addSong(this.Nsf,39,null,this.VOLUME);
      
      public const SngForbiddenLand:Song = addSong(this.Nsf,40,null,this.VOLUME);
      
      public const SngTheDarkCrystals:Song = addSong(this.Nsf,42,null,this.VOLUME);
      
      public const SngBossBattle:Song = addSong(this.Nsf,43,null,this.VOLUME);
      
      public const SngEndingTheme:Song = addSong(this.Nsf,44,null,this.VOLUME);
      
      public function GameFinalFantasy3(param1:int, param2:int = -1)
      {
         super("Final Fantasy III","Square-Enix",Consoles.nintendo,param1,null,param2);
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
         addToTypePlayList(LT_CASTLE,this.SngTheDarkCrystals);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngSailingEnterprise);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngGoAboveTheClouds);
         addToTypePlayList(LT_INTRO,this.SngLetMeKnowTheTruth);
         addToTypePlayList(LT_NORMAL,this.SngEternalWind);
         addToTypePlayList(LT_PIPE_BONUS,this.SngJinnTheFire);
         addToTypePlayList(LT_PLATFORM,this.SngTheWayToTheTop);
         addToTypePlayList(LT_UNDER_GROUND,this.SngDungeon);
         addToTypePlayList(LT_WATER,this.SngDeepUnderTheWater);
         addToTypePlayList(MT_DARK_EPIC,this.SngForbiddenLand);
         addToTypePlayList(BOSS,this.SngBattle);
         addToTypePlayList(CHAR_SEL,this.SngMyHomeTown);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngItemFanfare);
         addToTypePlayList(CREDITS,this.SngEndingTheme);
         addToTypePlayList(DIE,this.SngSleep);
         addToTypePlayList(FINAL_BOSS,this.SngBossBattle);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngHurry);
         addToTypePlayList(STAR,this.SngTheInvincible);
         addToTypePlayList(TITLE_SCREEN,this.SngPrelude);
         addToTypePlayList(WIN,this.SngVictory);
         addToTypePlayList(WIN_CASTLE,this.SngVictoryCastle);
      }
   }
}
