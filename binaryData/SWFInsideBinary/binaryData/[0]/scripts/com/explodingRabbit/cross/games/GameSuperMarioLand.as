package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameSuperMarioLand extends Game
   {
      
      private static var instance:Game;
       
      
      public const Gbs:Class = GameSuperMarioLand_Gbs;
      
      private const VOLUME:int = 60;
      
      public const SngWin:Song = addSong(this.Gbs,1,null,this.VOLUME);
      
      public const SngDie:Song = addSong(this.Gbs,2,null,this.VOLUME);
      
      public const SngEastonKingdom:Song = addSong(this.Gbs,3,null,this.VOLUME);
      
      public const SngPipeBonus:Song = addSong(this.Gbs,4,null,this.VOLUME);
      
      public const SngSkyPop:Song = addSong(this.Gbs,5,null,this.VOLUME);
      
      public const SngChaiKingdom:Song = addSong(this.Gbs,6,null,this.VOLUME);
      
      public const SngBirabutoKingdom:Song = addSong(this.Gbs,7,null,this.VOLUME);
      
      public const SngMudaKingdom:Song = addSong(this.Gbs,8,null,this.VOLUME);
      
      public const SngHurry:Song = addSong(this.Gbs,9,null,this.VOLUME);
      
      public const SngBoss:Song = addSong(this.Gbs,11,null,this.VOLUME);
      
      public const SngStar:Song = addSong(this.Gbs,12,null,this.VOLUME);
      
      public const SngChooseCharacter:Song = addSong(this.Gbs,13,null,this.VOLUME + 20);
      
      public const SngWinCastle:Song = addSong(this.Gbs,15,null,this.VOLUME);
      
      public const SngGameOver:Song = addSong(this.Gbs,16,null,this.VOLUME);
      
      public const SngCredits:Song = addSong(this.Gbs,17,null,this.VOLUME);
      
      public const SngIntro:Song = addSong(this.Gbs,18,null,this.VOLUME);
      
      public const SngFinalBoss:Song = addSong(this.Gbs,19,null,this.VOLUME);
      
      public function GameSuperMarioLand(param1:int, param2:int = -1)
      {
         super("Super Mario Land","Nintendo",Consoles.gameBoy,param1,null,param2);
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
         addToTypePlayList(LT_CASTLE,this.SngEastonKingdom);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngMudaKingdom);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngSkyPop);
         addToTypePlayList(LT_INTRO,this.SngIntro);
         addToTypePlayList(LT_NORMAL,this.SngBirabutoKingdom);
         addToTypePlayList(LT_PIPE_BONUS,this.SngPipeBonus);
         addToTypePlayList(LT_PLATFORM,this.SngMudaKingdom);
         addToTypePlayList(LT_UNDER_GROUND,this.SngEastonKingdom);
         addToTypePlayList(LT_WATER,this.SngSkyPop);
         addToTypePlayList(MT_DARK_EPIC,this.SngChaiKingdom);
         addToTypePlayList(BOSS,this.SngBoss);
         addToTypePlayList(CHAR_SEL,this.SngPipeBonus);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngChooseCharacter);
         addToTypePlayList(CREDITS,this.SngCredits);
         addToTypePlayList(DIE,this.SngDie);
         addToTypePlayList(FINAL_BOSS,this.SngFinalBoss);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngHurry);
         addToTypePlayList(STAR,this.SngStar);
         addToTypePlayList(TITLE_SCREEN,this.SngChaiKingdom);
         addToTypePlayList(WIN,this.SngWin);
         addToTypePlayList(WIN_CASTLE,this.SngWinCastle);
      }
   }
}
