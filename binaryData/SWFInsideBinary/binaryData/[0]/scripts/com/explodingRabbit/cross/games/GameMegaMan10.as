package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameMegaMan10 extends Game
   {
      
      private static var instance:Game;
       
      
      public const Nsf:Class = GameMegaMan10_Nsf;
      
      private const VOLUME:int = 45;
      
      public const SngCapcomLogo:Song = addSong(this.Nsf,1,null,this.VOLUME);
      
      public const SngOpeningUsualDay:Song = addSong(this.Nsf,3,null,this.VOLUME);
      
      public const SngOpeningFutureWorld:Song = addSong(this.Nsf,4,null,this.VOLUME);
      
      public const SngOpeningSuspicion:Song = addSong(this.Nsf,5,null,this.VOLUME);
      
      public const SngOpeningGoTogether:Song = addSong(this.Nsf,6,null,this.VOLUME);
      
      public const SngTitle:Song = addSong(this.Nsf,7,null,this.VOLUME);
      
      public const SngMainMenu:Song = addSong(this.Nsf,8,null,this.VOLUME);
      
      public const SngLevelSelect:Song = addSong(this.Nsf,9,null,this.VOLUME);
      
      public const SngLevelIntro:Song = addSong(this.Nsf,10,null,this.VOLUME);
      
      public const SngPumpMan:Song = addSong(this.Nsf,11,null,this.VOLUME);
      
      public const SngNitroMan:Song = addSong(this.Nsf,12,null,this.VOLUME);
      
      public const SngStrikeMan:Song = addSong(this.Nsf,13,null,this.VOLUME);
      
      public const SngSheepMan:Song = addSong(this.Nsf,14,null,this.VOLUME);
      
      public const SngChillMan:Song = addSong(this.Nsf,15,null,this.VOLUME);
      
      public const SngSolarMan:Song = addSong(this.Nsf,16,null,this.VOLUME);
      
      public const SngCommandoMan:Song = addSong(this.Nsf,17,null,this.VOLUME);
      
      public const SngBladeMan:Song = addSong(this.Nsf,18,null,this.VOLUME);
      
      public const SngBossBattle:Song = addSong(this.Nsf,19,null,this.VOLUME);
      
      public const SngVictorySingleLevel:Song = addSong(this.Nsf,20,null,this.VOLUME);
      
      public const SngGetWeapon:Song = addSong(this.Nsf,21,null,this.VOLUME);
      
      public const SngShopMegaMan:Song = addSong(this.Nsf,22,null,this.VOLUME);
      
      public const SngShopProtoMan:Song = addSong(this.Nsf,23,null,this.VOLUME);
      
      public const SngShopBass:Song = addSong(this.Nsf,24,null,this.VOLUME);
      
      public const SngRoboenza:Song = addSong(this.Nsf,25,null,this.VOLUME);
      
      public const SngWilyCrisis:Song = addSong(this.Nsf,26,null,this.VOLUME);
      
      public const SngRollsGift:Song = addSong(this.Nsf,27,null,this.VOLUME);
      
      public const SngWilyCastleMap:Song = addSong(this.Nsf,28,null,this.VOLUME);
      
      public const SngWilyStage1Entrance:Song = addSong(this.Nsf,29,null,this.VOLUME);
      
      public const SngBossBattleWilyStage:Song = addSong(this.Nsf,30,null,this.VOLUME);
      
      public const SngWilyStage1:Song = addSong(this.Nsf,31,null,this.VOLUME);
      
      public const SngWilyStage2:Song = addSong(this.Nsf,32,null,this.VOLUME);
      
      public const SngWilyStage3:Song = addSong(this.Nsf,33,null,this.VOLUME);
      
      public const SngWilyStage4:Song = addSong(this.Nsf,34,null,this.VOLUME);
      
      public const SngBossBattleWilyMachine:Song = addSong(this.Nsf,35,null,this.VOLUME);
      
      public const SngWilyStationMap:Song = addSong(this.Nsf,36,null,this.VOLUME);
      
      public const SngWilyStage5:Song = addSong(this.Nsf,37,null,this.VOLUME);
      
      public const SngBossBattleFinal:Song = addSong(this.Nsf,38,null,this.VOLUME);
      
      public const SngVictoryAllLevels:Song = addSong(this.Nsf,39,null,this.VOLUME);
      
      public const SngWilysGift:Song = addSong(this.Nsf,40,null,this.VOLUME);
      
      public const SngCredits:Song = addSong(this.Nsf,41,null,this.VOLUME);
      
      public const SngChallenge:Song = addSong(this.Nsf,42,null,this.VOLUME);
      
      public const SngSpecialStage1:Song = addSong(this.Nsf,43,null,this.VOLUME);
      
      public const SngSpecialStage2:Song = addSong(this.Nsf,44,null,this.VOLUME);
      
      public const SngSpecialStage3:Song = addSong(this.Nsf,45,null,this.VOLUME);
      
      public const SngEndlessMode:Song = addSong(this.Nsf,46,null,this.VOLUME);
      
      public const SngGameOver:Song = addSong(this.Nsf,47,null,this.VOLUME);
      
      public function GameMegaMan10(param1:int, param2:int = -1)
      {
         super("Mega Man 10","Capcom",Consoles.nintendo,param1,null,param2);
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
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngSpecialStage2);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngShopBass);
         addToTypePlayList(LT_INTRO,this.SngMainMenu);
         addToTypePlayList(LT_NORMAL,this.SngStrikeMan);
         addToTypePlayList(LT_PIPE_BONUS,this.SngSolarMan);
         addToTypePlayList(LT_PLATFORM,this.SngNitroMan);
         addToTypePlayList(LT_UNDER_GROUND,this.SngPumpMan);
         addToTypePlayList(LT_WATER,this.SngSheepMan);
         addToTypePlayList(MT_DARK_EPIC,this.SngWilyStage1);
         addToTypePlayList(BOSS,this.SngBossBattle);
         addToTypePlayList(CHAR_SEL,this.SngLevelSelect);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngLevelIntro);
         addToTypePlayList(CREDITS,this.SngCredits);
         addToTypePlayList(DIE,null);
         addToTypePlayList(FINAL_BOSS,this.SngBossBattleFinal);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngWilyStage2);
         addToTypePlayList(STAR,this.SngEndlessMode);
         addToTypePlayList(TITLE_SCREEN,this.SngNitroMan);
         addToTypePlayList(WIN,this.SngVictorySingleLevel);
         addToTypePlayList(WIN_CASTLE,this.SngVictoryAllLevels);
      }
   }
}
