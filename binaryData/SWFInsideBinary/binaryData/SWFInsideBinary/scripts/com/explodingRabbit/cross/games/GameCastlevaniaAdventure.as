package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameCastlevaniaAdventure extends Game
   {
      
      private static var instance:Game;
       
      
      public const Gbs:Class = GameCastlevaniaAdventure_Gbs;
      
      private const VOLUME:int = 50;
      
      public const SngLevel1:Song = addSong(this.Gbs,1,null,this.VOLUME);
      
      public const SngDie:Song = addSong(this.Gbs,2,null,this.VOLUME);
      
      public const SngGameOver:Song = addSong(this.Gbs,3,null,this.VOLUME);
      
      public const SngBoss:Song = addSong(this.Gbs,4,null,this.VOLUME);
      
      public const SngLevel3:Song = addSong(this.Gbs,5,null,this.VOLUME);
      
      public const SngLevel2:Song = addSong(this.Gbs,6,null,this.VOLUME);
      
      public const SngLevel4:Song = addSong(this.Gbs,7,null,this.VOLUME);
      
      public const SngEnding:Song = addSong(this.Gbs,8,null,this.VOLUME);
      
      public const SngLegendOfDracula:Song = addSong(this.Gbs,9,null,this.VOLUME);
      
      public const SngVictory:Song = addSong(this.Gbs,10,null,this.VOLUME);
      
      public const SngFinalBossForm1:Song = addSong(this.Gbs,11,null,this.VOLUME);
      
      public const SngFinalBossForm2:Song = addSong(this.Gbs,12,null,this.VOLUME);
      
      public const SngIntroduction:Song = addSong(this.Gbs,13,null,this.VOLUME);
      
      public const SngFanfare:Song = addSong(this.Gbs,37,null,this.VOLUME);
      
      public function GameCastlevaniaAdventure(param1:int, param2:int = -1)
      {
         super("Castlevania: The Adventure","Konami",Consoles.gameBoy,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngLevel2);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngLevel1);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngLevel3);
         addToTypePlayList(LT_INTRO,this.SngLegendOfDracula);
         addToTypePlayList(LT_NORMAL,this.SngLevel1);
         addToTypePlayList(LT_PIPE_BONUS,this.SngLevel4);
         addToTypePlayList(LT_PLATFORM,this.SngLevel1);
         addToTypePlayList(LT_UNDER_GROUND,this.SngLevel4);
         addToTypePlayList(LT_WATER,this.SngLevel3);
         addToTypePlayList(MT_DARK_EPIC,this.SngLevel1);
         addToTypePlayList(BOSS,this.SngBoss);
         addToTypePlayList(CHAR_SEL,this.SngLegendOfDracula);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngIntroduction);
         addToTypePlayList(CREDITS,this.SngEnding);
         addToTypePlayList(DIE,this.SngDie);
         addToTypePlayList(FINAL_BOSS,this.SngFinalBossForm1);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngFinalBossForm2);
         addToTypePlayList(STAR,null);
         addToTypePlayList(TITLE_SCREEN,this.SngLevel1);
         addToTypePlayList(WIN,this.SngVictory);
         addToTypePlayList(WIN_CASTLE,this.SngVictory);
      }
   }
}
