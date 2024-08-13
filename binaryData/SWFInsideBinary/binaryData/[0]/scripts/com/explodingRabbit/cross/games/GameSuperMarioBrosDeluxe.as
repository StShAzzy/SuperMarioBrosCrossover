package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameSuperMarioBrosDeluxe extends Game
   {
      
      private static var instance:Game;
       
      
      public const Gbs:Class = GameSuperMarioBrosDeluxe_Gbs;
      
      private const VOLUME:int = 60;
      
      public const SngOverworld:Song = addSong(this.Gbs,1,null,this.VOLUME);
      
      public const SngUnderground:Song = addSong(this.Gbs,2,null,this.VOLUME);
      
      public const SngLevelClear:Song = addSong(this.Gbs,3,null,this.VOLUME);
      
      public const SngInvincible:Song = addSong(this.Gbs,4,null,this.VOLUME);
      
      public const SngWater:Song = addSong(this.Gbs,5,null,this.VOLUME);
      
      public const SngDie:Song = addSong(this.Gbs,6,null,this.VOLUME);
      
      public const SngCastle:Song = addSong(this.Gbs,7,null,this.VOLUME);
      
      public const SngGameOver:Song = addSong(this.Gbs,8,null,this.VOLUME);
      
      public const SngCredits:Song = addSong(this.Gbs,9,null,this.VOLUME);
      
      public const SngCastleClear:Song = addSong(this.Gbs,10,null,this.VOLUME);
      
      public const Sng11:Song = addSong(this.Gbs,11,null,this.VOLUME);
      
      public const Sng12:Song = addSong(this.Gbs,12,null,this.VOLUME);
      
      public const SngCoinHeaven:Song = addSong(this.Gbs,13,null,this.VOLUME);
      
      public const Sng14:Song = addSong(this.Gbs,14,null,this.VOLUME);
      
      public const Sng15:Song = addSong(this.Gbs,15,null,this.VOLUME);
      
      public const SngPipeIntro:Song = addSong(this.Gbs,16,null,this.VOLUME);
      
      public const Sng17:Song = addSong(this.Gbs,17,null,this.VOLUME);
      
      public const Sng18:Song = addSong(this.Gbs,18,null,this.VOLUME);
      
      public const SngCharSelect:Song = addSong(this.Gbs,19,null,this.VOLUME);
      
      public const Sng20:Song = addSong(this.Gbs,20,null,this.VOLUME);
      
      public const SngTitle:Song = addSong(this.Gbs,21,null,this.VOLUME);
      
      public const Sng22:Song = addSong(this.Gbs,22,null,this.VOLUME);
      
      public const Sng23:Song = addSong(this.Gbs,23,null,this.VOLUME);
      
      public const Sng24:Song = addSong(this.Gbs,24,null,this.VOLUME);
      
      public const Sng25:Song = addSong(this.Gbs,25,null,this.VOLUME);
      
      public const Sng26:Song = addSong(this.Gbs,26,null,this.VOLUME);
      
      public const Sng27:Song = addSong(this.Gbs,27,null,this.VOLUME);
      
      public const Sng28:Song = addSong(this.Gbs,28,null,this.VOLUME);
      
      public const Sng29:Song = addSong(this.Gbs,29,null,this.VOLUME);
      
      public const SngOverworldHurry:Song = addSong(this.Gbs,30,null,this.VOLUME);
      
      public const Sng31:Song = addSong(this.Gbs,31,null,this.VOLUME);
      
      public const Sng32:Song = addSong(this.Gbs,32,null,this.VOLUME);
      
      public const Sng33:Song = addSong(this.Gbs,33,null,this.VOLUME);
      
      public const Sng34:Song = addSong(this.Gbs,34,null,this.VOLUME);
      
      public const Sng35:Song = addSong(this.Gbs,35,null,this.VOLUME);
      
      public const Sng36:Song = addSong(this.Gbs,36,null,this.VOLUME);
      
      public const Sng37:Song = addSong(this.Gbs,37,null,this.VOLUME);
      
      public const Sng38:Song = addSong(this.Gbs,38,null,this.VOLUME);
      
      public const Sng39:Song = addSong(this.Gbs,39,null,this.VOLUME);
      
      public function GameSuperMarioBrosDeluxe(param1:int, param2:int = -1)
      {
         super("Super Mario Bros. Deluxe","Nintendo",Consoles.gameBoy,param1,"SMB Deluxe",param2);
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
         addToTypePlayList(LT_CASTLE,this.SngCastle);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngOverworld);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngCoinHeaven);
         addToTypePlayList(LT_INTRO,this.SngPipeIntro);
         addToTypePlayList(LT_NORMAL,this.SngOverworld);
         addToTypePlayList(LT_PIPE_BONUS,this.SngUnderground);
         addToTypePlayList(LT_PLATFORM,this.SngOverworld);
         addToTypePlayList(LT_UNDER_GROUND,this.SngUnderground);
         addToTypePlayList(LT_WATER,this.SngWater);
         addToTypePlayList(MT_DARK_EPIC,this.SngOverworld);
         addToTypePlayList(BOSS,this.SngCastle);
         addToTypePlayList(CHAR_SEL,this.SngCharSelect);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngPipeIntro);
         addToTypePlayList(CREDITS,this.SngCredits);
         addToTypePlayList(DIE,this.SngDie);
         addToTypePlayList(FINAL_BOSS,this.SngCastle);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,Games.superMarioBros.SngOverworldHurry);
         addToTypePlayList(STAR,this.SngInvincible);
         addToTypePlayList(TITLE_SCREEN,this.SngTitle);
         addToTypePlayList(WIN,this.SngLevelClear);
         addToTypePlayList(WIN_CASTLE,this.SngCastleClear);
         addHurryVersionOfSong(this.SngCastle,Games.superMarioBros.SngCastleHurry);
         addHurryVersionOfSong(this.SngInvincible,Games.superMarioBros.SngInvincibleHurry);
         addHurryVersionOfSong(this.SngOverworld,Games.superMarioBros.SngOverworldHurry);
         addHurryVersionOfSong(this.SngUnderground,Games.superMarioBros.SngUnderGroundHurry);
         addHurryVersionOfSong(this.SngWater,Games.superMarioBros.SngWaterHurry);
      }
   }
}
