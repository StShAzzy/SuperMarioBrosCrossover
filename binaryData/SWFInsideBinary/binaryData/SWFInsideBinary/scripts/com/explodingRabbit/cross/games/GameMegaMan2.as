package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameMegaMan2 extends Game
   {
      
      private static var instance:Game;
       
      
      public const Nsf:Class = GameMegaMan2_Nsf;
      
      private const VOLUME:int = 55;
      
      public const SngFlashMan:Song = addSong(this.Nsf,1,null,this.VOLUME);
      
      public const SngWoodMan:Song = addSong(this.Nsf,2,null,this.VOLUME);
      
      public const SngCrashMan:Song = addSong(this.Nsf,3,null,this.VOLUME);
      
      public const SngHeatMan:Song = addSong(this.Nsf,4,null,this.VOLUME);
      
      public const SngAirMan:Song = addSong(this.Nsf,5,null,this.VOLUME);
      
      public const SngMetalMan:Song = addSong(this.Nsf,6,null,this.VOLUME);
      
      public const SngQuickMan:Song = addSong(this.Nsf,7,null,this.VOLUME);
      
      public const SngBubbleMan:Song = addSong(this.Nsf,8,null,this.VOLUME);
      
      public const SngWilyCastle:Song = addSong(this.Nsf,9,null,this.VOLUME);
      
      public const SngWilyCastle2:Song = addSong(this.Nsf,10,null,this.VOLUME);
      
      public const SngEnemyChosen:Song = addSong(this.Nsf,11,null,this.VOLUME);
      
      public const SngBossBattle:Song = addSong(this.Nsf,12,null,this.VOLUME);
      
      public const SngStageSelect:Song = addSong(this.Nsf,13,null,this.VOLUME);
      
      public const SngTitleScreen:Song = addSong(this.Nsf,14,null,this.VOLUME);
      
      public const SngIntroduction:Song = addSong(this.Nsf,15,null,this.VOLUME);
      
      public const SngVictorySmall:Song = addSong(this.Nsf,16,null,this.VOLUME);
      
      public const SngPassword:Song = addSong(this.Nsf,17,null,this.VOLUME);
      
      public const SngWilyMap:Song = addSong(this.Nsf,18,null,this.VOLUME);
      
      public const SngEpilogue:Song = addSong(this.Nsf,20,null,this.VOLUME);
      
      public const SngCredits:Song = addSong(this.Nsf,21,null,this.VOLUME);
      
      public const SngVictory:Song = addSong(this.Nsf,22,null,this.VOLUME);
      
      public const SngWilyDefeated:Song = addSong(this.Nsf,23,null,this.VOLUME);
      
      public const SngNewWeapon:Song = addSong(this.Nsf,24,null,this.VOLUME);
      
      public function GameMegaMan2(param1:int, param2:int = -1)
      {
         super("Mega Man 2","Capcom",Consoles.nintendo,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngWilyCastle2);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngHeatMan);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngCrashMan);
         addToTypePlayList(LT_INTRO,this.SngNewWeapon);
         addToTypePlayList(LT_NORMAL,this.SngWoodMan);
         addToTypePlayList(LT_PIPE_BONUS,this.SngMetalMan);
         addToTypePlayList(LT_PLATFORM,this.SngAirMan);
         addToTypePlayList(LT_UNDER_GROUND,this.SngFlashMan);
         addToTypePlayList(LT_WATER,this.SngBubbleMan);
         addToTypePlayList(MT_DARK_EPIC,this.SngWilyCastle);
         addToTypePlayList(BOSS,this.SngBossBattle);
         addToTypePlayList(CHAR_SEL,this.SngStageSelect);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngEnemyChosen);
         addToTypePlayList(CREDITS,this.SngCredits);
         addToTypePlayList(DIE,null);
         addToTypePlayList(FINAL_BOSS,this.SngBossBattle);
         addToTypePlayList(GAME_OVER,this.SngPassword);
         addToTypePlayList(HURRY,this.SngTitleScreen);
         addToTypePlayList(STAR,null);
         addToTypePlayList(TITLE_SCREEN,this.SngTitleScreen);
         addToTypePlayList(WIN,this.SngVictory);
         addToTypePlayList(WIN_CASTLE,this.SngWilyDefeated);
      }
   }
}
