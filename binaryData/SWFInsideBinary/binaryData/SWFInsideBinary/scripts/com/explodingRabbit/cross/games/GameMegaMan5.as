package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameMegaMan5 extends Game
   {
      
      private static var instance:Game;
       
      
      public const Nsf:Class = GameMegaMan5_Nsf;
      
      private const VOLUME:int = 65;
      
      public const SngGravityMan:Song = addSong(this.Nsf,1,null,this.VOLUME);
      
      public const SngStoneMan:Song = addSong(this.Nsf,2,null,this.VOLUME);
      
      public const SngWaveMan:Song = addSong(this.Nsf,3,null,this.VOLUME);
      
      public const SngStarMan:Song = addSong(this.Nsf,4,null,this.VOLUME);
      
      public const SngCrystalMan:Song = addSong(this.Nsf,5,null,this.VOLUME);
      
      public const SngGyroMan:Song = addSong(this.Nsf,6,null,this.VOLUME);
      
      public const SngChargeMan:Song = addSong(this.Nsf,7,null,this.VOLUME);
      
      public const SngNapalmMan:Song = addSong(this.Nsf,8,null,this.VOLUME);
      
      public const SngProtoManFortressStage:Song = addSong(this.Nsf,9,null,this.VOLUME);
      
      public const SngDrWilyCastleStage:Song = addSong(this.Nsf,10,null,this.VOLUME);
      
      public const SngStageBoss:Song = addSong(this.Nsf,11,null,this.VOLUME);
      
      public const SngIntro:Song = addSong(this.Nsf,12,null,this.VOLUME);
      
      public const SngCredits:Song = addSong(this.Nsf,13,null,this.VOLUME);
      
      public const SngMakeYourSelection:Song = addSong(this.Nsf,14,null,this.VOLUME);
      
      public const SngPrepareForBattle:Song = addSong(this.Nsf,15,null,this.VOLUME);
      
      public const SngProtoManFortress:Song = addSong(this.Nsf,16,null,this.VOLUME);
      
      public const SngDrWilyCastle:Song = addSong(this.Nsf,17,null,this.VOLUME);
      
      public const SngVictory:Song = addSong(this.Nsf,18,null,this.VOLUME);
      
      public const SngDefeated:Song = addSong(this.Nsf,19,null,this.VOLUME);
      
      public const SngPassword:Song = addSong(this.Nsf,20,null,this.VOLUME);
      
      public const SngNewToys:Song = addSong(this.Nsf,21,null,this.VOLUME);
      
      public const SngDrWilyIsDown:Song = addSong(this.Nsf,22,null,this.VOLUME);
      
      public const SngBattleWithDrWily:Song = addSong(this.Nsf,23,null,this.VOLUME);
      
      public function GameMegaMan5(param1:int, param2:int = -1)
      {
         super("Mega Man 5","Capcom",Consoles.nintendo,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngDrWilyCastleStage);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngWaveMan);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngStarMan);
         addToTypePlayList(LT_INTRO,this.SngPassword);
         addToTypePlayList(LT_NORMAL,this.SngNapalmMan);
         addToTypePlayList(LT_PIPE_BONUS,this.SngStoneMan);
         addToTypePlayList(LT_PLATFORM,this.SngGyroMan);
         addToTypePlayList(LT_UNDER_GROUND,this.SngCrystalMan);
         addToTypePlayList(LT_WATER,this.SngGravityMan);
         addToTypePlayList(MT_DARK_EPIC,this.SngProtoManFortressStage);
         addToTypePlayList(BOSS,this.SngStageBoss);
         addToTypePlayList(CHAR_SEL,this.SngMakeYourSelection);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngPrepareForBattle);
         addToTypePlayList(CREDITS,this.SngCredits);
         addToTypePlayList(DIE,null);
         addToTypePlayList(FINAL_BOSS,this.SngBattleWithDrWily);
         addToTypePlayList(GAME_OVER,this.SngDefeated);
         addToTypePlayList(HURRY,this.SngNewToys);
         addToTypePlayList(STAR,this.SngChargeMan);
         addToTypePlayList(TITLE_SCREEN,this.SngPassword);
         addToTypePlayList(WIN,this.SngVictory);
         addToTypePlayList(WIN_CASTLE,this.SngDrWilyIsDown);
      }
   }
}
