package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameMegaMan3Gb extends Game
   {
      
      private static var instance:Game;
       
      
      public const Gbs:Class = GameMegaMan3Gb_Gbs;
      
      private const VOLUME:int = 50;
      
      public const SngStageSelect:Song = addSong(this.Gbs,1,null,this.VOLUME);
      
      public const SngStageStart:Song = addSong(this.Gbs,2,null,this.VOLUME);
      
      public const SngShadowMan:Song = addSong(this.Gbs,3,null,this.VOLUME);
      
      public const SngBossBattle1:Song = addSong(this.Gbs,4,null,this.VOLUME);
      
      public const SngGeminiMan:Song = addSong(this.Gbs,5,null,this.VOLUME);
      
      public const SngSnakeMan:Song = addSong(this.Gbs,6,null,this.VOLUME);
      
      public const SngSparkMan:Song = addSong(this.Gbs,7,null,this.VOLUME);
      
      public const SngJusticeMarch:Song = addSong(this.Gbs,8,null,this.VOLUME);
      
      public const SngGameOver:Song = addSong(this.Gbs,9,null,this.VOLUME);
      
      public const SngBossBatle2:Song = addSong(this.Gbs,10,null,this.VOLUME);
      
      public const SngVictory:Song = addSong(this.Gbs,11,null,this.VOLUME);
      
      public const SngMegaManTheme:Song = addSong(this.Gbs,12,null,this.VOLUME);
      
      public const SngDustMan:Song = addSong(this.Gbs,13,null,this.VOLUME);
      
      public const SngDiveMan:Song = addSong(this.Gbs,14,null,this.VOLUME);
      
      public const SngSkullMan:Song = addSong(this.Gbs,15,null,this.VOLUME);
      
      public const SngDrillMan:Song = addSong(this.Gbs,16,null,this.VOLUME);
      
      public const SngEnterWilyBase:Song = addSong(this.Gbs,17,null,this.VOLUME);
      
      public const SngFinalVictory:Song = addSong(this.Gbs,18,null,this.VOLUME);
      
      public const SngWilyEntrance:Song = addSong(this.Gbs,19,null,this.VOLUME);
      
      public const SngWilyMarineBase:Song = addSong(this.Gbs,20,null,this.VOLUME);
      
      public const SngHunterPunk:Song = addSong(this.Gbs,21,null,this.VOLUME);
      
      public const SngGotWeapon:Song = addSong(this.Gbs,22,null,this.VOLUME);
      
      public const SngTitle:Song = addSong(this.Gbs,23,null,this.VOLUME);
      
      public const SngPassword:Song = addSong(this.Gbs,24,null,this.VOLUME);
      
      public const SngDie:Song = addSong(this.Gbs,41,null,this.VOLUME);
      
      public function GameMegaMan3Gb(param1:int, param2:int = -1)
      {
         super("Mega Man 3 (Game Boy)","Capcom",Consoles.gameBoy,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngWilyEntrance);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngDrillMan);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngWilyMarineBase);
         addToTypePlayList(LT_INTRO,this.SngPassword);
         addToTypePlayList(LT_NORMAL,this.SngSparkMan);
         addToTypePlayList(LT_PIPE_BONUS,this.SngGotWeapon);
         addToTypePlayList(LT_PLATFORM,this.SngSnakeMan);
         addToTypePlayList(LT_UNDER_GROUND,this.SngGeminiMan);
         addToTypePlayList(LT_WATER,this.SngDiveMan);
         addToTypePlayList(MT_DARK_EPIC,this.SngSkullMan);
         addToTypePlayList(BOSS,this.SngBossBattle1);
         addToTypePlayList(CHAR_SEL,this.SngStageSelect);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngStageStart);
         addToTypePlayList(CREDITS,this.SngJusticeMarch);
         addToTypePlayList(DIE,this.SngDie);
         addToTypePlayList(FINAL_BOSS,this.SngBossBatle2);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngSnakeMan);
         addToTypePlayList(STAR,null);
         addToTypePlayList(TITLE_SCREEN,this.SngTitle);
         addToTypePlayList(WIN,this.SngVictory);
         addToTypePlayList(WIN_CASTLE,this.SngFinalVictory);
      }
   }
}
