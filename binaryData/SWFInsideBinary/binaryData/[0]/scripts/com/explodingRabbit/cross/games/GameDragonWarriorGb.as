package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameDragonWarriorGb extends Game
   {
      
      private static var instance:Game;
       
      
      public const Gbs:Class = GameDragonWarriorGb_Gbs;
      
      private const VOLUME:int = 35;
      
      public const SngCursed:Song = addSong(this.Gbs,2,null,this.VOLUME);
      
      public const SngThouHastDied:Song = addSong(this.Gbs,3,null,this.VOLUME);
      
      public const SngOverture:Song = addSong(this.Gbs,6,null,this.VOLUME);
      
      public const SngImprovement:Song = addSong(this.Gbs,10,null,this.VOLUME);
      
      public const SngPeacefulVillage:Song = addSong(this.Gbs,12,null,this.VOLUME);
      
      public const SngLotosDescendant:Song = addSong(this.Gbs,13,null,this.VOLUME);
      
      public const SngKingdomOfAlefgard:Song = addSong(this.Gbs,15,null,this.VOLUME);
      
      public const SngTantegelCastle:Song = addSong(this.Gbs,17,null,this.VOLUME);
      
      public const SngAMonsterDrawsNear:Song = addSong(this.Gbs,19,null,this.VOLUME);
      
      public const SngHerosFanfare:Song = addSong(this.Gbs,25,null,this.VOLUME);
      
      public const SngTheDragonlord:Song = addSong(this.Gbs,26,null,this.VOLUME);
      
      public const SngFairyFlute:Song = addSong(this.Gbs,36,null,this.VOLUME);
      
      public const SngLaurasLove:Song = addSong(this.Gbs,39,null,this.VOLUME);
      
      public const SngRainbowBridge:Song = addSong(this.Gbs,43,null,this.VOLUME);
      
      public const SngDarkDungeonFloor1:Song = addSong(this.Gbs,46,null,this.VOLUME);
      
      public const SngDarkDungeonFloor2:Song = addSong(this.Gbs,48,null,this.VOLUME);
      
      public const SngThroneOfDarkness:Song = addSong(this.Gbs,49,null,this.VOLUME);
      
      public function GameDragonWarriorGb(param1:int, param2:int = -1)
      {
         super("Dragon Quest I & II (GBC)","Square-Enix",Consoles.gameBoy,param1,"DQ I & II (GBC)",param2);
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
         addToTypePlayList(LT_CASTLE,this.SngThroneOfDarkness);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngKingdomOfAlefgard);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngPeacefulVillage);
         addToTypePlayList(LT_INTRO,this.SngRainbowBridge);
         addToTypePlayList(LT_NORMAL,this.SngKingdomOfAlefgard);
         addToTypePlayList(LT_PIPE_BONUS,this.SngDarkDungeonFloor2);
         addToTypePlayList(LT_PLATFORM,this.SngKingdomOfAlefgard);
         addToTypePlayList(LT_UNDER_GROUND,this.SngDarkDungeonFloor2);
         addToTypePlayList(LT_WATER,this.SngTantegelCastle);
         addToTypePlayList(MT_DARK_EPIC,this.SngTantegelCastle);
         addToTypePlayList(BOSS,this.SngAMonsterDrawsNear);
         addToTypePlayList(CHAR_SEL,this.SngLotosDescendant);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngFairyFlute);
         addToTypePlayList(CREDITS,this.SngHerosFanfare);
         addToTypePlayList(DIE,null);
         addToTypePlayList(FINAL_BOSS,this.SngTheDragonlord);
         addToTypePlayList(GAME_OVER,this.SngThouHastDied);
         addToTypePlayList(HURRY,this.SngDarkDungeonFloor1);
         addToTypePlayList(STAR,Games.superMarioBros.SngInvincible);
         addToTypePlayList(TITLE_SCREEN,this.SngOverture);
         addToTypePlayList(WIN,this.SngImprovement);
         addToTypePlayList(WIN_CASTLE,this.SngLaurasLove);
      }
   }
}
