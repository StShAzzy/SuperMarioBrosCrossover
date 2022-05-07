package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameArkistasRing extends Game
   {
      
      private static var instance:Game;
       
      
      public const NSF:Class = GameArkistasRing_NSF;
      
      private const VOLUME:int = 60;
      
      public const SngTitle:Song = addSong(this.NSF,1,null,this.VOLUME);
      
      public const SngBonus:Song = addSong(this.NSF,2,null,this.VOLUME);
      
      public const SngOverworld:Song = addSong(this.NSF,3,null,this.VOLUME);
      
      public const SngDungeon:Song = addSong(this.NSF,4,null,this.VOLUME);
      
      public const SngCastle:Song = addSong(this.NSF,5,null,45);
      
      public const SngVictory:Song = addSong(this.NSF,6,null,50);
      
      public const SngGameOver:Song = addSong(this.NSF,7,null,this.VOLUME);
      
      public function GameArkistasRing(param1:int, param2:int = -1)
      {
         super("Arkista\'s Ring","American Sammy",Consoles.nintendo,param1,null,param2);
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
         addToTypePlayList(LT_CASTLE,this.SngCastle);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngOverworld);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngBonus);
         addToTypePlayList(LT_INTRO,this.SngBonus);
         addToTypePlayList(LT_NORMAL,this.SngOverworld);
         addToTypePlayList(LT_PIPE_BONUS,this.SngBonus);
         addToTypePlayList(LT_PLATFORM,this.SngOverworld);
         addToTypePlayList(LT_UNDER_GROUND,this.SngDungeon);
         addToTypePlayList(LT_WATER,this.SngDungeon);
         addToTypePlayList(MT_DARK_EPIC,this.SngCastle);
         addToTypePlayList(BOSS,this.SngCastle);
         addToTypePlayList(CHAR_SEL,this.SngBonus);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngTitle);
         addToTypePlayList(CREDITS,this.SngTitle);
         addToTypePlayList(DIE,null);
         addToTypePlayList(FINAL_BOSS,this.SngCastle);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngCastle);
         addToTypePlayList(STAR,Games.superMarioBros.SngInvincible);
         addToTypePlayList(TITLE_SCREEN,this.SngTitle);
         addToTypePlayList(WIN,this.SngVictory);
         addToTypePlayList(WIN_CASTLE,this.SngVictory);
      }
   }
}
