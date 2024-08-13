package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameMegaManGb extends Game
   {
      
      private static var instance:Game;
       
      
      public const Gbs:Class = GameMegaManGb_Gbs;
      
      private const VOLUME:int = 45;
      
      public const SngCutMan:Song = addSong(this.Gbs,1,null,this.VOLUME);
      
      public const SngIceMan:Song = addSong(this.Gbs,2,null,this.VOLUME);
      
      public const SngElecMan:Song = addSong(this.Gbs,3,null,this.VOLUME);
      
      public const SngFireMan:Song = addSong(this.Gbs,4,null,this.VOLUME);
      
      public const SngBossBattle:Song = addSong(this.Gbs,5,null,this.VOLUME);
      
      public const SngVictory:Song = addSong(this.Gbs,6,null,this.VOLUME);
      
      public const SngWilyCastle:Song = addSong(this.Gbs,7,null,this.VOLUME);
      
      public const SngWilyStar:Song = addSong(this.Gbs,9,null,this.VOLUME);
      
      public const SngWilyIntro:Song = addSong(this.Gbs,10,null,this.VOLUME);
      
      public const SngBossSelect:Song = addSong(this.Gbs,12,null,this.VOLUME);
      
      public const SngStageSelect:Song = addSong(this.Gbs,13,null,this.VOLUME);
      
      public const SngEnding:Song = addSong(this.Gbs,14,null,this.VOLUME);
      
      public const SngWeaponGet:Song = addSong(this.Gbs,15,null,this.VOLUME);
      
      public const SngTitleScreen:Song = addSong(this.Gbs,16,null,this.VOLUME);
      
      public const SngGameOver:Song = addSong(this.Gbs,17,null,this.VOLUME);
      
      public function GameMegaManGb(param1:int, param2:int = -1)
      {
         super("Mega Man: Dr. Wily\'s Revenge","Capcom",Consoles.gameBoy,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngWilyCastle);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngCutMan);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngCutMan);
         addToTypePlayList(LT_INTRO,this.SngWeaponGet);
         addToTypePlayList(LT_NORMAL,this.SngElecMan);
         addToTypePlayList(LT_PIPE_BONUS,this.SngFireMan);
         addToTypePlayList(LT_PLATFORM,this.SngCutMan);
         addToTypePlayList(LT_UNDER_GROUND,this.SngFireMan);
         addToTypePlayList(LT_WATER,this.SngIceMan);
         addToTypePlayList(MT_DARK_EPIC,this.SngWilyStar);
         addToTypePlayList(BOSS,this.SngBossBattle);
         addToTypePlayList(CHAR_SEL,this.SngStageSelect);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngBossSelect);
         addToTypePlayList(CREDITS,this.SngEnding);
         addToTypePlayList(DIE,null);
         addToTypePlayList(FINAL_BOSS,this.SngBossBattle);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngBossBattle);
         addToTypePlayList(STAR,this.SngTitleScreen);
         addToTypePlayList(TITLE_SCREEN,this.SngTitleScreen);
         addToTypePlayList(WIN,this.SngVictory);
         addToTypePlayList(WIN_CASTLE,this.SngVictory);
      }
   }
}
