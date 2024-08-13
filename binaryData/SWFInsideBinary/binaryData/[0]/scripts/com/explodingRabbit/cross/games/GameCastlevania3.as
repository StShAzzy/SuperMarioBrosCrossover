package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameCastlevania3 extends Game
   {
      
      private static var instance:Game;
       
      
      public const Nsf:Class = GameCastlevania3_Nsf;
      
      private const VOLUME:int = 65;
      
      public const SngBeginning:Song = addSong(this.Nsf,1,null,this.VOLUME);
      
      public const SngClockwork:Song = addSong(this.Nsf,2,null,this.VOLUME);
      
      public const SngMadForest:Song = addSong(this.Nsf,3,null,this.VOLUME);
      
      public const SngAnxiety:Song = addSong(this.Nsf,4,null,this.VOLUME);
      
      public const SngRising:Song = addSong(this.Nsf,5,null,this.VOLUME);
      
      public const SngStream:Song = addSong(this.Nsf,6,null,this.VOLUME);
      
      public const SngDeadBeat:Song = addSong(this.Nsf,7,null,this.VOLUME);
      
      public const SngNightmare:Song = addSong(this.Nsf,8,null,this.VOLUME);
      
      public const SngAquarius:Song = addSong(this.Nsf,9,null,this.VOLUME);
      
      public const SngDemonSeed:Song = addSong(this.Nsf,10,null,this.VOLUME);
      
      public const SngVampireKiller:Song = addSong(this.Nsf,11,null,this.VOLUME);
      
      public const SngRiddle:Song = addSong(this.Nsf,12,null,this.VOLUME);
      
      public const SngPressure:Song = addSong(this.Nsf,13,null,this.VOLUME);
      
      public const SngDraculasRoom:Song = addSong(this.Nsf,14,null,this.VOLUME);
      
      public const SngBossBattle:Song = addSong(this.Nsf,15,null,this.VOLUME);
      
      public const SngStageClear:Song = addSong(this.Nsf,16,null,this.VOLUME);
      
      public const SngDraculaBattle1:Song = addSong(this.Nsf,17,null,this.VOLUME);
      
      public const SngDraculaBattle2:Song = addSong(this.Nsf,18,null,this.VOLUME);
      
      public const SngAllClear:Song = addSong(this.Nsf,19,null,this.VOLUME);
      
      public const SngPathSelection:Song = addSong(this.Nsf,20,null,this.VOLUME);
      
      public const SngEncounter:Song = addSong(this.Nsf,21,null,this.VOLUME);
      
      public const SngPrelude:Song = addSong(this.Nsf,22,null,this.VOLUME);
      
      public const SngPrayer:Song = addSong(this.Nsf,23,null,this.VOLUME);
      
      public const SngPasswordEntry:Song = addSong(this.Nsf,24,null,this.VOLUME);
      
      public const SngEnding:Song = addSong(this.Nsf,25,null,this.VOLUME);
      
      public const SngCredits:Song = addSong(this.Nsf,26,null,this.VOLUME);
      
      public const SngDie:Song = addSong(this.Nsf,27,null,this.VOLUME);
      
      public const SngGameOver:Song = addSong(this.Nsf,28,null,this.VOLUME);
      
      public function GameCastlevania3(param1:int, param2:int = -1)
      {
         super("Castlevania III: Dracula\'s Curse","Konami",Consoles.nintendo,param1,"Castlevania III",param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngDraculasRoom);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngClockwork);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngDeadBeat);
         addToTypePlayList(LT_INTRO,this.SngPathSelection);
         addToTypePlayList(LT_NORMAL,this.SngBeginning);
         addToTypePlayList(LT_PIPE_BONUS,this.SngRising);
         addToTypePlayList(LT_PLATFORM,this.SngMadForest);
         addToTypePlayList(LT_UNDER_GROUND,this.SngDemonSeed);
         addToTypePlayList(LT_WATER,this.SngNightmare);
         addToTypePlayList(MT_DARK_EPIC,this.SngAquarius);
         addToTypePlayList(BOSS,this.SngBossBattle);
         addToTypePlayList(CHAR_SEL,this.SngPasswordEntry);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngPrelude);
         addToTypePlayList(CREDITS,this.SngCredits);
         addToTypePlayList(DIE,this.SngDie);
         addToTypePlayList(FINAL_BOSS,this.SngDraculaBattle2);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngPressure);
         addToTypePlayList(STAR,this.SngVampireKiller);
         addToTypePlayList(TITLE_SCREEN,this.SngPrelude);
         addToTypePlayList(WIN,this.SngStageClear);
         addToTypePlayList(WIN_CASTLE,this.SngAllClear);
      }
   }
}
