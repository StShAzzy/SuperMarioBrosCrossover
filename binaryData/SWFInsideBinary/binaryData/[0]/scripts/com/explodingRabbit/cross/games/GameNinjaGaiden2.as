package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameNinjaGaiden2 extends Game
   {
      
      private static var instance:Game;
       
      
      public const Nsf:Class = GameNinjaGaiden2_Nsf;
      
      private const VOLUME:int = 70;
      
      public const SngAct32:Song = addSong(this.Nsf,1,null,this.VOLUME);
      
      public const SngAct21:Song = addSong(this.Nsf,2,null,this.VOLUME);
      
      public const SngAct22:Song = addSong(this.Nsf,3,null,this.VOLUME);
      
      public const SngAct31:Song = addSong(this.Nsf,4,null,this.VOLUME);
      
      public const SngAct4:Song = addSong(this.Nsf,5,null,this.VOLUME);
      
      public const SngAct5:Song = addSong(this.Nsf,6,null,this.VOLUME);
      
      public const SngBossBattle1:Song = addSong(this.Nsf,7,null,this.VOLUME);
      
      public const SngBossBattle2:Song = addSong(this.Nsf,8,null,this.VOLUME);
      
      public const SngCutscene1:Song = addSong(this.Nsf,12,null,this.VOLUME);
      
      public const SngAct1:Song = addSong(this.Nsf,22,null,this.VOLUME);
      
      public const SngEndingPart1:Song = addSong(this.Nsf,26,null,this.VOLUME);
      
      public const SngEndingPart2:Song = addSong(this.Nsf,27,null,this.VOLUME);
      
      public const SngActIntro:Song = addSong(this.Nsf,30,null,this.VOLUME);
      
      public const SngGameOver:Song = addSong(this.Nsf,31,null,this.VOLUME);
      
      public const SngLifeLost:Song = addSong(this.Nsf,32,null,this.VOLUME);
      
      public function GameNinjaGaiden2(param1:int, param2:int = -1)
      {
         super("Ninja Gaiden II: The Dark Sword of Chaos","Tecmo",Consoles.nintendo,param1,"Ninja Gaiden II",param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngAct5);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngAct1);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngAct22);
         addToTypePlayList(LT_INTRO,this.SngCutscene1);
         addToTypePlayList(LT_NORMAL,this.SngAct32);
         addToTypePlayList(LT_PIPE_BONUS,this.SngAct31);
         addToTypePlayList(LT_PLATFORM,this.SngAct1);
         addToTypePlayList(LT_UNDER_GROUND,this.SngAct31);
         addToTypePlayList(LT_WATER,this.SngAct4);
         addToTypePlayList(MT_DARK_EPIC,this.SngAct22);
         addToTypePlayList(BOSS,this.SngBossBattle1);
         addToTypePlayList(CHAR_SEL,this.SngCutscene1);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngActIntro);
         addToTypePlayList(CREDITS,this.SngEndingPart1);
         addToTypePlayList(DIE,this.SngLifeLost);
         addToTypePlayList(FINAL_BOSS,this.SngBossBattle2);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngAct22);
         addToTypePlayList(STAR,null);
         addToTypePlayList(TITLE_SCREEN,this.SngAct32);
         addToTypePlayList(WIN,this.SngActIntro);
         addToTypePlayList(WIN_CASTLE,this.SngEndingPart1);
      }
   }
}
