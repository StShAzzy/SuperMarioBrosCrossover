package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameCastlevaniaLegends extends Game
   {
      
      private static var instance:Game;
       
      
      public const Gbs:Class = GameCastlevaniaLegends_Gbs;
      
      private const VOLUME:int = 50;
      
      public const SngEpilogue:Song = addSong(this.Gbs,1,null,this.VOLUME);
      
      public const SngTrapRoom:Song = addSong(this.Gbs,2,null,this.VOLUME);
      
      public const SngUnusedOkada:Song = addSong(this.Gbs,3,null,this.VOLUME);
      
      public const SngBloodyTearsStage1:Song = addSong(this.Gbs,4,null,this.VOLUME);
      
      public const SngBossBattle:Song = addSong(this.Gbs,5,null,this.VOLUME);
      
      public const SngUnderGroundWaterStage5:Song = addSong(this.Gbs,6,null,this.VOLUME);
      
      public const SngAlacardBattle:Song = addSong(this.Gbs,7,null,this.VOLUME);
      
      public const SngInsideTheCastle2:Song = addSong(this.Gbs,8,null,this.VOLUME);
      
      public const SngClockTowerStage3:Song = addSong(this.Gbs,9,null,this.VOLUME);
      
      public const SngHighestCastleFloorStage4:Song = addSong(this.Gbs,10,null,this.VOLUME);
      
      public const SngDungeonOfSilenceSecretStage:Song = addSong(this.Gbs,11,null,this.VOLUME);
      
      public const SngTitle:Song = addSong(this.Gbs,12,null,this.VOLUME);
      
      public const SngPrologue:Song = addSong(this.Gbs,13,null,this.VOLUME);
      
      public const SngDraculaBattle:Song = addSong(this.Gbs,15,null,this.VOLUME);
      
      public const SngVampireKillerFinalBattle:Song = addSong(this.Gbs,16,null,this.VOLUME);
      
      public const SngEnding:Song = addSong(this.Gbs,17,null,this.VOLUME);
      
      public const SngGateKeeperMiniBoss:Song = addSong(this.Gbs,18,null,this.VOLUME);
      
      public const SngGameSelect:Song = addSong(this.Gbs,19,null,this.VOLUME);
      
      public const SngTheCastleLordsRoom:Song = addSong(this.Gbs,20,null,this.VOLUME);
      
      public const SngDraculaCastleCathedral:Song = addSong(this.Gbs,21,null,this.VOLUME);
      
      public const SngGameOverUnused:Song = addSong(this.Gbs,22,null,this.VOLUME);
      
      public const SngDie:Song = addSong(this.Gbs,45,null,this.VOLUME);
      
      public const SngQuickJingle:Song = addSong(this.Gbs,73,null,this.VOLUME);
      
      public function GameCastlevaniaLegends(param1:int, param2:int = -1)
      {
         super("Castlevania Legends","Konami",Consoles.gameBoy,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngTheCastleLordsRoom);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngDungeonOfSilenceSecretStage);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngDraculaCastleCathedral);
         addToTypePlayList(LT_INTRO,this.SngPrologue);
         addToTypePlayList(LT_NORMAL,this.SngBloodyTearsStage1);
         addToTypePlayList(LT_PIPE_BONUS,this.SngInsideTheCastle2);
         addToTypePlayList(LT_PLATFORM,this.SngClockTowerStage3);
         addToTypePlayList(LT_UNDER_GROUND,this.SngInsideTheCastle2);
         addToTypePlayList(LT_WATER,this.SngUnderGroundWaterStage5);
         addToTypePlayList(MT_DARK_EPIC,this.SngHighestCastleFloorStage4);
         addToTypePlayList(BOSS,this.SngBossBattle);
         addToTypePlayList(CHAR_SEL,this.SngGameSelect);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngTitle);
         addToTypePlayList(CREDITS,this.SngEnding);
         addToTypePlayList(DIE,this.SngDie);
         addToTypePlayList(FINAL_BOSS,this.SngDraculaBattle);
         addToTypePlayList(GAME_OVER,this.SngGameOverUnused);
         addToTypePlayList(HURRY,this.SngGateKeeperMiniBoss);
         addToTypePlayList(STAR,this.SngVampireKillerFinalBattle);
         addToTypePlayList(TITLE_SCREEN,this.SngBloodyTearsStage1);
         addToTypePlayList(WIN,Games.castlevaniaAdventure.SngVictory);
         addToTypePlayList(WIN_CASTLE,this.SngEpilogue);
      }
   }
}
