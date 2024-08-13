package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameMegaMan9 extends Game
   {
      
      private static var instance:Game;
       
      
      public const Nsf:Class = GameMegaMan9_Nsf;
      
      public const Nsfe:Class = GameMegaMan9_Nsfe;
      
      private const VOLUME:int = 55;
      
      public const SngCapcomLogo:Song = addSong(this.Nsf,1,null,this.VOLUME);
      
      public const SngOpening1:Song = addSong(this.Nsf,2,null,this.VOLUME);
      
      public const SngOpening2:Song = addSong(this.Nsf,3,null,this.VOLUME);
      
      public const SngOpening3:Song = addSong(this.Nsf,4,null,this.VOLUME);
      
      public const SngTitle:Song = addSong(this.Nsf,5,null,this.VOLUME);
      
      public const SngMenu:Song = addSong(this.Nsf,6,null,this.VOLUME);
      
      public const SngLevelSelect:Song = addSong(this.Nsf,7,null,this.VOLUME);
      
      public const SngLevelIntro:Song = addSong(this.Nsf,8,null,this.VOLUME);
      
      public const SngConcreteMan:Song = addSong(this.Nsf,9,null,this.VOLUME);
      
      public const SngTornadoMan:Song = addSong(this.Nsf,10,null,this.VOLUME);
      
      public const SngSplashWoman:Song = addSong(this.Nsfe,10,null,this.VOLUME);
      
      public const SngPlugMan:Song = addSong(this.Nsf,12,null,this.VOLUME);
      
      public const SngJewelMan:Song = addSong(this.Nsf,11,null,this.VOLUME);
      
      public const SngHornetMan:Song = addSong(this.Nsfe,13,null,this.VOLUME);
      
      public const SngMagmaMan:Song = addSong(this.Nsfe,14,null,this.VOLUME);
      
      public const SngGalaxyMan:Song = addSong(this.Nsfe,16,null,this.VOLUME);
      
      public const SngBossBattle:Song = addSong(this.Nsf,13,null,this.VOLUME);
      
      public const SngVictoryLevelClear:Song = addSong(this.Nsf,14,null,this.VOLUME);
      
      public const SngGetWeapon:Song = addSong(this.Nsf,15,null,this.VOLUME);
      
      public const SngShop:Song = addSong(this.Nsfe,20,null,this.VOLUME);
      
      public const SngGetRushJet:Song = addSong(this.Nsf,16,null,this.VOLUME);
      
      public const SngSuspense:Song = addSong(this.Nsfe,22,null,this.VOLUME);
      
      public const SngWilyCastle:Song = addSong(this.Nsf,17,null,this.VOLUME);
      
      public const SngWilyStage1:Song = addSong(this.Nsf,18,null,this.VOLUME);
      
      public const SngWilyStage2:Song = addSong(this.Nsf,19,null,this.VOLUME);
      
      public const SngWilyStage3:Song = addSong(this.Nsf,20,null,this.VOLUME);
      
      public const SngWilyStage4:Song = addSong(this.Nsf,21,null,this.VOLUME);
      
      public const SngBossFinal:Song = addSong(this.Nsf,22,null,this.VOLUME);
      
      public const SngEnding:Song = addSong(this.Nsfe,32,null,this.VOLUME);
      
      public const SngCredits:Song = addSong(this.Nsfe,33,null,this.VOLUME);
      
      public const SngEndlessStage:Song = addSong(this.Nsf,23,null,this.VOLUME);
      
      public const SngSpecialStage:Song = addSong(this.Nsf,24,null,this.VOLUME);
      
      public const SngGameOver:Song = addSong(this.Nsf,25,null,this.VOLUME);
      
      public const SngProtoManWhistle:Song = addSong(this.Nsf,26,null,this.VOLUME);
      
      public const SngMedley:Song = addSong(this.Nsf,27,null,this.VOLUME);
      
      public const SngUnknown:Song = addSong(this.Nsf,28,null,this.VOLUME);
      
      public function GameMegaMan9(param1:int, param2:int = -1)
      {
         super("Mega Man 9","Capcom",Consoles.nintendo,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngWilyStage4);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngWilyStage1);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngEndlessStage);
         addToTypePlayList(LT_INTRO,this.SngGetRushJet);
         addToTypePlayList(LT_NORMAL,this.SngConcreteMan);
         addToTypePlayList(LT_PIPE_BONUS,this.SngJewelMan);
         addToTypePlayList(LT_PLATFORM,this.SngPlugMan);
         addToTypePlayList(LT_UNDER_GROUND,this.SngJewelMan);
         addToTypePlayList(LT_WATER,this.SngSplashWoman);
         addToTypePlayList(MT_DARK_EPIC,this.SngWilyStage2);
         addToTypePlayList(BOSS,this.SngBossBattle);
         addToTypePlayList(CHAR_SEL,this.SngLevelSelect);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngLevelIntro);
         addToTypePlayList(CREDITS,this.SngCredits);
         addToTypePlayList(DIE,null);
         addToTypePlayList(FINAL_BOSS,this.SngBossFinal);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngSpecialStage);
         addToTypePlayList(STAR,this.SngGalaxyMan);
         addToTypePlayList(TITLE_SCREEN,this.SngConcreteMan);
         addToTypePlayList(WIN,this.SngVictoryLevelClear);
         addToTypePlayList(WIN_CASTLE,this.SngOpening1);
      }
   }
}
