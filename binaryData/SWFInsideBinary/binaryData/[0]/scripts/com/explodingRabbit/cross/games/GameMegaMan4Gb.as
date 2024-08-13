package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameMegaMan4Gb extends Game
   {
      
      private static var instance:Game;
       
      
      public const Gbs:Class = GameMegaMan4Gb_Gbs;
      
      private const VOLUME:int = 60;
      
      public const SngBrightMan:Song = addSong(this.Gbs,1,null,this.VOLUME);
      
      public const SngToadMan:Song = addSong(this.Gbs,2,null,this.VOLUME);
      
      public const SngRingMan:Song = addSong(this.Gbs,3,null,this.VOLUME);
      
      public const SngPharoahMan:Song = addSong(this.Gbs,4,null,this.VOLUME);
      
      public const SngStoneMan:Song = addSong(this.Gbs,5,null,this.VOLUME);
      
      public const SngCrystalMan:Song = addSong(this.Gbs,6,null,this.VOLUME);
      
      public const SngChargeMan:Song = addSong(this.Gbs,7,null,this.VOLUME);
      
      public const SngNapalmMan:Song = addSong(this.Gbs,8,null,this.VOLUME);
      
      public const SngBossBattle2:Song = addSong(this.Gbs,9,null,this.VOLUME);
      
      public const SngProtoWhistle:Song = addSong(this.Gbs,10,null,this.VOLUME);
      
      public const SngStageSelect1:Song = addSong(this.Gbs,11,null,this.VOLUME);
      
      public const SngStageSelect2:Song = addSong(this.Gbs,12,null,this.VOLUME);
      
      public const SngPassword:Song = addSong(this.Gbs,13,null,this.VOLUME);
      
      public const SngStageStart:Song = addSong(this.Gbs,14,null,this.VOLUME);
      
      public const SngGameOver:Song = addSong(this.Gbs,15,null,this.VOLUME);
      
      public const SngVictory:Song = addSong(this.Gbs,16,null,this.VOLUME);
      
      public const SngFinalVictory:Song = addSong(this.Gbs,17,null,this.VOLUME);
      
      public const SngGotWeapon:Song = addSong(this.Gbs,18,null,this.VOLUME);
      
      public const SngGotBeat:Song = addSong(this.Gbs,19,null,this.VOLUME);
      
      public const SngEnterBase:Song = addSong(this.Gbs,20,null,this.VOLUME);
      
      public const SngWilyBaseEscape:Song = addSong(this.Gbs,21,null,this.VOLUME);
      
      public const SngBossBattle1:Song = addSong(this.Gbs,22,null,this.VOLUME);
      
      public const SngTitle:Song = addSong(this.Gbs,23,null,this.VOLUME);
      
      public const SngEndingTheme:Song = addSong(this.Gbs,24,null,this.VOLUME);
      
      public const SngAltWilyAssault:Song = addSong(this.Gbs,25,null,this.VOLUME);
      
      public const SngWilyMachine:Song = addSong(this.Gbs,26,null,this.VOLUME);
      
      public const SngAltWilyBattle:Song = addSong(this.Gbs,27,null,this.VOLUME);
      
      public const SngWilyBattle:Song = addSong(this.Gbs,28,null,this.VOLUME);
      
      public const SngWilyAssault:Song = addSong(this.Gbs,29,null,this.VOLUME);
      
      public const SngAltGotBeat:Song = addSong(this.Gbs,30,null,this.VOLUME);
      
      public const SngAltLab:Song = addSong(this.Gbs,31,null,this.VOLUME);
      
      public const SngInstructions:Song = addSong(this.Gbs,32,null,this.VOLUME);
      
      public const SngFinalStage:Song = addSong(this.Gbs,33,null,this.VOLUME);
      
      public const SngRockTheme:Song = addSong(this.Gbs,34,null,this.VOLUME);
      
      public const SngShop:Song = addSong(this.Gbs,35,null,this.VOLUME);
      
      public const SngDie:Song = addSong(this.Gbs,52,null,this.VOLUME);
      
      public function GameMegaMan4Gb(param1:int, param2:int = -1)
      {
         super("Mega Man IV (Game Boy)","Capcom",Consoles.gameBoy,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngFinalStage);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngBrightMan);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngGotBeat);
         addToTypePlayList(LT_INTRO,this.SngStageSelect1);
         addToTypePlayList(LT_NORMAL,this.SngNapalmMan);
         addToTypePlayList(LT_PIPE_BONUS,this.SngStoneMan);
         addToTypePlayList(LT_PLATFORM,this.SngRingMan);
         addToTypePlayList(LT_UNDER_GROUND,this.SngCrystalMan);
         addToTypePlayList(LT_WATER,this.SngChargeMan);
         addToTypePlayList(MT_DARK_EPIC,this.SngPharoahMan);
         addToTypePlayList(BOSS,this.SngBossBattle2);
         addToTypePlayList(CHAR_SEL,this.SngStageSelect1);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngProtoWhistle);
         addToTypePlayList(CREDITS,this.SngEndingTheme);
         addToTypePlayList(DIE,this.SngDie);
         addToTypePlayList(FINAL_BOSS,this.SngWilyBattle);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngToadMan);
         addToTypePlayList(STAR,this.SngAltLab);
         addToTypePlayList(TITLE_SCREEN,this.SngRockTheme);
         addToTypePlayList(WIN,this.SngVictory);
         addToTypePlayList(WIN_CASTLE,this.SngFinalVictory);
      }
   }
}
