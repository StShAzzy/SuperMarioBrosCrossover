package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameCastlevaniaDraculaX extends Game
   {
      
      private static var instance:Game;
       
      
      private const VOLUME:int = 80;
      
      private const OvertureData:Class = GameCastlevaniaDraculaX_OvertureData;
      
      public const SngOverture:Song = addSong(this.OvertureData,-1,null,this.VOLUME);
      
      private const MapData:Class = GameCastlevaniaDraculaX_MapData;
      
      public const SngMap:Song = addSong(this.MapData,-1,null,this.VOLUME);
      
      private const BloodlinesData:Class = GameCastlevaniaDraculaX_BloodlinesData;
      
      public const SngBloodlines:Song = addSong(this.BloodlinesData,-1,null,this.VOLUME);
      
      private const VampireHunterData:Class = GameCastlevaniaDraculaX_VampireHunterData;
      
      public const SngVampireHunter:Song = addSong(this.VampireHunterData,-1,null,this.VOLUME);
      
      private const BloodyTearsData:Class = GameCastlevaniaDraculaX_BloodyTearsData;
      
      public const SngBloodyTears:Song = addSong(this.BloodyTearsData,-1,null,this.VOLUME);
      
      private const CemeteryData:Class = GameCastlevaniaDraculaX_CemeteryData;
      
      public const SngCemetery:Song = addSong(this.CemeteryData,-1,null,this.VOLUME);
      
      private const SlashData:Class = GameCastlevaniaDraculaX_SlashData;
      
      public const SngSlash:Song = addSong(this.SlashData,-1,null,this.VOLUME);
      
      private const PictureOfTheGhostShipData:Class = GameCastlevaniaDraculaX_PictureOfTheGhostShipData;
      
      public const SngPictureOfTheGhostShip:Song = addSong(this.PictureOfTheGhostShipData,-1,null,this.VOLUME);
      
      private const BeginningData:Class = GameCastlevaniaDraculaX_BeginningData;
      
      public const SngBeginning:Song = addSong(this.BeginningData,-1,null,this.VOLUME);
      
      private const DenData:Class = GameCastlevaniaDraculaX_DenData;
      
      public const SngDen:Song = addSong(this.DenData,-1,null,this.VOLUME);
      
      private const CerberusData:Class = GameCastlevaniaDraculaX_CerberusData;
      
      public const SngCerberus:Song = addSong(this.CerberusData,-1,null,this.VOLUME);
      
      private const BossData:Class = GameCastlevaniaDraculaX_BossData;
      
      public const SngBoss:Song = addSong(this.BossData,-1,null,this.VOLUME);
      
      private const IllusionaryDanceData:Class = GameCastlevaniaDraculaX_IllusionaryDanceData;
      
      public const SngIllusionaryDance:Song = addSong(this.IllusionaryDanceData,-1,null,this.VOLUME);
      
      private const RescuedData:Class = GameCastlevaniaDraculaX_RescuedData;
      
      public const SngRescued:Song = addSong(this.RescuedData,-1,null,this.VOLUME);
      
      private const StageClearData:Class = GameCastlevaniaDraculaX_StageClearData;
      
      public const SngStageClear:Song = addSong(this.StageClearData,-1,null,this.VOLUME);
      
      private const GameOverData:Class = GameCastlevaniaDraculaX_GameOverData;
      
      public const SngGameOver:Song = addSong(this.GameOverData,-1,null,this.VOLUME);
      
      private const EndingData:Class = GameCastlevaniaDraculaX_EndingData;
      
      public const SngEnding:Song = addSong(this.EndingData,-1,null,this.VOLUME);
      
      private const CreditData:Class = GameCastlevaniaDraculaX_CreditData;
      
      public const SngCredit:Song = addSong(this.CreditData,-1,null,this.VOLUME);
      
      private const DeathOfRichterData:Class = GameCastlevaniaDraculaX_DeathOfRichterData;
      
      public const SngDeathOfRichter:Song = addSong(this.DeathOfRichterData,-1,null,this.VOLUME);
      
      public function GameCastlevaniaDraculaX(param1:int, param2:int = -1)
      {
         super("Castlevania: Dracula X","Konami",Consoles.superNintendo,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngCemetery);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngBloodyTears);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngDen);
         addToTypePlayList(LT_INTRO,this.SngRescued);
         addToTypePlayList(LT_NORMAL,this.SngBloodlines);
         addToTypePlayList(LT_PIPE_BONUS,this.SngSlash);
         addToTypePlayList(LT_PLATFORM,this.SngBloodyTears);
         addToTypePlayList(LT_UNDER_GROUND,this.SngSlash);
         addToTypePlayList(LT_WATER,this.SngPictureOfTheGhostShip);
         addToTypePlayList(MT_DARK_EPIC,this.SngVampireHunter);
         addToTypePlayList(BOSS,this.SngBoss);
         addToTypePlayList(CHAR_SEL,this.SngOverture);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngMap);
         addToTypePlayList(CREDITS,this.SngCredit);
         addToTypePlayList(DIE,this.SngDeathOfRichter);
         addToTypePlayList(FINAL_BOSS,this.SngBoss);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngIllusionaryDance);
         addToTypePlayList(STAR,Games.superCastlevania4.SngBeginning);
         addToTypePlayList(TITLE_SCREEN,this.SngOverture);
         addToTypePlayList(WIN,this.SngStageClear);
         addToTypePlayList(WIN_CASTLE,this.SngStageClear);
      }
   }
}
