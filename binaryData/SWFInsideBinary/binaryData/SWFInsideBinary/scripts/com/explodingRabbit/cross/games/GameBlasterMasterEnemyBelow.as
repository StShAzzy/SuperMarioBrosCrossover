package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   import com.smbc.graphics.ThemeGroup;
   
   public class GameBlasterMasterEnemyBelow extends Game
   {
      
      private static var instance:Game;
       
      
      private const Gbs:Class = GameBlasterMasterEnemyBelow_Gbs;
      
      private const VOLUME:int = 60;
      
      private const TG_OVERWORLD:ThemeGroup = addThemeGroup(1,1);
      
      public const SngArea1Overworld:Song = addSong(this.Gbs,1,null,this.VOLUME);
      
      public const SngArea2UnderGround:Song = addSong(this.Gbs,2,null,this.VOLUME);
      
      public const SngArea3Robots:Song = addSong(this.Gbs,3,null,this.VOLUME);
      
      public const SngArea4Frog:Song = addSong(this.Gbs,4,null,this.VOLUME);
      
      public const SngArea5Water:Song = addSong(this.Gbs,5,null,this.VOLUME);
      
      public const SngArea6:Song = addSong(this.Gbs,6,null,this.VOLUME);
      
      public const SngArea7:Song = addSong(this.Gbs,7,null,this.VOLUME);
      
      public const SngArea8Final:Song = addSong(this.Gbs,8,null,this.VOLUME);
      
      public const SngBossEasy:Song = addSong(this.Gbs,9,null,this.VOLUME);
      
      public const SngBossHard:Song = addSong(this.Gbs,10,null,this.VOLUME);
      
      public const SngIntro:Song = addSong(this.Gbs,11,null,this.VOLUME);
      
      public const SngEnding:Song = addSong(this.Gbs,12,null,this.VOLUME);
      
      public const SngVictory:Song = addSong(this.Gbs,13,null,this.VOLUME);
      
      public const SngGameOver:Song = addSong(this.Gbs,14,null,this.VOLUME);
      
      public function GameBlasterMasterEnemyBelow(param1:int, param2:int = -1)
      {
         super("Blaster Master: Enemy Below","Sunsoft",Consoles.gameBoy,param1,"BM: Enemy Below",param2);
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
         addToTypePlayList(LT_CASTLE,this.SngArea4Frog);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngArea3Robots);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngArea5Water);
         addToTypePlayList(LT_INTRO,this.SngArea8Final);
         addToTypePlayList(LT_NORMAL,this.SngArea1Overworld);
         addToTypePlayList(LT_PIPE_BONUS,this.SngArea2UnderGround);
         addToTypePlayList(LT_PLATFORM,this.SngArea3Robots);
         addToTypePlayList(LT_UNDER_GROUND,this.SngArea2UnderGround);
         addToTypePlayList(LT_WATER,this.SngArea5Water);
         addToTypePlayList(MT_DARK_EPIC,this.SngArea6);
         addToTypePlayList(BOSS,this.SngBossEasy);
         addToTypePlayList(CHAR_SEL,this.SngIntro);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngArea1Overworld);
         addToTypePlayList(CREDITS,this.SngEnding);
         addToTypePlayList(DIE,null);
         addToTypePlayList(FINAL_BOSS,this.SngBossHard);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngArea7);
         addToTypePlayList(STAR,this.SngBossHard);
         addToTypePlayList(TITLE_SCREEN,this.SngIntro);
         addToTypePlayList(WIN,this.SngVictory);
         addToTypePlayList(WIN_CASTLE,this.SngEnding);
      }
   }
}
