package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameMegaMan6 extends Game
   {
      
      private static var instance:Game;
       
      
      public const Nsf:Class = GameMegaMan6_Nsf;
      
      private const VOLUME:int = 55;
      
      public const SngWindMan:Song = addSong(this.Nsf,1,null,this.VOLUME);
      
      public const SngBlizzardMan:Song = addSong(this.Nsf,2,null,this.VOLUME);
      
      public const SngYamatoMan:Song = addSong(this.Nsf,3,null,this.VOLUME);
      
      public const SngCentaurMan:Song = addSong(this.Nsf,4,null,this.VOLUME);
      
      public const SngPlantMan:Song = addSong(this.Nsf,5,null,this.VOLUME);
      
      public const SngFlameMan:Song = addSong(this.Nsf,6,null,this.VOLUME);
      
      public const SngTomahawkMan:Song = addSong(this.Nsf,7,null,this.VOLUME);
      
      public const SngKnightMan:Song = addSong(this.Nsf,8,null,this.VOLUME);
      
      public const SngMrXCastle:Song = addSong(this.Nsf,10,null,this.VOLUME);
      
      public const SngCredits:Song = addSong(this.Nsf,11,null,this.VOLUME);
      
      public const SngDrWilyCastle:Song = addSong(this.Nsf,12,null,this.VOLUME);
      
      public const SngBossBattle:Song = addSong(this.Nsf,13,null,this.VOLUME);
      
      public const SngStageSelect:Song = addSong(this.Nsf,16,null,this.VOLUME);
      
      public const SngStageChosen:Song = addSong(this.Nsf,17,null,this.VOLUME);
      
      public const SngBossVictory:Song = addSong(this.Nsf,20,null,this.VOLUME);
      
      public const SngGameOver:Song = addSong(this.Nsf,21,null,this.VOLUME);
      
      public const SngPassword:Song = addSong(this.Nsf,22,null,this.VOLUME);
      
      public const SngWilyVictory:Song = addSong(this.Nsf,24,null,this.VOLUME);
      
      public const SngWilyBattle:Song = addSong(this.Nsf,25,null,this.VOLUME);
      
      public const SngTitleScreen:Song = addSong(this.Nsf,26,null,this.VOLUME);
      
      public function GameMegaMan6(param1:int, param2:int = -1)
      {
         super("Mega Man 6","Capcom",Consoles.nintendo,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngMrXCastle);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngPlantMan);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngBlizzardMan);
         addToTypePlayList(LT_INTRO,this.SngPassword);
         addToTypePlayList(LT_NORMAL,this.SngTomahawkMan);
         addToTypePlayList(LT_PIPE_BONUS,this.SngFlameMan);
         addToTypePlayList(LT_PLATFORM,this.SngWindMan);
         addToTypePlayList(LT_UNDER_GROUND,this.SngYamatoMan);
         addToTypePlayList(LT_WATER,this.SngCentaurMan);
         addToTypePlayList(MT_DARK_EPIC,this.SngKnightMan);
         addToTypePlayList(BOSS,this.SngBossBattle);
         addToTypePlayList(CHAR_SEL,this.SngStageSelect);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngStageChosen);
         addToTypePlayList(CREDITS,this.SngCredits);
         addToTypePlayList(DIE,null);
         addToTypePlayList(FINAL_BOSS,this.SngWilyBattle);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngTitleScreen);
         addToTypePlayList(STAR,this.SngDrWilyCastle);
         addToTypePlayList(TITLE_SCREEN,this.SngTitleScreen);
         addToTypePlayList(WIN,this.SngBossVictory);
         addToTypePlayList(WIN_CASTLE,this.SngWilyVictory);
      }
   }
}
