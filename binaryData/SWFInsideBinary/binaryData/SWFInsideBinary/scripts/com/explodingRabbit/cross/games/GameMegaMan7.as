package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameMegaMan7 extends Game
   {
      
      private static var instance:Game;
       
      
      private const VOLUME:int = 62;
      
      private const StageClearData:Class = GameMegaMan7_StageClearData;
      
      public const SngStageClear:Song = addSong(this.StageClearData,-1,null,this.VOLUME);
      
      private const NewWeaponData:Class = GameMegaMan7_NewWeaponData;
      
      public const SngNewWeapon:Song = addSong(this.NewWeaponData,-1,null,this.VOLUME);
      
      private const RobotMuseumData:Class = GameMegaMan7_RobotMuseumData;
      
      public const SngRobotMuseum:Song = addSong(this.RobotMuseumData,-1,null,this.VOLUME);
      
      private const TheEightRobotMastersData:Class = GameMegaMan7_TheEightRobotMastersData;
      
      public const SngTheEightRobotMasters:Song = addSong(this.TheEightRobotMastersData,-1,null,this.VOLUME);
      
      private const ShademanData:Class = GameMegaMan7_ShademanData;
      
      public const SngShademan:Song = addSong(this.ShademanData,-1,null,this.VOLUME);
      
      private const StageStartData:Class = GameMegaMan7_StageStartData;
      
      public const SngStageStart:Song = addSong(this.StageStartData,-1,null,this.VOLUME);
      
      private const RemainsOfTheLabData:Class = GameMegaMan7_RemainsOfTheLabData;
      
      public const SngRemainsOfTheLab:Song = addSong(this.RemainsOfTheLabData,-1,null,this.VOLUME);
      
      private const RuinedHighwayData:Class = GameMegaMan7_RuinedHighwayData;
      
      public const SngRuinedHighway:Song = addSong(this.RuinedHighwayData,-1,null,this.VOLUME);
      
      private const DrWily4Data:Class = GameMegaMan7_DrWily4Data;
      
      public const SngDrWily4:Song = addSong(this.DrWily4Data,-1,null,this.VOLUME);
      
      private const FinalBattleWithDrWilyData:Class = GameMegaMan7_FinalBattleWithDrWilyData;
      
      public const SngFinalBattleWithDrWily:Song = addSong(this.FinalBattleWithDrWilyData,-1,null,this.VOLUME);
      
      private const WilyDefeatedData:Class = GameMegaMan7_WilyDefeatedData;
      
      public const SngWilyDefeated:Song = addSong(this.WilyDefeatedData,-1,null,this.VOLUME);
      
      private const StaffRollData:Class = GameMegaMan7_StaffRollData;
      
      public const SngStaffRoll:Song = addSong(this.StaffRollData,-1,null,this.VOLUME);
      
      private const StageSelectData:Class = GameMegaMan7_StageSelectData;
      
      public const SngStageSelect:Song = addSong(this.StageSelectData,-1,null,this.VOLUME);
      
      private const SpringManData:Class = GameMegaMan7_SpringManData;
      
      public const SngSpringMan:Song = addSong(this.SpringManData,-1,null,this.VOLUME);
      
      private const AutosShopData:Class = GameMegaMan7_AutosShopData;
      
      public const SngAutosShop:Song = addSong(this.AutosShopData,-1,null,this.VOLUME);
      
      private const SlashManData:Class = GameMegaMan7_SlashManData;
      
      public const SngSlashMan:Song = addSong(this.SlashManData,-1,null,this.VOLUME);
      
      private const BurstManData:Class = GameMegaMan7_BurstManData;
      
      public const SngBurstMan:Song = addSong(this.BurstManData,-1,null,this.VOLUME);
      
      private const PasswordData:Class = GameMegaMan7_PasswordData;
      
      public const SngPassword:Song = addSong(this.PasswordData,-1,null,this.VOLUME);
      
      private const WilysSecretWeaponData:Class = GameMegaMan7_WilysSecretWeaponData;
      
      public const SngWilysSecretWeapon:Song = addSong(this.WilysSecretWeaponData,-1,null,this.VOLUME);
      
      private const DrWily2Data:Class = GameMegaMan7_DrWily2Data;
      
      public const SngDrWily2:Song = addSong(this.DrWily2Data,-1,null,this.VOLUME);
      
      private const ProtoManWhistleData:Class = GameMegaMan7_ProtoManWhistleData;
      
      public const SngProtoManWhistle:Song = addSong(this.ProtoManWhistleData,-1,null,this.VOLUME);
      
      public function GameMegaMan7(param1:int, param2:int = -1)
      {
         super("Mega Man 7","Capcom",Consoles.superNintendo,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngDrWily4);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngRuinedHighway);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngAutosShop);
         addToTypePlayList(LT_INTRO,this.SngRemainsOfTheLab);
         addToTypePlayList(LT_NORMAL,this.SngSlashMan);
         addToTypePlayList(LT_PIPE_BONUS,this.SngDrWily2);
         addToTypePlayList(LT_PLATFORM,this.SngSpringMan);
         addToTypePlayList(LT_UNDER_GROUND,this.SngShademan);
         addToTypePlayList(LT_WATER,this.SngBurstMan);
         addToTypePlayList(MT_DARK_EPIC,this.SngRobotMuseum);
         addToTypePlayList(BOSS,this.SngTheEightRobotMasters);
         addToTypePlayList(CHAR_SEL,this.SngStageSelect);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngStageStart);
         addToTypePlayList(CREDITS,this.SngStaffRoll);
         addToTypePlayList(DIE,null);
         addToTypePlayList(FINAL_BOSS,this.SngFinalBattleWithDrWily);
         addToTypePlayList(GAME_OVER,this.SngPassword);
         addToTypePlayList(HURRY,this.SngWilysSecretWeapon);
         addToTypePlayList(STAR,this.SngNewWeapon);
         addToTypePlayList(TITLE_SCREEN,this.SngRuinedHighway);
         addToTypePlayList(WIN,this.SngStageClear);
         addToTypePlayList(WIN_CASTLE,this.SngWilyDefeated);
      }
   }
}
