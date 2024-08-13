package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameFinalFantasyAdventure extends Game
   {
      
      private static var instance:Game;
       
      
      public const Gbs:Class = GameFinalFantasyAdventure_Gbs;
      
      private const VOLUME:int = 50;
      
      public const SngRisingSun:Song = addSong(this.Gbs,1,null,this.VOLUME);
      
      public const SngReqiuem:Song = addSong(this.Gbs,3,null,this.VOLUME);
      
      public const SngVillage:Song = addSong(this.Gbs,8,null,this.VOLUME);
      
      public const SngDungeon1:Song = addSong(this.Gbs,11,null,this.VOLUME);
      
      public const SngDungeon2:Song = addSong(this.Gbs,12,null,this.VOLUME);
      
      public const SngDanger:Song = addSong(this.Gbs,13,null,this.VOLUME);
      
      public const SngRoyalPalaceTheme:Song = addSong(this.Gbs,14,null,this.VOLUME);
      
      public const SngDungeon3:Song = addSong(this.Gbs,15,null,this.VOLUME);
      
      public const SngLetThoughtsRideOnKnowledge:Song = addSong(this.Gbs,16,null,this.VOLUME);
      
      public const SngBattle1:Song = addSong(this.Gbs,17,null,this.VOLUME);
      
      public const SngFinalBattle:Song = addSong(this.Gbs,18,null,this.VOLUME);
      
      public const SngBattle2:Song = addSong(this.Gbs,21,null,this.VOLUME);
      
      public const SngEndlessBattlefield:Song = addSong(this.Gbs,22,null,this.VOLUME);
      
      public const SngLegendForever:Song = addSong(this.Gbs,23,null,this.VOLUME);
      
      public const SngManaPalace:Song = addSong(this.Gbs,24,null,this.VOLUME);
      
      public const SngInSearchOfTheHolySword:Song = addSong(this.Gbs,26,null,this.VOLUME);
      
      public const SngFanfare:Song = addSong(this.Gbs,28,null,this.VOLUME);
      
      public const SngDie:Song = addSong(this.Gbs,29,null,this.VOLUME);
      
      public function GameFinalFantasyAdventure(param1:int, param2:int = -1)
      {
         super("Final Fantasy Adventure","Square-Enix",Consoles.gameBoy,param1,null,param2);
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
         addToTypePlayList(LT_CASTLE,this.SngDungeon1);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngBattle1);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngManaPalace);
         addToTypePlayList(LT_INTRO,this.SngLetThoughtsRideOnKnowledge);
         addToTypePlayList(LT_NORMAL,this.SngEndlessBattlefield);
         addToTypePlayList(LT_PIPE_BONUS,this.SngDungeon3);
         addToTypePlayList(LT_PLATFORM,this.SngBattle1);
         addToTypePlayList(LT_UNDER_GROUND,this.SngDungeon2);
         addToTypePlayList(LT_WATER,this.SngRoyalPalaceTheme);
         addToTypePlayList(MT_DARK_EPIC,this.SngBattle1);
         addToTypePlayList(BOSS,this.SngBattle2);
         addToTypePlayList(CHAR_SEL,this.SngVillage);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngFanfare);
         addToTypePlayList(CREDITS,this.SngLegendForever);
         addToTypePlayList(DIE,this.SngDie);
         addToTypePlayList(FINAL_BOSS,this.SngFinalBattle);
         addToTypePlayList(GAME_OVER,this.SngReqiuem);
         addToTypePlayList(HURRY,this.SngDanger);
         addToTypePlayList(STAR,this.SngInSearchOfTheHolySword);
         addToTypePlayList(TITLE_SCREEN,this.SngRisingSun);
         addToTypePlayList(WIN,this.SngFanfare);
         addToTypePlayList(WIN_CASTLE,this.SngFanfare);
      }
   }
}
