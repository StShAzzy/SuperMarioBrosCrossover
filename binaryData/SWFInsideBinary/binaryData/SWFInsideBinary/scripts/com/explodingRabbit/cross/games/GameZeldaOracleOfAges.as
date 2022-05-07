package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameZeldaOracleOfAges extends Game
   {
      
      private static var instance:Game;
       
      
      public const Gbs:Class = GameZeldaOracleOfAges_Gbs;
      
      private const VOLUME:int = 70;
      
      public const SngTitle:Song = addSong(this.Gbs,1,null,this.VOLUME);
      
      public const SngOverworld:Song = addSong(this.Gbs,3,null,this.VOLUME);
      
      public const SngOverworldPast:Song = addSong(this.Gbs,4,null,this.VOLUME);
      
      public const SngIsland:Song = addSong(this.Gbs,5,null,this.VOLUME);
      
      public const SngWinLevel:Song = addSong(this.Gbs,6,null,this.VOLUME);
      
      public const SngNaryu:Song = addSong(this.Gbs,8,null,this.VOLUME);
      
      public const SngGameOver:Song = addSong(this.Gbs,9,null,this.VOLUME);
      
      public const SngFileSelect:Song = addSong(this.Gbs,17,null,this.VOLUME);
      
      public const SngSneak:Song = addSong(this.Gbs,18,null,this.VOLUME);
      
      public const SngFinalDungeon:Song = addSong(this.Gbs,27,null,this.VOLUME);
      
      public const SngDungeon:Song = addSong(this.Gbs,28,null,this.VOLUME);
      
      public const SngMarch:Song = addSong(this.Gbs,32,null,this.VOLUME);
      
      public const SngCredits:Song = addSong(this.Gbs,41,null,this.VOLUME);
      
      public const SngHurry:Song = addSong(this.Gbs,44,null,this.VOLUME);
      
      public const SngBoss:Song = addSong(this.Gbs,45,null,this.VOLUME);
      
      public const SngFinalBoss:Song = addSong(this.Gbs,46,null,this.VOLUME);
      
      public const SngWinCastle:Song = addSong(this.Gbs,60,null,this.VOLUME);
      
      public const SngSolveTune:Song = addSong(this.Gbs,78,null,this.VOLUME);
      
      public const SngDie:Song = addSong(this.Gbs,87,null,this.VOLUME);
      
      public const SngHarp:Song = addSong(this.Gbs,162,null,this.VOLUME);
      
      public function GameZeldaOracleOfAges(param1:int, param2:int = -1)
      {
         super("The Legend of Zelda: Oracle of Ages","Nintendo",Consoles.gameBoy,param1,"LoZ: Oracle of Ages",param2);
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
         addToTypePlayList(LT_CASTLE,this.SngFinalDungeon);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngOverworld);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngNaryu);
         addToTypePlayList(LT_INTRO,this.SngSolveTune);
         addToTypePlayList(LT_NORMAL,this.SngOverworldPast);
         addToTypePlayList(LT_PIPE_BONUS,this.SngSneak);
         addToTypePlayList(LT_PLATFORM,this.SngOverworld);
         addToTypePlayList(LT_UNDER_GROUND,this.SngDungeon);
         addToTypePlayList(LT_WATER,this.SngIsland);
         addToTypePlayList(MT_DARK_EPIC,this.SngMarch);
         addToTypePlayList(BOSS,this.SngBoss);
         addToTypePlayList(CHAR_SEL,this.SngFileSelect);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngHarp);
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
