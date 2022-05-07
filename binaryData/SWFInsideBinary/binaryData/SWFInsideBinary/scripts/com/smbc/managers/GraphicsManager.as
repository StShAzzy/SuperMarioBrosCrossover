package com.smbc.managers
{
   import com.explodingRabbit.cross.data.ConsoleType;
   import com.explodingRabbit.display.CustomMovieClip;
   import com.explodingRabbit.utils.CustomDictionary;
   import com.smbc.characters.Bass;
   import com.smbc.characters.Bill;
   import com.smbc.characters.Character;
   import com.smbc.characters.Link;
   import com.smbc.characters.Luigi;
   import com.smbc.characters.Mario;
   import com.smbc.characters.MegaMan;
   import com.smbc.characters.Ryu;
   import com.smbc.characters.Samus;
   import com.smbc.characters.Simon;
   import com.smbc.characters.Sophia;
   import com.smbc.characters.base.MarioBase;
   import com.smbc.characters.base.MegaManBase;
   import com.smbc.data.EnemyInfo;
   import com.smbc.data.GameSettings;
   import com.smbc.data.GameSettingsValues;
   import com.smbc.data.GameStates;
   import com.smbc.data.InterfaceInfo;
   import com.smbc.data.LevelDataTranscoder;
   import com.smbc.data.MapInfo;
   import com.smbc.data.MusicSets;
   import com.smbc.data.Themes;
   import com.smbc.enemies.Enemy;
   import com.smbc.events.CustomEvents;
   import com.smbc.graphics.Background;
   import com.smbc.graphics.Palette;
   import com.smbc.graphics.PaletteSheet;
   import com.smbc.graphics.Scenery;
   import com.smbc.graphics.SubMc;
   import com.smbc.graphics.ThemeGroup;
   import com.smbc.graphics.TopScreenText;
   import com.smbc.graphics.skins.BmdInfo;
   import com.smbc.graphics.skins.BmdSkinCont;
   import com.smbc.ground.Ground;
   import com.smbc.level.CharacterSelect;
   import com.smbc.level.LevelForeground;
   import com.smbc.main.GlobVars;
   import com.smbc.main.SimpleAnimatedObject;
   import com.smbc.messageBoxes.GraphicsOptions;
   import com.smbc.messageBoxes.MenuBoxItems;
   import com.smbc.messageBoxes.MessageBox;
   import com.smbc.pickups.Pickup;
   import com.smbc.projectiles.Projectile;
   import com.smbc.text.TextFieldContainer;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class GraphicsManager extends MainManager
   {
      
      public static const INSTANCE:GraphicsManager = new GraphicsManager();
      
      public static const BMD_SCALE:Number = 2;
      
      public static const TYPE_MAP:int = BmdSkinCont.TYPE_MAP;
      
      public static const TYPE_CHARACTER:int = BmdSkinCont.TYPE_CHARACTER;
      
      public static const TYPE_ENEMY:int = BmdSkinCont.TYPE_ENEMY;
      
      public static const TYPE_INTERFACE:int = BmdSkinCont.TYPE_INTERFACE;
      
      public static const TYPE_BACKGROUND:int = BmdSkinCont.TYPE_BACKGROUND;
      
      public static const TYPE_THEME:int = BmdSkinCont.TYPE_THEME;
      
      public static const LUM_MULT:Number = 63.75;
      
      private static const GB_LUM_PAL_1:int = LUM_MULT * 3;
      
      private static const GB_LUM_PAL_2:int = LUM_MULT * 2;
      
      private static const GB_LUM_PAL_3:int = LUM_MULT * 1;
      
      public static const CHAR_SKIN_NUM_RANDOM:int = -2;
      
      public static const RANDOM_SKIN_NUM:int = LevelDataTranscoder.SKINS_VEC.length;
      
      public static const USE_MAP_SKIN_NUM:int = RANDOM_SKIN_NUM + 1;
      
      public static const NUM_GB_PALETTES:int = 13;
      
      private static const TSPX:int = 206;
      
      private static const TSPO:int = 6;
      
      public static const GB_PALETTE_FULL_COLOR:int = 0;
      
      public static const GB_PALETTE_OFFSET:int = -1;
      
      public static const GB_PALETTE:Palette = Palette.createGameBoyPalette();
      
      private static const NUM_GB_PALETTE_GROUPS:int = Palette.NUM_GB_PALETTE_GROUPS;
      
      private static const NUM_GB_COLORS_PER_GROUP:int = Palette.NUM_GB_COLORS_PER_GROUP;
      
      public static const GB_PAL_OBJ1:int = 0;
      
      public static const GB_PAL_OBJ2:int = 1;
      
      public static const GB_PAL_BG:int = 2;
      
      private static const IND_BG_INFO_VEC_PAL_ORDER:int = 0;
      
      private static const GB_Y_OFS:int = 6;
      
      private static const MAX_CP_COLORS:int = 18;
      
      private static const INFO_ARR_IND_RECT_ARR:int = 0;
      
      private static const INFO_ARR_IND_RECOLOR:int = 1;
      
      private static const INFO_ARR_IND_OVRD_DEF_PAL:int = 2;
      
      public static const THEME_RECT_VEC:Vector.<Rectangle> = new Vector.<Rectangle>(Themes.MAX_THEMES + 1,true);
      
      public static const ZERO_PNT:Point = GlobVars.ZERO_PT;
      
      public static const COLOR_NEW_REGULAR_PALETTE:uint = Palette.COLOR_NEW_REGULAR_PALETTE;
      
      public static const COLOR_NEW_FLASH_PALETTE:uint = Palette.COLOR_NEW_FLASH_PALETTE;
      
      public static const COLOR_FRAME:uint = Palette.COLOR_FRAME;
      
      public static const COLOR_NEW_ROW:uint = Palette.COLOR_NEW_ROW;
      
      public static const COLOR_STANDARD_PALETTE:uint = Palette.COLOR_STANDARD_PALETTE;
      
      public static const COLOR_ANIM_FRAME_DELAY:uint = Palette.COLOR_ANIM_FRAME_DELAY;
      
      private static const STANDARD_COL_DCT:CustomDictionary = Palette.STANDARD_COLOR_DCT;
      
      private static const COLOR_END:uint = 0;
      
      public static const gameBoyFilterSprite:Sprite = new Sprite();
      
      private static const GAME_BOY_FILTER_COLOR:uint = 15794113;
      
      private static const CHAR_GB_INFO_VEC:Vector.<Array> = new Vector.<Array>(Character.NUM_CHARACTERS,true);
      
      public static const CHAR_INFO_VEC:Vector.<Array> = new Vector.<Array>(Character.NUM_CHARACTERS,true);
      
      public static const IND_MAP_INFO_ARR_BRICK:int = 1;
      
      public static const IND_MAP_INFO_ARR_ITEM_BLOCK:int = 3;
      
      public static const IND_MAP_INFO_ARR_ITEM_COIN:int = 3;
      
      public static const MAP_INFO_ARR:Array = [];
      
      public static const COIN_SYMBOL_IND:int = 0;
      
      public static const INTERFACE_INFO_ARR:Array = [];
      
      public static const MESSAGE_BOX_BG_COLOR_PNT:Point = new Point(219,84);
      
      public static const ENEMY_INFO_ARR:Array = [];
      
      {
         THEME_RECT_VEC[1] = new Rectangle(1,7,220,237);
         THEME_RECT_VEC[2] = new Rectangle(222,7,220,237);
         THEME_RECT_VEC[3] = new Rectangle(443,7,220,237);
         THEME_RECT_VEC[4] = new Rectangle(664,7,220,237);
         THEME_RECT_VEC[5] = new Rectangle(1,245,220,237);
         THEME_RECT_VEC[6] = new Rectangle(222,245,220,237);
         THEME_RECT_VEC[7] = new Rectangle(443,245,220,237);
         THEME_RECT_VEC[8] = new Rectangle(664,245,220,237);
         THEME_RECT_VEC[9] = new Rectangle(1,483,220,237);
         THEME_RECT_VEC[10] = new Rectangle(222,483,220,237);
         THEME_RECT_VEC[11] = new Rectangle(443,483,220,237);
         THEME_RECT_VEC[12] = new Rectangle(664,483,220,237);
         THEME_RECT_VEC[13] = new Rectangle(1,721,220,237);
         THEME_RECT_VEC[14] = new Rectangle(222,721,220,237);
         THEME_RECT_VEC[15] = new Rectangle(443,721,220,237);
         THEME_RECT_VEC[16] = new Rectangle(664,721,220,237);
         STANDARD_COL_DCT.addItem(COLOR_NEW_REGULAR_PALETTE);
         STANDARD_COL_DCT.addItem(COLOR_NEW_FLASH_PALETTE);
         STANDARD_COL_DCT.addItem(COLOR_NEW_ROW);
         STANDARD_COL_DCT.addItem(COLOR_STANDARD_PALETTE);
         STANDARD_COL_DCT.addItem(COLOR_FRAME);
         function():void
         {
            var ai:Function = function(param1:int, param2:int, param3:Array, param4:Boolean = true):void
            {
               var _loc5_:*;
               if(!(_loc5_ = CHAR_INFO_VEC[param1]))
               {
                  _loc5_ = [];
                  CHAR_INFO_VEC[param1] = _loc5_;
               }
               _loc5_[param2] = [param3,param4];
            };
            var billNum:* = Bill.CHAR_NUM;
            ai(billNum,Bill.IND_CI_Bill,[ar(59,7,289,173)]);
            CHAR_GB_INFO_VEC[billNum] = [[GB_PAL_OBJ1,GB_PAL_OBJ2],[ar(1,7,347,231)],[ar(1,65,57,115),ar(1,181,173,57)],[]];
            var linkNum:* = Link.CHAR_NUM;
            ai(linkNum,Link.IND_CI_Link,[ar(1,7,23,23),ar(25,7,191,71)]);
            ai(linkNum,Link.IND_CI_Portrait,[ar(217,7,24,24)]);
            ai(linkNum,Link.IND_CI_LinkEnemyExplosion,[ar(1,103,47,23)]);
            CHAR_GB_INFO_VEC[linkNum] = [[GB_PAL_OBJ1,GB_PAL_OBJ2],[ar(1,7,240,95)],[ar(49,79,167,119),ar(1,103,47,95)],[]];
            var marioNum:* = Mario.CHAR_NUM;
            ai(marioNum,MarioBase.IND_CI_Mario,[ar(36,1,454,230),ar(36,232,104,49),ar(456,232,34,49)]);
            ai(marioNum,MarioBase.IND_CI_MarioFireBall,[ar(176,232,244,24)]);
            ai(marioNum,MarioBase.IND_CI_MarioFireFlowerNormal,[ar(176,232,244,24)]);
            ai(marioNum,MarioBase.IND_CI_MarioStar,[ar(176,232,244,24)]);
            ai(marioNum,MarioBase.IND_CI_MarioPortrait,[ar(6,2,24,24)]);
            CHAR_GB_INFO_VEC[Mario.CHAR_NUM] = [[GB_PAL_OBJ1,GB_PAL_OBJ2],[ar(1,7,489,274)],[ar(176,232,279,49)],[]];
            CHAR_INFO_VEC[Luigi.CHAR_NUM] = CHAR_INFO_VEC[marioNum].concat();
            CHAR_GB_INFO_VEC[Luigi.CHAR_NUM] = CHAR_GB_INFO_VEC[marioNum].concat();
            var megaManNum:* = MegaMan.CHAR_NUM;
            ai(megaManNum,MegaManBase.IND_CI_MegaManFlash,[ar(37,7,287,107),ar(289,115,35,143)]);
            ai(megaManNum,MegaManBase.IND_CI_MegaManChargeMegaBuster,[ar(37,7,287,107),ar(289,115,35,143)]);
            ai(megaManNum,MegaManBase.IND_CI_MegaManChargeMagmaBazooka,[ar(37,7,287,107),ar(289,115,35,143)]);
            ai(megaManNum,MegaManBase.IND_CI_Portrait,[ar(6,12,24,24)]);
            ai(megaManNum,MegaManBase.IND_CI_Energy,[ar(325,7,35,71),ar(325,223,35,35)]);
            CHAR_INFO_VEC[Bass.CHAR_NUM] = CHAR_INFO_VEC[megaManNum].concat();
            ai(megaManNum,MegaManBase.IND_CI_MegaManSuitColors,[ar(37,7,287,107),ar(289,115,35,143),ar(37,115,35,35)]);
            ai(Bass.CHAR_NUM,MegaManBase.IND_CI_MegaManSuitColors,[ar(37,7,287,107),ar(289,115,35,143),ar(37,115,215,35)]);
            CHAR_GB_INFO_VEC[megaManNum] = [[GB_PAL_OBJ1,GB_PAL_OBJ2],[ar(1,7,359,287)],[ar(1,43,35,179),ar(37,151,251,71),ar(73,115,215,35),ar(19,259,17,17),ar(325,79,35,179),ar(289,259,70,34)],[]];
            CHAR_GB_INFO_VEC[Bass.CHAR_NUM] = [[GB_PAL_OBJ1,GB_PAL_OBJ2],[ar(1,7,359,287)],[ar(1,43,35,179),ar(37,151,251,71),ar(253,113,35,35),ar(19,259,17,17),ar(325,79,35,179),ar(289,259,70,34)],[]];
            var ryuNum:* = Ryu.CHAR_NUM;
            ai(ryuNum,Ryu.IND_CI_Ryu,[ar(1,50,42,171),ar(44,7,171,214),ar(216,7,85,257)]);
            CHAR_GB_INFO_VEC[Ryu.CHAR_NUM] = [[GB_PAL_OBJ1,GB_PAL_OBJ2],[ar(1,7,386,214)],[ar(1,222,386,128)],[]];
            var samusNum:* = Samus.CHAR_NUM;
            ai(samusNum,Samus.IND_CI_Samus,[ar(26,7,374,249),ar(1,32,24,224)]);
            ai(samusNum,Samus.IND_CI_SamusPortrait,[ar(1,7,24,24)]);
            ai(samusNum,Samus.IND_CI_SamusVariaSuit,[ar(1,282,24,24)]);
            ai(samusNum,Samus.IND_CI_SamusLongBeam,[ar(26,282,24,24)]);
            ai(samusNum,Samus.IND_CI_SamusIceBeam,[ar(51,282,24,24)]);
            ai(samusNum,Samus.IND_CI_SamusWaveBeam,[ar(76,282,24,24)]);
            ai(samusNum,Samus.IND_CI_SamusMorphBall,[ar(101,282,24,24)]);
            ai(samusNum,Samus.IND_CI_SamusBomb,[ar(126,282,24,24)]);
            ai(samusNum,Samus.IND_CI_SamusMissile,[ar(151,282,24,24)]);
            ai(samusNum,Samus.IND_CI_SamusMissileExpansion,[ar(176,282,24,24)]);
            ai(samusNum,Samus.IND_CI_SamusHighJump,[ar(201,282,24,24)]);
            ai(samusNum,Samus.IND_CI_SamusScrewAttack,[ar(226,282,24,24)]);
            ai(samusNum,Samus.IND_CI_SamusMissileAmmo,[ar(326,282,24,24)]);
            CHAR_GB_INFO_VEC[Samus.CHAR_NUM] = [[GB_PAL_OBJ1,GB_PAL_OBJ2],[ar(1,7,399,299)],[ar(1,57,49,199),ar(1,257,399,49),ar(351,7,49,199)],[]];
            var simonNum:* = Simon.CHAR_NUM;
            ai(simonNum,Simon.IND_CI_Simon,[ar(1,7,293,83)]);
            ai(simonNum,Simon.IND_CI_SimonWhipMid,[ar(43,91,20,62),ar(85,112,62,20)]);
            ai(simonNum,Simon.IND_CI_SimonWhip,[ar(64,91,20,62),ar(85,133,62,20)]);
            CHAR_GB_INFO_VEC[simonNum] = [[GB_PAL_OBJ1,GB_PAL_OBJ2],[ar(22,7,272,188)],[ar(148,91,146,62),ar(1,154,188,41),ar(232,154,62,41)],[]];
            var sophiaNum:* = Sophia.CHAR_NUM;
            var vec:* = CHAR_INFO_VEC;
            ai(sophiaNum,Sophia.IND_CI_Sophia,[ar(22,7,209,83),ar(211,112,20,41)]);
            ai(sophiaNum,Sophia.IND_CI_SophiaBullet,[ar(22,196,209,20),ar(211,7,20,41)]);
            CHAR_GB_INFO_VEC[sophiaNum] = [[GB_PAL_OBJ1,GB_PAL_OBJ2],[ar(22,7,234,251)],[ar(1,7,20,251),ar(22,196,104,41),ar(22,238,83,20),ar(126,175,105,41),ar(191,219,39,16),ar(22,91,188,62),ar(211,49,20,41),ar(148,49,20,41)],[]];
         }();
         function():void
         {
            var mp:Function = function(param1:int, param2:Array, param3:Boolean = true):void
            {
               MAP_INFO_ARR[param1] = [param2,param3];
            };
            mp(MapInfo.GroundNormal,[ar(1,24,67,67),ar(69,7,84,84)]);
            mp(MapInfo.BlockNormal,[ar(1,92,67,67),ar(69,92,84,84)]);
            mp(MapInfo.Grass,[ar(154,7,67,50)]);
            mp(MapInfo.Fence,[ar(188,109,16,16)]);
            mp(MapInfo.TreeTall,[ar(154,58,16,67)]);
            mp(MapInfo.TreeShort,[ar(171,75,16,50)]);
            mp(MapInfo.Railing,[ar(171,58,50,16)]);
            mp(MapInfo.MovingPlatform,[ar(1,194,103,33),ar(103,194,67,33),ar(171,194,33,33)]);
            mp(MapInfo.StandardPlatform,[ar(154,126,67,50)]);
            mp(MapInfo.CoralHorizontal,[ar(52,177,67,16)]);
            mp(MapInfo.CoralVertical,[ar(120,77,67,16)]);
            mp(MapInfo.BowserBridge,[ar(52,160,16,16)]);
            mp(MapInfo.FlagPoleBlock,[ar(1,177,16,16)]);
            mp(MapInfo.FireBarBlock,[ar(18,177,16,16)]);
            mp(MapInfo.AlternatingBrickSet,[ar(1,160,50,16)]);
            mp(MapInfo.ThinGround,[ar(120,177,67,16)]);
            mp(MapInfo.SinglePieceGround,[ar(35,177,16,16)]);
            mp(MapInfo.Pipe,[ar(392,109,67,84)]);
            mp(MapInfo.Hill,[ar(188,41,50,33),ar(171,75,84,50),ar(477,143,118,67)]);
            mp(MapInfo.Cloud,[ar(239,41,84,33),ar(256,75,67,33),ar(460,194,16,16)]);
            mp(MapInfo.Mushroom,[ar(324,7,67,16)]);
            mp(MapInfo.FireFlower,[ar(324,58,67,16)]);
            mp(MapInfo.PoisonMushroom,[ar(324,24,67,16)]);
            mp(MapInfo.OneUp,[ar(324,41,67,16)]);
            mp(MapInfo.Star,[ar(324,75,67,16)]);
            mp(MapInfo.YoshiEgg,[ar(324,160,16,16)]);
            mp(MapInfo.SpringGreen,[ar(477,7,50,33)]);
            mp(MapInfo.SpringRed,[ar(477,41,50,33)]);
            mp(MapInfo.Brick,[ar(409,7,67,33)]);
            mp(MapInfo.BrickHitResting,[ar(392,7,16,16)]);
            mp(MapInfo.BrickHitMoving,[ar(392,24,16,16)]);
            mp(MapInfo.ItemBlockHitResting,[ar(392,41,16,16)]);
            mp(MapInfo.ItemBlock,[ar(409,41,67,16)]);
            mp(MapInfo.Vine,[ar(460,58,16,135)]);
            mp(MapInfo.Coin,[ar(324,92,67,16)]);
            mp(MapInfo.FlyingCoin,[ar(324,109,67,16)]);
            mp(MapInfo.RedCoin,[ar(324,143,67,16)]);
            mp(MapInfo.BowserAxe,[ar(324,126,67,16)]);
            mp(MapInfo.BrickPiece,[ar(392,194,33,16)]);
            mp(MapInfo.WaterSwimStage,[ar(171,126,135,33),ar(307,143,16,16)]);
            mp(MapInfo.WaterRegularStage,[ar(171,160,152,16)]);
            mp(MapInfo.Lava,[ar(171,177,152,16)]);
            mp(MapInfo.Firework,[ar(188,7,135,33)]);
            mp(MapInfo.CoinExplosion,[ar(409,58,50,16),ar(392,75,67,33)]);
            mp(MapInfo.BowserBridgeBreak,[ar(477,75,50,67)]);
            mp(MapInfo.Pully,[ar(256,109,67,16)]);
            mp(MapInfo.Canon,[ar(528,92,16,50)]);
            mp(MapInfo.FlagPole,[ar(103,58,16,33)]);
            mp(MapInfo.Flag,[ar(120,58,50,16)]);
            mp(MapInfo.CastleBig,[ar(1,7,101,84)]);
            mp(MapInfo.CastleSmall,[ar(1,92,169,101)]);
            mp(MapInfo.Leaf,[ar(341,160,33,16)]);
            mp(MapInfo.AxeObtained,[ar(324,143,67,16)]);
            mp(MapInfo.HudsonBee,[ar(528,7,67,16)]);
            mp(MapInfo.Hammer,[ar(528,24,67,16),ar(426,194,33,16)]);
            mp(MapInfo.Wing,[ar(528,41,67,16)]);
            mp(MapInfo.Clock,[ar(528,58,67,16)]);
            mp(MapInfo.LuckyStar,[ar(528,75,67,16)]);
            mp(MapInfo.ExplodingRabbitPowerup,[ar(324,194,67,16)]);
         }();
         function():void
         {
            var ai:Function = function(param1:int, param2:Array, param3:Boolean = true):void
            {
               INTERFACE_INFO_ARR[param1] = [param2,param3];
            };
            ai(InterfaceInfo.CoinSymbol,[ar(137,47,39,10)]);
            ai(InterfaceInfo.FontCharMenu,[ar(1,7,125,62)],false);
            ai(InterfaceInfo.FontCharHud,[ar(127,7,119,39)],false);
            ai(InterfaceInfo.MushroomSelector,[ar(168,59,45,9)],false);
            ai(InterfaceInfo.FontCharScore,[ar(177,47,69,10)]);
            ai(InterfaceInfo.CharSelector,[ar(16,70,107,26)]);
            ai(InterfaceInfo.CharSelectorRevive,[ar(16,97,107,26)]);
            ai(InterfaceInfo.FontOneUp,[ar(127,58,27,11)]);
         }();
         function():void
         {
            var en:Function = function(param1:int, param2:Array, param3:Boolean = true):void
            {
               ENEMY_INFO_ARR[param1] = [param2,param3];
            };
            en(EnemyInfo.Goomba,[ar(26,7,74,24)]);
            en(EnemyInfo.Beetle,[ar(26,32,74,49)]);
            en(EnemyInfo.SpikeTop,[ar(126,7,49,24)]);
            en(EnemyInfo.Spiney,[ar(126,32,49,49)]);
            en(EnemyInfo.KoopaGreen,[ar(26,82,99,49),ar(1,132,124,24)]);
            en(EnemyInfo.KoopaRed,[ar(151,82,99,49),ar(126,132,124,24)]);
            en(EnemyInfo.PiranhaGreen,[ar(251,7,49,49)]);
            en(EnemyInfo.PiranhaRed,[ar(326,7,49,49)]);
            en(EnemyInfo.Bloopa,[ar(376,7,49,49)]);
            en(EnemyInfo.CheepFast,[ar(201,7,49,24)]);
            en(EnemyInfo.CheepSlow,[ar(201,32,49,24)]);
            en(EnemyInfo.CheepFlying,[ar(201,57,49,24)]);
            en(EnemyInfo.HammerBro,[ar(276,57,99,49)]);
            en(EnemyInfo.Lakitu,[ar(451,7,49,49)]);
            en(EnemyInfo.BulletBill,[ar(251,107,99,24)]);
            en(EnemyInfo.Bowser,[ar(51,157,449,49),ar(1,207,199,49)]);
            en(EnemyInfo.Hammer,[ar(376,82,24,24),ar(401,57,49,49)]);
            en(EnemyInfo.HammerBowser,[ar(351,207,49,49)]);
            en(EnemyInfo.Podoboo,[ar(351,107,74,24)]);
            en(EnemyInfo.FireBar,[ar(451,107,49,49)]);
            en(EnemyInfo.BowserFireball,[ar(201,207,149,24)]);
            en(EnemyInfo.Crab,[ar(1,257,99,24)]);
            en(EnemyInfo.Fly,[ar(101,257,74,24)]);
            en(EnemyInfo.FireEnemy,[ar(176,257,99,24)]);
            en(EnemyInfo.Barrel,[ar(276,257,99,24)]);
            en(EnemyInfo.Icicle,[ar(376,257,99,24)]);
         }();
      }
      
      public const BW_FILTER:ColorMatrixFilter = new ColorMatrixFilter([0.3086,0.6094,0.082,0,0,0.3086,0.6094,0.082,0,0,0.3086,0.6094,0.082,0,0,0,0,0,1,0]);
      
      private const COL_PAL_MAP_ARRS:Array = [new Array(256),new Array(256),new Array(256)];
      
      private var knownBmd:BitmapData;
      
      private var knownSkin:Sprite;
      
      private const inactiveSkinNumsDct:CustomDictionary = new CustomDictionary();
      
      public var drawingBoardMapSkinCont:BmdSkinCont;
      
      public var drawingBoardEnemySkinCont:BmdSkinCont;
      
      public var drawingBoardInterfaceSkinCont:BmdSkinCont;
      
      public var drawingBoardThemeSkinCont:BmdSkinCont;
      
      public var drawingBoardCharSkinVec:Vector.<BmdSkinCont>;
      
      public const CLEAN_BMC_CONTAINER_ARR:Array = [];
      
      public const CLEAN_BMC_VEC_CHARACTER:Vector.<Vector.<BmdSkinCont>> = new Vector.<Vector.<BmdSkinCont>>(Character.NUM_CHARACTERS,true);
      
      public const CLEAN_BMD_VEC_ENEMY:Vector.<BmdSkinCont> = new Vector.<BmdSkinCont>();
      
      public const CLEAN_BMD_VEC_MAP:Vector.<BmdSkinCont> = new Vector.<BmdSkinCont>();
      
      public var CLEAN_BMD_VEC_THEME:Vector.<BmdSkinCont>;
      
      public const CLEAN_BMC_VEC_INTERFACE:Vector.<BmdSkinCont> = new Vector.<BmdSkinCont>();
      
      private const MAP_GB_INFO_ARR:Array = [[GB_PAL_BG,GB_PAL_OBJ2,GB_PAL_OBJ1],[ar(154,7,33,33),ar(171,41,16,33)],[ar(324,7,67,186),ar(188,7,135,33)],[new Rectangle(1,7,526,186)]];
      
      private const THEME_GB_INFO_ARR:Array = [[GB_PAL_BG,GB_PAL_OBJ2,GB_PAL_OBJ1],[new Rectangle(188,602,50,33)],[new Rectangle(18,381,67,203)],[new Rectangle(1,7,560,662)]];
      
      private const INTERFACE_GB_INFO_ARR:Array = [[GB_PAL_BG,GB_PAL_OBJ2,GB_PAL_OBJ1],[new Rectangle(188,602,50,33)],[new Rectangle(18,381,67,203)],[new Rectangle(1,7,560,662)]];
      
      private const ENEMY_GB_INFO_ARR:Array = [[GB_PAL_OBJ1,GB_PAL_OBJ2],[new Rectangle(1,7,499,249)],[new Rectangle(376,57,24,49),new Rectangle(351,107,149,49),new Rectangle(251,132,99,24),new Rectangle(201,207,149,49)]];
      
      public var cMapNum:int;
      
      public var cEnemyBmc:BmdSkinCont;
      
      public var cInterfaceBmc:BmdSkinCont;
      
      public function GraphicsManager()
      {
         this.drawingBoardCharSkinVec = new Vector.<BmdSkinCont>(Character.NUM_CHARACTERS,true);
         this.CLEAN_BMD_VEC_THEME = new Vector.<BmdSkinCont>();
         super();
      }
      
      private static function ar(param1:int, param2:int, param3:int, param4:int) : Rectangle
      {
         return new Rectangle(param1,param2,param3,param4);
      }
      
      override public function initiate() : void
      {
         super.initiate();
         gameBoyFilterSprite.graphics.beginFill(GAME_BOY_FILTER_COLOR);
         gameBoyFilterSprite.graphics.drawRect(0,0,GlobVars.STAGE_WIDTH,GlobVars.STAGE_HEIGHT);
         gameBoyFilterSprite.graphics.endFill();
         gameBoyFilterSprite.blendMode = BlendMode.MULTIPLY;
         gameBoyFilterSprite.mouseEnabled = false;
         this.updateScreenFilter();
         this.setUpVecs();
         this.setUpColorMapArr();
      }
      
      private function setUpColorMapArr() : void
      {
         var _loc1_:Array = this.COL_PAL_MAP_ARRS[0];
         var _loc2_:Array = this.COL_PAL_MAP_ARRS[1];
         var _loc3_:Array = this.COL_PAL_MAP_ARRS[2];
         var _loc4_:int = 256;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(_loc5_ < GB_LUM_PAL_3)
            {
               _loc1_[_loc5_] = 31 << 16;
               _loc2_[_loc5_] = 31 << 8;
               _loc3_[_loc5_] = 31;
            }
            else if(_loc5_ < GB_LUM_PAL_2)
            {
               _loc1_[_loc5_] = 77 << 16;
               _loc2_[_loc5_] = 83 << 8;
               _loc3_[_loc5_] = 60;
            }
            else if(_loc5_ < GB_LUM_PAL_1)
            {
               _loc1_[_loc5_] = 139 << 16;
               _loc2_[_loc5_] = 149 << 8;
               _loc3_[_loc5_] = 109;
            }
            else
            {
               _loc1_[_loc5_] = 196 << 16;
               _loc2_[_loc5_] = 207 << 8;
               _loc3_[_loc5_] = 161;
            }
            _loc5_++;
         }
      }
      
      private function setUpVecs() : void
      {
         var skinNum:int = 0;
         var n:int = 0;
         var i:int = 0;
         var bmc:BmdSkinCont = null;
         var bmcType:int = 0;
         var charNumArr:Array = null;
         var m:int = 0;
         var j:int = 0;
         var charNum:int = 0;
         var addCharSkin:Function = function(param1:Bitmap):void
         {
         };
         BmdInfo.initiate();
         var inactiveSkinsArr:Array = GameSettings.INACTIVE_SKIN_NUMS;
         for each(skinNum in inactiveSkinsArr)
         {
            this.inactiveSkinNumsDct.addItem(skinNum);
         }
         n = Character.NUM_CHARACTERS;
         BmdInfo.setUpMasterCharBmpVec();
         this.CLEAN_BMC_CONTAINER_ARR[Palette.TYPE_MAP] = this.CLEAN_BMD_VEC_MAP;
         this.CLEAN_BMC_CONTAINER_ARR[Palette.TYPE_ENEMY] = this.CLEAN_BMD_VEC_ENEMY;
         this.CLEAN_BMC_CONTAINER_ARR[Palette.TYPE_INTERFACE] = this.CLEAN_BMC_VEC_INTERFACE;
         while(i < n)
         {
            this.CLEAN_BMC_VEC_CHARACTER[i] = new Vector.<BmdSkinCont>();
            this.drawingBoardCharSkinVec[i] = new BmdSkinCont(BmdInfo.MASTER_CHAR_BMP_VEC[i],0,TYPE_CHARACTER,null,null,0,[i]);
            i++;
         }
         this.drawingBoardEnemySkinCont = BmdInfo.drawingBoardEnemyBmc;
         this.drawingBoardMapSkinCont = BmdInfo.drawingBoardMapBmc;
         this.drawingBoardInterfaceSkinCont = BmdInfo.drawingBoardInterfaceBmc;
         this.drawingBoardThemeSkinCont = BmdInfo.drawingBoardThemeBmc;
         var skinArr:Vector.<BmdSkinCont> = BmdInfo.BMC_VEC;
         n = skinArr.length;
         i = 0;
         while(i < n)
         {
            bmc = skinArr[i];
            bmcType = bmc.type;
            if(bmcType == TYPE_CHARACTER)
            {
               charNumArr = bmc.charArr;
               m = charNumArr.length;
               j = 0;
               while(j < m)
               {
                  charNum = charNumArr[j];
                  this.CLEAN_BMC_VEC_CHARACTER[charNum].push(bmc);
                  j++;
               }
            }
            else if(bmcType == TYPE_ENEMY)
            {
               this.CLEAN_BMD_VEC_ENEMY.push(bmc);
            }
            else if(bmcType == TYPE_MAP)
            {
               this.CLEAN_BMD_VEC_MAP.push(bmc);
            }
            else if(bmcType == TYPE_INTERFACE)
            {
               this.CLEAN_BMC_VEC_INTERFACE.push(bmc);
            }
            this.CLEAN_BMD_VEC_THEME = BmdInfo.THEME_VEC;
            i++;
         }
      }
      
      private function nextSkin(param1:int, param2:int) : int
      {
         var _loc3_:Vector.<int> = statMngr.getCharSkinOrder(param1);
         var _loc4_:int;
         if((_loc4_ = _loc3_.indexOf(param2) + 1) >= _loc3_.length)
         {
            _loc4_ = 0;
         }
         if(!_loc3_.length)
         {
            return param2++;
         }
         return _loc3_[_loc4_];
      }
      
      public function changeCharacterSkin(param1:Character, param2:int = -1) : void
      {
         var _loc3_:int = param1.charNum;
         var _loc4_:int = statMngr.getCharSkinNum(_loc3_);
         var _loc5_:int;
         var _loc6_:int = (_loc5_ = this.CLEAN_BMC_VEC_CHARACTER[_loc3_].length) - 1;
         if((_loc4_ = this.nextSkin(_loc3_,_loc4_)) > _loc6_ || _loc4_ < 0)
         {
            _loc4_ = 0;
         }
         if(param2 > -1)
         {
            _loc4_ = param2;
         }
         else if(param2 == CHAR_SKIN_NUM_RANDOM)
         {
            _loc4_ = int(Math.random() * (_loc6_ + 1));
         }
         if(!this.skinIsActive(this.CLEAN_BMC_VEC_CHARACTER[_loc3_][_loc4_]))
         {
            if(!this.skinIsActive(param1.currentBmdSkin))
            {
               _loc4_ = 0;
            }
            while(!this.skinIsActive(this.CLEAN_BMC_VEC_CHARACTER[_loc3_][_loc4_]))
            {
               if(param2 != CHAR_SKIN_NUM_RANDOM)
               {
                  if((_loc4_ = this.nextSkin(_loc3_,_loc4_)) > _loc6_ || _loc4_ < 0)
                  {
                     _loc4_ = 0;
                  }
               }
               else
               {
                  _loc4_ = int(Math.random() * (_loc6_ + 1));
               }
            }
         }
         statMngr.setCharSkinNum(param1.charNum,_loc4_);
         if(!param1.recolorsCharSkin)
         {
            this.prepareRecolor(this.drawingBoardCharSkinVec[_loc3_]);
         }
         param1.setCurrentBmdSkin(statMngr.getCurrentBmc(param1.charNum));
         TopScreenText.instance.updNameDispTxt();
         if((GameSettings.musicType == ConsoleType.CHARACTER || GameSettings.musicSet == MusicSets.CHARACTER) && gsMngr.gameState == GameStates.PLAY)
         {
            sndMngr.changeMusic();
         }
         eventMngr.dispatchEvent(new Event(CustomEvents.CHANGE_CHARACTER_SKIN));
      }
      
      public function updateScreenFilter() : void
      {
         var _loc1_:DisplayObjectContainer = game.stage;
         if(GameSettings.gameBoyFilter)
         {
            game.filters = [this.BW_FILTER];
            _loc1_.addChild(gameBoyFilterSprite);
            game.mask = game.MASK_SPRITE;
         }
         else
         {
            game.filters = [];
            game.mask = null;
            game.mask = gameBoyFilterSprite;
         }
      }
      
      public function recolorCharacterSheet(param1:int, param2:int, param3:Array = null, param4:Boolean = false) : void
      {
         this.prepareRecolor(this.drawingBoardCharSkinVec[param1],param2,param3);
      }
      
      public function changeCharacterColor(param1:Character) : void
      {
         var _loc2_:int = param1.charNum;
         var _loc3_:int = statMngr.getCharColorNum(_loc2_);
         var _loc4_:int = param1.numColors;
         _loc3_++;
         if(_loc3_ > _loc4_ - 1 || _loc3_ < 0)
         {
            _loc3_ = 0;
         }
         statMngr.setCharColorNum(_loc2_,_loc3_);
         this.prepareRecolor(this.drawingBoardCharSkinVec[_loc2_]);
      }
      
      public function swapGbPalette(param1:Boolean = false) : void
      {
         if(param1 || this.shouldBeRecoloredToGb(this.drawingBoardMapSkinCont))
         {
            this.recolorGbSkin(this.drawingBoardMapSkinCont);
            this.recolorGbSkin(this.drawingBoardThemeSkinCont);
            level.resizeScenery();
         }
         if(param1 || this.shouldBeRecoloredToGb(this.drawingBoardEnemySkinCont))
         {
            this.recolorGbSkin(this.drawingBoardEnemySkinCont);
         }
         if(param1 || this.shouldBeRecoloredToGb(this.drawingBoardInterfaceSkinCont))
         {
            this.recolorGbSkin(this.drawingBoardInterfaceSkinCont);
            this.updateInterfaceItems();
         }
         var _loc2_:BmdSkinCont = this.drawingBoardCharSkinVec[statMngr.curCharNum];
         if(param1 || this.shouldBeRecoloredToGb(_loc2_))
         {
            this.recolorGbSkin(_loc2_);
         }
      }
      
      public function initiateLevelHandler() : void
      {
         var _loc1_:Boolean = false;
         if(level is CharacterSelect)
         {
            CharacterSelect.instance.setCurLevStr();
         }
         if(GameSettings.randomMapSkin)
         {
            _loc1_ = true;
         }
         if(Themes.getMapTheme(true) != Themes.getMapTheme() || _loc1_ || !level.newLev)
         {
            this.prepareRecolor(this.drawingBoardMapSkinCont);
            this.prepareRecolor(this.drawingBoardThemeSkinCont);
         }
         level.background.setBackgrounds();
         level.foreground.setBackgrounds();
         if(Themes.getEnemyTheme(true) != Themes.getEnemyTheme() || GameSettings.enemySkin == RANDOM_SKIN_NUM || _loc1_ && GameSettings.enemySkin == USE_MAP_SKIN_NUM)
         {
            this.prepareRecolor(this.drawingBoardEnemySkinCont);
         }
         if(Themes.getInterfaceTheme(true) != Themes.getInterfaceTheme() || GameSettings.interfaceSkin == RANDOM_SKIN_NUM || _loc1_ && GameSettings.interfaceSkin == USE_MAP_SKIN_NUM)
         {
            this.swapInterface();
         }
      }
      
      private function drawItems(param1:BmdSkinCont) : void
      {
         var _loc4_:ThemeGroup = null;
         var _loc5_:Rectangle = null;
         var _loc6_:BitmapData = null;
         var _loc2_:BitmapData = param1.bmd;
         var _loc3_:int = param1.type;
         if(_loc3_ == TYPE_THEME)
         {
            _loc4_ = Themes.getMapTheme();
            _loc5_ = THEME_RECT_VEC[Themes.NORMAL];
            _loc6_ = this.CLEAN_BMD_VEC_THEME[GameSettings.getMapSkinLimited()].bmd;
            _loc2_.copyPixels(_loc6_,THEME_RECT_VEC[_loc4_.theme],_loc5_.topLeft);
         }
      }
      
      private function drawGrayStuff() : void
      {
         var _loc6_:Rectangle = null;
         var _loc1_:CustomDictionary = new CustomDictionary();
         _loc1_.addItem(new Rectangle(1,7,561,374));
         _loc1_.addItem(new Rectangle(103,432,67,135));
         _loc1_.addItem(new Rectangle(17,585,153,33));
         var _loc2_:BitmapData = this.drawingBoardMapSkinCont.bmd;
         var _loc3_:Array = [[4291316748,4291480266],[4294753456,4294835709],[4278190080,4287269514],[4282170620,4292356096],[4286631952,4294769916],[4278233088,4291480266]];
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         for each(_loc6_ in _loc1_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc4_)
            {
               _loc2_.threshold(_loc2_,_loc6_,_loc6_.topLeft,"==",_loc3_[_loc5_][0],_loc3_[_loc5_][1]);
               _loc5_++;
            }
         }
      }
      
      public function swapEnemyGraphics() : void
      {
         this.prepareRecolor(this.drawingBoardEnemySkinCont);
      }
      
      public function swapInterface() : void
      {
         this.prepareRecolor(this.drawingBoardInterfaceSkinCont);
         this.updateInterfaceItems();
         eventMngr.dispatchEvent(new Event(CustomEvents.CHANGE_INTERFACE_SKIN));
      }
      
      private function updateInterfaceItems() : void
      {
         var _loc1_:MessageBox = MessageBox.activeInstance;
         if(_loc1_)
         {
            _loc1_.changeBackgroundColor();
            _loc1_.resizeBox();
         }
         TextFieldContainer.updateTfcs();
      }
      
      public function swapMapGraphics() : void
      {
         this.prepareRecolor(this.drawingBoardMapSkinCont);
         this.prepareRecolor(this.drawingBoardThemeSkinCont);
         level.background.setBackgrounds();
         level.foreground.setBackgrounds();
         level.resizeScenery();
         if(GameSettings.enemySkin == USE_MAP_SKIN_NUM)
         {
            this.swapEnemyGraphics();
         }
         if(GameSettings.interfaceSkin == USE_MAP_SKIN_NUM)
         {
            this.swapInterface();
         }
         if(GameSettings.musicType == ConsoleType.MAP || GameSettings.musicSet == MusicSets.MAP)
         {
            if(gsMngr.gameState == GameStates.PLAY)
            {
               sndMngr.changeMusic();
            }
            else if(gsMngr.gameState == GameStates.PAUSE)
            {
               sndMngr.changeMusicOnResumeGame = true;
            }
         }
      }
      
      private function redraw(param1:int) : void
      {
         var _loc2_:Dictionary = null;
         var _loc3_:CustomMovieClip = null;
         var _loc4_:Event = null;
         var _loc7_:CustomDictionary = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:Character = null;
         var _loc11_:CustomMovieClip = null;
         var _loc12_:DisplayObjectContainer = null;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:DisplayObject = null;
         if(param1 == TYPE_MAP)
         {
            _loc2_ = CustomMovieClip.MAP_MASTER_OBJ_DCT;
         }
         else if(param1 == TYPE_THEME)
         {
            _loc2_ = CustomMovieClip.THEME_MASTER_OBJ_DCT;
         }
         else if(param1 == TYPE_ENEMY)
         {
            _loc2_ = CustomMovieClip.ENEMY_MASTER_OBJ_DCT;
            _loc4_ = new Event(CustomEvents.ENEMY_SKIN_CHANGE);
         }
         else if(param1 == TYPE_INTERFACE)
         {
            _loc2_ = CustomMovieClip.INTERFACE_MASTER_OBJ_DCT;
         }
         else if(param1 == TYPE_CHARACTER)
         {
            _loc7_ = level.charDct;
            _loc2_ = CustomMovieClip.CHARACTER_MASTER_OBJ_DCT;
            if(_loc7_)
            {
               for each(_loc10_ in _loc7_)
               {
                  _loc8_ = CustomMovieClip.IND_MBMDT_CHAR_NUM;
                  _loc9_ = _loc10_.charNum;
                  for each(_loc3_ in _loc2_)
                  {
                     if(_loc3_.masterBmdType[_loc8_] == _loc9_)
                     {
                        _loc3_.markForRedraw();
                     }
                  }
                  _loc10_.markForRedraw();
                  for each(_loc11_ in _loc10_.subMcDct)
                  {
                     _loc11_.markForRedraw();
                  }
               }
            }
            else
            {
               _loc8_ = CustomMovieClip.IND_MBMDT_CHAR_NUM;
               _loc9_ = player.charNum;
               for each(_loc3_ in _loc2_)
               {
                  if(_loc3_.masterBmdType[_loc8_] == _loc9_)
                  {
                     _loc3_.markForRedraw();
                  }
               }
            }
            player.markForRedraw();
            _loc2_ = player.subMcDct;
         }
         for each(_loc3_ in _loc2_)
         {
            _loc3_.markForRedraw();
         }
         if(_loc4_)
         {
            dispatchEvent(_loc4_);
         }
         var _loc5_:Array = [game];
         if(level)
         {
            _loc5_.push(level);
         }
         if(TopScreenText.instance)
         {
            _loc5_.push(TopScreenText.instance);
         }
         if(LevelForeground.instance)
         {
            _loc5_.push(LevelForeground.instance);
         }
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_.length)
         {
            _loc13_ = (_loc12_ = _loc5_[_loc6_]).numChildren;
            _loc14_ = 0;
            while(_loc14_ < _loc13_)
            {
               if((_loc15_ = _loc12_.getChildAt(_loc14_)) is CustomMovieClip)
               {
                  _loc3_ = _loc15_ as CustomMovieClip;
                  if(!_loc3_.drawnFramesDct[_loc3_.currentFrame])
                  {
                     _loc3_.gotoAndStop(_loc3_.currentFrame);
                  }
               }
               _loc14_++;
            }
            _loc6_++;
         }
      }
      
      public function recolorCharacterItems(param1:Character) : void
      {
      }
      
      public function getSkinNum(param1:int) : int
      {
         var _loc2_:int = 0;
         if(param1 == TYPE_MAP || param1 == TYPE_ENEMY || param1 == TYPE_INTERFACE)
         {
            if(param1 == TYPE_MAP)
            {
               _loc2_ = GameSettings.getMapSkinLimited();
            }
            else if(param1 == TYPE_ENEMY)
            {
               _loc2_ = GameSettings.getEnemySkinLimited();
            }
            else if(param1 == TYPE_INTERFACE)
            {
               _loc2_ = GameSettings.getInterfaceSkinLimited();
            }
         }
         return _loc2_;
      }
      
      private function resetBmd(param1:BmdSkinCont) : void
      {
         var _loc3_:BmdSkinCont = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc2_:BitmapData = param1.bmd;
         var _loc4_:int;
         if((_loc4_ = param1.type) == TYPE_CHARACTER)
         {
            _loc5_ = param1.charArr[0];
            if(!this.CLEAN_BMC_VEC_CHARACTER[_loc5_])
            {
               return;
            }
            _loc3_ = this.CLEAN_BMC_VEC_CHARACTER[_loc5_][statMngr.getCharSkinNum(_loc5_)];
            _loc2_.copyPixels(_loc3_.bmd,_loc2_.rect,ZERO_PNT);
            param1.copyStatsFrom(_loc3_);
            param1.gbPal = 0;
         }
         else if(_loc4_ == TYPE_MAP)
         {
            _loc6_ = GameSettings.getMapSkinLimited(true);
            this.cMapNum = _loc6_;
            _loc3_ = this.CLEAN_BMD_VEC_MAP[_loc6_];
            _loc2_.copyPixels(_loc3_.bmd,_loc2_.rect,ZERO_PNT);
            param1.copyStatsFrom(_loc3_);
            param1.gbPal = 0;
         }
         else if(_loc4_ == TYPE_THEME)
         {
            _loc6_ = GameSettings.getMapSkinLimited();
            _loc3_ = this.CLEAN_BMD_VEC_THEME[_loc6_];
            param1.copyStatsFrom(_loc3_);
            param1.gbPal = 0;
            this.drawItems(param1);
         }
         else if(_loc4_ == TYPE_ENEMY)
         {
            _loc6_ = GameSettings.getEnemySkinLimited(true);
            _loc3_ = this.CLEAN_BMD_VEC_ENEMY[_loc6_];
            _loc2_.copyPixels(_loc3_.bmd,_loc2_.rect,ZERO_PNT);
            param1.copyStatsFrom(_loc3_);
            param1.gbPal = 0;
            this.cEnemyBmc = _loc3_;
         }
         else if(_loc4_ == TYPE_INTERFACE)
         {
            _loc6_ = GameSettings.getInterfaceSkinLimited(true);
            _loc3_ = this.CLEAN_BMC_VEC_INTERFACE[_loc6_];
            _loc2_.copyPixels(_loc3_.bmd,_loc2_.rect,ZERO_PNT);
            param1.copyStatsFrom(_loc3_);
            param1.gbPal = 0;
            this.cInterfaceBmc = _loc3_;
         }
         else if(_loc4_ == BmdSkinCont.TYPE_NEUTRAL)
         {
            _loc2_.copyPixels(_loc3_.bmd,_loc2_.rect,ZERO_PNT);
            param1.copyStatsFrom(_loc3_);
            param1.gbPal = 0;
         }
      }
      
      public function prepareRecolor(param1:BmdSkinCont, param2:int = -1, param3:Array = null, param4:Boolean = false, param5:Boolean = false) : void
      {
         var _loc7_:int = 0;
         var _loc8_:Array = null;
         var _loc10_:int = 0;
         var _loc11_:Array = null;
         var _loc12_:int = 0;
         var _loc13_:Bitmap = null;
         var _loc6_:BitmapData = param1.bmd;
         if(!level)
         {
            return;
         }
         this.resetBmd(param1);
         var _loc9_:int;
         if((_loc9_ = param1.type) == TYPE_MAP || _loc9_ == TYPE_ENEMY || _loc9_ == TYPE_INTERFACE || _loc9_ == TYPE_THEME)
         {
            if(_loc9_ == TYPE_MAP || _loc9_ == TYPE_THEME)
            {
               _loc8_ = MAP_INFO_ARR;
            }
            else if(_loc9_ == TYPE_ENEMY)
            {
               _loc8_ = ENEMY_INFO_ARR;
            }
            else if(_loc9_ == TYPE_INTERFACE)
            {
               _loc8_ = INTERFACE_INFO_ARR;
            }
         }
         else if(_loc9_ == TYPE_CHARACTER)
         {
            _loc10_ = param1.charArr[0];
            if(param2 != -1)
            {
               _loc7_ = param2;
            }
            else
            {
               _loc7_ = 1;
            }
            _loc8_ = CHAR_INFO_VEC[_loc10_];
         }
         if(_loc8_)
         {
            _loc11_ = [];
            if(param3)
            {
               for each(_loc12_ in param3)
               {
                  _loc11_[_loc12_] = _loc8_[_loc12_];
               }
            }
            else
            {
               _loc11_ = _loc8_;
            }
            this.recolorItems(param1,_loc11_,_loc7_);
         }
         if(!param5)
         {
            this.redraw(_loc9_);
         }
         if(GameSettings.DEBUG_MODE && GameSettings.SHOW_BMP)
         {
            (_loc13_ = game.testBmp).scaleX = 2;
            _loc13_.scaleY = 2;
            _loc13_.bitmapData = this.drawingBoardThemeSkinCont.bmd;
            _loc13_.y = -40;
            if(game.contains(_loc13_))
            {
               game.removeChild(_loc13_);
            }
            game.addChild(_loc13_);
         }
         if(param1 == this.drawingBoardMapSkinCont)
         {
            eventMngr.dispatchEvent(new Event(CustomEvents.CHANGE_MAP_SKIN));
         }
      }
      
      public function changeActiveSkins() : void
      {
         var _loc1_:GraphicsOptions = GraphicsOptions.instance;
         if(!this.skinIsActive(player.currentBmdSkin))
         {
            this.changeCharacterSkin(player);
         }
         var _loc2_:int = Character.NUM_CHARACTERS;
         var _loc3_:int = player.charNum;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            if(!(_loc4_ == _loc3_ || this.skinIsActive(statMngr.getCurrentBmc(_loc4_))))
            {
               player.changeChar(_loc4_);
               this.changeCharacterSkin(player);
            }
            _loc4_++;
         }
         if(player.charNum != _loc3_)
         {
            player.changeChar(_loc3_);
         }
         if(!this.skinIsActive(this.CLEAN_BMD_VEC_MAP[GameSettings.getMapSkinLimited()]))
         {
            if(GameSettings.mapSkin <= GameSettingsValues.mapSkinLimitedMaxValue)
            {
               GameSettings.changeMapSkin(GameSettings.INCREASE_SETTING_NUM,false);
            }
            else
            {
               this.swapMapGraphics();
            }
         }
         if(!this.skinIsActive(this.cEnemyBmc))
         {
            if(GameSettings.enemySkin <= GameSettingsValues.enemySkinLimitedMaxValue)
            {
               if(_loc1_)
               {
                  _loc1_.forceChooseItem(MenuBoxItems.ENEMY_SKIN);
               }
               else
               {
                  GameSettings.changeEnemySkin(GameSettings.INCREASE_SETTING_NUM);
               }
            }
            else
            {
               this.swapEnemyGraphics();
            }
         }
         if(!this.skinIsActive(this.cInterfaceBmc))
         {
            if(GameSettings.interfaceSkin <= GameSettingsValues.interfaceSkinLimitedMaxValue)
            {
               if(_loc1_)
               {
                  _loc1_.forceChooseItem(MenuBoxItems.INTERFACE_SKIN);
               }
               else
               {
                  GameSettings.changeInterfaceSkin(GameSettings.INCREASE_SETTING_NUM);
               }
            }
            else
            {
               this.swapInterface();
            }
         }
         sndMngr.changeMusicOnResumeGame = true;
      }
      
      public function skinIsActive(param1:BmdSkinCont, param2:int = -1) : Boolean
      {
         if(param1.type != TYPE_CHARACTER && this.inactiveSkinNumsDct[param1.skinNum] != undefined)
         {
            return false;
         }
         var _loc3_:int = GameSettings.activeSkins;
         if(_loc3_ == GameSettingsValues.paletteTargetAll)
         {
            return true;
         }
         if(param1 && param2 == -1)
         {
            param2 = param1.consoleType;
         }
         if(_loc3_ == GameSettingsValues.paletteTarget8Bit && (param2 == ConsoleType.GB || param2 == ConsoleType.BIT_8))
         {
            return true;
         }
         if(_loc3_ == GameSettingsValues.paletteTarget16Bit && param2 == ConsoleType.BIT_16)
         {
            return true;
         }
         return false;
      }
      
      public function recolorGbSkin(param1:BmdSkinCont) : Boolean
      {
         var _loc5_:Vector.<Background> = null;
         var _loc6_:Background = null;
         var _loc7_:BmdSkinCont = null;
         return false;
      }
      
      public function readPalette(param1:BitmapData, param2:Point) : Array
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:int = 0;
         var _loc3_:Array = [];
         var _loc4_:uint;
         if((_loc4_ = param1.getPixel32(param2.x,param2.y)) != COLOR_STANDARD_PALETTE)
         {
            throw new Error("must have standard palette");
         }
         _loc3_[0] = [];
         var _loc9_:int = 0;
         while(_loc4_ != COLOR_END)
         {
            if((_loc4_ = param1.getPixel32(param2.x,param2.y + _loc9_)) != COLOR_END && _loc4_ != COLOR_NEW_ROW && _loc4_ != COLOR_NEW_REGULAR_PALETTE && _loc4_ != COLOR_NEW_FLASH_PALETTE)
            {
               _loc8_ = _loc9_;
            }
            _loc3_[_loc9_] = [_loc4_];
            _loc9_++;
         }
         _loc6_ = _loc9_ - 1;
         _loc4_ = param1.getPixel32(param2.x,param2.y);
         _loc9_ = 0;
         while(_loc4_ != COLOR_END)
         {
            _loc3_[0][_loc9_] = _loc4_;
            if(_loc4_ == COLOR_STANDARD_PALETTE && _loc9_ != 0)
            {
               _loc7_ = _loc9_;
            }
            _loc9_++;
            _loc4_ = param1.getPixel32(param2.x + _loc9_,param2.y);
         }
         _loc5_ = _loc9_;
         var _loc10_:int = _loc6_;
         if(_loc8_)
         {
            _loc10_ = _loc8_;
         }
         _loc9_ = 1;
         while(_loc9_ < _loc10_)
         {
            _loc11_ = 0;
            while(_loc11_ < _loc5_)
            {
               _loc3_[_loc9_][_loc11_] = param1.getPixel32(param2.x + _loc11_,param2.y + _loc9_);
               _loc11_++;
            }
            _loc9_++;
         }
         if(_loc8_)
         {
            _loc11_ = 1;
            _loc4_ = param1.getPixel32(param2.x + _loc11_,param2.y + _loc9_);
            _loc9_ = _loc8_;
            while(_loc9_ < _loc6_)
            {
               while(_loc4_ != COLOR_END)
               {
                  _loc3_[_loc9_][_loc11_] = _loc4_;
                  _loc11_++;
                  _loc4_ = param1.getPixel32(param2.x + _loc11_,param2.y + _loc9_);
               }
               _loc9_++;
            }
         }
         _loc3_.push(_loc7_);
         return _loc3_;
      }
      
      public function recolorSingleBitmap(param1:BitmapData, param2:Palette, param3:Palette, param4:int = 0, param5:int = 0, param6:Rectangle = null) : void
      {
         var _loc10_:int = 0;
         var _loc11_:uint = 0;
         var _loc12_:uint = 0;
         var _loc13_:int = 0;
         if(!param6)
         {
            param6 = param1.rect;
         }
         var _loc7_:int = param2.numCols;
         if(param2.readColor(param4,0) != COLOR_STANDARD_PALETTE)
         {
            if((_loc10_ = param2.newColorsEnd) > 0)
            {
               _loc7_ = _loc10_;
            }
         }
         var _loc8_:BitmapData = param1.clone();
         var _loc9_:int = 1;
         while(_loc9_ < _loc7_)
         {
            _loc11_ = param2.readColor(param4,_loc9_);
            _loc12_ = param3.readColor(param5,_loc9_);
            _loc13_ = param1.threshold(_loc8_,param6,param6.topLeft,"==",_loc11_,_loc12_);
            _loc9_++;
         }
      }
      
      private function recolorItems(param1:BmdSkinCont, param2:Array, param3:int = 0) : void
      {
         var _loc6_:int = 0;
         var _loc7_:PaletteSheet = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:ThemeGroup = null;
         var _loc13_:int = 0;
         var _loc15_:Array = null;
         var _loc16_:Palette = null;
         var _loc17_:uint = 0;
         var _loc18_:Array = null;
         var _loc19_:* = undefined;
         var _loc20_:Number = NaN;
         var _loc21_:uint = 0;
         var _loc22_:uint = 0;
         var _loc23_:int = 0;
         var _loc24_:int = 0;
         var _loc25_:Rectangle = null;
         var _loc4_:BitmapData;
         (_loc4_ = param1.bmd).lock();
         var _loc5_:int = param2.length;
         var _loc12_:int;
         if((_loc12_ = param1.type) == BmdSkinCont.TYPE_CHARACTER)
         {
            _loc7_ = BmdInfo.getCharPaletteSheet(param1.charArr[0]);
            _loc9_ = param1.skinNum;
            _loc10_ = param3;
         }
         else
         {
            _loc7_ = BmdInfo.getMainPaletteSheet(param1.skinNum);
            if(_loc12_ == TYPE_MAP)
            {
               _loc13_ = PaletteSheet.ITEM_NUM_MAP_REG_START;
               _loc11_ = Themes.getMapTheme();
            }
            else if(_loc12_ == TYPE_THEME)
            {
               _loc5_ = PaletteSheet.ITEM_NUM_MAP_REG_START;
               _loc11_ = Themes.getMapTheme(true);
            }
            else if(_loc12_ == TYPE_ENEMY)
            {
               _loc8_ = PaletteSheet.THEME_TYPE_ENEMY;
               _loc11_ = Themes.getEnemyTheme();
            }
            else if(_loc12_ == TYPE_INTERFACE)
            {
               _loc8_ = PaletteSheet.THEME_TYPE_INTERFACE;
               _loc11_ = Themes.getInterfaceTheme();
            }
            _loc9_ = _loc11_.setNum;
            _loc10_ = _loc11_.theme;
            param3 = _loc11_.theme + 1;
         }
         var _loc14_:int = param3;
         while(_loc13_ < _loc5_)
         {
            if(!(!(_loc15_ = param2[_loc13_]) || !_loc15_[INFO_ARR_IND_RECOLOR]))
            {
               if(!((_loc17_ = (_loc16_ = _loc7_.getInOutPalette(_loc13_,_loc9_,_loc10_,_loc8_)).getRowFirstColor(1)) != COLOR_NEW_ROW && _loc17_ != COLOR_NEW_REGULAR_PALETTE))
               {
                  _loc18_ = _loc15_[INFO_ARR_IND_RECT_ARR];
                  _loc19_ = _loc15_[INFO_ARR_IND_OVRD_DEF_PAL];
                  _loc20_ = NaN;
                  if(_loc19_ != undefined)
                  {
                     _loc20_ = int(_loc19_);
                  }
                  _loc6_ = 0;
                  _loc21_ = _loc16_.readColor(0,0);
                  _loc22_ = 0;
                  param3 = _loc14_;
                  if(!isNaN(_loc20_))
                  {
                     param3 -= _loc14_;
                     param3 += _loc20_;
                  }
                  _loc22_ = 0;
                  _loc23_ = _loc16_.numCols;
                  _loc24_ = 0;
                  while(_loc24_ < _loc23_)
                  {
                     _loc21_ = _loc16_.readColor(0,_loc24_);
                     if(_loc24_ != 0)
                     {
                        _loc22_ = _loc16_.readColor(1,_loc24_);
                        for each(_loc25_ in _loc18_)
                        {
                           _loc4_.threshold(_loc4_,_loc25_,_loc25_.topLeft,"==",_loc21_,_loc22_);
                        }
                     }
                     _loc6_++;
                     _loc24_++;
                  }
               }
            }
            _loc13_++;
         }
         _loc4_.unlock();
      }
      
      private function returnARGB(param1:uint, param2:int = 255) : uint
      {
         var _loc3_:uint = 0;
         _loc3_ += param2 << 24;
         return uint(_loc3_ + param1);
      }
      
      public function recolorToStanGbPalette(param1:BitmapData, param2:Rectangle) : void
      {
         var _loc4_:uint = 0;
         var _loc3_:BitmapData = param1.clone();
         param2 = param1.rect;
         param1.applyFilter(param1,param2,ZERO_PNT,this.BW_FILTER);
         param1.paletteMap(param1,param2,ZERO_PNT,this.COL_PAL_MAP_ARRS[0],this.COL_PAL_MAP_ARRS[1],this.COL_PAL_MAP_ARRS[2]);
         for each(_loc4_ in STANDARD_COL_DCT)
         {
            param1.threshold(_loc3_,param2,ZERO_PNT,"==",_loc4_,_loc4_);
         }
         _loc3_.dispose();
      }
      
      public function recolorStanGbPalToCurGbPalSingle(param1:BitmapData, param2:int, param3:int, param4:int = -1) : void
      {
         var _loc8_:uint = 0;
         var _loc9_:uint = 0;
         var _loc11_:int = 0;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc18_:int = 0;
         var _loc5_:int = this.getPalNumFromType(param2);
         if(param4 >= 0)
         {
            _loc5_ = param4;
         }
         if(_loc5_ < 2)
         {
            return;
         }
         var _loc6_:Point = new Point(2,1);
         var _loc7_:Point = new Point(2,2);
         var _loc10_:Vector.<int> = new Vector.<int>();
         var _loc14_:Rectangle = param1.rect;
         var _loc15_:int = _loc5_ + GB_PALETTE_OFFSET;
         var _loc16_:int = param3;
         var _loc17_:int = 0;
         while(_loc17_ < NUM_GB_COLORS_PER_GROUP)
         {
            _loc9_ = GB_PALETTE.readColor(_loc15_,_loc16_ * NUM_GB_COLORS_PER_GROUP + _loc17_);
            for each(_loc18_ in _loc10_)
            {
               _loc8_ = GB_PALETTE.readColor(_loc15_,_loc18_ * NUM_GB_COLORS_PER_GROUP + _loc17_);
               param1.threshold(param1,_loc14_,_loc14_.topLeft,"==",_loc8_,_loc9_);
            }
            _loc8_ = GB_PALETTE.readColor(0,_loc16_ * NUM_GB_COLORS_PER_GROUP + _loc17_);
            param1.threshold(param1,_loc14_,_loc14_.topLeft,"==",_loc8_,_loc9_);
            _loc17_++;
         }
      }
      
      public function shouldBeRecoloredToGb(param1:BmdSkinCont, param2:int = -1) : Boolean
      {
         return false;
      }
      
      public function getGBPalette(param1:int) : int
      {
         switch(param1)
         {
            case TYPE_ENEMY:
               return GameSettings.getEnemyPaletteLimited();
            case TYPE_CHARACTER:
               return GameSettings.getCharacterPaletteLimited();
            case TYPE_INTERFACE:
               return GameSettings.getInterfacePaletteLimited();
            default:
               return GameSettings.getMapPaletteLimited();
         }
      }
      
      public function getPaletteGroup(param1:Object) : int
      {
         if(param1 is Character || param1 is SubMc || param1 is Enemy)
         {
            return GB_PAL_OBJ1;
         }
         if(param1 is Pickup || param1 is Projectile || param1 is SimpleAnimatedObject)
         {
            return GB_PAL_OBJ2;
         }
         if(param1 is Ground || param1 is Scenery)
         {
            return GB_PAL_BG;
         }
         return -1;
      }
      
      public function recolorStanGbPalToCurGbPal(param1:BitmapData, param2:int) : void
      {
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc14_:Array = null;
         var _loc17_:int = 0;
         var _loc18_:Vector.<Rectangle> = null;
         var _loc19_:Rectangle = null;
         var _loc20_:int = 0;
         var _loc21_:int = 0;
         var _loc3_:int = this.getPalNumFromType(param2);
         if(_loc3_ < 2)
         {
            return;
         }
         var _loc4_:Point = new Point(2,1);
         var _loc5_:Point = new Point(2,2);
         var _loc8_:Vector.<int> = new Vector.<int>();
         var _loc9_:int = -1;
         var _loc13_:Rectangle = param1.rect;
         if(param2 == TYPE_CHARACTER)
         {
            _loc14_ = CHAR_GB_INFO_VEC[statMngr.curCharNum];
         }
         else if(param2 == TYPE_MAP)
         {
            _loc14_ = this.MAP_GB_INFO_ARR;
         }
         else if(param2 == TYPE_THEME)
         {
            _loc14_ = this.THEME_GB_INFO_ARR;
         }
         else if(param2 == TYPE_ENEMY)
         {
            _loc14_ = this.ENEMY_GB_INFO_ARR;
         }
         else if(param2 == TYPE_INTERFACE)
         {
            _loc14_ = this.INTERFACE_GB_INFO_ARR;
         }
         else if(param2 == TYPE_BACKGROUND)
         {
            _loc14_ = [[GB_PAL_BG],[],[],[_loc13_]];
         }
         else
         {
            _loc14_ = [[GB_PAL_OBJ1],[_loc13_],[],[]];
         }
         var _loc15_:Array = _loc14_[IND_BG_INFO_VEC_PAL_ORDER];
         var _loc16_:int = _loc3_ + GB_PALETTE_OFFSET;
         _loc10_ = _loc15_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_)
         {
            _loc17_ = _loc15_[_loc9_];
            _loc18_ = Vector.<Rectangle>(_loc14_[_loc17_ + 1]);
            for each(_loc19_ in _loc18_)
            {
               _loc20_ = 0;
               while(_loc20_ < NUM_GB_COLORS_PER_GROUP)
               {
                  _loc7_ = GB_PALETTE.readColor(_loc16_,_loc17_ * NUM_GB_COLORS_PER_GROUP + _loc20_);
                  for each(_loc21_ in _loc8_)
                  {
                     _loc6_ = GB_PALETTE.readColor(_loc16_,_loc21_ * NUM_GB_COLORS_PER_GROUP + _loc20_);
                     param1.threshold(param1,_loc19_,_loc19_.topLeft,"==",_loc6_,_loc7_);
                  }
                  _loc6_ = GB_PALETTE.readColor(0,_loc17_ * NUM_GB_COLORS_PER_GROUP + _loc20_);
                  param1.threshold(param1,_loc19_,_loc19_.topLeft,"==",_loc6_,_loc7_);
                  _loc20_++;
               }
            }
            _loc8_.push(_loc17_);
            _loc9_++;
         }
      }
      
      public function getCurrentMapBmc() : BmdSkinCont
      {
         return this.CLEAN_BMD_VEC_MAP[this.cMapNum];
      }
      
      public function getCurrentMapConsoleType() : int
      {
         var _loc1_:BmdSkinCont = this.CLEAN_BMD_VEC_MAP[this.cMapNum];
         return _loc1_.consoleType;
      }
      
      public function getPalNumFromType(param1:int) : int
      {
         switch(param1)
         {
            case TYPE_MAP:
               return GameSettings.getMapPaletteLimited();
            case TYPE_BACKGROUND:
               return GameSettings.getMapPaletteLimited();
            case TYPE_THEME:
               return GameSettings.getMapPaletteLimited();
            case TYPE_CHARACTER:
               return GameSettings.getCharacterPaletteLimited();
            case TYPE_ENEMY:
               return GameSettings.getEnemyPaletteLimited();
            case TYPE_INTERFACE:
               return GameSettings.getInterfacePaletteLimited();
            case BmdSkinCont.TYPE_NEUTRAL:
               return GameSettings.getInterfacePaletteLimited();
            default:
               return -1;
         }
      }
      
      public function getFrameDelay(param1:Palette) : int
      {
         var _loc2_:uint = 0;
         var _loc4_:int = 0;
         var _loc3_:int = param1.numRows;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc2_ = param1.getRowFirstColor(_loc5_);
            if(_loc2_ == COLOR_ANIM_FRAME_DELAY)
            {
               while(_loc2_ != COLOR_END)
               {
                  _loc4_++;
                  _loc2_ = param1.readColor(_loc5_,_loc4_);
               }
               _loc4_--;
               break;
            }
            _loc5_++;
         }
         return _loc4_;
      }
   }
}
