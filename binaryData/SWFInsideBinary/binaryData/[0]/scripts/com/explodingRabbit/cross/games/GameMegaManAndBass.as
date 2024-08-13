package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameMegaManAndBass extends Game
   {
      
      private static var instance:Game;
       
      
      private const VOLUME:int = 45;
      
      private const BurnermanData:Class = GameMegaManAndBass_BurnermanData;
      
      public const SngBurnerman:Song = addSong(this.BurnermanData,-1,null,this.VOLUME);
      
      private const GameOverData:Class = GameMegaManAndBass_GameOverData;
      
      public const SngGameOver:Song = addSong(this.GameOverData,-1,null,this.VOLUME);
      
      private const MajorBossBattleData:Class = GameMegaManAndBass_MajorBossBattleData;
      
      public const SngMajorBossBattle:Song = addSong(this.MajorBossBattleData,-1,null,this.VOLUME);
      
      private const PiratemanData:Class = GameMegaManAndBass_PiratemanData;
      
      public const SngPirateman:Song = addSong(this.PiratemanData,-1,null,this.VOLUME);
      
      private const TengumanData:Class = GameMegaManAndBass_TengumanData;
      
      public const SngTenguman:Song = addSong(this.TengumanData,-1,null,this.VOLUME);
      
      private const MuseumData:Class = GameMegaManAndBass_MuseumData;
      
      public const SngMuseum:Song = addSong(this.MuseumData,-1,null,this.VOLUME);
      
      private const CharacterSelectData:Class = GameMegaManAndBass_CharacterSelectData;
      
      public const SngCharacterSelect:Song = addSong(this.CharacterSelectData,-1,null,this.VOLUME);
      
      private const StageSelectedData:Class = GameMegaManAndBass_StageSelectedData;
      
      public const SngStageSelected:Song = addSong(this.StageSelectedData,-1,null,this.VOLUME);
      
      private const BossBattleData:Class = GameMegaManAndBass_BossBattleData;
      
      public const SngBossBattle:Song = addSong(this.BossBattleData,-1,null,this.VOLUME);
      
      private const StaffRollData:Class = GameMegaManAndBass_StaffRollData;
      
      public const SngStaffRoll:Song = addSong(this.StaffRollData,-1,null,this.VOLUME);
      
      private const VictoryData:Class = GameMegaManAndBass_VictoryData;
      
      public const SngVictory:Song = addSong(this.VictoryData,-1,null,this.VOLUME);
      
      private const AutosShopData:Class = GameMegaManAndBass_AutosShopData;
      
      public const SngAutosShop:Song = addSong(this.AutosShopData,-1,null,this.VOLUME);
      
      private const AstromanData:Class = GameMegaManAndBass_AstromanData;
      
      public const SngAstroman:Song = addSong(this.AstromanData,-1,null,this.VOLUME);
      
      private const KingCastleData:Class = GameMegaManAndBass_KingCastleData;
      
      public const SngKingCastle:Song = addSong(this.KingCastleData,-1,null,this.VOLUME);
      
      private const WilyCastleData:Class = GameMegaManAndBass_WilyCastleData;
      
      public const SngWilyCastle:Song = addSong(this.WilyCastleData,-1,null,this.VOLUME);
      
      private const ColdManData:Class = GameMegaManAndBass_ColdManData;
      
      public const SngColdMan:Song = addSong(this.ColdManData,-1,null,this.VOLUME);
      
      private const DatabaseData:Class = GameMegaManAndBass_DatabaseData;
      
      public const SngDatabase:Song = addSong(this.DatabaseData,-1,null,this.VOLUME);
      
      public function GameMegaManAndBass(param1:int, param2:int = -1)
      {
         super("Mega Man and Bass","Capcom",Consoles.superNintendo,param1,null,param2);
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
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngMuseum);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngTenguman);
         addToTypePlayList(LT_INTRO,this.SngDatabase);
         addToTypePlayList(LT_NORMAL,this.SngColdMan);
         addToTypePlayList(LT_PIPE_BONUS,this.SngAutosShop);
         addToTypePlayList(LT_PLATFORM,this.SngBurnerman);
         addToTypePlayList(LT_UNDER_GROUND,this.SngAstroman);
         addToTypePlayList(LT_WATER,this.SngPirateman);
         addToTypePlayList(MT_DARK_EPIC,this.SngKingCastle);
         addToTypePlayList(BOSS,this.SngBossBattle);
         addToTypePlayList(CHAR_SEL,this.SngCharacterSelect);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngStageSelected);
         addToTypePlayList(CREDITS,this.SngStaffRoll);
         addToTypePlayList(DIE,null);
         addToTypePlayList(FINAL_BOSS,this.SngMajorBossBattle);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngMajorBossBattle);
         addToTypePlayList(STAR,null);
         addToTypePlayList(TITLE_SCREEN,this.SngColdMan);
         addToTypePlayList(WIN,this.SngVictory);
         addToTypePlayList(WIN_CASTLE,Games.megaMan7.SngWilyDefeated);
      }
   }
}
