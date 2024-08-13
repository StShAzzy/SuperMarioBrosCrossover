package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameCastlevania2 extends Game
   {
      
      private static var instance:Game;
       
      
      public const Nsf:Class = GameCastlevania2_Nsf;
      
      private const VOLUME:int = 80;
      
      public const SngTown:Song = addSong(this.Nsf,1,null,this.VOLUME);
      
      public const SngBloodyTears:Song = addSong(this.Nsf,2,null,this.VOLUME);
      
      public const SngNight:Song = addSong(this.Nsf,3,null,this.VOLUME);
      
      public const SngMansion:Song = addSong(this.Nsf,4,null,this.VOLUME);
      
      public const SngCastle:Song = addSong(this.Nsf,5,null,this.VOLUME);
      
      public const SngFinalBoss:Song = addSong(this.Nsf,6,null,this.VOLUME);
      
      public const SngGameOver:Song = addSong(this.Nsf,7,null,this.VOLUME);
      
      public const SngPassword:Song = addSong(this.Nsf,8,null,this.VOLUME);
      
      public const SngEnding:Song = addSong(this.Nsf,9,null,this.VOLUME);
      
      public const SngDie:Song = addSong(this.Nsf,10,null,this.VOLUME);
      
      public function GameCastlevania2(param1:int, param2:int = -1)
      {
         super("Castlevania II: Simon\'s Quest","Konami",Consoles.nintendo,param1,"Castlevania II",param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL,LT_CHEEP_CHEEP,LT_PLATFORM);
         addToTypePlayList(LT_CASTLE,this.SngCastle);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngBloodyTears);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngMansion);
         addToTypePlayList(LT_INTRO,this.SngPassword);
         addToTypePlayList(LT_NORMAL,this.SngBloodyTears);
         addToTypePlayList(LT_PIPE_BONUS,this.SngMansion);
         addToTypePlayList(LT_PLATFORM,this.SngBloodyTears);
         addToTypePlayList(LT_UNDER_GROUND,this.SngMansion);
         addToTypePlayList(LT_WATER,this.SngTown);
         addToTypePlayList(MT_DARK_EPIC,this.SngNight);
         addToTypePlayList(BOSS,this.SngFinalBoss);
         addToTypePlayList(CHAR_SEL,this.SngPassword);
         addToTypePlayList(CHOOSE_CHARACTER,Games.castlevania.SngIntro);
         addToTypePlayList(CREDITS,this.SngEnding);
         addToTypePlayList(DIE,this.SngDie);
         addToTypePlayList(FINAL_BOSS,this.SngFinalBoss);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngFinalBoss);
         addToTypePlayList(STAR,null);
         addToTypePlayList(TITLE_SCREEN,this.SngBloodyTears);
         addToTypePlayList(WIN,Games.castlevania.SngVictory);
         addToTypePlayList(WIN_CASTLE,this.SngEnding);
      }
   }
}
