package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameSuperCastlevania4 extends Game
   {
      
      private static var instance:Game;
       
      
      private const VOLUME:int = 80;
      
      private const BeginningData:Class = GameSuperCastlevania4_BeginningData;
      
      public const SngBeginning:Song = addSong(this.BeginningData,-1,null,this.VOLUME);
      
      private const DeathOfSimonData:Class = GameSuperCastlevania4_DeathOfSimonData;
      
      public const SngDeathOfSimon:Song = addSong(this.DeathOfSimonData,-1,null,this.VOLUME);
      
      private const GameOverData:Class = GameSuperCastlevania4_GameOverData;
      
      public const SngGameOver:Song = addSong(this.GameOverData,-1,null,this.VOLUME);
      
      private const InTheCastleData:Class = GameSuperCastlevania4_InTheCastleData;
      
      public const SngInTheCastle:Song = addSong(this.InTheCastleData,-1,null,this.VOLUME);
      
      private const SecretRoomData:Class = GameSuperCastlevania4_SecretRoomData;
      
      public const SngSecretRoom:Song = addSong(this.SecretRoomData,-1,null,this.VOLUME);
      
      private const StageClearData:Class = GameSuperCastlevania4_StageClearData;
      
      public const SngStageClear:Song = addSong(this.StageClearData,-1,null,this.VOLUME);
      
      private const TheCaveData:Class = GameSuperCastlevania4_TheCaveData;
      
      public const SngTheCave:Song = addSong(this.TheCaveData,-1,null,this.VOLUME);
      
      private const ThemeOfSimonData:Class = GameSuperCastlevania4_ThemeOfSimonData;
      
      public const SngThemeOfSimon:Song = addSong(this.ThemeOfSimonData,-1,null,this.VOLUME);
      
      private const VampireKillerData:Class = GameSuperCastlevania4_VampireKillerData;
      
      public const SngVampireKiller:Song = addSong(this.VampireKillerData,-1,null,this.VOLUME);
      
      private const DraculaBattleData:Class = GameSuperCastlevania4_DraculaBattleData;
      
      public const SngDraculaBattle:Song = addSong(this.DraculaBattleData,-1,null,this.VOLUME);
      
      private const Boss1Data:Class = GameSuperCastlevania4_Boss1Data;
      
      public const SngBoss1:Song = addSong(this.Boss1Data,-1,null,this.VOLUME);
      
      private const EndingData:Class = GameSuperCastlevania4_EndingData;
      
      public const SngEnding:Song = addSong(this.EndingData,-1,null,this.VOLUME);
      
      private const PasswordData:Class = GameSuperCastlevania4_PasswordData;
      
      public const SngPassword:Song = addSong(this.PasswordData,-1,null,this.VOLUME);
      
      private const TheWaterfallsData:Class = GameSuperCastlevania4_TheWaterfallsData;
      
      public const SngTheWaterfalls:Song = addSong(this.TheWaterfallsData,-1,null,this.VOLUME);
      
      private const PillardCorridorData:Class = GameSuperCastlevania4_PillardCorridorData;
      
      public const SngPillardCorridor:Song = addSong(this.PillardCorridorData,-1,null,this.VOLUME);
      
      private const RoomOfCloseAssociatesData:Class = GameSuperCastlevania4_RoomOfCloseAssociatesData;
      
      public const SngRoomOfCloseAssociates:Song = addSong(this.RoomOfCloseAssociatesData,-1,null,this.VOLUME);
      
      private const MapAData:Class = GameSuperCastlevania4_MapAData;
      
      public const SngMapA:Song = addSong(this.MapAData,-1,null,this.VOLUME);
      
      private const MapCData:Class = GameSuperCastlevania4_MapCData;
      
      public const SngMapC:Song = addSong(this.MapCData,-1,null,this.VOLUME);
      
      private const ChandeliersData:Class = GameSuperCastlevania4_ChandeliersData;
      
      public const SngChandeliers:Song = addSong(this.ChandeliersData,-1,null,this.VOLUME);
      
      private const DraculasDeathData:Class = GameSuperCastlevania4_DraculasDeathData;
      
      public const SngDraculasDeath:Song = addSong(this.DraculasDeathData,-1,null,this.VOLUME);
      
      private const SpinningTowerData:Class = GameSuperCastlevania4_SpinningTowerData;
      
      public const SngSpinningTower:Song = addSong(this.SpinningTowerData,-1,null,this.VOLUME);
      
      public function GameSuperCastlevania4(param1:int, param2:int = -1)
      {
         super("Super Castlevania IV","Konami",Consoles.superNintendo,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngInTheCastle);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngChandeliers);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngPillardCorridor);
         addToTypePlayList(LT_INTRO,this.SngMapA);
         addToTypePlayList(LT_NORMAL,this.SngVampireKiller);
         addToTypePlayList(LT_PIPE_BONUS,this.SngSecretRoom);
         addToTypePlayList(LT_PLATFORM,this.SngSpinningTower);
         addToTypePlayList(LT_UNDER_GROUND,this.SngTheCave);
         addToTypePlayList(LT_WATER,this.SngTheWaterfalls);
         addToTypePlayList(MT_DARK_EPIC,this.SngThemeOfSimon);
         addToTypePlayList(BOSS,this.SngBoss1);
         addToTypePlayList(CHAR_SEL,this.SngPassword);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngMapC);
         addToTypePlayList(CREDITS,this.SngEnding);
         addToTypePlayList(DIE,this.SngDeathOfSimon);
         addToTypePlayList(FINAL_BOSS,this.SngDraculaBattle);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngRoomOfCloseAssociates);
         addToTypePlayList(STAR,this.SngBeginning);
         addToTypePlayList(TITLE_SCREEN,this.SngThemeOfSimon);
         addToTypePlayList(WIN,this.SngStageClear);
         addToTypePlayList(WIN_CASTLE,this.SngDraculasDeath);
      }
   }
}
