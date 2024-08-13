package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameMegaMan5Gb extends Game
   {
      
      private static var instance:Game;
       
      
      public const Gbs:Class = GameMegaMan5Gb_Gbs;
      
      private const VOLUME:int = 55;
      
      public const SngStageSelect:Song = addSong(this.Gbs,1,null,this.VOLUME);
      
      public const SngWilyStarIntro:Song = addSong(this.Gbs,2,null,this.VOLUME);
      
      public const SngUranus:Song = addSong(this.Gbs,3,null,this.VOLUME);
      
      public const SngSpaceRush:Song = addSong(this.Gbs,4,null,this.VOLUME);
      
      public const SngNeptune:Song = addSong(this.Gbs,5,null,this.VOLUME);
      
      public const SngAltBoss:Song = addSong(this.Gbs,6,null,this.VOLUME);
      
      public const SngBoss:Song = addSong(this.Gbs,7,null,this.VOLUME);
      
      public const SngSaturn:Song = addSong(this.Gbs,8,null,this.VOLUME);
      
      public const SngMecury:Song = addSong(this.Gbs,9,null,this.VOLUME);
      
      public const SngStarEscape:Song = addSong(this.Gbs,10,null,this.VOLUME);
      
      public const SngMars:Song = addSong(this.Gbs,11,null,this.VOLUME);
      
      public const SngJupiter:Song = addSong(this.Gbs,12,null,this.VOLUME);
      
      public const SngUnknownStage:Song = addSong(this.Gbs,13,null,this.VOLUME);
      
      public const SngPluto:Song = addSong(this.Gbs,14,null,this.VOLUME);
      
      public const SngFinalStage:Song = addSong(this.Gbs,15,null,this.VOLUME);
      
      public const SngPrologue1:Song = addSong(this.Gbs,16,null,this.VOLUME);
      
      public const SngStageStart:Song = addSong(this.Gbs,17,null,this.VOLUME);
      
      public const SngGameOver:Song = addSong(this.Gbs,18,null,this.VOLUME);
      
      public const SngVictory:Song = addSong(this.Gbs,19,null,this.VOLUME);
      
      public const SngAltFinalV:Song = addSong(this.Gbs,20,null,this.VOLUME);
      
      public const SngGotWeapon:Song = addSong(this.Gbs,21,null,this.VOLUME);
      
      public const SngEndingTheme:Song = addSong(this.Gbs,22,null,this.VOLUME);
      
      public const SngAltVictory:Song = addSong(this.Gbs,23,null,this.VOLUME);
      
      public const SngAltTitle:Song = addSong(this.Gbs,24,null,this.VOLUME);
      
      public const SngTitle:Song = addSong(this.Gbs,25,null,this.VOLUME);
      
      public const SngPrologue2:Song = addSong(this.Gbs,26,null,this.VOLUME);
      
      public const SngDrLightShop:Song = addSong(this.Gbs,27,null,this.VOLUME);
      
      public const SngInstructions:Song = addSong(this.Gbs,28,null,this.VOLUME);
      
      public const SngPrologue3:Song = addSong(this.Gbs,29,null,this.VOLUME);
      
      public const SngPassword:Song = addSong(this.Gbs,30,null,this.VOLUME);
      
      public const SngSunStar:Song = addSong(this.Gbs,31,null,this.VOLUME);
      
      public const SngFinalVictory:Song = addSong(this.Gbs,32,null,this.VOLUME);
      
      public const SngVenus:Song = addSong(this.Gbs,33,null,this.VOLUME);
      
      public const SngDie:Song = addSong(this.Gbs,50,null,this.VOLUME);
      
      public const SngProtoWhistle:Song = addSong(this.Gbs,75,null,this.VOLUME);
      
      public function GameMegaMan5Gb(param1:int, param2:int = -1)
      {
         super("Mega Man V (Game Boy)","Capcom",Consoles.gameBoy,param1,null,param2);
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
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngVenus);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngGotWeapon);
         addToTypePlayList(LT_INTRO,this.SngPassword);
         addToTypePlayList(LT_NORMAL,this.SngSpaceRush);
         addToTypePlayList(LT_PIPE_BONUS,this.SngUranus);
         addToTypePlayList(LT_PLATFORM,this.SngJupiter);
         addToTypePlayList(LT_UNDER_GROUND,this.SngMars);
         addToTypePlayList(LT_WATER,this.SngPluto);
         addToTypePlayList(MT_DARK_EPIC,this.SngSaturn);
         addToTypePlayList(BOSS,this.SngBoss);
         addToTypePlayList(CHAR_SEL,this.SngStageSelect);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngStageStart);
         addToTypePlayList(CREDITS,this.SngEndingTheme);
         addToTypePlayList(DIE,this.SngDie);
         addToTypePlayList(FINAL_BOSS,this.SngSunStar);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngStarEscape);
         addToTypePlayList(STAR,this.SngAltBoss);
         addToTypePlayList(TITLE_SCREEN,this.SngTitle);
         addToTypePlayList(WIN,this.SngVictory);
         addToTypePlayList(WIN_CASTLE,this.SngFinalVictory);
      }
   }
}
