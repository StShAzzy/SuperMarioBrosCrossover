package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameMetroid2 extends Game
   {
      
      private static var instance:Game;
       
      
      public const Gbs:Class = GameMetroid2_Gbs;
      
      private const VOLUME:int = 60;
      
      public const SngTitle:Song = addSong(this.Gbs,1,null,this.VOLUME);
      
      public const SngSamusAppears:Song = addSong(this.Gbs,2,null,this.VOLUME);
      
      public const SngSR388:Song = addSong(this.Gbs,3,null,this.VOLUME);
      
      public const SngRuins:Song = addSong(this.Gbs,4,null,this.VOLUME);
      
      public const SngCaverns1:Song = addSong(this.Gbs,5,null,this.VOLUME);
      
      public const SngCaverns2:Song = addSong(this.Gbs,6,null,this.VOLUME);
      
      public const SngCaverns3:Song = addSong(this.Gbs,7,null,this.VOLUME);
      
      public const SngCaverns4:Song = addSong(this.Gbs,8,null,this.VOLUME);
      
      public const SngItemAcquisition:Song = addSong(this.Gbs,9,null,this.VOLUME);
      
      public const SngMissileExpansion:Song = addSong(this.Gbs,10,null,this.VOLUME);
      
      public const SngMetroidConfrontation:Song = addSong(this.Gbs,11,null,this.VOLUME);
      
      public const SngDefeatMetroid:Song = addSong(this.Gbs,12,null,this.VOLUME);
      
      public const SngFinalCavern:Song = addSong(this.Gbs,13,null,this.VOLUME);
      
      public const SngFinalCavern2:Song = addSong(this.Gbs,14,null,this.VOLUME);
      
      public const SngMetroidsAppear:Song = addSong(this.Gbs,15,null,this.VOLUME);
      
      public const SngBeforeFinalConfrontation:Song = addSong(this.Gbs,16,null,this.VOLUME);
      
      public const SngFinalBattle:Song = addSong(this.Gbs,17,null,this.VOLUME);
      
      public const SngTheMetroidHatchling:Song = addSong(this.Gbs,18,null,this.VOLUME);
      
      public const SngEnding:Song = addSong(this.Gbs,19,null,this.VOLUME);
      
      public function GameMetroid2(param1:int, param2:int = -1)
      {
         super("Metroid II: Return of Samus","Nintendo",Consoles.gameBoy,param1,"Metroid II",param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngRuins);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngSR388);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngTheMetroidHatchling);
         addToTypePlayList(LT_INTRO,this.SngCaverns1);
         addToTypePlayList(LT_NORMAL,this.SngSR388);
         addToTypePlayList(LT_PIPE_BONUS,this.SngFinalCavern);
         addToTypePlayList(LT_PLATFORM,this.SngSR388);
         addToTypePlayList(LT_UNDER_GROUND,this.SngFinalCavern);
         addToTypePlayList(LT_WATER,this.SngFinalCavern2);
         addToTypePlayList(MT_DARK_EPIC,this.SngSR388);
         addToTypePlayList(BOSS,this.SngMetroidConfrontation);
         addToTypePlayList(CHAR_SEL,this.SngTitle);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngSamusAppears);
         addToTypePlayList(CREDITS,this.SngEnding);
         addToTypePlayList(DIE,null);
         addToTypePlayList(FINAL_BOSS,this.SngFinalBattle);
         addToTypePlayList(GAME_OVER,null);
         addToTypePlayList(HURRY,this.SngBeforeFinalConfrontation);
         addToTypePlayList(STAR,this.SngEnding);
         addToTypePlayList(TITLE_SCREEN,this.SngTitle);
         addToTypePlayList(WIN,this.SngItemAcquisition);
         addToTypePlayList(WIN_CASTLE,this.SngItemAcquisition);
      }
   }
}
