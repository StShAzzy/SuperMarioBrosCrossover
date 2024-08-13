package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameZeldaLinksAwakening extends Game
   {
      
      private static var instance:Game;
       
      
      public const Gbs:Class = GameZeldaLinksAwakening_Gbs;
      
      private const VOLUME:int = 70;
      
      public const SngTitle:Song = addSong(this.Gbs,1,null,this.VOLUME);
      
      public const SngCraneGame:Song = addSong(this.Gbs,2,null,this.VOLUME);
      
      public const SngGameOver:Song = addSong(this.Gbs,3,null,this.VOLUME);
      
      public const SngMabeVillage:Song = addSong(this.Gbs,4,null,this.VOLUME);
      
      public const SngOverworld:Song = addSong(this.Gbs,5,null,this.VOLUME);
      
      public const SngTalTalHeights:Song = addSong(this.Gbs,6,null,this.VOLUME);
      
      public const SngStore:Song = addSong(this.Gbs,7,null,this.VOLUME);
      
      public const SngStrangeWoods:Song = addSong(this.Gbs,8,null,this.VOLUME);
      
      public const SngMysteriousWoods:Song = addSong(this.Gbs,9,null,this.VOLUME);
      
      public const SngHouse:Song = addSong(this.Gbs,10,null,this.VOLUME);
      
      public const SngHouse2:Song = addSong(this.Gbs,11,null,this.VOLUME);
      
      public const SngFairy:Song = addSong(this.Gbs,12,null,this.VOLUME);
      
      public const SngTitle2:Song = addSong(this.Gbs,13,null,this.VOLUME);
      
      public const SngSaveBowWow:Song = addSong(this.Gbs,14,null,this.VOLUME);
      
      public const SngGlitchSword:Song = addSong(this.Gbs,15,null,this.VOLUME);
      
      public const SngGlitchItem:Song = addSong(this.Gbs,16,null,this.VOLUME);
      
      public const SngFileSelect:Song = addSong(this.Gbs,17,null,this.VOLUME);
      
      public const SngSpookyCave:Song = addSong(this.Gbs,18,null,this.VOLUME);
      
      public const SngDungeonCave:Song = addSong(this.Gbs,19,null,this.VOLUME);
      
      public const SngTailCave:Song = addSong(this.Gbs,20,null,this.VOLUME);
      
      public const SngBottleGrotto:Song = addSong(this.Gbs,21,null,this.VOLUME);
      
      public const SngKeyCavern:Song = addSong(this.Gbs,22,null,this.VOLUME);
      
      public const SngAnglerTunnel:Song = addSong(this.Gbs,23,null,this.VOLUME);
      
      public const SngInstrumentRoom:Song = addSong(this.Gbs,24,null,this.VOLUME);
      
      public const SngBoss:Song = addSong(this.Gbs,25,null,this.VOLUME);
      
      public const SngIntro:Song = addSong(this.Gbs,26,null,this.VOLUME);
      
      public const SngGetInstrument:Song = addSong(this.Gbs,27,null,this.VOLUME);
      
      public const SngEchoHouse:Song = addSong(this.Gbs,28,null,this.VOLUME);
      
      public const SngBeach:Song = addSong(this.Gbs,29,null,this.VOLUME);
      
      public const SngTransition:Song = addSong(this.Gbs,30,null,this.VOLUME);
      
      public const SngEerieRuins:Song = addSong(this.Gbs,31,null,this.VOLUME);
      
      public const SngBallad1:Song = addSong(this.Gbs,32,null,this.VOLUME);
      
      public const SngCave2:Song = addSong(this.Gbs,33,null,this.VOLUME);
      
      public const SngOwl:Song = addSong(this.Gbs,34,null,this.VOLUME);
      
      public const SngFinalBoss:Song = addSong(this.Gbs,35,null,this.VOLUME);
      
      public const SngUpperDream:Song = addSong(this.Gbs,36,null,this.VOLUME);
      
      public const SngBeatBoss:Song = addSong(this.Gbs,37,null,this.VOLUME);
      
      public const SngCave3:Song = addSong(this.Gbs,38,null,this.VOLUME);
      
      public const SngAcornPower:Song = addSong(this.Gbs,39,null,this.VOLUME);
      
      public const SngBallad2:Song = addSong(this.Gbs,40,null,this.VOLUME);
      
      public const SngBallad3:Song = addSong(this.Gbs,41,null,this.VOLUME);
      
      public const SngWindfish:Song = addSong(this.Gbs,42,null,this.VOLUME);
      
      public const SngBallad4:Song = addSong(this.Gbs,43,null,this.VOLUME);
      
      public const SngBallad5:Song = addSong(this.Gbs,44,null,this.VOLUME);
      
      public const SngBallad6:Song = addSong(this.Gbs,45,null,this.VOLUME);
      
      public const SngBallad7:Song = addSong(this.Gbs,46,null,this.VOLUME);
      
      public const SngMaronSong:Song = addSong(this.Gbs,47,null,this.VOLUME);
      
      public const SngMamboMambo:Song = addSong(this.Gbs,48,null,this.VOLUME);
      
      public const SngGetSword:Song = addSong(this.Gbs,49,null,this.VOLUME);
      
      public const SngHouse3:Song = addSong(this.Gbs,50,null,this.VOLUME);
      
      public const SngPhoneHouse:Song = addSong(this.Gbs,51,null,this.VOLUME);
      
      public const SngRunning:Song = addSong(this.Gbs,52,null,this.VOLUME);
      
      public const SngWart:Song = addSong(this.Gbs,53,null,this.VOLUME);
      
      public const SngMokeyBridge:Song = addSong(this.Gbs,54,null,this.VOLUME);
      
      public const SngRichardVilla:Song = addSong(this.Gbs,55,null,this.VOLUME);
      
      public const SngBallad8:Song = addSong(this.Gbs,56,null,this.VOLUME);
      
      public const SngTempleFight:Song = addSong(this.Gbs,57,null,this.VOLUME);
      
      public const SngTrendyGame:Song = addSong(this.Gbs,58,null,this.VOLUME);
      
      public const SngItem:Song = addSong(this.Gbs,59,null,this.VOLUME);
      
      public const SngZeldaTune:Song = addSong(this.Gbs,60,null,this.VOLUME);
      
      public const SngCredits:Song = addSong(this.Gbs,61,null,this.VOLUME);
      
      public const SngSaveBowWow2:Song = addSong(this.Gbs,62,null,this.VOLUME);
      
      public const SngBallad9:Song = addSong(this.Gbs,63,null,this.VOLUME);
      
      public const SngVilla2:Song = addSong(this.Gbs,64,null,this.VOLUME);
      
      public const SngBallad10:Song = addSong(this.Gbs,65,null,this.VOLUME);
      
      public const SngBallad11:Song = addSong(this.Gbs,66,null,this.VOLUME);
      
      public const SngBallad12:Song = addSong(this.Gbs,67,null,this.VOLUME);
      
      public const SngBallad13:Song = addSong(this.Gbs,68,null,this.VOLUME);
      
      public const SngBallad14:Song = addSong(this.Gbs,69,null,this.VOLUME);
      
      public const SngBallad15:Song = addSong(this.Gbs,70,null,this.VOLUME);
      
      public const SngBallad16:Song = addSong(this.Gbs,71,null,this.VOLUME);
      
      public const SngGhostHouse:Song = addSong(this.Gbs,72,null,this.VOLUME);
      
      public const SngAdrenaline:Song = addSong(this.Gbs,73,null,this.VOLUME);
      
      public const SngBallad17:Song = addSong(this.Gbs,74,null,this.VOLUME);
      
      public const SngCatfishMaw:Song = addSong(this.Gbs,75,null,this.VOLUME);
      
      public const SngStrange:Song = addSong(this.Gbs,76,null,this.VOLUME);
      
      public const SngJingle1:Song = addSong(this.Gbs,77,null,this.VOLUME);
      
      public const SngBeachTalk:Song = addSong(this.Gbs,78,null,this.VOLUME);
      
      public const SngJingle2:Song = addSong(this.Gbs,79,null,this.VOLUME);
      
      public const SngMiniBoss:Song = addSong(this.Gbs,80,null,this.VOLUME);
      
      public const SngFaceShrine:Song = addSong(this.Gbs,81,null,this.VOLUME);
      
      public const SngTailCave2:Song = addSong(this.Gbs,82,null,this.VOLUME);
      
      public const SngDreamShrine:Song = addSong(this.Gbs,83,null,this.VOLUME);
      
      public const SngStrangeBoss:Song = addSong(this.Gbs,84,null,this.VOLUME);
      
      public const SngSpectralStairs:Song = addSong(this.Gbs,85,null,this.VOLUME);
      
      public const SngStairCreate:Song = addSong(this.Gbs,86,null,this.VOLUME);
      
      public const SngVillage:Song = addSong(this.Gbs,87,null,this.VOLUME);
      
      public const SngEagleTower:Song = addSong(this.Gbs,88,null,this.VOLUME);
      
      public const SngWindFishBroken:Song = addSong(this.Gbs,89,null,this.VOLUME);
      
      public const SngUnknownDungeon:Song = addSong(this.Gbs,90,null,this.VOLUME);
      
      public const SngTurtleRock:Song = addSong(this.Gbs,91,null,this.VOLUME);
      
      public const SngNightmare1:Song = addSong(this.Gbs,92,null,this.VOLUME);
      
      public const SngNightmare2:Song = addSong(this.Gbs,93,null,this.VOLUME);
      
      public const SngNightmare3:Song = addSong(this.Gbs,94,null,this.VOLUME);
      
      public const SngBeatNightmare:Song = addSong(this.Gbs,95,null,this.VOLUME);
      
      public const SngZeldaTune2:Song = addSong(this.Gbs,96,null,this.VOLUME);
      
      public const SngColorDungeon:Song = addSong(this.Gbs,97,null,this.VOLUME);
      
      public const SngItemTune:Song = addSong(this.Gbs,98,null,this.VOLUME);
      
      public const SngSolveTune:Song = addSong(this.Gbs,99,null,this.VOLUME);
      
      public const SngDie:Song = addSong(this.Gbs,169,null,this.VOLUME);
      
      public const SngOcarinaBallad:Song = addSong(this.Gbs,170,null,this.VOLUME);
      
      public function GameZeldaLinksAwakening(param1:int, param2:int = -1)
      {
         super("The Legend of Zelda: Link\'s Awakening","Nintendo",Consoles.gameBoy,param1,"LOZ: Link\'s Awakening",param2);
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
         addToTypePlayList(LT_CASTLE,this.SngBottleGrotto);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngStrangeWoods);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngZeldaTune2);
         addToTypePlayList(LT_INTRO,this.SngSolveTune);
         addToTypePlayList(LT_NORMAL,this.SngOverworld);
         addToTypePlayList(LT_PIPE_BONUS,this.SngHouse2);
         addToTypePlayList(LT_PLATFORM,this.SngMysteriousWoods);
         addToTypePlayList(LT_UNDER_GROUND,this.SngCave3);
         addToTypePlayList(LT_WATER,this.SngBeach);
         addToTypePlayList(MT_DARK_EPIC,this.SngTalTalHeights);
         addToTypePlayList(BOSS,this.SngBoss);
         addToTypePlayList(CHAR_SEL,this.SngFileSelect);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngOcarinaBallad);
         addToTypePlayList(CREDITS,this.SngCredits);
         addToTypePlayList(DIE,this.SngDie);
         addToTypePlayList(FINAL_BOSS,this.SngFinalBoss);
         addToTypePlayList(GAME_OVER,this.SngGameOver);
         addToTypePlayList(HURRY,this.SngSaveBowWow2);
         addToTypePlayList(STAR,this.SngAdrenaline);
         addToTypePlayList(TITLE_SCREEN,this.SngTitle);
         addToTypePlayList(WIN,this.SngBeatBoss);
         addToTypePlayList(WIN_CASTLE,this.SngGetInstrument);
      }
   }
}
