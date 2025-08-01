package com.smbc.data
{
   import com.smbc.ground.Platform;
   import com.smbc.messageBoxes.MenuBoxItems;
   import com.smbc.pickups.PipeTransporter;
   
   public class LevelDataTranscoder
   {
      
      public static const PARAM_TYPE:String = "type";
      
      public static const MAP_FRAME_LABEL_VEC:Vector.<String> = new Vector.<String>();
      
      public static const PICKUP_FRAME_LABEL_VEC:Vector.<String> = new Vector.<String>();
      
      public static const MAP_LONG_TO_SHORT:Object = {
         0:"0",
         "groundDungeon":"1",
         "groundBrown":"2",
         "groundBlue":"3",
         "groundGray":"4",
         "groundUnderwater":"5",
         "groundDungeonUnderwater":"6",
         "brickBrownDay":"7",
         "brickBlueNight":"8",
         "brickGrayNight":"9",
         "groundUnbreakableBrickBrownDay":"a",
         "groundUnbreakableBrickBlueNight":"b",
         "blockBrown":"c",
         "blockBlue":"d",
         "blockGray":"e",
         "boxGray":"f",
         "castleBrownTop":"g",
         "castleBrownTopMid":"h",
         "castleBrownWindowLeft":"i",
         "castleBrownWindowRight":"j",
         "castleBrownBrick":"k",
         "itemBlockBrown":"l",
         "itemBlockBlue":"m",
         "itemBlockGray":"n",
         "itemBlockBrownInvisible":"o",
         "itemBlockBlueInvisible":"p",
         "itemBlockGrayInvisible":"q",
         "hillTop":"r",
         "hillSideLeft":"s",
         "hillSpots":"t",
         "hillGreen":"u",
         "hillSpotsLeft":"v",
         "hillSideRight":"w",
         "bushGreenLeft":"x",
         "bushGreenMid":"y",
         "bushGreenRight":"z",
         "treeGreenLeavesTop":"A",
         "treeGreenLeavesSmall":"B",
         "treeGreenLeavesBottom":"C",
         "treeWhiteLeavesTop":"D",
         "treeWhiteLeavesSmall":"E",
         "treeWhiteLeavesBottom":"F",
         "treeTrunk":"G",
         "groundCanon":"H",
         "groundCanonSegmentTop":"I",
         "groundCanonSegmentBot":"J",
         "poleWhite":"K",
         "fence":"L",
         "raililngDay":"M",
         "railingNight":"N",
         "groundRail":"O",
         "springBrown":"P",
         "springGray":"Q",
         "wavesDay":"R",
         "groundUnderwater":"S",
         "groundCoral":"T",
         "groundPipeGreenTopLeft":"U",
         "groundPipeGreenTopRight":"V",
         "groundPipeGreenMidLeft":"W",
         "groundPipeGreenMidRight":"X",
         "groundPipeGreenTopLeftSide":"Y",
         "groundPipeGreenTopRightSide":"Z",
         "groundPipeGreenMidLeftSide":"O1",
         "groundPipeGreenMidRightSide":"O2",
         "groundPipeGreenIntTop":"O3",
         "groundPipeGreenIntBottom":"O4",
         "groundPipeGreenUgTopLeft":"O5",
         "groundPipeGreenUgTopRight":"O6",
         "groundPipeGreenUgMidLeft":"O7",
         "groundPipeGreenUgMidRight":"O8",
         "groundPipeGreenUgTopLeftSide":"O9",
         "groundPipeGreenUgTopRightSide":"OA",
         "groundPipeGreenUgMidLeftSide":"OB",
         "groundPipeGreenUgMidRightSide":"OC",
         "groundPipeGreenUgIntTop":"OD",
         "groundPipeGreenUgIntBottom":"OE",
         "groundPipeGrayTopLeft":"OF",
         "groundPipeGrayTopRight":"10",
         "groundPipeGrayMidLeft":"11",
         "groundPipeGrayMidRight":"12",
         "groundPipeRedTopLeft":"13",
         "groundPipeRedTopRight":"14",
         "groundPipeRedMidLeft":"15",
         "groundPipeRedMidRight":"16",
         "groundPipePinkTopLeft":"17",
         "groundPipePinkTopRight":"18",
         "groundPipePinkMidLeft":"19",
         "groundPipePinkMidRight":"1A",
         "groundPipeUnderwaterTop":"1B",
         "groundPipeUnderwaterBottom":"1C",
         "cloudBlueTopLeft":"1D",
         "cloudBlueTopMid":"1E",
         "cloudBlueTopRight":"1F",
         "cloudBlueBottomLeft":"20",
         "cloudBlueBottomMid":"21",
         "cloudBlueBottomRight":"22",
         "cloudRedTopLeft":"23",
         "cloudRedTopMid":"24",
         "cloudRedTopRight":"25",
         "cloudRedBottomLeft":"26",
         "cloudRedBottomMid":"27",
         "cloudRedBottomRight":"28",
         "flagGreen":"29",
         "flagBlue":"2A",
         "flagPoleGreen":"2B",
         "flagPoleWhite":"2C",
         "flagPoleOrange":"2D",
         "flagPoleTopGreen":"2E",
         "flagPoleTopDarkGray":"2F",
         "flagPoleTopLightGray":"30",
         "flagPoleTopRed":"31",
         "castleBrownDoorTop":"32",
         "castleBrownDoorBottom":"33",
         "castleGrayTop":"34",
         "castleGrayTopMid":"35",
         "castleGrayWindowLeft":"36",
         "castleGrayWindowRight":"37",
         "castleGrayBrick":"38",
         "castleGrayDoorTop":"39",
         "castleGrayDoorBottom":"3A",
         "groundMushroomGreenLeft":"3B",
         "groundMushroomGreenMid":"3C",
         "groundMushroomGreenRight":"3D",
         "mushroomGreenStem":"3E",
         "groundMushroomOrangeLeft":"3F",
         "groundMushroomOrangeMid":"40",
         "groundMushroomOrangeRight":"41",
         "mushroomOrangeStemTop":"42",
         "mushroomOrangeStemBottom":"43",
         "groundMushroomWhiteLeft":"44",
         "groundMushroomWhiteMid":"45",
         "groundMushroomWhiteRight":"46",
         "mushroomWhiteStem":"47",
         "pullyCornerPinkLeft":"48",
         "pullyRopePink":"49",
         "pullyCornerPinkRight":"4A",
         "pullyCornerGrayLeft":"4B",
         "pullyRopeGray":"4C",
         "pullyCornerGrayRight":"4D",
         "wavesLava":"4E",
         "colorRed":"4F",
         "wavesNight":"50",
         "colorLightBlue":"51",
         "bridgeChain":"52",
         "bowserBridge":"53",
         "cloudFace":"54",
         "sceneryText_WelcomeToWarpZone":"55",
         "sceneryTxt_2":"56",
         "sceneryTxt_3":"57",
         "sceneryTxt_4":"58",
         "sceneryTxt_5":"59",
         "sceneryTxt_6":"5A",
         "sceneryTxt_7":"5B",
         "sceneryTxt_8":"5C",
         "sceneryToadTop":"5D",
         "sceneryToadBot":"5E",
         "sceneryPrincessTop":"5F",
         "sceneryPrincessBot":"60"
      };
      
      public static const PICKUP_LONG_TO_SHORT:Object = {
         0:"0",
         "gameStateWatch":"1",
         "playerStart":"2",
         "halfwayPoint":"3",
         "enemyGoombaBrown":"4",
         "enemyGoombaBlue":"5",
         "enemyGoombaGray":"6",
         "enemyKoopaGreen":"7",
         "enemyKoopaRed":"8",
         "enemyKoopaBlue":"9",
         "enemyWingedKoopaGreen":"a",
         "enemyWingedKoopaHorizontalGreen":"b",
         "enemyWingedKoopaRed":"c",
         "enemyWingedKoopaBlue":"d",
         "enemyBloopa":"e",
         "enemyCheepGreen":"f",
         "enemyHamBroGreen":"g",
         "enemyHamBroBlue":"h",
         "enemyBeetleBlue":"i",
         "enemyBeetleBlack":"j",
         "enemyBeetleGray":"k",
         "enemyPiranhaGreen":"l",
         "enemyPiranhaBlue":"m",
         "fireBarLeft":"n",
         "fireBarRight":"o",
         "fireBarRightLong":"p",
         "lavaFireBall":"q",
         "bowserAxe":"r",
         "bowserFireBallStart":"s",
         "enemyBowserHammer":"t",
         "lakituStart":"u",
         "lakituEnd":"v",
         "flyingCheepStart":"w",
         "flyingCheepEnd":"x",
         "spawnBulletBillBlackStart":"y",
         "spawnBulletBillBlackEnd":"z",
         "spawnBulletBillGrayStart":"A",
         "spawnBulletBillGrayEnd":"B",
         "enemyBowser":"C",
         "mushroomRed":"D",
         "mushroomGreenDay":"E",
         "mushroomGreenNight":"F",
         "star":"G",
         "coinBrown":"H",
         "coinBlue":"I",
         "coinGray":"J",
         "coinWater":"K",
         "vineEnd":"L",
         "platformCloud":"M",
         "levelExit":"N",
         "vineTransferStartGreen":"O",
         "vineTransferStartBlue":"P",
         "vineTransferPit":"Q",
         "pipeTransporterGlobalHorz":"R",
         "pipeTransporterGlobalVert":"S",
         "teleporterCheckPoint":"T",
         "teleporterStart":"U",
         "teleporterEnd":"V",
         "platform":"W",
         "pipeTransporterGlobalHorz":"X",
         "pipeTransporterGlobalVert":"Y",
         "pipeTransporterGlobalVertEnd":"Z",
         "teleporterStartOne":"O1"
      };
      
      public static const MUSIC_VEC:Vector.<String> = Vector.<String>([null,"intro","overworld","underGround","water","dungeon","bonus"]);
      
      public static const MUSIC_OBJ:Object = {};
      
      public static const BACKGROUND_VEC:Vector.<String> = Vector.<String>([null,"skyBlue","black","darkBlue"]);
      
      public static const BACKGROUND_OBJ:Object = {};
      
      public static const PARAMETER_NAMES_VEC:Vector.<String> = Vector.<String>([null,"shiftRight",PipeTransporter.P_TRANS_DEST_STR,"number","width",PARAM_TYPE,"charHorz","charVert"]);
      
      public static const MAP_VEC_NEW:Vector.<String> = Vector.<String>(["0","groundBrown","groundBlue","groundGray","groundUnderwater","groundDungeon","groundDungeonUnderwater","brickBrownDay","brickBlueNight","brickGrayNight","groundUnbreakableBrickBrownDay","groundUnbreakableBrickBlueNight","blockBrown","blockBlue","blockGray","boxGray","itemBlockBrown","itemBlockBlue","itemBlockGray","itemBlockBrownInvisible","itemBlockBlueInvisible","itemBlockGrayInvisible","hillTop","hillSideLeft","hillSpots","hillGreen","hillSpotsLeft","hillSideRight","bushGreenLeft","bushGreenMid","bushGreenRight","treeGreenLeavesTop","treeGreenLeavesSmall","treeGreenLeavesBottom","treeWhiteLeavesTop","treeWhiteLeavesSmall","treeWhiteLeavesBottom","treeTrunk","groundCanon","groundCanonSegmentTop","groundCanonSegmentBot","poleWhite","fence","raililngDay","railingNight","groundRail","springBrown","springGray","wavesDay","groundUnderwater","groundCoral","groundPipeGreenTopLeft","groundPipeGreenTopRight","groundPipeGreenMidLeft","groundPipeGreenMidRight","groundPipeGreenTopLeftSide","groundPipeGreenTopRightSide","groundPipeGreenMidLeftSide","groundPipeGreenMidRightSide","groundPipeGreenIntTop","groundPipeGreenIntBottom","groundPipeGreenUgTopLeft","groundPipeGreenUgTopRight","groundPipeGreenUgMidLeft","groundPipeGreenUgMidRight","groundPipeGreenUgTopLeftSide","groundPipeGreenUgTopRightSide","groundPipeGreenUgMidLeftSide","groundPipeGreenUgMidRightSide","groundPipeGreenUgIntTop","groundPipeGreenUgIntBottom","groundPipeGrayTopLeft","groundPipeGrayTopRight","groundPipeGrayMidLeft","groundPipeGrayMidRight","groundPipeRedTopLeft","groundPipeRedTopRight","groundPipeRedMidLeft","groundPipeRedMidRight","groundPipePinkTopLeft","groundPipePinkTopRight","groundPipePinkMidLeft","groundPipePinkMidRight","groundPipeUnderwaterTop","groundPipeUnderwaterBottom","cloudBlueTopLeft","cloudBlueTopMid","cloudBlueTopRight","cloudBlueBottomLeft","cloudBlueBottomMid","cloudBlueBottomRight","cloudRedTopLeft","cloudRedTopMid","cloudRedTopRight","cloudRedBottomLeft","cloudRedBottomMid","cloudRedBottomRight","flagGreen","flagBlue","flagPoleGreen","flagPoleWhite","flagPoleOrange","flagPoleTopGreen","flagPoleTopDarkGray","flagPoleTopLightGray","flagPoleTopRed","castleBrownTop","castleBrownTopMid","castleBrownWindowLeft","castleBrownWindowRight","castleBrownBrick","castleBrownDoorTop","castleBrownDoorBottom","castleGrayTop","castleGrayTopMid","castleGrayWindowLeft","castleGrayWindowRight","castleGrayBrick","castleGrayDoorTop","castleGrayDoorBottom","groundMushroomGreenLeft","groundMushroomGreenMid","groundMushroomGreenRight","mushroomGreenStem","groundMushroomOrangeLeft","groundMushroomOrangeLeft&&charVert&&","groundMushroomOrangeMid","groundMushroomOrangeMid&&charVert&&","groundMushroomOrangeRight","groundMushroomOrangeRight&&charVert&&","mushroomOrangeStemTop","mushroomOrangeStemTop&&charVert&&","mushroomOrangeStemBottom","mushroomOrangeStemBottom&&charVert&&","groundMushroomWhiteLeft","groundMushroomWhiteMid","groundMushroomWhiteRight","mushroomWhiteStem","pullyCornerPinkLeft","pullyRopePink","pullyCornerPinkRight","pullyCornerGrayLeft","pullyRopeGray","pullyCornerGrayRight","wavesLava","colorRed","wavesNight","colorLightBlue","bridgeChain","bowserBridge","cloudFace","sceneryText_WelcomeToWarpZone","sceneryTxt_2&&shiftRight&&","sceneryTxt_3&&shiftRight&&","sceneryTxt_4&&shiftRight&&","sceneryTxt_5&&shiftRight&&","sceneryTxt_6&&shiftRight&&","sceneryTxt_7&&shiftRight&&","sceneryTxt_8&&shiftRight&&","sceneryToadTop","sceneryToadBot","sceneryPrincessTop","sceneryPrincessBot"]);
      
      public static const PICKUP_VEC_NEW:Vector.<String> = Vector.<String>(["0","gameStateWatch","playerStart","playerStart&&shiftRight&&","halfwayPoint&&shiftRight&&","enemyGoombaBrown","enemyGoombaBrown&&shiftRight&&","enemyGoombaBlue","enemyGoombaBlue&&shiftRight&&","enemyGoombaGray","enemyGoombaGray&&shiftRight&&","enemyKoopaGreen","enemyKoopaGreen&&shiftRight&&","enemyKoopaRed","enemyKoopaBlue","enemyKoopaBlue&&shiftRight&&","enemyWingedKoopaGreen","enemyWingedKoopaHorizontalGreen","enemyWingedKoopaRed","enemyWingedKoopaBlue","enemyBloopa","enemyBloopa&&shiftRight&&","enemyCheepGreen","enemyHamBroGreen","enemyHamBroBlue","enemyBeetleBlue","enemyBeetleBlack","enemyBeetleGray","enemyPiranhaGreen&&shiftRight&&","enemyPiranhaBlue&&shiftRight&&","fireBarLeft","fireBarRight","fireBarRightLong","lavaFireBall","bowserAxe","bowserFireBallStart","bowserFireBallStart&&shiftRight&&","enemyBowserHammer","lakituStart","lakituEnd","flyingCheepStart","flyingCheepEnd","spawnBulletBillBlackStart","spawnBulletBillBlackEnd","spawnBulletBillGrayStart","spawnBulletBillGrayEnd","enemyBowser","mushroomRed","mushroomGreenDay","mushroomGreenNight","star","coinBrown","coinBlue","coinGray","coinWater","vineEnd","vineEnd&&shiftRight&&","platformCloud","levelExit","vineTransferStartGreen&&pTransDest=0&&","vineTransferPit&&pTransDest=a&&","pipeTransporterGlobalHorz&&pTransDest=a&&number=1&&","pipeTransporterGlobalHorz&&pTransDest=b&&number=0&&","pipeTransporterGlobalVert&&pTransDest=b&&number=0&&shiftRight&&","pipeTransporterGlobalVert&&pTransDest=0&&number=1&&shiftRight&&","pipeTransporterGlobalVertEnd&&number=1&&shiftRight&&","teleporterCheckPoint&&number=2&&","teleporterCheckPoint&&number=1&&","teleporterCheckPoint&&number=4&&","teleporterCheckPoint&&number=3&&","teleporterStart&&number=1&&","teleporterStart&&number=2&&","teleporterStart&&number=3&&","teleporterEnd&&number=1&&","teleporterEnd&&number=2&&","platform&&width=2&&type=waveHorizontal&&charHorz&&shiftRight&&","platform&&width=6&&type=pully&&","platform&&width=4&&type=waveHorizontal&&","platform&&width=6&&type=waveHorizontal&&","platform&&width=4&&type=pully&&","platform&&width=4&&type=stepFall&&shiftRight&&","platform&&width=6&&type=constantFall&&","platform&&width=6&&type=constantRise&&","platform&&width=6&&type=waveVertical&&","vineTransferStartGreen","vineTransferStartBlue","vineTransferPit","pipeTransporterGlobalHorz","pipeTransporterGlobalVert","pipeTransporterGlobalVertEnd","teleporterCheckPoint","teleporterStart","teleporterStartOne","teleporterEnd","platform",PipeTransporter.WARP_STR + "Vert"]);
      
      public static const PLATFORM_TYPE:Vector.<String> = Vector.<String>([null,Platform.PT_WAVE_HORIZONTAL,Platform.PT_WAVE_VERTICAL,Platform.PT_CONSTANT_RISE,Platform.PT_CONSTANT_FALL,Platform.PT_STEP_FALL,Platform.PT_STEP_CONSTANT_RIGHT,Platform.PT_PULLY,Platform.PT_FALLING]);
      
      public static const AREA_VEC:Vector.<String> = Vector.<String>([null,"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]);
      
      public static const WORLD_NUMS:Vector.<String> = Vector.<String>([null,"1-1","1-2","1-3","1-4","2-1","2-2","2-3","2-4","3-1","3-2","3-3","3-4","4-1","4-2","4-3","4-4","5-1","5-2","5-3","5-4","6-1","6-2","6-3","6-4","7-1","7-2","7-3","7-4","8-1","8-2","8-3","8-4"]);
      
      public static const SKINS_VEC:Vector.<String> = Vector.<String>([MenuBoxItems.SMB_NES,MenuBoxItems.SMB_SNES,MenuBoxItems.SUPER_MARIO_LAND_2,MenuBoxItems.SMB3_NES,MenuBoxItems.SMB3_SNES,MenuBoxItems.DEMON_RETURNS,MenuBoxItems.BLASTER_MASTER,MenuBoxItems.INVISIBLE,MenuBoxItems.ATARI,MenuBoxItems.ZELDA_II,MenuBoxItems.SUPER_MARIO_WORLD,MenuBoxItems.SMB_LL,MenuBoxItems.SMB2_NES,MenuBoxItems.SMB2_SNES,MenuBoxItems.SMB_SPECIAL,MenuBoxItems.CASTLEVANIA,MenuBoxItems.SMB_ANN]);
      
      public static const SKINS_OBJ:Object = new Object();
      
      public static const THEMES_VEC:Vector.<String> = Vector.<String>([null,"outside","snow","underGround","water","dungeon","normalNight","snowNight","custom"]);
      
      public static const SKIN_LEVEL_TYPES_OBJ:Object = new Object();
      
      public static const MAP_SHORT_TO_LONG:Object = new Object();
      
      public static const PICKUP_SHORT_TO_LONG:Object = new Object();
      
      public static const AREA_STR_TO_NUM:Object = new Object();
      
      public static const PICKUP_STR_TO_NUM:Object = new Object();
      
      public static const MAP_STR_TO_NUM:Object = new Object();
      
      {
         initiate();
      }
      
      public function LevelDataTranscoder()
      {
         super();
      }
      
      public static function initiate() : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc1_:int = int(SKINS_VEC.length);
         while(_loc2_ < _loc1_)
         {
            SKINS_OBJ[SKINS_VEC[_loc2_]] = _loc2_;
            _loc2_++;
         }
         for(_loc3_ in MAP_LONG_TO_SHORT)
         {
            _loc4_ = MAP_LONG_TO_SHORT[_loc3_];
            MAP_SHORT_TO_LONG[_loc4_] = _loc3_;
         }
         for(_loc3_ in PICKUP_LONG_TO_SHORT)
         {
            _loc4_ = PICKUP_LONG_TO_SHORT[_loc3_];
            PICKUP_SHORT_TO_LONG[_loc4_] = _loc3_;
         }
         makeObjFromVec(MAP_VEC_NEW,MAP_STR_TO_NUM);
         makeObjFromVec(PICKUP_VEC_NEW,PICKUP_STR_TO_NUM);
         makeObjFromVec(AREA_VEC,AREA_STR_TO_NUM);
         makeObjFromVec(BACKGROUND_VEC,BACKGROUND_OBJ);
         makeObjFromVec(MUSIC_VEC,MUSIC_OBJ);
         makeObjFromVec(THEMES_VEC,SKIN_LEVEL_TYPES_OBJ);
      }
      
      public static function makeObjFromVec(param1:Vector.<String>, param2:Object) : Object
      {
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc3_:int = int(param1.length);
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1[_loc4_];
            if(_loc5_ != null)
            {
               param2[_loc5_] = _loc4_;
            }
            _loc4_++;
         }
         return param2;
      }
   }
}
