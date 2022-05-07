package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameDragonWarriorSnes extends Game
   {
      
      private static var instance:Game;
       
      
      private const VOLUME:int = 80;
      
      private const OvertureFullData:Class = GameDragonWarriorSnes_OvertureFullData;
      
      public const SngOvertureFull:Song = addSong(this.OvertureFullData,-1,null,this.VOLUME + 10);
      
      private const ErdricksDescendantData:Class = GameDragonWarriorSnes_ErdricksDescendantData;
      
      public const SngErdricksDescendant:Song = addSong(this.ErdricksDescendantData,-1,null,this.VOLUME);
      
      private const TantegelCastleData:Class = GameDragonWarriorSnes_TantegelCastleData;
      
      public const SngTantegelCastle:Song = addSong(this.TantegelCastleData,-1,null,this.VOLUME);
      
      private const PeacefulVillageData:Class = GameDragonWarriorSnes_PeacefulVillageData;
      
      public const SngPeacefulVillage:Song = addSong(this.PeacefulVillageData,-1,null,this.VOLUME + 10);
      
      private const KingdomOfAlefgardData:Class = GameDragonWarriorSnes_KingdomOfAlefgardData;
      
      public const SngKingdomOfAlefgard:Song = addSong(this.KingdomOfAlefgardData,-1,null,this.VOLUME + 10);
      
      private const AMonsterDrawsNearData:Class = GameDragonWarriorSnes_AMonsterDrawsNearData;
      
      public const SngAMonsterDrawsNear:Song = addSong(this.AMonsterDrawsNearData,-1,null,this.VOLUME);
      
      private const ThouHastDiedData:Class = GameDragonWarriorSnes_ThouHastDiedData;
      
      public const SngThouHastDied:Song = addSong(this.ThouHastDiedData,-1,null,this.VOLUME);
      
      private const DarkDungeonFloor1Data:Class = GameDragonWarriorSnes_DarkDungeonFloor1Data;
      
      public const SngDarkDungeonFloor1:Song = addSong(this.DarkDungeonFloor1Data,-1,null,this.VOLUME + 10);
      
      private const DarkDungeonFloor2Data:Class = GameDragonWarriorSnes_DarkDungeonFloor2Data;
      
      public const SngDarkDungeonFloor2:Song = addSong(this.DarkDungeonFloor2Data,-1,null,this.VOLUME + 10);
      
      private const PrincessGwaelinsLoveData:Class = GameDragonWarriorSnes_PrincessGwaelinsLoveData;
      
      public const SngPrincessGwaelinsLove:Song = addSong(this.PrincessGwaelinsLoveData,-1,null,this.VOLUME);
      
      private const RainbowBridgeData:Class = GameDragonWarriorSnes_RainbowBridgeData;
      
      public const SngRainbowBridge:Song = addSong(this.RainbowBridgeData,-1,null,this.VOLUME);
      
      private const ThroneOfDarknessData:Class = GameDragonWarriorSnes_ThroneOfDarknessData;
      
      public const SngThroneOfDarkness:Song = addSong(this.ThroneOfDarknessData,-1,null,this.VOLUME);
      
      private const TheDragonlordData:Class = GameDragonWarriorSnes_TheDragonlordData;
      
      public const SngTheDragonlord:Song = addSong(this.TheDragonlordData,-1,null,this.VOLUME);
      
      private const HerosFanfareData:Class = GameDragonWarriorSnes_HerosFanfareData;
      
      public const SngHerosFanfare:Song = addSong(this.HerosFanfareData,-1,null,this.VOLUME);
      
      private const ImprovementData:Class = GameDragonWarriorSnes_ImprovementData;
      
      public const SngImprovement:Song = addSong(this.ImprovementData,-1,null,this.VOLUME + 10);
      
      private const CursedData:Class = GameDragonWarriorSnes_CursedData;
      
      public const SngCursed:Song = addSong(this.CursedData,-1,null,this.VOLUME + 10);
      
      private const FairyFluteData:Class = GameDragonWarriorSnes_FairyFluteData;
      
      public const SngFairyFlute:Song = addSong(this.FairyFluteData,-1,null,this.VOLUME);
      
      public function GameDragonWarriorSnes(param1:int, param2:int = -1)
      {
         super("Dragon Quest I & II","Square-Enix",Consoles.superNintendo,param1,"DQ I & II (SNES)",param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
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
         addToTypePlayList(CHAR_SEL,this.SngErdricksDescendant);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngFairyFlute);
         addToTypePlayList(CREDITS,this.SngHerosFanfare);
         addToTypePlayList(DIE,null);
         addToTypePlayList(FINAL_BOSS,this.SngTheDragonlord);
         addToTypePlayList(GAME_OVER,this.SngThouHastDied);
         addToTypePlayList(HURRY,this.SngDarkDungeonFloor1);
         addToTypePlayList(STAR,Games.superMarioBrosSnes.SngInvincible);
         addToTypePlayList(TITLE_SCREEN,this.SngOvertureFull);
         addToTypePlayList(WIN,this.SngImprovement);
         addToTypePlayList(WIN_CASTLE,this.SngPrincessGwaelinsLove);
      }
   }
}
