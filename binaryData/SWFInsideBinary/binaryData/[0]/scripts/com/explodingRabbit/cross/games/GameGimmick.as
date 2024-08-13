package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameGimmick extends Game
   {
      
      private static var instance:Game;
       
      
      public const Nsfe:Class = GameGimmick_Nsfe;
      
      private const VOLUME:int = 65;
      
      public const SngGoodMorning:Song = addSong(this.Nsfe,1,null,this.VOLUME);
      
      public const SngHappyBirthday:Song = addSong(this.Nsfe,2,null,this.VOLUME);
      
      public const SngGoodWeather:Song = addSong(this.Nsfe,3,null,this.VOLUME);
      
      public const SngSlowIllusion:Song = addSong(this.Nsfe,4,null,this.VOLUME);
      
      public const SngParadigm:Song = addSong(this.Nsfe,5,null,this.VOLUME);
      
      public const SngLionHeart:Song = addSong(this.Nsfe,6,null,this.VOLUME);
      
      public const SngCadbury:Song = addSong(this.Nsfe,7,null,this.VOLUME);
      
      public const SngStrangeMemory:Song = addSong(this.Nsfe,8,null,this.VOLUME);
      
      public const SngAporia:Song = addSong(this.Nsfe,9,null,this.VOLUME);
      
      public const SngIndentBeliever:Song = addSong(this.Nsfe,10,null,this.VOLUME);
      
      public const SngLongTomorrow:Song = addSong(this.Nsfe,11,null,this.VOLUME);
      
      public const SngJustFriends:Song = addSong(this.Nsfe,12,null,this.VOLUME);
      
      public const SngSophiaTake2:Song = addSong(this.Nsfe,13,null,this.VOLUME);
      
      public const SngParadox:Song = addSong(this.Nsfe,14,null,this.VOLUME);
      
      public const SngInnocent:Song = addSong(this.Nsfe,15,null,this.VOLUME);
      
      public const SngNoLimits:Song = addSong(this.Nsfe,16,null,this.VOLUME);
      
      public const SngSiesta:Song = addSong(this.Nsfe,17,null,this.VOLUME);
      
      public const SngGoodNightTake2:Song = addSong(this.Nsfe,18,null,this.VOLUME);
      
      public const SngCadburyNoIntro:Song = addSong(this.Nsfe,19,null,this.VOLUME);
      
      public const SngUntitled:Song = addSong(this.Nsfe,20,null,this.VOLUME);
      
      public const SngSfxDie:Song = addSong(this.Nsfe,29,null,this.VOLUME);
      
      public function GameGimmick(param1:int, param2:int = -1)
      {
         super("Gimmick!","Sunsoft",Consoles.nintendo,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function setUpLevelThemes() : void
      {
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngLionHeart);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngSlowIllusion);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngJustFriends);
         addToTypePlayList(LT_INTRO,this.SngNoLimits);
         addToTypePlayList(LT_NORMAL,this.SngHappyBirthday);
         addToTypePlayList(LT_PIPE_BONUS,this.SngGoodNightTake2);
         addToTypePlayList(LT_PLATFORM,this.SngLongTomorrow);
         addToTypePlayList(LT_UNDER_GROUND,this.SngParadigm);
         addToTypePlayList(LT_WATER,this.SngGoodWeather);
         addToTypePlayList(MT_DARK_EPIC,this.SngIndentBeliever);
         addToTypePlayList(BOSS,this.SngAporia);
         addToTypePlayList(CHAR_SEL,this.SngNoLimits);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngUntitled);
         addToTypePlayList(CREDITS,this.SngSophiaTake2);
         addToTypePlayList(DIE,this.SngSfxDie);
         addToTypePlayList(FINAL_BOSS,this.SngAporia);
         addToTypePlayList(GAME_OVER,this.SngInnocent);
         addToTypePlayList(HURRY,this.SngStrangeMemory);
         addToTypePlayList(STAR,Games.superMarioBros3.SngInvincible);
         addToTypePlayList(TITLE_SCREEN,this.SngGoodMorning);
         addToTypePlayList(WIN,this.SngCadburyNoIntro);
         addToTypePlayList(WIN_CASTLE,this.SngSiesta);
      }
   }
}
