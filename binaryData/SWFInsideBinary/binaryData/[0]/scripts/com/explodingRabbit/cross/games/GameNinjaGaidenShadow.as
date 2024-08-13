package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameNinjaGaidenShadow extends Game
   {
      
      private static var instance:Game;
       
      
      public const Gbs:Class = GameNinjaGaidenShadow_Gbs;
      
      private const VOLUME:int = 45;
      
      public const SngPrologue:Song = addSong(this.Gbs,1,null,this.VOLUME);
      
      public const SngLevelStart:Song = addSong(this.Gbs,2,null,this.VOLUME);
      
      public const SngLevel1:Song = addSong(this.Gbs,3,null,this.VOLUME);
      
      public const SngLevel2:Song = addSong(this.Gbs,4,null,this.VOLUME);
      
      public const SngLevel3:Song = addSong(this.Gbs,5,null,this.VOLUME);
      
      public const SngLevel4:Song = addSong(this.Gbs,6,null,this.VOLUME);
      
      public const SngLevel5:Song = addSong(this.Gbs,7,null,this.VOLUME);
      
      public const SngBossBattle:Song = addSong(this.Gbs,8,null,this.VOLUME);
      
      public const SngFinalBoss:Song = addSong(this.Gbs,9,null,this.VOLUME);
      
      public const SngGameOver:Song = addSong(this.Gbs,10,null,this.VOLUME);
      
      public const SngDie:Song = addSong(this.Gbs,11,null,this.VOLUME);
      
      public const SngEnding:Song = addSong(this.Gbs,12,null,this.VOLUME);
      
      public const SngCredits:Song = addSong(this.Gbs,13,null,this.VOLUME);
      
      public function GameNinjaGaidenShadow(param1:int, param2:int = -1)
      {
         super("Ninja Gaiden Shadow","Tecmo",Consoles.gameBoy,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngLevel4);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngLevel2);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngCredits);
         addToTypePlayList(LT_INTRO,this.SngPrologue);
         addToTypePlayList(LT_NORMAL,this.SngLevel3);
         addToTypePlayList(LT_PIPE_BONUS,this.SngLevel1);
         addToTypePlayList(LT_PLATFORM,this.SngLevel2);
         addToTypePlayList(LT_UNDER_GROUND,this.SngLevel1);
         addToTypePlayList(LT_WATER,this.SngLevel1);
         addToTypePlayList(MT_DARK_EPIC,this.SngLevel5);
         addToTypePlayList(BOSS,this.SngBossBattle);
         addToTypePlayList(CHAR_SEL,this.SngPrologue);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngLevelStart);
         addToTypePlayList(CREDITS,this.SngCredits);
         addToTypePlayList(DIE,this.SngDie);
         addToTypePlayList(FINAL_BOSS,this.SngFinalBoss);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngFinalBoss);
         addToTypePlayList(STAR,null);
         addToTypePlayList(TITLE_SCREEN,this.SngLevel3);
         addToTypePlayList(WIN,this.SngLevelStart);
         addToTypePlayList(WIN_CASTLE,this.SngEnding);
      }
   }
}
