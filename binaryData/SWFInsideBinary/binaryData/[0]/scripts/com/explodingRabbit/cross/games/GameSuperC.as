package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameSuperC extends Game
   {
      
      private static var instance:Game;
       
      
      public const Nsf:Class = GameSuperC_Nsf;
      
      private const VOLUME:int = 70;
      
      public const SngLightningAndGrenades:Song = addSong(this.Nsf,41,null,this.VOLUME);
      
      public const SngMechanicFactory:Song = addSong(this.Nsf,42,null,this.VOLUME);
      
      public const SngJungle:Song = addSong(this.Nsf,43,null,this.VOLUME);
      
      public const SngMilitaryFortress:Song = addSong(this.Nsf,44,null,this.VOLUME);
      
      public const SngPerilousCliff:Song = addSong(this.Nsf,45,null,this.VOLUME);
      
      public const SngUnderTheFeet:Song = addSong(this.Nsf,46,null,this.VOLUME);
      
      public const SngTheFallingWall:Song = addSong(this.Nsf,48,null,this.VOLUME);
      
      public const SngBossHard:Song = addSong(this.Nsf,49,null,this.VOLUME);
      
      public const SngBossSimple:Song = addSong(this.Nsf,50,null,this.VOLUME);
      
      public const SngBossSpider:Song = addSong(this.Nsf,51,null,this.VOLUME);
      
      public const SngStageClear:Song = addSong(this.Nsf,52,null,this.VOLUME);
      
      public const SngStageClearAll:Song = addSong(this.Nsf,53,null,this.VOLUME);
      
      public const SngGameOver:Song = addSong(this.Nsf,54,null,this.VOLUME);
      
      public const SngEnding:Song = addSong(this.Nsf,55,null,this.VOLUME);
      
      public function GameSuperC(param1:int, param2:int = -1)
      {
         super("Super C","Konami",Consoles.nintendo,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL,LT_PLATFORM,LT_CHEEP_CHEEP);
         addToTypePlayList(LT_CASTLE,this.SngTheFallingWall);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngPerilousCliff);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngMilitaryFortress);
         addToTypePlayList(LT_INTRO,this.SngBossHard);
         addToTypePlayList(LT_NORMAL,this.SngLightningAndGrenades);
         addToTypePlayList(LT_PIPE_BONUS,this.SngMechanicFactory);
         addToTypePlayList(LT_PLATFORM,this.SngPerilousCliff);
         addToTypePlayList(LT_UNDER_GROUND,this.SngMechanicFactory);
         addToTypePlayList(LT_WATER,this.SngJungle);
         addToTypePlayList(MT_DARK_EPIC,this.SngUnderTheFeet);
         addToTypePlayList(BOSS,this.SngBossSimple);
         addToTypePlayList(CHAR_SEL,this.SngMechanicFactory);
         addToTypePlayList(CHOOSE_CHARACTER,Games.contra.SngIntroduction);
         addToTypePlayList(CREDITS,this.SngEnding);
         addToTypePlayList(DIE,null);
         addToTypePlayList(FINAL_BOSS,this.SngBossHard);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngBossSpider);
         addToTypePlayList(STAR,null);
         addToTypePlayList(TITLE_SCREEN,this.SngMilitaryFortress);
         addToTypePlayList(WIN,this.SngStageClear);
         addToTypePlayList(WIN_CASTLE,this.SngStageClearAll);
      }
   }
}
