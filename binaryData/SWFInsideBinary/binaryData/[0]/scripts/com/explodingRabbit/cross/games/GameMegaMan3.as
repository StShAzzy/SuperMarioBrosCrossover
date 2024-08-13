package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameMegaMan3 extends Game
   {
      
      private static var instance:Game;
       
      
      public const Nsf:Class = GameMegaMan3_Nsf;
      
      private const VOLUME:int = 65;
      
      public const SngIntroNoIntro:Song = addSong(this.Nsf,1,null,this.VOLUME);
      
      public const SngIntro:Song = addSong(this.Nsf,2,null,this.VOLUME);
      
      public const SngNeedleMan:Song = addSong(this.Nsf,3,null,this.VOLUME);
      
      public const SngMagnetMan:Song = addSong(this.Nsf,4,null,this.VOLUME);
      
      public const SngGeminiMan:Song = addSong(this.Nsf,5,null,this.VOLUME);
      
      public const SngHardMan:Song = addSong(this.Nsf,6,null,this.VOLUME);
      
      public const SngTopMan:Song = addSong(this.Nsf,7,null,this.VOLUME);
      
      public const SngSnakeMan:Song = addSong(this.Nsf,8,null,this.VOLUME);
      
      public const SngSparkMan:Song = addSong(this.Nsf,9,null,this.VOLUME);
      
      public const SngShadowMan:Song = addSong(this.Nsf,10,null,this.VOLUME);
      
      public const SngWilyCastle1:Song = addSong(this.Nsf,11,null,this.VOLUME);
      
      public const SngWilyCastle2:Song = addSong(this.Nsf,12,null,this.VOLUME);
      
      public const SngWilyCastle3:Song = addSong(this.Nsf,13,null,this.VOLUME);
      
      public const SngBossBattle:Song = addSong(this.Nsf,14,null,this.VOLUME);
      
      public const SngWilyBattle:Song = addSong(this.Nsf,15,null,this.VOLUME);
      
      public const SngPassword:Song = addSong(this.Nsf,16,null,this.VOLUME);
      
      public const SngCredits:Song = addSong(this.Nsf,17,null,this.VOLUME);
      
      public const SngStageSelect:Song = addSong(this.Nsf,18,null,this.VOLUME);
      
      public const SngProtoManWhistle:Song = addSong(this.Nsf,19,null,this.VOLUME);
      
      public const SngProtoManSong:Song = addSong(this.Nsf,20,null,this.VOLUME);
      
      public const SngLevelStart:Song = addSong(this.Nsf,53,null,this.VOLUME);
      
      public const SngWeaponAcquired:Song = addSong(this.Nsf,55,null,this.VOLUME);
      
      public const SngWilyMap:Song = addSong(this.Nsf,56,null,this.VOLUME);
      
      public const SngWilyDefeated:Song = addSong(this.Nsf,57,null,this.VOLUME);
      
      public const SngLevelComplete:Song = addSong(this.Nsf,58,null,this.VOLUME);
      
      public function GameMegaMan3(param1:int, param2:int = -1)
      {
         super("Mega Man 3","Capcom",Consoles.nintendo,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngWilyCastle3);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngTopMan);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngHardMan);
         addToTypePlayList(LT_INTRO,this.SngWeaponAcquired);
         addToTypePlayList(LT_NORMAL,this.SngSparkMan);
         addToTypePlayList(LT_PIPE_BONUS,this.SngNeedleMan);
         addToTypePlayList(LT_PLATFORM,this.SngSnakeMan);
         addToTypePlayList(LT_UNDER_GROUND,this.SngShadowMan);
         addToTypePlayList(LT_WATER,this.SngGeminiMan);
         addToTypePlayList(MT_DARK_EPIC,this.SngMagnetMan);
         addToTypePlayList(BOSS,this.SngBossBattle);
         addToTypePlayList(CHAR_SEL,this.SngStageSelect);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngLevelStart);
         addToTypePlayList(CREDITS,this.SngCredits);
         addToTypePlayList(DIE,null);
         addToTypePlayList(FINAL_BOSS,this.SngWilyBattle);
         addToTypePlayList(GAME_OVER,this.SngPassword);
         addToTypePlayList(HURRY,this.SngWilyCastle1);
         addToTypePlayList(STAR,this.SngWilyCastle2);
         addToTypePlayList(TITLE_SCREEN,this.SngIntro);
         addToTypePlayList(WIN,this.SngLevelComplete);
         addToTypePlayList(WIN_CASTLE,this.SngWilyDefeated);
      }
   }
}
