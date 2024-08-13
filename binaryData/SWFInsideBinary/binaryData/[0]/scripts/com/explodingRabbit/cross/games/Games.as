package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.utils.CustomDictionary;
   import com.smbc.data.MusicType;
   import com.smbc.graphics.BmdInfo;
   import com.smbc.graphics.BmdSkinCont;
   import flash.utils.Dictionary;
   
   public class Games
   {
      
      private static const NES:String = Consoles.nintendo;
      
      private static const NDS:String = Consoles.nintendoDS;
      
      private static const SNES:String = Consoles.superNintendo;
      
      private static const SMS:String = Consoles.segaMasterSystem;
      
      private static const GB:String = Consoles.gameBoy;
      
      private static const GG:String = Consoles.gameGear;
      
      private static const GEN:String = Consoles.segaGenesis;
      
      private static const MSX:String = Consoles.msx;
      
      private static const WII:String = Consoles.nintendoWii;
      
      private static const gamesDct:Dictionary = new Dictionary();
      
      private static var ctr:int = -1;
      
      private static const skinSetNumVec:Vector.<Game> = new Vector.<Game>();
      
      public static var creditsGameList:String = "";
      
      public static const arkistasRing:GameArkistasRing = storeGame(new GameArkistasRing(ctr = ctr + 1)) as GameArkistasRing;
      
      public static const blasterMaster:GameBlasterMaster = storeGame(new GameBlasterMaster(ctr = ctr + 1,6)) as GameBlasterMaster;
      
      public static const blasterMasterBlastingAgain:Game = storeGame(new Game("Blaster Master: Blasting Again","Sunsoft",GB,ctr = ctr + 1,"BM: Blasting Again"));
      
      public static const blasterMasterSnes:GameBlasterMasterSnes = storeGame(new GameBlasterMasterSnes(ctr = ctr + 1)) as GameBlasterMasterSnes;
      
      public static const blasterMasterEnemyBelow:GameBlasterMasterEnemyBelow = storeGame(new GameBlasterMasterEnemyBelow(ctr = ctr + 1)) as GameBlasterMasterEnemyBelow;
      
      public static const castlevania:GameCastlevania = storeGame(new GameCastlevania(ctr = ctr + 1,15)) as GameCastlevania;
      
      public static const castlevania2:GameCastlevania2 = storeGame(new GameCastlevania2(ctr = ctr + 1)) as GameCastlevania2;
      
      public static const castlevania3:GameCastlevania3 = storeGame(new GameCastlevania3(ctr = ctr + 1)) as GameCastlevania3;
      
      public static const castlevania3J:GameCastlevania3J = storeGame(new GameCastlevania3J(ctr = ctr + 1)) as GameCastlevania3J;
      
      public static const castlevaniaAdventure:GameCastlevaniaAdventure = storeGame(new GameCastlevaniaAdventure(ctr = ctr + 1)) as GameCastlevaniaAdventure;
      
      public static const castlevaniaAdventureRebirth:Game = storeGame(new Game("Castlevania: The Adventure ReBirth","Konami",WII,ctr = ctr + 1));
      
      public static const castlevaniaBelmontsRevenge:Game = storeGame(new Game("Castlevania II: Belmont\'s Revenge","Konami",GB,ctr = ctr + 1,"Castlevania II (GB)"));
      
      public static const castlevaniaBloodlines:Game = storeGame(new Game("Castlevania Bloodlines","Konami",GEN,ctr = ctr + 1));
      
      public static const castlevaniaDraculaX:GameCastlevaniaDraculaX = storeGame(new GameCastlevaniaDraculaX(ctr = ctr + 1)) as GameCastlevaniaDraculaX;
      
      public static const castlevaniaPortraitOfRuin:Game = storeGame(new Game("Castlevania: Portrait of Ruin","Konami",SNES,ctr = ctr + 1));
      
      public static const castlevaniaSymphonyOfTheNight:Game = storeGame(new Game("Castlevania: Symphony of the Night","Konami",SNES,ctr = ctr + 1,"Castlevania: SotN"));
      
      public static const castlevaniaLegends:GameCastlevaniaLegends = storeGame(new GameCastlevaniaLegends(ctr = ctr + 1)) as GameCastlevaniaLegends;
      
      public static const contra:GameContra = storeGame(new GameContra(ctr = ctr + 1)) as GameContra;
      
      public static const contra3Gb:Game = storeGame(new Game("contra3Gb","Konami",GB,ctr = ctr + 1));
      
      public static const contra3Snes:GameContra3 = storeGame(new GameContra3(ctr = ctr + 1)) as GameContra3;
      
      public static const contraForce:Game = storeGame(new Game("contraForce","Konami",NES,ctr = ctr + 1));
      
      public static const contraHardCorps:Game = storeGame(new Game("contraHardCorps","Konami",GEN,ctr = ctr + 1));
      
      public static const demonReturns:GameDemonReturns = storeGame(new GameDemonReturns(ctr = ctr + 1,5)) as GameDemonReturns;
      
      public static const superDemonReturns:Game = storeGame(new Game("Super Demon Returns","indieszero",NES,ctr = ctr + 1));
      
      public static const doubleDragon2:Game = storeGame(new Game("Double Dragon 2: The Revenge","Technos Japan",NES,ctr = ctr + 1));
      
      public static const dragonWarrior:GameDragonWarrior = storeGame(new GameDragonWarrior(ctr = ctr + 1)) as GameDragonWarrior;
      
      public static const dragonWarriorGb:GameDragonWarriorGb = storeGame(new GameDragonWarriorGb(ctr = ctr + 1)) as GameDragonWarriorGb;
      
      public static const dragonWarriorSnes:GameDragonWarriorSnes = storeGame(new GameDragonWarriorSnes(ctr = ctr + 1)) as GameDragonWarriorSnes;
      
      public static const finalFantasy:GameFinalFantasy = storeGame(new GameFinalFantasy(ctr = ctr + 1)) as GameFinalFantasy;
      
      public static const finalFantasy3:GameFinalFantasy3 = storeGame(new GameFinalFantasy3(ctr = ctr + 1)) as GameFinalFantasy3;
      
      public static const finalFantasy4:GameFinalFantasy4 = storeGame(new GameFinalFantasy4(ctr = ctr + 1)) as GameFinalFantasy4;
      
      public static const finalFantasy5:GameFinalFantasy5 = storeGame(new GameFinalFantasy5(ctr = ctr + 1)) as GameFinalFantasy5;
      
      public static const finalFantasy6:GameFinalFantasy6 = storeGame(new GameFinalFantasy6(ctr = ctr + 1)) as GameFinalFantasy6;
      
      public static const finalFantasyAdventure:GameFinalFantasyAdventure = storeGame(new GameFinalFantasyAdventure(ctr = ctr + 1)) as GameFinalFantasyAdventure;
      
      public static const finalFantasyMysticQuest:GameFinalFantasyMysticQuest = storeGame(new GameFinalFantasyMysticQuest(ctr = ctr + 1)) as GameFinalFantasyMysticQuest;
      
      public static const gameCenterCx2:Game = storeGame(new Game("Game Center CX 2","indieszero",NDS,ctr = ctr + 1));
      
      public static const gimmick:GameGimmick = storeGame(new GameGimmick(ctr = ctr + 1)) as GameGimmick;
      
      public static const gradius:GameGradius = storeGame(new GameGradius(ctr = ctr + 1)) as GameGradius;
      
      public static const haggleMan3:Game = storeGame(new Game("Haggle Man 3","indieszero",NDS,ctr = ctr + 1));
      
      public static const kidIcarus:GameKidIcarus = storeGame(new GameKidIcarus(ctr = ctr + 1)) as GameKidIcarus;
      
      public static const kidIcarusOfMythsAndMonsters:Game = storeGame(new Game("Kid Icarus: Of Myths and Monsters","Nintendo",GB,ctr = ctr + 1));
      
      public static const kidIcarusUprising:Game = storeGame(new Game("Kid Icarus: Uprising","Nintendo",NDS,ctr = ctr + 1));
      
      public static const krionConquest:GameKrionConquest = storeGame(new GameKrionConquest(ctr = ctr + 1)) as GameKrionConquest;
      
      public static const lifeForce:GameLifeForce = storeGame(new GameLifeForce(ctr = ctr + 1)) as GameLifeForce;
      
      public static const megaMan:GameMegaMan = storeGame(new GameMegaMan(ctr = ctr + 1)) as GameMegaMan;
      
      public static const megaMan2:GameMegaMan2 = storeGame(new GameMegaMan2(ctr = ctr + 1)) as GameMegaMan2;
      
      public static const megaMan3:GameMegaMan3 = storeGame(new GameMegaMan3(ctr = ctr + 1)) as GameMegaMan3;
      
      public static const megaMan4:GameMegaMan4 = storeGame(new GameMegaMan4(ctr = ctr + 1)) as GameMegaMan4;
      
      public static const megaMan5:GameMegaMan5 = storeGame(new GameMegaMan5(ctr = ctr + 1)) as GameMegaMan5;
      
      public static const megaMan6:GameMegaMan6 = storeGame(new GameMegaMan6(ctr = ctr + 1)) as GameMegaMan6;
      
      public static const megaMan7:GameMegaMan7 = storeGame(new GameMegaMan7(ctr = ctr + 1)) as GameMegaMan7;
      
      public static const megaMan8:Game = storeGame(new Game("Mega Man 8","Capcom",SNES,ctr = ctr + 1));
      
      public static const megaMan9:GameMegaMan9 = storeGame(new GameMegaMan9(ctr = ctr + 1)) as GameMegaMan9;
      
      public static const megaMan10:GameMegaMan10 = storeGame(new GameMegaMan10(ctr = ctr + 1)) as GameMegaMan10;
      
      public static const megaManAndBass:GameMegaManAndBass = storeGame(new GameMegaManAndBass(ctr = ctr + 1)) as GameMegaManAndBass;
      
      public static const megaManGb:GameMegaManGb = storeGame(new GameMegaManGb(ctr = ctr + 1)) as GameMegaManGb;
      
      public static const megaMan2Gb:GameMegaMan2Gb = storeGame(new GameMegaMan2Gb(ctr = ctr + 1)) as GameMegaMan2Gb;
      
      public static const megaMan3Gb:GameMegaMan3Gb = storeGame(new GameMegaMan3Gb(ctr = ctr + 1)) as GameMegaMan3Gb;
      
      public static const megaMan4Gb:GameMegaMan4Gb = storeGame(new GameMegaMan4Gb(ctr = ctr + 1)) as GameMegaMan4Gb;
      
      public static const megaMan5Gb:GameMegaMan5Gb = storeGame(new GameMegaMan5Gb(ctr = ctr + 1)) as GameMegaMan5Gb;
      
      public static const megaManWilyWars:Game = storeGame(new Game("Mega Man: The Wily Wars","Capcom",GEN,ctr = ctr + 1,"MM: The Wily Wars"));
      
      public static const metroid:GameMetroid = storeGame(new GameMetroid(ctr = ctr + 1)) as GameMetroid;
      
      public static const metroid2:GameMetroid2 = storeGame(new GameMetroid2(ctr = ctr + 1)) as GameMetroid2;
      
      public static const metroidPrime3Corruption:Game = storeGame(new Game("Metroid Prime 3: Corruption","Nintendo",NES,ctr = ctr + 1,"Metroid Prime 3"));
      
      public static const metroidZeroMission:Game = storeGame(new Game("Metroid: Zero Mission","Nintendo",GB,ctr = ctr + 1));
      
      public static const ninjaGaiden:GameNinjaGaiden = storeGame(new GameNinjaGaiden(ctr = ctr + 1)) as GameNinjaGaiden;
      
      public static const ninjaGaidenSnes:GameNinjaGaidenSnes = storeGame(new GameNinjaGaidenSnes(ctr = ctr + 1)) as GameNinjaGaidenSnes;
      
      public static const ninjaGaiden2:GameNinjaGaiden2 = storeGame(new GameNinjaGaiden2(ctr = ctr + 1)) as GameNinjaGaiden2;
      
      public static const ninjaGaiden3:Game = storeGame(new Game("Ninja Gaiden 3","Tecmo",NES,ctr = ctr + 1));
      
      public static const ninjaGaidenGg:Game = storeGame(new Game("Ninja Gaiden (Game Gear)","Tecmo",GG,ctr = ctr + 1));
      
      public static const ninjaGaidenShadow:GameNinjaGaidenShadow = storeGame(new GameNinjaGaidenShadow(ctr = ctr + 1)) as GameNinjaGaidenShadow;
      
      public static const ninjaGaidenSms:GameNinjaGaidenSms = storeGame(new GameNinjaGaidenSms(ctr = ctr + 1)) as GameNinjaGaidenSms;
      
      public static const ninjaGaidenTrilogy:Game = storeGame(new Game("Ninja Gaiden Trilogy","Tecmo",SNES,ctr = ctr + 1));
      
      public static const operationC:GameOperationC = storeGame(new GameOperationC(ctr = ctr + 1)) as GameOperationC;
      
      public static const probotector:Game = storeGame(new Game("Probotector","Konami",NES,ctr = ctr + 1));
      
      public static const probotectorGb:Game = storeGame(new Game("Probotector (GB)","Konami",NES,ctr = ctr + 1));
      
      public static const retroGameChallenge:Game = storeGame(new Game("Retro Game Challenge","indieszero",NES,ctr = ctr + 1));
      
      public static const rockManMobile:Game = storeGame(new Game("Rockman (Mobile)","Capcom",GB,ctr = ctr + 1));
      
      public static const rokkoChan:Game = storeGame(new Game("Rokko Chan","King Soukutu",NES,ctr = ctr + 1));
      
      public static const rockManBattleAndFighters:Game = storeGame(new Game("Rockman: Battle & Fighters","Capcom",GB,ctr = ctr + 1,"RM: Battle & Fighters"));
      
      public static const shadowOfTheNinja:GameShadowOfTheNinja = storeGame(new GameShadowOfTheNinja(ctr = ctr + 1)) as GameShadowOfTheNinja;
      
      public static const superC:GameSuperC = storeGame(new GameSuperC(ctr = ctr + 1)) as GameSuperC;
      
      public static const superCastlevania4:GameSuperCastlevania4 = storeGame(new GameSuperCastlevania4(ctr = ctr + 1)) as GameSuperCastlevania4;
      
      public static const gameInvisible:GameInvisible = storeGame(new GameInvisible(ctr = ctr + 1,7)) as GameInvisible;
      
      public static const riverCityRansom:GameRiverCityRansom = storeGame(new GameRiverCityRansom(ctr = ctr + 1)) as GameRiverCityRansom;
      
      public static const riverCityRansomEX:Game = storeGame(new Game("River City Ransom EX","Atlus",SNES,ctr = ctr + 1));
      
      public static const superAdventureRockman:Game = storeGame(new Game("Super Adventure Rockman","Capcom",SNES,ctr = ctr + 1));
      
      public static const superMarioAllStars:Game = storeGame(new Game("Super Mario All-Stars","Nintendo",SNES,ctr = ctr + 1));
      
      public static const superMarioBros:GameSuperMarioBros = storeGame(new GameSuperMarioBros(ctr = ctr + 1,0)) as GameSuperMarioBros;
      
      public static const superMarioBrosAllNightNippon:GameSuperMarioBrosAllNightNippon = storeGame(new GameSuperMarioBrosAllNightNippon(ctr = ctr + 1,16)) as GameSuperMarioBrosAllNightNippon;
      
      public static const superMarioBrosAtari:GameSuperMarioBrosAtari = storeGame(new GameSuperMarioBrosAtari(ctr = ctr + 1,8)) as GameSuperMarioBrosAtari;
      
      public static const superMarioBrosDeluxe:GameSuperMarioBrosDeluxe = storeGame(new GameSuperMarioBrosDeluxe(ctr = ctr + 1)) as GameSuperMarioBrosDeluxe;
      
      public static const superMarioBrosSnes:GameSuperMarioBrosSnes = storeGame(new GameSuperMarioBrosSnes(ctr = ctr + 1,1)) as GameSuperMarioBrosSnes;
      
      public static const superMarioBros2:GameSuperMarioBros2 = storeGame(new GameSuperMarioBros2(ctr = ctr + 1,12)) as GameSuperMarioBros2;
      
      public static const superMarioBros2Snes:GameSuperMarioBros2Snes = storeGame(new GameSuperMarioBros2Snes(ctr = ctr + 1,13)) as GameSuperMarioBros2Snes;
      
      public static const superMarioBros3:GameSuperMarioBros3 = storeGame(new GameSuperMarioBros3(ctr = ctr + 1,3)) as GameSuperMarioBros3;
      
      public static const superMarioBros3Snes:GameSuperMarioBros3Snes = storeGame(new GameSuperMarioBros3Snes(ctr = ctr + 1,4)) as GameSuperMarioBros3Snes;
      
      public static const superMarioBrosLostLevels:GameSuperMarioBrosLostLevels = storeGame(new GameSuperMarioBrosLostLevels(ctr = ctr + 1,11)) as GameSuperMarioBrosLostLevels;
      
      public static const superMarioBrosSpecial:GameSuperMarioBrosSpecial = storeGame(new GameSuperMarioBrosSpecial(ctr = ctr + 1,14)) as GameSuperMarioBrosSpecial;
      
      public static const superMarioLand:GameSuperMarioLand = storeGame(new GameSuperMarioLand(ctr = ctr + 1)) as GameSuperMarioLand;
      
      public static const superMarioLand2:GameSuperMarioLand2 = storeGame(new GameSuperMarioLand2(ctr = ctr + 1,2)) as GameSuperMarioLand2;
      
      public static const superMario3DWorld:Game = storeGame(new Game("Super Mario 3D World","Nintendo",SNES,ctr = ctr + 1));
      
      public static const superMarioWorld:Game = storeGame(new GameSuperMarioWorld(ctr = ctr + 1,10)) as GameSuperMarioWorld;
      
      public static const superMetroid:GameSuperMetroid = storeGame(new GameSuperMetroid(ctr = ctr + 1)) as GameSuperMetroid;
      
      public static const tetris:GameTetris = storeGame(new GameTetris(ctr = ctr + 1)) as GameTetris;
      
      public static const tetrisGb:GameTetrisGb = storeGame(new GameTetrisGb(ctr = ctr + 1)) as GameTetrisGb;
      
      public static const tetrisDrMario:GameTetrisDrMario = storeGame(new GameTetrisDrMario(ctr = ctr + 1)) as GameTetrisDrMario;
      
      public static const vampireKiller:Game = storeGame(new Game("Vampire Killer","Konami",MSX,ctr = ctr + 1));
      
      public static const zelda:GameZelda = storeGame(new GameZelda(ctr = ctr + 1)) as GameZelda;
      
      public static const zeldaAdventureOfLink:Game = storeGame(new GameZeldaAdventureOfLink(ctr = ctr + 1,9)) as GameZeldaAdventureOfLink;
      
      public static const zeldaLinksAwakening:GameZeldaLinksAwakening = storeGame(new GameZeldaLinksAwakening(ctr = ctr + 1)) as GameZeldaLinksAwakening;
      
      public static const zeldaLinkToThePast:GameZeldaLinkToThePast = storeGame(new GameZeldaLinkToThePast(ctr = ctr + 1)) as GameZeldaLinkToThePast;
      
      public static const zeldaOracleOfAges:GameZeldaOracleOfAges = storeGame(new GameZeldaOracleOfAges(ctr = ctr + 1)) as GameZeldaOracleOfAges;
      
      public static const zeldaOracleOfSeasons:GameZeldaOracleOfSeasons = storeGame(new GameZeldaOracleOfSeasons(ctr = ctr + 1)) as GameZeldaOracleOfSeasons;
      
      public static const zeldaOcarinaOfTime:Game = storeGame(new Game("The Legend of Zelda: Ocarina of Time","Nintendo",GB,ctr = ctr + 1,"LOZ: Ocarina of Time"));
      
      public static const zeldaBs:GameZeldaBs = storeGame(new GameZeldaBs(ctr = ctr + 1)) as GameZeldaBs;
       
      
      public function Games()
      {
         super();
      }
      
      private static function storeGame(param1:Game) : Game
      {
         gamesDct[param1.gameNum] = param1;
         var _loc2_:int = param1.skinSetNum;
         if(_loc2_ > -1)
         {
            if(skinSetNumVec.length < _loc2_ + 1)
            {
               skinSetNumVec.length = _loc2_ + 1;
            }
            if(skinSetNumVec[_loc2_] != undefined)
            {
               throw new Error("two skins being set to the same num");
            }
            skinSetNumVec[_loc2_] = param1;
         }
         return param1;
      }
      
      public static function getGameFromGameNum(param1:int) : Game
      {
         return gamesDct[param1];
      }
      
      public static function getGameFromSkinSetNum(param1:int) : Game
      {
         return skinSetNumVec[param1];
      }
      
      public static function initiateGames() : void
      {
         var _loc1_:Game = null;
         MusicType.initiate();
         for each(_loc1_ in gamesDct)
         {
            _loc1_.initiate();
         }
         generateGamesList();
      }
      
      private static function creditsManualGames() : Array
      {
         return [blasterMasterBlastingAgain,castlevaniaAdventureRebirth,castlevaniaPortraitOfRuin,castlevaniaSymphonyOfTheNight,doubleDragon2,gimmick,megaManWilyWars,metroidPrime3Corruption,metroidZeroMission,ninjaGaiden2,ninjaGaiden3,probotector,rockManBattleAndFighters,rockManMobile,rokkoChan,retroGameChallenge,superAdventureRockman,zeldaOcarinaOfTime];
      }
      
      private static function generateGamesList() : void
      {
         var _loc5_:Array = null;
         var _loc6_:Dictionary = null;
         var _loc7_:Vector.<Game> = null;
         var _loc8_:Game = null;
         var _loc9_:Game = null;
         var _loc10_:String = null;
         var _loc1_:CustomDictionary = new CustomDictionary();
         var _loc2_:Vector.<BmdSkinCont> = BmdInfo.getBmcVec();
         var _loc3_:int = int(_loc2_.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc7_ = _loc2_[_loc4_].games;
            for each(_loc8_ in _loc7_)
            {
               _loc9_ = _loc8_.creditsGame;
               if(_loc9_)
               {
                  _loc1_.addItem(_loc9_);
               }
            }
            _loc4_++;
         }
         for each(_loc8_ in creditsManualGames())
         {
            _loc1_.addItem(_loc8_);
         }
         _loc5_ = [];
         _loc6_ = new Dictionary();
         for each(_loc8_ in _loc1_)
         {
            _loc10_ = _loc8_.fullName;
            _loc6_[_loc10_] = _loc8_;
         }
         for each(_loc8_ in _loc6_)
         {
            _loc5_.push(_loc8_);
         }
         _loc5_.sortOn("fullName");
         _loc3_ = int(_loc5_.length);
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _loc8_ = _loc5_[_loc4_];
            _loc10_ = _loc8_.fullName;
            creditsGameList += _loc10_ + " (" + _loc8_.publisher + ")\\n";
            _loc4_++;
         }
      }
   }
}
