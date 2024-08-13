package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameRiverCityRansom extends Game
   {
      
      private static var instance:Game;
       
      
      public const Nsfe:Class = GameRiverCityRansom_Nsfe;
      
      private const VOLUME:int = 80;
      
      public const SngTitleScreen:Song = addSong(this.Nsfe,1,null,this.VOLUME);
      
      public const SngOverworld:Song = addSong(this.Nsfe,2,null,this.VOLUME);
      
      public const SngIntro:Song = addSong(this.Nsfe,3,null,this.VOLUME);
      
      public const SngWater:Song = addSong(this.Nsfe,4,null,this.VOLUME);
      
      public const SngCastle:Song = addSong(this.Nsfe,5,null,this.VOLUME);
      
      public const SngUnderground:Song = addSong(this.Nsfe,6,null,this.VOLUME);
      
      public const SngHurry:Song = addSong(this.Nsfe,7,null,this.VOLUME);
      
      public const SngBoss:Song = addSong(this.Nsfe,8,null,this.VOLUME);
      
      public const SngFinalBoss:Song = addSong(this.Nsfe,9,null,this.VOLUME);
      
      public const SngAthletic:Song = addSong(this.Nsfe,10,null,this.VOLUME);
      
      public const SngWinCastle:Song = addSong(this.Nsfe,11,null,this.VOLUME);
      
      public const SngDarkEpic:Song = addSong(this.Nsfe,12,null,this.VOLUME);
      
      public const SngDie:Song = addSong(this.Nsfe,13,null,this.VOLUME);
      
      public const SngChooseCharacter:Song = addSong(this.Nsfe,14,null,this.VOLUME);
      
      public const SngWin:Song = addSong(this.Nsfe,15,null,this.VOLUME);
      
      public const SngGameOver:Song = addSong(this.Nsfe,16,null,this.VOLUME);
      
      public const SngStar:Song = addSong(this.Nsfe,17,null,this.VOLUME);
      
      public const SngCredits:Song = addSong(this.Nsfe,18,null,this.VOLUME);
      
      public function GameRiverCityRansom(param1:int, param2:int = -1)
      {
         super("River City Ransom","Technos Japan",Consoles.nintendo,param1,null,param2);
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
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngAthletic);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngIntro);
         addToTypePlayList(LT_INTRO,this.SngIntro);
         addToTypePlayList(LT_NORMAL,this.SngOverworld);
         addToTypePlayList(LT_PIPE_BONUS,this.SngUnderground);
         addToTypePlayList(LT_PLATFORM,this.SngAthletic);
         addToTypePlayList(LT_UNDER_GROUND,this.SngUnderground);
         addToTypePlayList(LT_WATER,this.SngWater);
         addToTypePlayList(MT_DARK_EPIC,this.SngDarkEpic);
         addToTypePlayList(BOSS,this.SngBoss);
         addToTypePlayList(CHAR_SEL,this.SngTitleScreen);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngChooseCharacter);
         addToTypePlayList(CREDITS,this.SngCredits);
         addToTypePlayList(DIE,this.SngDie);
         addToTypePlayList(FINAL_BOSS,this.SngFinalBoss);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngHurry);
         addToTypePlayList(STAR,this.SngStar);
         addToTypePlayList(TITLE_SCREEN,this.SngTitleScreen);
         addToTypePlayList(WIN,this.SngWin);
         addToTypePlayList(WIN_CASTLE,this.SngWinCastle);
      }
   }
}
