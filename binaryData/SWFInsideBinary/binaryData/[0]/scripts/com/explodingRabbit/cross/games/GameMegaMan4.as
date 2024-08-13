package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameMegaMan4 extends Game
   {
      
      private static var instance:Game;
       
      
      public const Nsf:Class = GameMegaMan4_Nsf;
      
      private const VOLUME:int = 65;
      
      public const SngBrightMan:Song = addSong(this.Nsf,1,null,this.VOLUME);
      
      public const SngToadMan:Song = addSong(this.Nsf,2,null,this.VOLUME);
      
      public const SngRingMan:Song = addSong(this.Nsf,3,null,this.VOLUME);
      
      public const SngDrillMan:Song = addSong(this.Nsf,4,null,this.VOLUME);
      
      public const SngPharaohMan:Song = addSong(this.Nsf,5,null,this.VOLUME);
      
      public const SngDiveMan:Song = addSong(this.Nsf,6,null,this.VOLUME);
      
      public const SngSkullMan:Song = addSong(this.Nsf,7,null,this.VOLUME);
      
      public const SngDustMan:Song = addSong(this.Nsf,8,null,this.VOLUME);
      
      public const SngDrCossack1:Song = addSong(this.Nsf,9,null,this.VOLUME);
      
      public const SngDrCossack2:Song = addSong(this.Nsf,10,null,this.VOLUME);
      
      public const SngIntro1:Song = addSong(this.Nsf,11,null,this.VOLUME);
      
      public const SngEnding1:Song = addSong(this.Nsf,12,null,this.VOLUME);
      
      public const SngVictory:Song = addSong(this.Nsf,13,null,this.VOLUME);
      
      public const SngPassword:Song = addSong(this.Nsf,14,null,this.VOLUME);
      
      public const SngGameOver:Song = addSong(this.Nsf,15,null,this.VOLUME);
      
      public const SngBossChosen:Song = addSong(this.Nsf,16,null,this.VOLUME);
      
      public const SngStageSelect:Song = addSong(this.Nsf,17,null,this.VOLUME);
      
      public const SngBossBattle:Song = addSong(this.Nsf,18,null,this.VOLUME);
      
      public const SngTitleScreen:Song = addSong(this.Nsf,19,null,this.VOLUME);
      
      public const SngEnding2:Song = addSong(this.Nsf,20,null,this.VOLUME);
      
      public const SngWeaponGet:Song = addSong(this.Nsf,21,null,this.VOLUME);
      
      public const SngDrWily1:Song = addSong(this.Nsf,22,null,this.VOLUME);
      
      public const SngDrWily2:Song = addSong(this.Nsf,23,null,this.VOLUME);
      
      public const SngItemGet:Song = addSong(this.Nsf,59,null,this.VOLUME);
      
      public const SngWilyBattle:Song = addSong(this.Nsf,70,null,this.VOLUME);
      
      public const SngWilyDefeated:Song = addSong(this.Nsf,71,null,this.VOLUME);
      
      public function GameMegaMan4(param1:int, param2:int = -1)
      {
         super("Mega Man 4","Capcom",Consoles.nintendo,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngDustMan);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngToadMan);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngRingMan);
         addToTypePlayList(LT_INTRO,this.SngWeaponGet);
         addToTypePlayList(LT_NORMAL,this.SngPharaohMan);
         addToTypePlayList(LT_PIPE_BONUS,this.SngBrightMan);
         addToTypePlayList(LT_PLATFORM,this.SngSkullMan);
         addToTypePlayList(LT_UNDER_GROUND,this.SngDrillMan);
         addToTypePlayList(LT_WATER,this.SngDiveMan);
         addToTypePlayList(MT_DARK_EPIC,this.SngDrWily2);
         addToTypePlayList(BOSS,this.SngBossBattle);
         addToTypePlayList(CHAR_SEL,this.SngStageSelect);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngBossChosen);
         addToTypePlayList(CREDITS,this.SngEnding2);
         addToTypePlayList(DIE,null);
         addToTypePlayList(FINAL_BOSS,this.SngWilyBattle);
         addToTypePlayList(GAME_OVER,this.SngPassword);
         addToTypePlayList(HURRY,this.SngDrWily1);
         addToTypePlayList(STAR,null);
         addToTypePlayList(TITLE_SCREEN,this.SngTitleScreen);
         addToTypePlayList(WIN,this.SngVictory);
         addToTypePlayList(WIN_CASTLE,this.SngWilyDefeated);
      }
   }
}
