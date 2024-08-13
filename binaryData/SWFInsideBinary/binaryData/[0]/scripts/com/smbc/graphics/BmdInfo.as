package com.smbc.graphics
{
   import com.explodingRabbit.cross.data.ConsoleType;
   import com.explodingRabbit.cross.games.Games;
   import com.explodingRabbit.display.CustomMovieClip;
   import com.explodingRabbit.utils.StringUtils;
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
   import com.smbc.characters.base.MegaManBase;
   import com.smbc.data.CharacterInfo;
   import com.smbc.data.SkinDescriptions;
   import com.smbc.data.SoundNames;
   import com.smbc.main.GlobVars;
   import com.smbc.managers.GraphicsManager;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class BmdInfo
   {
      
      public static const NUM_SKIN_SETS:int = 17;
      
      private static const ST_CHAR:int = BmdSkinCont.TYPE_CHARACTER;
      
      private static const ST_ENEMY:int = BmdSkinCont.TYPE_ENEMY;
      
      private static const ST_MAP:int = BmdSkinCont.TYPE_MAP;
      
      private static const ST_INTERFACE:int = BmdSkinCont.TYPE_INTERFACE;
      
      private static const ST_PALETTE:int = BmdSkinCont.TYPE_PALETTE;
      
      private static const ST_THEME:int = BmdSkinCont.TYPE_THEME;
      
      public static const CT_8B:int = ConsoleType.BIT_8;
      
      public static const CT_16B:int = ConsoleType.BIT_16;
      
      public static const CT_GB:int = ConsoleType.GB;
      
      public static const BMC_VEC:Vector.<BmdSkinCont> = new Vector.<BmdSkinCont>();
      
      public static const IND_BMP:int = 0;
      
      public static const IND_SHEET_TYPE:int = 1;
      
      public static const IND_CONSOLE_TYPE:int = 2;
      
      public static const IND_CHARACTERS:int = 3;
      
      public static const IND_GAMES:int = 4;
      
      public static var drawingBoardEnemyBmc:BmdSkinCont = BMC_VEC[BMC_VEC.length - 1].clone();
      
      public static var drawingBoardMapBmc:BmdSkinCont = BMC_VEC[BMC_VEC.length - 1].clone();
      
      public static var drawingBoardInterfaceBmc:BmdSkinCont = BMC_VEC[BMC_VEC.length - 1].clone();
      
      public static var drawingBoardThemeBmc:BmdSkinCont = new BmdSkinCont(new Bitmap(new BitmapData(222,228)),0,ST_THEME);
      
      public static const MASTER_CHAR_BMP_VEC:Vector.<Bitmap> = new Vector.<Bitmap>(Character.NUM_CHARACTERS,true);
      
      private static var MAIN_PALETTE_VEC:Vector.<PaletteSheet> = new Vector.<PaletteSheet>();
      
      private static const CHAR_PALETTE_VEC:Vector.<PaletteSheet> = new Vector.<PaletteSheet>(Character.NUM_CHARACTERS,true);
      
      private static const CHARACTER_PREVIEW_VEC:Vector.<Bitmap> = new Vector.<Bitmap>(Character.NUM_CHARACTERS,true);
      
      public static const THEME_VEC:Vector.<BmdSkinCont> = new Vector.<BmdSkinCont>();
      
      private static var mapSkinPreviews:Vector.<CustomMovieClip>;
      
      public static const MAP_SKIN_PREVIEW_RECTANGLE:Rectangle = new Rectangle(154,7,32,32);
      
      public static const SKIN_NUM_SMB_NES:int = 0;
      
      public static const SKIN_NUM_SMB_SNES:int = 1;
      
      public static const SKIN_NUM_SML2:int = 2;
      
      public static const SKIN_NUM_SMB3_NES:int = 3;
      
      public static const SKIN_NUM_SMB3_SNES:int = 4;
      
      public static const SKIN_NUM_DEMON_RETURNS:int = 5;
      
      public static const SKIN_NUM_BLASTER_MASTER:int = 6;
      
      public static const SKIN_NUM_INVISIBLE:int = 7;
      
      public static const SKIN_NUM_SMB_ATARI:int = 8;
      
      public static const SKIN_NUM_ZELDA_2:int = 9;
      
      public static const SKIN_NUM_SMW:int = 10;
      
      public static const SKIN_NUM_SMB_LL:int = 11;
      
      public static const SKIN_NUM_SMB2_NES:int = 12;
      
      public static const SKIN_NUM_SMB2_SNES:int = 13;
      
      public static const SKIN_NUM_SMB_SPECIAL:int = 14;
      
      public static const SKIN_NUM_CASTLEVANIA:int = 15;
      
      public static const SKIN_NUM_SMB_ANN:int = 16;
      
      public static const MAIN_SKIN_ORDER:Array = [SKIN_NUM_SMB_NES,SKIN_NUM_SMB_SNES,SKIN_NUM_SMB2_NES,SKIN_NUM_SMB2_SNES,SKIN_NUM_SMB3_NES,SKIN_NUM_SMB3_SNES,SKIN_NUM_SMW,SKIN_NUM_SML2,SKIN_NUM_SMB_LL,SKIN_NUM_SMB_ANN,SKIN_NUM_SMB_SPECIAL,SKIN_NUM_SMB_ATARI,SKIN_NUM_BLASTER_MASTER,SKIN_NUM_CASTLEVANIA,SKIN_NUM_ZELDA_2,SKIN_NUM_DEMON_RETURNS,SKIN_NUM_INVISIBLE];
      
      public static const HIDE_TOP_CASTLES:Array = [SKIN_NUM_SMB2_NES,SKIN_NUM_SMB2_SNES,SKIN_NUM_SMB3_NES,SKIN_NUM_SMW,SKIN_NUM_BLASTER_MASTER,SKIN_NUM_CASTLEVANIA,SKIN_NUM_ZELDA_2,SKIN_NUM_DEMON_RETURNS];
      
      public static var hideTopCastleDct:Dictionary = new Dictionary();
      
      private static const Enemy000:Class = BmdInfo_Enemy000;
      
      private static const Enemy001:Class = BmdInfo_Enemy001;
      
      private static const Enemy002:Class = BmdInfo_Enemy002;
      
      private static const Enemy003:Class = BmdInfo_Enemy003;
      
      private static const Enemy004:Class = BmdInfo_Enemy004;
      
      private static const Enemy005:Class = BmdInfo_Enemy005;
      
      private static const Enemy006:Class = BmdInfo_Enemy006;
      
      private static const Enemy007:Class = BmdInfo_Enemy007;
      
      private static const Enemy008:Class = BmdInfo_Enemy008;
      
      private static const Enemy009:Class = BmdInfo_Enemy009;
      
      private static const Enemy010:Class = BmdInfo_Enemy010;
      
      private static const Enemy011:Class = BmdInfo_Enemy011;
      
      private static const Enemy012:Class = BmdInfo_Enemy012;
      
      private static const Enemy013:Class = BmdInfo_Enemy013;
      
      private static const Enemy014:Class = BmdInfo_Enemy014;
      
      private static const Enemy015:Class = BmdInfo_Enemy015;
      
      private static const Enemy016:Class = BmdInfo_Enemy016;
      
      private static const Map000:Class = BmdInfo_Map000;
      
      private static const Map001:Class = BmdInfo_Map001;
      
      private static const Map002:Class = BmdInfo_Map002;
      
      private static const Map003:Class = BmdInfo_Map003;
      
      private static const Map004:Class = BmdInfo_Map004;
      
      private static const Map005:Class = BmdInfo_Map005;
      
      private static const Map006:Class = BmdInfo_Map006;
      
      private static const Map007:Class = BmdInfo_Map007;
      
      private static const Map008:Class = BmdInfo_Map008;
      
      private static const Map009:Class = BmdInfo_Map009;
      
      private static const Map010:Class = BmdInfo_Map010;
      
      private static const Map011:Class = BmdInfo_Map011;
      
      private static const Map012:Class = BmdInfo_Map012;
      
      private static const Map013:Class = BmdInfo_Map013;
      
      private static const Map014:Class = BmdInfo_Map014;
      
      private static const Map015:Class = BmdInfo_Map015;
      
      private static const Map016:Class = BmdInfo_Map016;
      
      private static const theme_000:Class = BmdInfo_theme_000;
      
      private static const theme_001:Class = BmdInfo_theme_001;
      
      private static const theme_002:Class = BmdInfo_theme_002;
      
      private static const theme_003:Class = BmdInfo_theme_003;
      
      private static const theme_004:Class = BmdInfo_theme_004;
      
      private static const theme_005:Class = BmdInfo_theme_005;
      
      private static const theme_006:Class = BmdInfo_theme_006;
      
      private static const theme_007:Class = BmdInfo_theme_007;
      
      private static const theme_008:Class = BmdInfo_theme_008;
      
      private static const theme_009:Class = BmdInfo_theme_009;
      
      private static const theme_010:Class = BmdInfo_theme_010;
      
      private static const theme_011:Class = BmdInfo_theme_011;
      
      private static const theme_012:Class = BmdInfo_theme_012;
      
      private static const theme_013:Class = BmdInfo_theme_013;
      
      private static const theme_014:Class = BmdInfo_theme_014;
      
      private static const theme_015:Class = BmdInfo_theme_015;
      
      private static const theme_016:Class = BmdInfo_theme_016;
      
      private static const Interface000:Class = BmdInfo_Interface000;
      
      private static const Interface001:Class = BmdInfo_Interface001;
      
      private static const Interface002:Class = BmdInfo_Interface002;
      
      private static const Interface003:Class = BmdInfo_Interface003;
      
      private static const Interface004:Class = BmdInfo_Interface004;
      
      private static const Interface005:Class = BmdInfo_Interface005;
      
      private static const Interface006:Class = BmdInfo_Interface006;
      
      private static const Interface007:Class = BmdInfo_Interface007;
      
      private static const Interface008:Class = BmdInfo_Interface008;
      
      private static const Interface009:Class = BmdInfo_Interface009;
      
      private static const Interface010:Class = BmdInfo_Interface010;
      
      private static const Interface011:Class = BmdInfo_Interface011;
      
      private static const Interface012:Class = BmdInfo_Interface012;
      
      private static const Interface013:Class = BmdInfo_Interface013;
      
      private static const Interface014:Class = BmdInfo_Interface014;
      
      private static const Interface015:Class = BmdInfo_Interface015;
      
      private static const Interface016:Class = BmdInfo_Interface016;
      
      private static const palette_000:Class = BmdInfo_palette_000;
      
      private static const palette_001:Class = BmdInfo_palette_001;
      
      private static const palette_002:Class = BmdInfo_palette_002;
      
      private static const palette_003:Class = BmdInfo_palette_003;
      
      private static const palette_004:Class = BmdInfo_palette_004;
      
      private static const palette_005:Class = BmdInfo_palette_005;
      
      private static const palette_006:Class = BmdInfo_palette_006;
      
      private static const palette_007:Class = BmdInfo_palette_007;
      
      private static const palette_008:Class = BmdInfo_palette_008;
      
      private static const palette_009:Class = BmdInfo_palette_009;
      
      private static const palette_010:Class = BmdInfo_palette_010;
      
      private static const palette_011:Class = BmdInfo_palette_011;
      
      private static const palette_012:Class = BmdInfo_palette_012;
      
      private static const palette_013:Class = BmdInfo_palette_013;
      
      private static const palette_014:Class = BmdInfo_palette_014;
      
      private static const palette_015:Class = BmdInfo_palette_015;
      
      private static const palette_016:Class = BmdInfo_palette_016;
      
      private static const bass_palette:Class = BmdInfo_bass_palette;
      
      private static const Bass000:Class = BmdInfo_Bass000;
      
      private static const Bass001:Class = BmdInfo_Bass001;
      
      private static const Bass002:Class = BmdInfo_Bass002;
      
      private static const Bass003:Class = BmdInfo_Bass003;
      
      private static const Bass004:Class = BmdInfo_Bass004;
      
      private static const Bass005:Class = BmdInfo_Bass005;
      
      private static const Bass006:Class = BmdInfo_Bass006;
      
      private static const Bass007:Class = BmdInfo_Bass007;
      
      private static const Bass008:Class = BmdInfo_Bass008;
      
      private static const Bass009:Class = BmdInfo_Bass009;
      
      private static const Bass010:Class = BmdInfo_Bass010;
      
      private static const Bass011:Class = BmdInfo_Bass011;
      
      private static const Bass012:Class = BmdInfo_Bass012;
      
      private static const Bass013:Class = BmdInfo_Bass013;
      
      private static const Bass014:Class = BmdInfo_Bass014;
      
      private static const Bass015:Class = BmdInfo_Bass015;
      
      private static const bill_palette:Class = BmdInfo_bill_palette;
      
      private static const Bill000:Class = BmdInfo_Bill000;
      
      private static const Bill001:Class = BmdInfo_Bill001;
      
      private static const Bill002:Class = BmdInfo_Bill002;
      
      private static const Bill003:Class = BmdInfo_Bill003;
      
      private static const Bill004:Class = BmdInfo_Bill004;
      
      private static const Bill005:Class = BmdInfo_Bill005;
      
      private static const Bill006:Class = BmdInfo_Bill006;
      
      private static const Bill007:Class = BmdInfo_Bill007;
      
      private static const Bill008:Class = BmdInfo_Bill008;
      
      private static const Bill009:Class = BmdInfo_Bill009;
      
      private static const Bill010:Class = BmdInfo_Bill010;
      
      private static const Bill011:Class = BmdInfo_Bill011;
      
      private static const Bill012:Class = BmdInfo_Bill012;
      
      private static const Bill013:Class = BmdInfo_Bill013;
      
      private static const Bill014:Class = BmdInfo_Bill014;
      
      private static const Bill015:Class = BmdInfo_Bill015;
      
      private static const Bill016:Class = BmdInfo_Bill016;
      
      private static const Bill017:Class = BmdInfo_Bill017;
      
      private static const link_palette:Class = BmdInfo_link_palette;
      
      private static const Link000:Class = BmdInfo_Link000;
      
      private static const Link001:Class = BmdInfo_Link001;
      
      private static const Link002:Class = BmdInfo_Link002;
      
      private static const Link003:Class = BmdInfo_Link003;
      
      private static const Link004:Class = BmdInfo_Link004;
      
      private static const Link005:Class = BmdInfo_Link005;
      
      private static const Link006:Class = BmdInfo_Link006;
      
      private static const Link007:Class = BmdInfo_Link007;
      
      private static const Link008:Class = BmdInfo_Link008;
      
      private static const Link009:Class = BmdInfo_Link009;
      
      private static const Link010:Class = BmdInfo_Link010;
      
      private static const Link011:Class = BmdInfo_Link011;
      
      private static const Link012:Class = BmdInfo_Link012;
      
      private static const Link013:Class = BmdInfo_Link013;
      
      private static const Link014:Class = BmdInfo_Link014;
      
      private static const Link015:Class = BmdInfo_Link015;
      
      private static const Link016:Class = BmdInfo_Link016;
      
      private static const Link017:Class = BmdInfo_Link017;
      
      private static const Link018:Class = BmdInfo_Link018;
      
      private static const Link019:Class = BmdInfo_Link019;
      
      private static const Link020:Class = BmdInfo_Link020;
      
      private static const Link021:Class = BmdInfo_Link021;
      
      private static const Link022:Class = BmdInfo_Link022;
      
      private static const Link023:Class = BmdInfo_Link023;
      
      private static const Link024:Class = BmdInfo_Link024;
      
      private static const luigi_palette:Class = BmdInfo_luigi_palette;
      
      private static const Luigi000:Class = BmdInfo_Luigi000;
      
      private static const Luigi001:Class = BmdInfo_Luigi001;
      
      private static const Luigi002:Class = BmdInfo_Luigi002;
      
      private static const Luigi003:Class = BmdInfo_Luigi003;
      
      private static const Luigi004:Class = BmdInfo_Luigi004;
      
      private static const Luigi005:Class = BmdInfo_Luigi005;
      
      private static const Luigi006:Class = BmdInfo_Luigi006;
      
      private static const Luigi007:Class = BmdInfo_Luigi007;
      
      private static const Luigi008:Class = BmdInfo_Luigi008;
      
      private static const Luigi009:Class = BmdInfo_Luigi009;
      
      private static const Luigi010:Class = BmdInfo_Luigi010;
      
      private static const Luigi011:Class = BmdInfo_Luigi011;
      
      private static const Luigi012:Class = BmdInfo_Luigi012;
      
      private static const Luigi013:Class = BmdInfo_Luigi013;
      
      private static const Luigi014:Class = BmdInfo_Luigi014;
      
      private static const mario_palette:Class = BmdInfo_mario_palette;
      
      private static const Mario000:Class = BmdInfo_Mario000;
      
      private static const Mario001:Class = BmdInfo_Mario001;
      
      private static const Mario002:Class = BmdInfo_Mario002;
      
      private static const Mario003:Class = BmdInfo_Mario003;
      
      private static const Mario004:Class = BmdInfo_Mario004;
      
      private static const Mario005:Class = BmdInfo_Mario005;
      
      private static const Mario006:Class = BmdInfo_Mario006;
      
      private static const Mario007:Class = BmdInfo_Mario007;
      
      private static const Mario008:Class = BmdInfo_Mario008;
      
      private static const Mario009:Class = BmdInfo_Mario009;
      
      private static const Mario010:Class = BmdInfo_Mario010;
      
      private static const Mario011:Class = BmdInfo_Mario011;
      
      private static const Mario012:Class = BmdInfo_Mario012;
      
      private static const Mario013:Class = BmdInfo_Mario013;
      
      private static const Mario014:Class = BmdInfo_Mario014;
      
      private static const Mario015:Class = BmdInfo_Mario015;
      
      private static const megaMan_palette:Class = BmdInfo_megaMan_palette;
      
      private static const MegaMan000:Class = BmdInfo_MegaMan000;
      
      private static const MegaMan001:Class = BmdInfo_MegaMan001;
      
      private static const MegaMan002:Class = BmdInfo_MegaMan002;
      
      private static const MegaMan003:Class = BmdInfo_MegaMan003;
      
      private static const MegaMan004:Class = BmdInfo_MegaMan004;
      
      private static const MegaMan005:Class = BmdInfo_MegaMan005;
      
      private static const MegaMan006:Class = BmdInfo_MegaMan006;
      
      private static const MegaMan007:Class = BmdInfo_MegaMan007;
      
      private static const MegaMan008:Class = BmdInfo_MegaMan008;
      
      private static const MegaMan009:Class = BmdInfo_MegaMan009;
      
      private static const MegaMan010:Class = BmdInfo_MegaMan010;
      
      private static const MegaMan011:Class = BmdInfo_MegaMan011;
      
      private static const MegaMan012:Class = BmdInfo_MegaMan012;
      
      private static const MegaMan013:Class = BmdInfo_MegaMan013;
      
      private static const MegaMan014:Class = BmdInfo_MegaMan014;
      
      private static const MegaMan015:Class = BmdInfo_MegaMan015;
      
      private static const MegaMan016:Class = BmdInfo_MegaMan016;
      
      private static const MegaMan017:Class = BmdInfo_MegaMan017;
      
      private static const MegaMan018:Class = BmdInfo_MegaMan018;
      
      private static const MegaMan019:Class = BmdInfo_MegaMan019;
      
      private static const MegaMan020:Class = BmdInfo_MegaMan020;
      
      private static const MegaMan021:Class = BmdInfo_MegaMan021;
      
      private static const MegaMan022:Class = BmdInfo_MegaMan022;
      
      private static const MegaMan023:Class = BmdInfo_MegaMan023;
      
      private static const MegaMan024:Class = BmdInfo_MegaMan024;
      
      private static const MegaMan025:Class = BmdInfo_MegaMan025;
      
      private static const MegaMan026:Class = BmdInfo_MegaMan026;
      
      private static const ryu_palette:Class = BmdInfo_ryu_palette;
      
      private static const Ryu000:Class = BmdInfo_Ryu000;
      
      private static const Ryu001:Class = BmdInfo_Ryu001;
      
      private static const Ryu002:Class = BmdInfo_Ryu002;
      
      private static const Ryu003:Class = BmdInfo_Ryu003;
      
      private static const Ryu004:Class = BmdInfo_Ryu004;
      
      private static const Ryu005:Class = BmdInfo_Ryu005;
      
      private static const Ryu006:Class = BmdInfo_Ryu006;
      
      private static const Ryu007:Class = BmdInfo_Ryu007;
      
      private static const Ryu008:Class = BmdInfo_Ryu008;
      
      private static const Ryu009:Class = BmdInfo_Ryu009;
      
      private static const Ryu010:Class = BmdInfo_Ryu010;
      
      private static const Ryu011:Class = BmdInfo_Ryu011;
      
      private static const samus_palette:Class = BmdInfo_samus_palette;
      
      private static const Samus000:Class = BmdInfo_Samus000;
      
      private static const Samus001:Class = BmdInfo_Samus001;
      
      private static const Samus002:Class = BmdInfo_Samus002;
      
      private static const Samus003:Class = BmdInfo_Samus003;
      
      private static const Samus004:Class = BmdInfo_Samus004;
      
      private static const Samus005:Class = BmdInfo_Samus005;
      
      private static const Samus006:Class = BmdInfo_Samus006;
      
      private static const Samus007:Class = BmdInfo_Samus007;
      
      private static const Samus008:Class = BmdInfo_Samus008;
      
      private static const Samus009:Class = BmdInfo_Samus009;
      
      private static const Samus010:Class = BmdInfo_Samus010;
      
      private static const Samus011:Class = BmdInfo_Samus011;
      
      private static const Samus012:Class = BmdInfo_Samus012;
      
      private static const Samus013:Class = BmdInfo_Samus013;
      
      private static const simon_palette:Class = BmdInfo_simon_palette;
      
      private static const Simon000:Class = BmdInfo_Simon000;
      
      private static const Simon001:Class = BmdInfo_Simon001;
      
      private static const Simon002:Class = BmdInfo_Simon002;
      
      private static const Simon003:Class = BmdInfo_Simon003;
      
      private static const Simon004:Class = BmdInfo_Simon004;
      
      private static const Simon005:Class = BmdInfo_Simon005;
      
      private static const Simon006:Class = BmdInfo_Simon006;
      
      private static const Simon007:Class = BmdInfo_Simon007;
      
      private static const Simon008:Class = BmdInfo_Simon008;
      
      private static const Simon009:Class = BmdInfo_Simon009;
      
      private static const Simon010:Class = BmdInfo_Simon010;
      
      private static const Simon011:Class = BmdInfo_Simon011;
      
      private static const Simon012:Class = BmdInfo_Simon012;
      
      private static const Simon013:Class = BmdInfo_Simon013;
      
      private static const Simon014:Class = BmdInfo_Simon014;
      
      private static const Simon015:Class = BmdInfo_Simon015;
      
      private static const Simon016:Class = BmdInfo_Simon016;
      
      private static const Simon017:Class = BmdInfo_Simon017;
      
      private static const Simon018:Class = BmdInfo_Simon018;
      
      private static const sophia_palette:Class = BmdInfo_sophia_palette;
      
      private static const Sophia000:Class = BmdInfo_Sophia000;
      
      private static const Sophia001:Class = BmdInfo_Sophia001;
      
      private static const Sophia002:Class = BmdInfo_Sophia002;
      
      private static const Sophia003:Class = BmdInfo_Sophia003;
      
      private static const Sophia004:Class = BmdInfo_Sophia004;
      
      private static const Sophia005:Class = BmdInfo_Sophia005;
      
      private static const Sophia006:Class = BmdInfo_Sophia006;
      
      private static const Sophia007:Class = BmdInfo_Sophia007;
      
      private static const Sophia008:Class = BmdInfo_Sophia008;
      
      private static const Sophia009:Class = BmdInfo_Sophia009;
      
      private static const Sophia010:Class = BmdInfo_Sophia010;
      
      {
         BMC_VEC.push(new BmdSkinCont(new Enemy000(),0,ST_ENEMY,null,null,CT_8B,[Mario.CHAR_NUM],[Games.superMarioBros]));
         BMC_VEC.push(new BmdSkinCont(new Enemy001(),1,ST_ENEMY,null,null,CT_16B,[Mario.CHAR_NUM],[Games.superMarioAllStars]));
         BMC_VEC.push(new BmdSkinCont(new Enemy002(),2,ST_ENEMY,null,null,CT_GB,[Mario.CHAR_NUM],[Games.superMarioLand2]));
         BMC_VEC.push(new BmdSkinCont(new Enemy003(),3,ST_ENEMY,null,null,CT_8B,[Mario.CHAR_NUM],[]));
         BMC_VEC.push(new BmdSkinCont(new Enemy004(),4,ST_ENEMY,null,null,CT_16B,[Mario.CHAR_NUM],[]));
         BMC_VEC.push(new BmdSkinCont(new Enemy005(),5,ST_ENEMY,null,null,CT_8B,[Mario.CHAR_NUM],[]));
         BMC_VEC.push(new BmdSkinCont(new Enemy006(),6,ST_ENEMY,null,null,CT_8B,[Mario.CHAR_NUM],[]));
         BMC_VEC.push(new BmdSkinCont(new Enemy007(),7,ST_ENEMY,null,null,CT_8B,[Mario.CHAR_NUM],[]));
         BMC_VEC.push(new BmdSkinCont(new Enemy008(),8,ST_ENEMY,null,null,CT_8B,[Mario.CHAR_NUM],[]));
         BMC_VEC.push(new BmdSkinCont(new Enemy009(),9,ST_ENEMY,null,null,CT_8B,[Link.CHAR_NUM],[]));
         BMC_VEC.push(new BmdSkinCont(new Enemy010(),10,ST_ENEMY,null,null,CT_16B,[Mario.CHAR_NUM],[]));
         BMC_VEC.push(new BmdSkinCont(new Enemy011(),11,ST_ENEMY,null,null,CT_8B,[Mario.CHAR_NUM],[]));
         BMC_VEC.push(new BmdSkinCont(new Enemy012(),12,ST_ENEMY,null,null,CT_8B,[Mario.CHAR_NUM],[]));
         BMC_VEC.push(new BmdSkinCont(new Enemy013(),13,ST_ENEMY,null,null,CT_16B,[Mario.CHAR_NUM],[]));
         BMC_VEC.push(new BmdSkinCont(new Enemy014(),14,ST_ENEMY,null,null,CT_8B,[Mario.CHAR_NUM],[]));
         BMC_VEC.push(new BmdSkinCont(new Enemy015(),15,ST_ENEMY,null,null,CT_8B,[Simon.CHAR_NUM],[]));
         BMC_VEC.push(new BmdSkinCont(new Enemy016(),16,ST_ENEMY,null,null,CT_8B,[Mario.CHAR_NUM],[]));
         BMC_VEC.push(new BmdSkinCont(new Map000(),0,ST_MAP,null,null,CT_8B,[Mario.CHAR_NUM],[Games.superMarioBros,Games.superMarioBrosSnes,Games.superMarioBrosDeluxe,Games.superMarioBros]));
         BMC_VEC.push(new BmdSkinCont(new Map001(),1,ST_MAP,null,null,CT_16B,[Mario.CHAR_NUM],[Games.superMarioBros,Games.superMarioBrosSnes,Games.superMarioBrosDeluxe,Games.superMarioBrosSnes]));
         BMC_VEC.push(new BmdSkinCont(new Map002(),2,ST_MAP,null,null,CT_GB,[Mario.CHAR_NUM],[Games.superMarioBros,Games.superMarioBrosSnes,Games.superMarioLand2,Games.superMarioLand2]));
         BMC_VEC.push(new BmdSkinCont(new Map003(),3,ST_MAP,null,null,CT_8B,[Luigi.CHAR_NUM],[Games.superMarioBros3,Games.superMarioBros3Snes,Games.superMarioLand2,Games.superMarioBros3]));
         BMC_VEC.push(new BmdSkinCont(new Map004(),4,ST_MAP,null,null,CT_16B,[Luigi.CHAR_NUM],[Games.superMarioBros3,Games.superMarioBros3Snes,Games.superMarioLand2,Games.superMarioBros3Snes]));
         BMC_VEC.push(new BmdSkinCont(new Map005(),5,ST_MAP,null,null,CT_8B,[Mario.CHAR_NUM],[Games.demonReturns,Games.demonReturns,Games.demonReturns,Games.demonReturns]));
         BMC_VEC.push(new BmdSkinCont(new Map006(),6,ST_MAP,null,null,CT_8B,[Sophia.CHAR_NUM],[Games.blasterMaster,Games.blasterMasterSnes,Games.blasterMasterEnemyBelow,Games.blasterMaster]));
         BMC_VEC.push(new BmdSkinCont(new Map007(),7,ST_MAP,null,null,CT_8B,[Mario.CHAR_NUM],[Games.superMarioBros,Games.superMarioBrosSnes,Games.superMarioBrosDeluxe,Games.gameInvisible]));
         BMC_VEC.push(new BmdSkinCont(new Map008(),8,ST_MAP,null,null,CT_8B,[Mario.CHAR_NUM],[Games.superMarioBrosAtari,Games.superMarioBrosAtari,Games.superMarioBrosAtari,Games.superMarioBrosAtari]));
         BMC_VEC.push(new BmdSkinCont(new Map009(),9,ST_MAP,null,null,CT_8B,[Link.CHAR_NUM],[Games.zeldaAdventureOfLink,Games.zeldaLinkToThePast,Games.zeldaLinksAwakening,Games.zeldaAdventureOfLink]));
         BMC_VEC.push(new BmdSkinCont(new Map010(),10,ST_MAP,null,null,CT_16B,[Mario.CHAR_NUM],[Games.superMarioBros3,Games.superMarioWorld,Games.superMarioLand2,Games.superMarioWorld]));
         BMC_VEC.push(new BmdSkinCont(new Map011(),11,ST_MAP,null,null,CT_8B,[Mario.CHAR_NUM],[Games.superMarioBros,Games.superMarioBrosSnes,Games.superMarioBrosDeluxe,Games.superMarioBrosLostLevels]));
         BMC_VEC.push(new BmdSkinCont(new Map012(),12,ST_MAP,null,null,CT_8B,[Mario.CHAR_NUM],[Games.superMarioBros2,Games.superMarioBros2Snes,Games.superMarioLand,Games.superMarioBros2]));
         BMC_VEC.push(new BmdSkinCont(new Map013(),13,ST_MAP,null,null,CT_16B,[Mario.CHAR_NUM],[Games.superMarioBros2,Games.superMarioBros2Snes,Games.superMarioLand,Games.superMarioBros2Snes]));
         BMC_VEC.push(new BmdSkinCont(new Map014(),14,ST_MAP,null,null,CT_8B,[Mario.CHAR_NUM],[Games.superMarioBrosSpecial,Games.superMarioBrosSnes,Games.superMarioLand,Games.superMarioBrosSpecial]));
         BMC_VEC.push(new BmdSkinCont(new Map015(),15,ST_MAP,null,null,CT_8B,[Simon.CHAR_NUM],[Games.castlevania,Games.superCastlevania4,Games.castlevaniaAdventure,Games.castlevania]));
         BMC_VEC.push(new BmdSkinCont(new Map016(),16,ST_MAP,null,null,CT_8B,[Mario.CHAR_NUM],[Games.superMarioBros,Games.superMarioBrosSnes,Games.superMarioBrosDeluxe,Games.superMarioBrosAllNightNippon]));
         addTheme(theme_000,CT_8B,[Mario.CHAR_NUM],[Games.superMarioBros]);
         addTheme(theme_001,CT_16B,[Mario.CHAR_NUM],[Games.superMarioAllStars]);
         addTheme(theme_002,CT_GB,[Mario.CHAR_NUM],[Games.superMarioLand2]);
         addTheme(theme_003,CT_8B,[Luigi.CHAR_NUM],[Games.superMarioBros3]);
         addTheme(theme_004,CT_16B,[Luigi.CHAR_NUM],[Games.superMarioBros3Snes]);
         addTheme(theme_005,CT_8B,[Mario.CHAR_NUM],[Games.demonReturns]);
         addTheme(theme_006,CT_8B,[Sophia.CHAR_NUM],[Games.blasterMaster]);
         addTheme(theme_007,CT_8B,[Mario.CHAR_NUM],[Games.superMarioBros]);
         addTheme(theme_008,CT_8B,[Mario.CHAR_NUM],[Games.superMarioBrosAtari]);
         addTheme(theme_009,CT_8B,[Link.CHAR_NUM],[Games.zeldaAdventureOfLink]);
         addTheme(theme_010,CT_16B,[Mario.CHAR_NUM],[Games.superMarioWorld]);
         addTheme(theme_011,CT_8B,[Mario.CHAR_NUM],[Games.superMarioBrosLostLevels]);
         addTheme(theme_012,CT_8B,[Mario.CHAR_NUM],[Games.superMarioBros2]);
         addTheme(theme_013,CT_16B,[Mario.CHAR_NUM],[Games.superMarioBros2Snes]);
         addTheme(theme_014,CT_8B,[Mario.CHAR_NUM],[Games.superMarioBrosSpecial]);
         addTheme(theme_015,CT_8B,[Simon.CHAR_NUM],[Games.castlevania]);
         addTheme(theme_016,CT_8B,[Mario.CHAR_NUM],[Games.superMarioBrosAllNightNippon]);
         BMC_VEC.push(new BmdSkinCont(new Interface000(),0,ST_INTERFACE,null,null,CT_8B,[Mario.CHAR_NUM],[Games.superMarioBros]));
         BMC_VEC.push(new BmdSkinCont(new Interface001(),1,ST_INTERFACE,null,null,CT_16B,[Mario.CHAR_NUM],[Games.superMarioAllStars]));
         BMC_VEC.push(new BmdSkinCont(new Interface002(),2,ST_INTERFACE,null,null,CT_GB,[Mario.CHAR_NUM],[Games.superMarioLand2]));
         BMC_VEC.push(new BmdSkinCont(new Interface003(),3,ST_INTERFACE,null,null,CT_8B,[Mario.CHAR_NUM],[Games.superMarioBros3]));
         BMC_VEC.push(new BmdSkinCont(new Interface004(),4,ST_INTERFACE,null,null,CT_16B,[Mario.CHAR_NUM],[Games.superMarioBros3Snes]));
         BMC_VEC.push(new BmdSkinCont(new Interface005(),5,ST_INTERFACE,null,null,CT_8B,[Mario.CHAR_NUM],[Games.demonReturns]));
         BMC_VEC.push(new BmdSkinCont(new Interface006(),6,ST_INTERFACE,null,null,CT_8B,[Mario.CHAR_NUM],[Games.blasterMaster]));
         BMC_VEC.push(new BmdSkinCont(new Interface007(),7,ST_INTERFACE,null,null,CT_8B,[Mario.CHAR_NUM],[Games.superMarioBros]));
         BMC_VEC.push(new BmdSkinCont(new Interface008(),8,ST_INTERFACE,null,null,CT_8B,[Mario.CHAR_NUM],[Games.superMarioBros]));
         BMC_VEC.push(new BmdSkinCont(new Interface009(),9,ST_INTERFACE,null,null,CT_8B,[Link.CHAR_NUM],[Games.zeldaAdventureOfLink]));
         BMC_VEC.push(new BmdSkinCont(new Interface010(),10,ST_INTERFACE,null,null,CT_16B,[Mario.CHAR_NUM],[Games.superMarioWorld]));
         BMC_VEC.push(new BmdSkinCont(new Interface011(),11,ST_INTERFACE,null,null,CT_8B,[Mario.CHAR_NUM],[Games.superMarioBrosLostLevels]));
         BMC_VEC.push(new BmdSkinCont(new Interface012(),12,ST_INTERFACE,null,null,CT_8B,[Mario.CHAR_NUM],[Games.superMarioBros2]));
         BMC_VEC.push(new BmdSkinCont(new Interface013(),13,ST_INTERFACE,null,null,CT_16B,[Mario.CHAR_NUM],[Games.superMarioBros2Snes]));
         BMC_VEC.push(new BmdSkinCont(new Interface014(),14,ST_INTERFACE,null,null,CT_8B,[Mario.CHAR_NUM],[Games.superMarioBrosSpecial]));
         BMC_VEC.push(new BmdSkinCont(new Interface015(),15,ST_INTERFACE,null,null,CT_8B,[Simon.CHAR_NUM],[Games.castlevania]));
         BMC_VEC.push(new BmdSkinCont(new Interface016(),16,ST_INTERFACE,null,null,CT_8B,[Mario.CHAR_NUM],[Games.superMarioBrosAllNightNippon]));
         addMainPalette(palette_000);
         addMainPalette(palette_001);
         addMainPalette(palette_002);
         addMainPalette(palette_003);
         addMainPalette(palette_004);
         addMainPalette(palette_005);
         addMainPalette(palette_006);
         addMainPalette(palette_007);
         addMainPalette(palette_008);
         addMainPalette(palette_009);
         addMainPalette(palette_010);
         addMainPalette(palette_011);
         addMainPalette(palette_012);
         addMainPalette(palette_013);
         addMainPalette(palette_014);
         addMainPalette(palette_015);
         addMainPalette(palette_016);
         addCharPalette(bass_palette,Bass.CHAR_NUM);
         BMC_VEC.push(new BmdSkinCont(new Bass000(),0,ST_CHAR,null,null,CT_8B,[Bass.CHAR_NUM],[Games.megaMan10,Games.megaManAndBass,Games.megaMan5Gb,Games.megaMan10],[null,null,"Dr. Wily"],null));
         BMC_VEC.push(new BmdSkinCont(new Bass001(),1,ST_CHAR,null,null,CT_16B,[Bass.CHAR_NUM],[Games.megaMan10,Games.megaManAndBass,Games.megaMan5Gb,Games.megaMan10],[null,null,"Dr. Wily"],null));
         BMC_VEC.push(new BmdSkinCont(new Bass002(),2,ST_CHAR,null,null,CT_GB,[Bass.CHAR_NUM],[Games.megaMan10,Games.megaManAndBass,Games.megaMan5Gb,Games.rockManBattleAndFighters],[null,null,"Dr. Wily"],null));
         BMC_VEC.push(new BmdSkinCont(new Bass003(),3,ST_CHAR,null,null,CT_8B,[Bass.CHAR_NUM],[Games.megaMan2,Games.megaMan7,Games.megaManGb,Games.megaMan],["Dr. Wily","Dr. Wily","Bass"],null));
         BMC_VEC.push(new BmdSkinCont(new Bass004(),4,ST_CHAR,null,null,CT_16B,[Bass.CHAR_NUM],[Games.megaMan2,Games.megaMan7,Games.megaManGb,Games.megaMan],["Dr. Wily","Dr. Wily","Bass"],null));
         BMC_VEC.push(new BmdSkinCont(new Bass005(),5,ST_CHAR,null,null,CT_8B,[Bass.CHAR_NUM],[Games.megaMan6,Games.megaMan7,Games.megaMan4Gb,Games.megaMan6],["Mr. X","Mr. X","Bass"],null));
         BMC_VEC.push(new BmdSkinCont(new Bass006(),6,ST_CHAR,null,null,CT_16B,[Bass.CHAR_NUM],[Games.megaMan6,Games.megaMan7,Games.megaMan4Gb,Games.megaMan6],["Mr. X","Mr. X","Bass"],null));
         BMC_VEC.push(new BmdSkinCont(new Bass007(),7,ST_CHAR,null,null,CT_8B,[Bass.CHAR_NUM],[Games.megaMan2,Games.megaMan7,Games.megaManGb,Games.megaMan2],["Quick Man","Quick Man","Dr. Wily"],null,null,SkinDescriptions.BASS_SKIN_QUICK_MAN));
         BMC_VEC.push(new BmdSkinCont(new Bass008(),8,ST_CHAR,null,null,CT_16B,[Bass.CHAR_NUM],[Games.megaMan2,Games.megaMan7,Games.megaManGb,Games.megaManWilyWars],["Quick Man","Quick Man","Dr. Wily"],null,null,SkinDescriptions.BASS_SKIN_QUICK_MAN));
         BMC_VEC.push(new BmdSkinCont(new Bass009(),9,ST_CHAR,null,null,CT_8B,[Bass.CHAR_NUM],[Games.superMarioBrosAtari,Games.superMarioBrosAtari,Games.superMarioBrosAtari,Games.megaMan10],[null,null,"Dr. Wily"],null));
         BMC_VEC.push(new BmdSkinCont(new Bass010(),10,ST_CHAR,null,null,CT_8B,[Bass.CHAR_NUM],[Games.megaMan4,Games.megaMan7,Games.megaMan3Gb,Games.megaMan4],["Dr. Cossack","Dr. Cossack","Kalinka"],null));
         BMC_VEC.push(new BmdSkinCont(new Bass011(),11,ST_CHAR,null,null,CT_16B,[Bass.CHAR_NUM],[Games.megaMan4,Games.megaMan7,Games.megaMan3Gb,Games.megaMan4],["Dr. Cossack","Dr. Cossack","Kalinka"],null));
         BMC_VEC.push(new BmdSkinCont(new Bass012(),12,ST_CHAR,null,null,CT_8B,[Bass.CHAR_NUM],[Games.megaMan10,Games.megaManAndBass,Games.megaMan5Gb,Games.megaMan10],[null,null,"Dr. Wily"],null));
         BMC_VEC.push(new BmdSkinCont(new Bass013(),13,ST_CHAR,null,null,CT_8B,[Bass.CHAR_NUM],[Games.megaMan3,Games.megaMan7,Games.megaMan3Gb,Games.megaMan3],["Gemini Man","Gemini Man","Dr. Wily"],null));
         BMC_VEC.push(new BmdSkinCont(new Bass014(),14,ST_CHAR,null,null,CT_16B,[Bass.CHAR_NUM],[Games.megaMan3,Games.megaMan7,Games.megaMan3Gb,Games.megaManWilyWars],["Gemini Man","Gemini Man","Dr. Wily"],null));
         BMC_VEC.push(new BmdSkinCont(new Bass015(),15,ST_CHAR,null,null,CT_8B,[Bass.CHAR_NUM],[Games.megaMan4,Games.megaMan7,Games.megaMan3Gb,Games.megaMan4],["Skull Man","Skull Man","Dr. Cossack"],null));
         addCharPalette(bill_palette,Bill.CHAR_NUM);
         BMC_VEC.push(new BmdSkinCont(new Bill000(),0,ST_CHAR,null,null,CT_8B,[Bill.CHAR_NUM],[Games.contra,Games.contra3Snes,Games.operationC,Games.contra],[null,null,"your buddy"],null,null,SkinDescriptions.BILL_SKIN_ALL));
         BMC_VEC.push(new BmdSkinCont(new Bill001(),1,ST_CHAR,null,null,CT_16B,[Bill.CHAR_NUM],[Games.contra,Games.contra3Snes,Games.operationC,Games.contra],[null,null,"your buddy"],null,null,SkinDescriptions.BILL_SKIN_ALL));
         BMC_VEC.push(new BmdSkinCont(new Bill002(),2,ST_CHAR,null,null,CT_GB,[Bill.CHAR_NUM],[Games.superC,Games.contra3Snes,Games.operationC,Games.operationC],[null,null,"your buddy"],null,null,SkinDescriptions.BILL_SKIN_ALL));
         BMC_VEC.push(new BmdSkinCont(new Bill003(),3,ST_CHAR,null,null,CT_8B,[Bill.CHAR_NUM],[Games.contra,Games.contra3Snes,Games.operationC,Games.contra],["Lance Bean","Lance","your buddy"],null,null,SkinDescriptions.BILL_SKIN_ALL));
         BMC_VEC.push(new BmdSkinCont(new Bill004(),4,ST_CHAR,null,null,CT_16B,[Bill.CHAR_NUM],[Games.contra,Games.contra3Snes,Games.operationC,Games.contra],["Lance Bean","Lance","your buddy"],null,null,SkinDescriptions.BILL_SKIN_ALL));
         BMC_VEC.push(new BmdSkinCont(new Bill005(),5,ST_CHAR,null,null,CT_GB,[Bill.CHAR_NUM],[Games.superC,Games.contra3Snes,Games.operationC,Games.operationC],["Lance Bean","Lance","your buddy"],null,null,SkinDescriptions.BILL_SKIN_ALL));
         BMC_VEC.push(new BmdSkinCont(new Bill006(),6,ST_CHAR,null,null,CT_8B,[Bill.CHAR_NUM],[Games.superC,Games.contra3Snes,Games.operationC,Games.probotector],["RD-008","RD-008","your buddy"],null,null,SkinDescriptions.BILL_SKIN_ALL));
         BMC_VEC.push(new BmdSkinCont(new Bill007(),7,ST_CHAR,null,null,CT_8B,[Bill.CHAR_NUM],[Games.superC,Games.contra3Snes,Games.operationC,Games.probotector],["RC-011","RC-011","your buddy"],null,null,SkinDescriptions.BILL_SKIN_ALL));
         BMC_VEC.push(new BmdSkinCont(new Bill008(),8,ST_CHAR,null,null,CT_16B,[Bill.CHAR_NUM],[Games.superC,Games.contra3Snes,Games.operationC,Games.contra],[null,null,"your buddy"],null,null,SkinDescriptions.BILL_SKIN_ALL));
         BMC_VEC.push(new BmdSkinCont(new Bill009(),9,ST_CHAR,null,null,CT_16B,[Bill.CHAR_NUM],[Games.superC,Games.contra3Snes,Games.operationC,Games.contra],["Lance Bean","Lance","your buddy"],null,null,SkinDescriptions.BILL_SKIN_ALL));
         BMC_VEC.push(new BmdSkinCont(new Bill010(),10,ST_CHAR,null,null,CT_8B,[Bill.CHAR_NUM],[Games.superMarioBrosAtari,Games.superMarioBrosAtari,Games.superMarioBrosAtari,Games.contra],[null,null,"your buddy"],null,null,SkinDescriptions.BILL_SKIN_ALL));
         BMC_VEC.push(new BmdSkinCont(new Bill011(),11,ST_CHAR,null,null,CT_GB,[Bill.CHAR_NUM],[Games.contra,Games.contra3Snes,Games.operationC,Games.contra],[null,null,"your buddy"],null,null,SkinDescriptions.BILL_SKIN_ALL));
         BMC_VEC.push(new BmdSkinCont(new Bill012(),12,ST_CHAR,null,null,CT_GB,[Bill.CHAR_NUM],[Games.superC,Games.contra3Snes,Games.operationC,Games.probotectorGb],["RD-008","RD-008","your buddy"],null,null,SkinDescriptions.BILL_SKIN_ALL));
         BMC_VEC.push(new BmdSkinCont(new Bill013(),13,ST_CHAR,null,null,CT_GB,[Bill.CHAR_NUM],[Games.superC,Games.contra3Snes,Games.operationC,Games.probotectorGb],["RC-011","RC-011","your buddy"],null,null,SkinDescriptions.BILL_SKIN_ALL));
         BMC_VEC.push(new BmdSkinCont(new Bill014(),14,ST_CHAR,null,null,CT_8B,[Bill.CHAR_NUM],[Games.superMarioBrosAtari,Games.superMarioBrosAtari,Games.superMarioBrosAtari,Games.contra],["Lance Bean","Lance","your buddy"],null,null,SkinDescriptions.BILL_SKIN_ALL));
         BMC_VEC.push(new BmdSkinCont(new Bill015(),15,ST_CHAR,null,null,CT_8B,[Bill.CHAR_NUM],[Games.superC,Games.contra3Snes,Games.operationC,Games.superC],[null,null,"your buddy"],null,null,SkinDescriptions.BILL_SKIN_ALL));
         BMC_VEC.push(new BmdSkinCont(new Bill016(),16,ST_CHAR,null,null,CT_8B,[Bill.CHAR_NUM],[Games.superC,Games.contra3Snes,Games.operationC,Games.superC],["Lance Bean","Lance","your buddy"],null,null,SkinDescriptions.BILL_SKIN_ALL));
         BMC_VEC.push(new BmdSkinCont(new Bill017(),17,ST_CHAR,null,null,CT_GB,[Bill.CHAR_NUM],[Games.contra,Games.contra3Snes,Games.operationC,Games.contra],["Lance Bean","Lance","your buddy"],null,null,SkinDescriptions.BILL_SKIN_ALL));
         addCharPalette(link_palette,Link.CHAR_NUM);
         BMC_VEC.push(new BmdSkinCont(new Link000(),0,ST_CHAR,null,null,CT_8B,[Link.CHAR_NUM],[Games.zelda,Games.zeldaLinkToThePast,Games.zeldaLinksAwakening,Games.zelda],[null,null,"Princess Zelda"],null));
         BMC_VEC.push(new BmdSkinCont(new Link001(),1,ST_CHAR,null,null,CT_16B,[Link.CHAR_NUM],[Games.zelda,Games.zeldaLinkToThePast,Games.zeldaLinksAwakening,Games.zeldaLinkToThePast],[null,null,"Princess Zelda"],null));
         BMC_VEC.push(new BmdSkinCont(new Link002(),2,ST_CHAR,null,null,CT_GB,[Link.CHAR_NUM],[Games.zelda,Games.zeldaLinkToThePast,Games.zeldaLinksAwakening,Games.zeldaLinksAwakening],[null,null,"Marin"],null));
         BMC_VEC.push(new BmdSkinCont(new Link003(),3,ST_CHAR,null,null,CT_8B,[Link.CHAR_NUM],[Games.zeldaAdventureOfLink,Games.zeldaBs,Games.zeldaLinksAwakening,Games.zeldaAdventureOfLink],["Dark Link","Dark Link","Ganon"],null));
         BMC_VEC.push(new BmdSkinCont(new Link004(),4,ST_CHAR,null,null,CT_16B,[Link.CHAR_NUM],[Games.zeldaAdventureOfLink,Games.zeldaBs,Games.zeldaLinksAwakening,Games.zeldaAdventureOfLink],["Dark Link","Dark Link","Ganon"],null));
         BMC_VEC.push(new BmdSkinCont(new Link005(),5,ST_CHAR,null,null,CT_GB,[Link.CHAR_NUM],[Games.zeldaAdventureOfLink,Games.zeldaBs,Games.zeldaLinksAwakening,Games.zeldaOracleOfAges],["Dark Link","Dark Link","Nightmare Ganon"],null));
         BMC_VEC.push(new BmdSkinCont(new Link006(),6,ST_CHAR,null,null,CT_8B,[Link.CHAR_NUM],[Games.zelda,Games.zeldaBs,Games.zeldaLinksAwakening,Games.zelda],["Old Man","Old Man","the old woman"],null));
         BMC_VEC.push(new BmdSkinCont(new Link007(),7,ST_CHAR,null,null,CT_8B,[Link.CHAR_NUM],[Games.zelda,Games.zeldaLinkToThePast,Games.zeldaLinksAwakening,Games.zelda],["Princess Zelda","Zelda","Link"],null,null,SkinDescriptions.LINK_SKIN_ZELDA));
         BMC_VEC.push(new BmdSkinCont(new Link008(),8,ST_CHAR,null,null,CT_16B,[Link.CHAR_NUM],[Games.zelda,Games.zeldaBs,Games.zeldaLinksAwakening,Games.zeldaBs],["Hero","Hero","Princess Zelda"],null));
         BMC_VEC.push(new BmdSkinCont(new Link009(),9,ST_CHAR,null,null,CT_16B,[Link.CHAR_NUM],[Games.zelda,Games.zeldaBs,Games.zeldaLinksAwakening,Games.zeldaBs],["Heroine","Heroine","Princess Zelda"],null));
         BMC_VEC.push(new BmdSkinCont(new Link010(),10,ST_CHAR,null,null,CT_8B,[Link.CHAR_NUM],[Games.arkistasRing,Games.arkistasRing,Games.arkistasRing,Games.arkistasRing],["Christine","Christine","Arkista\'s Ring"],null));
         BMC_VEC.push(new BmdSkinCont(new Link011(),11,ST_CHAR,null,null,CT_8B,[Link.CHAR_NUM],[Games.superMarioBrosAtari,Games.superMarioBrosAtari,Games.superMarioBrosAtari,Games.zelda],[null,null,"Princess Zelda"],null));
         BMC_VEC.push(new BmdSkinCont(new Link012(),12,ST_CHAR,null,null,CT_16B,[Link.CHAR_NUM],[Games.finalFantasy,Games.finalFantasyMysticQuest,Games.finalFantasyAdventure,Games.finalFantasyMysticQuest],["Benjamin","Benjamin","Kaeli"],null));
         BMC_VEC.push(new BmdSkinCont(new Link013(),13,ST_CHAR,null,null,CT_8B,[Link.CHAR_NUM],[Games.dragonWarrior,Games.dragonWarriorSnes,Games.dragonWarriorGb,Games.dragonWarrior],["Erdrick","Erdrick","Princess Gwaelin"],null));
         BMC_VEC.push(new BmdSkinCont(new Link014(),14,ST_CHAR,null,null,CT_8B,[Link.CHAR_NUM],[Games.zelda,Games.zeldaLinkToThePast,Games.zeldaLinksAwakening,Games.zelda],[null,null,"Princess Zelda"],null));
         BMC_VEC.push(new BmdSkinCont(new Link015(),15,ST_CHAR,null,null,CT_16B,[Link.CHAR_NUM],[Games.zelda,Games.zeldaBs,Games.zeldaLinksAwakening,Games.zeldaBs],["Princess Zelda","Zelda","Link"],null,null,SkinDescriptions.LINK_SKIN_ZELDA));
         BMC_VEC.push(new BmdSkinCont(new Link016(),16,ST_CHAR,null,null,CT_GB,[Link.CHAR_NUM],[Games.zelda,Games.zeldaLinkToThePast,Games.zeldaOracleOfAges,Games.zeldaOracleOfAges],["Ralph","Ralph","Nayru"],null));
         BMC_VEC.push(new BmdSkinCont(new Link017(),17,ST_CHAR,null,null,CT_GB,[Link.CHAR_NUM],[Games.zelda,Games.zeldaLinkToThePast,Games.zeldaOracleOfSeasons,Games.zeldaOracleOfSeasons],["Princess Zelda","Zelda","Link"],null,null,SkinDescriptions.LINK_SKIN_ZELDA));
         BMC_VEC.push(new BmdSkinCont(new Link018(),18,ST_CHAR,null,null,CT_GB,[Link.CHAR_NUM],[Games.dragonWarrior,Games.dragonWarriorSnes,Games.dragonWarriorGb,Games.dragonWarriorGb],["Loto","Loto","Lady Laura"],null));
         BMC_VEC.push(new BmdSkinCont(new Link019(),19,ST_CHAR,null,null,CT_16B,[Link.CHAR_NUM],[Games.dragonWarrior,Games.dragonWarriorSnes,Games.dragonWarriorGb,Games.dragonWarriorSnes],["Roto","Roto","Lady Lora"],null));
         BMC_VEC.push(new BmdSkinCont(new Link020(),20,ST_CHAR,null,null,CT_16B,[Link.CHAR_NUM],[Games.zelda,Games.zeldaBs,Games.zeldaLinksAwakening,Games.zeldaBs],["Old Man","Old Man","the old woman"],null));
         BMC_VEC.push(new BmdSkinCont(new Link021(),21,ST_CHAR,null,null,CT_GB,[Link.CHAR_NUM],[Games.zelda,Games.zeldaBs,Games.zeldaLinksAwakening,Games.zeldaLinksAwakening],["Old Man","Old Man","the old woman"],null));
         BMC_VEC.push(new BmdSkinCont(new Link022(),22,ST_CHAR,null,null,CT_16B,[Link.CHAR_NUM],[Games.finalFantasy3,Games.finalFantasy4,Games.finalFantasyAdventure,Games.finalFantasy4],["Cecil","Cecil","Rosa"],null));
         BMC_VEC.push(new BmdSkinCont(new Link023(),23,ST_CHAR,null,null,CT_16B,[Link.CHAR_NUM],[Games.finalFantasy3,Games.finalFantasy4,Games.finalFantasyAdventure,Games.finalFantasy4],["Cecil","Cecil","Rosa"],null));
         BMC_VEC.push(new BmdSkinCont(new Link024(),24,ST_CHAR,null,null,CT_16B,[Link.CHAR_NUM],[Games.finalFantasy3,Games.finalFantasy5,Games.finalFantasyAdventure,Games.finalFantasy5],["Bartz","Bartz","Boco"],null));
         addCharPalette(luigi_palette,Luigi.CHAR_NUM);
         BMC_VEC.push(new BmdSkinCont(new Luigi000(),0,ST_CHAR,null,null,CT_8B,[Luigi.CHAR_NUM],[Games.superMarioBros,Games.superMarioBrosSnes,Games.superMarioBrosDeluxe,Games.superMarioBrosDeluxe],[null,null,"your princess"],null));
         BMC_VEC.push(new BmdSkinCont(new Luigi001(),1,ST_CHAR,null,null,CT_16B,[Luigi.CHAR_NUM],[Games.superMarioBros,Games.superMarioBrosSnes,Games.superMarioBrosDeluxe,Games.superMarioBrosSnes],[null,null,"your princess"],null));
         BMC_VEC.push(new BmdSkinCont(new Luigi002(),2,ST_CHAR,null,null,CT_GB,[Luigi.CHAR_NUM],[Games.superMarioBros,Games.superMarioBrosSnes,Games.superMarioLand2,Games.superMarioLand2],[null,null,"your princess"],null));
         BMC_VEC.push(new BmdSkinCont(new Luigi003(),3,ST_CHAR,null,null,CT_8B,[Luigi.CHAR_NUM],[Games.superMarioBros3,Games.superMarioBrosSnes,Games.superMarioLand2,Games.superMarioBros3],[null,null,"your princess"],null));
         BMC_VEC.push(new BmdSkinCont(new Luigi004(),4,ST_CHAR,null,null,CT_8B,[Luigi.CHAR_NUM],[Games.superMarioBros2,Games.superMarioBros2Snes,Games.superMarioLand,Games.superMarioBros2],[null,null,"the Subcon"],null));
         BMC_VEC.push(new BmdSkinCont(new Luigi005(),5,ST_CHAR,null,null,CT_16B,[Luigi.CHAR_NUM],[Games.superMarioBros2,Games.superMarioBros2Snes,Games.superMarioLand,Games.superMarioBros2Snes],[null,null,"the Subcon"],null));
         BMC_VEC.push(new BmdSkinCont(new Luigi006(),6,ST_CHAR,null,null,CT_16B,[Luigi.CHAR_NUM],[Games.superMarioBros2,Games.superMarioWorld,Games.superMarioLand2,Games.superMarioWorld],[null,null,"your princess"],null));
         BMC_VEC.push(new BmdSkinCont(new Luigi007(),7,ST_CHAR,null,null,CT_16B,[Luigi.CHAR_NUM],[Games.superMarioBros3,Games.superMarioBros3Snes,Games.superMarioLand2,Games.superMarioBros3Snes],[null,null,"your princess"],null));
         BMC_VEC.push(new BmdSkinCont(new Luigi008(),8,ST_CHAR,null,null,CT_8B,[Luigi.CHAR_NUM],[Games.superMarioBros2,Games.superMarioBros2Snes,Games.superMarioLand,Games.superMarioBros2],["Princess Toadstool","Toadstool","the Subcon"],null));
         BMC_VEC.push(new BmdSkinCont(new Luigi009(),9,ST_CHAR,null,null,CT_8B,[Luigi.CHAR_NUM],[Games.superMarioBrosAtari,Games.superMarioBrosAtari,Games.superMarioBrosAtari,Games.superMarioBros],[null,null,"your princess"],null));
         BMC_VEC.push(new BmdSkinCont(new Luigi010(),10,ST_CHAR,null,null,CT_16B,[Luigi.CHAR_NUM],[Games.superMarioBros2,Games.superMarioBros2Snes,Games.superMarioLand,Games.superMarioBros2Snes],["Princess Toadstool","Toadstool","the Subcon"],null));
         BMC_VEC.push(new BmdSkinCont(new Luigi011(),11,ST_CHAR,null,null,CT_8B,[Luigi.CHAR_NUM],[Games.superMarioBrosSpecial,Games.superMarioBrosSnes,Games.superMarioLand,Games.superMarioBros],[null,null,"your princess"],null));
         BMC_VEC.push(new BmdSkinCont(new Luigi012(),12,ST_CHAR,null,null,CT_GB,[Luigi.CHAR_NUM],[Games.superMarioBros,Games.superMarioBrosSnes,Games.superMarioLand2,Games.superMarioLand2],["Space Luigi",null,"your princess"],null));
         BMC_VEC.push(new BmdSkinCont(new Luigi013(),13,ST_CHAR,null,null,CT_8B,[Luigi.CHAR_NUM],[Games.superMarioBrosLostLevels,Games.superMarioBros2Snes,Games.superMarioBrosDeluxe,Games.superMarioBros],[null,null,"your princess"],null));
         BMC_VEC.push(new BmdSkinCont(new Luigi014(),14,ST_CHAR,null,null,CT_8B,[Luigi.CHAR_NUM],[Games.superMarioBrosLostLevels,Games.superMarioBros2Snes,Games.superMarioBrosDeluxe,Games.superMario3DWorld],["Modern Luigi",null,"your princess"],null));
         addCharPalette(mario_palette,Mario.CHAR_NUM);
         BMC_VEC.push(new BmdSkinCont(new Mario000(),0,ST_CHAR,null,null,CT_8B,[Mario.CHAR_NUM],[Games.superMarioBrosLostLevels,Games.superMarioBrosSnes,Games.superMarioBrosDeluxe,Games.superMarioBros]));
         BMC_VEC.push(new BmdSkinCont(new Mario001(),1,ST_CHAR,null,null,CT_16B,[Mario.CHAR_NUM],[Games.superMarioBrosLostLevels,Games.superMarioBrosSnes,Games.superMarioBrosDeluxe,Games.superMarioBrosSnes]));
         BMC_VEC.push(new BmdSkinCont(new Mario002(),2,ST_CHAR,null,null,CT_GB,[Mario.CHAR_NUM],[Games.superMarioBrosLostLevels,Games.superMarioBrosSnes,Games.superMarioLand2,Games.superMarioLand2]));
         BMC_VEC.push(new BmdSkinCont(new Mario003(),3,ST_CHAR,null,null,CT_8B,[Mario.CHAR_NUM],[Games.superMarioBros3,Games.superMarioBrosSnes,Games.superMarioLand2,Games.superMarioBros3],[]));
         BMC_VEC.push(new BmdSkinCont(new Mario004(),4,ST_CHAR,null,null,CT_8B,[Mario.CHAR_NUM],[Games.demonReturns,Games.demonReturns,Games.demonReturns,Games.demonReturns],["Demon Prince","Demon",null]));
         BMC_VEC.push(new BmdSkinCont(new Mario005(),5,ST_CHAR,null,null,CT_16B,[Mario.CHAR_NUM],[Games.demonReturns,Games.demonReturns,Games.demonReturns,Games.superDemonReturns],["Demon Prince","Demon",null]));
         BMC_VEC.push(new BmdSkinCont(new Mario006(),6,ST_CHAR,null,null,CT_16B,[Mario.CHAR_NUM],[Games.superMarioBros3,Games.superMarioWorld,Games.superMarioLand2,Games.superMarioWorld],[]));
         BMC_VEC.push(new BmdSkinCont(new Mario007(),7,ST_CHAR,null,null,CT_8B,[Mario.CHAR_NUM],[Games.superMarioBros2,Games.superMarioBros2Snes,Games.superMarioLand,Games.superMarioBros2],[null,null,"the Subcon"],null));
         BMC_VEC.push(new BmdSkinCont(new Mario008(),8,ST_CHAR,null,null,CT_16B,[Mario.CHAR_NUM],[Games.superMarioBros2,Games.superMarioBros2Snes,Games.superMarioLand,Games.superMarioBros2Snes],[null,null,"the Subcon"],null));
         BMC_VEC.push(new BmdSkinCont(new Mario009(),9,ST_CHAR,null,null,CT_16B,[Mario.CHAR_NUM],[Games.superMarioBros3,Games.superMarioBros3Snes,Games.superMarioLand2,Games.superMarioBros3Snes],[]));
         BMC_VEC.push(new BmdSkinCont(new Mario010(),10,ST_CHAR,null,null,CT_8B,[Mario.CHAR_NUM],[Games.superMarioBros2,Games.superMarioBros2Snes,Games.superMarioLand,Games.superMarioBros2],["Toad","Toad","the Subcon"]));
         BMC_VEC.push(new BmdSkinCont(new Mario011(),11,ST_CHAR,null,null,CT_8B,[Mario.CHAR_NUM],[Games.superMarioBrosAtari,Games.superMarioBrosAtari,Games.superMarioBrosAtari,Games.superMarioBros],[null,null,null]));
         BMC_VEC.push(new BmdSkinCont(new Mario012(),12,ST_CHAR,null,null,CT_16B,[Mario.CHAR_NUM],[Games.superMarioBros2,Games.superMarioBros2Snes,Games.superMarioLand,Games.superMarioBros2Snes],["Toad","Toad","the Subcon"]));
         BMC_VEC.push(new BmdSkinCont(new Mario013(),13,ST_CHAR,null,null,CT_8B,[Mario.CHAR_NUM],[Games.superMarioBrosSpecial,Games.superMarioBrosSnes,Games.superMarioLand,Games.superMarioBrosSpecial],[null,null,null]));
         BMC_VEC.push(new BmdSkinCont(new Mario014(),14,ST_CHAR,null,null,CT_GB,[Mario.CHAR_NUM],[Games.superMarioBrosLostLevels,Games.superMarioBrosSnes,Games.superMarioLand2,Games.superMarioLand2],["Space Mario",null,null]));
         BMC_VEC.push(new BmdSkinCont(new Mario015(),15,ST_CHAR,null,null,CT_8B,[Mario.CHAR_NUM],[Games.superMarioBros,Games.superMarioBrosSnes,Games.superMarioLand,Games.superMario3DWorld],["Modern Mario","Mario",null]));
         addCharPalette(megaMan_palette,MegaMan.CHAR_NUM);
         BMC_VEC.push(new BmdSkinCont(new MegaMan000(),0,ST_CHAR,null,null,CT_8B,[MegaMan.CHAR_NUM],[Games.megaMan,Games.megaMan7,Games.megaManGb,Games.megaMan],[null,null,"Dr. Light"],null));
         BMC_VEC.push(new BmdSkinCont(new MegaMan001(),1,ST_CHAR,null,null,CT_16B,[MegaMan.CHAR_NUM],[Games.megaMan,Games.megaMan7,Games.megaManGb,Games.megaMan],[null,null,"Dr. Light"],null));
         BMC_VEC.push(new BmdSkinCont(new MegaMan002(),2,ST_CHAR,null,null,CT_GB,[MegaMan.CHAR_NUM],[Games.megaMan,Games.megaMan7,Games.megaManGb,Games.rockManBattleAndFighters],[null,null,"Dr. Light"],null));
         BMC_VEC.push(new BmdSkinCont(new MegaMan003(),3,ST_CHAR,null,null,CT_8B,[MegaMan.CHAR_NUM],[Games.megaMan5,Games.megaMan7,Games.megaMan4Gb,Games.megaMan3],[MegaManBase.PROTO_MAN_NAME,MegaManBase.PROTO_MAN_NAME,"Roll"],null,null,SkinDescriptions.MEGA_MAN_SKIN_PROTO_MAN));
         BMC_VEC.push(new BmdSkinCont(new MegaMan004(),4,ST_CHAR,null,null,CT_16B,[MegaMan.CHAR_NUM],[Games.megaMan5,Games.megaMan7,Games.megaMan4Gb,Games.megaMan3],[MegaManBase.PROTO_MAN_NAME,MegaManBase.PROTO_MAN_NAME,"Roll"],null,null,SkinDescriptions.MEGA_MAN_SKIN_PROTO_MAN));
         BMC_VEC.push(new BmdSkinCont(new MegaMan005(),5,ST_CHAR,null,null,CT_GB,[MegaMan.CHAR_NUM],[Games.megaMan5,Games.megaMan7,Games.megaMan4Gb,Games.rockManBattleAndFighters],[MegaManBase.PROTO_MAN_NAME,MegaManBase.PROTO_MAN_NAME,"Roll"],null,null,SkinDescriptions.MEGA_MAN_SKIN_PROTO_MAN));
         BMC_VEC.push(new BmdSkinCont(new MegaMan006(),6,ST_CHAR,null,null,CT_8B,[MegaMan.CHAR_NUM],[Games.megaMan9,Games.megaManAndBass,Games.megaMan3Gb,Games.megaMan9],[null,null,"Dr. Light"],null));
         BMC_VEC.push(new BmdSkinCont(new MegaMan007(),7,ST_CHAR,null,null,CT_16B,[MegaMan.CHAR_NUM],[Games.megaMan9,Games.megaManAndBass,Games.megaMan3Gb,Games.megaMan9],[null,null,"Dr. Light"],null));
         BMC_VEC.push(new BmdSkinCont(new MegaMan008(),8,ST_CHAR,null,null,CT_8B,[MegaMan.CHAR_NUM],[Games.megaMan3,Games.megaMan7,Games.megaMan4Gb,Games.megaMan3],["Break Man","Break Man","Roll"],null,null,SkinDescriptions.MEGA_MAN_SKIN_PROTO_MAN));
         BMC_VEC.push(new BmdSkinCont(new MegaMan009(),9,ST_CHAR,null,null,CT_16B,[MegaMan.CHAR_NUM],[Games.megaMan3,Games.megaMan7,Games.megaMan4Gb,Games.megaMan3],["Break Man","Break Man","Roll"],null,null,SkinDescriptions.MEGA_MAN_SKIN_PROTO_MAN));
         BMC_VEC.push(new BmdSkinCont(new MegaMan010(),10,ST_CHAR,null,null,CT_8B,[MegaMan.CHAR_NUM],[Games.megaMan,Games.megaMan7,Games.megaManGb,Games.rockManMobile],["Roll","Roll","your brother"],null));
         BMC_VEC.push(new BmdSkinCont(new MegaMan011(),11,ST_CHAR,null,null,CT_8B,[MegaMan.CHAR_NUM],[Games.megaMan10,Games.megaManAndBass,Games.megaMan5Gb,Games.rokkoChan],["Rokko Chan","Rokko Chan","Professor Thane"],null,null,SkinDescriptions.MEGA_MAN_SKIN_ROKKO_CHAN));
         BMC_VEC.push(new BmdSkinCont(new MegaMan012(),12,ST_CHAR,null,null,CT_8B,[MegaMan.CHAR_NUM],[Games.megaMan9,Games.megaMan7,Games.megaMan4Gb,Games.megaMan],["Dr. Light","Dr. Light","Rock"],null));
         BMC_VEC.push(new BmdSkinCont(new MegaMan013(),13,ST_CHAR,null,null,CT_8B,[MegaMan.CHAR_NUM],[Games.megaMan,Games.megaMan7,Games.megaManGb,Games.megaMan],["Cut Man","Cut Man","Dr. Light"],null,null,SkinDescriptions.MEGA_MAN_SKIN_CUT_MAN));
         BMC_VEC.push(new BmdSkinCont(new MegaMan014(),14,ST_CHAR,null,null,CT_8B,[MegaMan.CHAR_NUM],[Games.megaMan,Games.megaMan7,Games.megaManGb,Games.megaMan],["Ice Man","Ice Man","Dr. Light"],null,null,SkinDescriptions.MEGA_MAN_SKIN_ICE_MAN));
         BMC_VEC.push(new BmdSkinCont(new MegaMan015(),15,ST_CHAR,null,null,CT_8B,[MegaMan.CHAR_NUM],[Games.superMarioBrosAtari,Games.superMarioBrosAtari,Games.superMarioBrosAtari,Games.megaMan],[null,null,"Dr. Light"],null));
         BMC_VEC.push(new BmdSkinCont(new MegaMan016(),16,ST_CHAR,null,null,CT_8B,[MegaMan.CHAR_NUM],[Games.megaMan,Games.megaMan7,Games.megaManGb,Games.megaMan],["Rock","Rock","Dr. Light"],null,null,SkinDescriptions.MEGA_MAN_SKIN_ROCK));
         BMC_VEC.push(new BmdSkinCont(new MegaMan017(),17,ST_CHAR,null,null,CT_16B,[MegaMan.CHAR_NUM],[Games.megaMan,Games.megaMan7,Games.megaManGb,Games.megaMan],["Rock","Rock","Dr. Light"],null,null,SkinDescriptions.MEGA_MAN_SKIN_ROCK));
         BMC_VEC.push(new BmdSkinCont(new MegaMan018(),18,ST_CHAR,null,null,CT_GB,[MegaMan.CHAR_NUM],[Games.megaMan,Games.megaMan7,Games.megaManGb,Games.megaMan],[null,null,"Dr. Light"],null));
         BMC_VEC.push(new BmdSkinCont(new MegaMan019(),19,ST_CHAR,null,null,CT_GB,[MegaMan.CHAR_NUM],[Games.megaMan3,Games.megaMan7,Games.megaMan4Gb,Games.rockManBattleAndFighters],["Break Man","Break Man","Roll"],null,null,SkinDescriptions.MEGA_MAN_SKIN_PROTO_MAN));
         BMC_VEC.push(new BmdSkinCont(new MegaMan020(),20,ST_CHAR,null,null,CT_GB,[MegaMan.CHAR_NUM],[Games.megaMan,Games.megaManAndBass,Games.megaMan3Gb,Games.rockManBattleAndFighters],[null,null,"Dr. Light"],null));
         BMC_VEC.push(new BmdSkinCont(new MegaMan021(),21,ST_CHAR,null,null,CT_16B,[MegaMan.CHAR_NUM],[Games.megaMan,Games.megaMan7,Games.megaManGb,Games.megaManWilyWars],["Cut Man","Cut Man","Dr. Light"],null,null,SkinDescriptions.MEGA_MAN_SKIN_CUT_MAN));
         BMC_VEC.push(new BmdSkinCont(new MegaMan022(),22,ST_CHAR,null,null,CT_16B,[MegaMan.CHAR_NUM],[Games.megaMan,Games.megaMan7,Games.megaManGb,Games.megaMan8],["Roll","Roll","your brother"],null));
         BMC_VEC.push(new BmdSkinCont(new MegaMan023(),23,ST_CHAR,null,null,CT_8B,[MegaMan.CHAR_NUM],[Games.megaMan2,Games.megaMan7,Games.megaMan2Gb,Games.megaMan2Gb],["Quint","Quint","Dr. Wily"],null));
         BMC_VEC.push(new BmdSkinCont(new MegaMan024(),24,ST_CHAR,null,null,CT_8B,[MegaMan.CHAR_NUM],[Games.megaMan,Games.megaMan7,Games.megaManGb,Games.megaMan],["Fire Man","Fire Man","Dr. Light"],null,null,SkinDescriptions.MEGA_MAN_SKIN_FIRE_MAN));
         BMC_VEC.push(new BmdSkinCont(new MegaMan025(),25,ST_CHAR,null,null,CT_8B,[MegaMan.CHAR_NUM],[Games.krionConquest,Games.krionConquest,Games.krionConquest,Games.krionConquest],["Francesca","Francesca","Kagemaru"],null,null,SkinDescriptions.MEGA_MAN_SKIN_FRANCESCA));
         BMC_VEC.push(new BmdSkinCont(new MegaMan026(),26,ST_CHAR,null,null,CT_8B,[MegaMan.CHAR_NUM],[Games.krionConquest,Games.krionConquest,Games.krionConquest,Games.krionConquest],["Doropie","Doropie","Kagemaru"],null,null,SkinDescriptions.MEGA_MAN_SKIN_FRANCESCA));
         addCharPalette(ryu_palette,Ryu.CHAR_NUM);
         BMC_VEC.push(new BmdSkinCont(new Ryu000(),0,ST_CHAR,null,null,CT_8B,[Ryu.CHAR_NUM],[Games.ninjaGaiden,Games.ninjaGaidenSnes,Games.ninjaGaidenShadow,Games.ninjaGaiden],[null,null,"Irene"]));
         BMC_VEC.push(new BmdSkinCont(new Ryu001(),1,ST_CHAR,null,null,CT_16B,[Ryu.CHAR_NUM],[Games.ninjaGaiden,Games.ninjaGaidenSnes,Games.ninjaGaidenShadow,Games.ninjaGaiden],[null,null,"Irene"]));
         BMC_VEC.push(new BmdSkinCont(new Ryu002(),2,ST_CHAR,null,null,CT_GB,[Ryu.CHAR_NUM],[Games.ninjaGaiden,Games.ninjaGaidenSnes,Games.ninjaGaidenShadow,Games.ninjaGaidenShadow],[null,null,"Irene"]));
         BMC_VEC.push(new BmdSkinCont(new Ryu003(),3,ST_CHAR,null,null,CT_8B,[Ryu.CHAR_NUM],[Games.ninjaGaidenSms,Games.ninjaGaidenSms,Games.ninjaGaidenShadow,Games.haggleMan3],["Haggle Man","Haggle Man","Koume"],null,null,SkinDescriptions.RYU_SKIN_HAGGLE_MAN));
         BMC_VEC.push(new BmdSkinCont(new Ryu004(),4,ST_CHAR,null,null,CT_16B,[Ryu.CHAR_NUM],[Games.ninjaGaidenSms,Games.ninjaGaidenSms,Games.ninjaGaidenShadow,Games.haggleMan3],["Haggle Man","Haggle Man","Koume"],null,null,SkinDescriptions.RYU_SKIN_HAGGLE_MAN));
         BMC_VEC.push(new BmdSkinCont(new Ryu005(),5,ST_CHAR,null,null,CT_16B,[Ryu.CHAR_NUM],[Games.finalFantasy3,Games.finalFantasy6,Games.finalFantasyAdventure,Games.finalFantasy6],["Shadow","Shadow","Interceptor"],null));
         BMC_VEC.push(new BmdSkinCont(new Ryu006(),6,ST_CHAR,null,null,CT_GB,[Ryu.CHAR_NUM],[Games.ninjaGaiden,Games.ninjaGaidenSnes,Games.ninjaGaidenShadow,Games.ninjaGaiden],[null,null,"Irene"]));
         BMC_VEC.push(new BmdSkinCont(new Ryu007(),7,ST_CHAR,null,null,CT_8B,[Ryu.CHAR_NUM],[Games.superMarioBrosAtari,Games.superMarioBrosAtari,Games.superMarioBrosAtari,Games.ninjaGaiden],[null,null,"Irene"],null));
         BMC_VEC.push(new BmdSkinCont(new Ryu008(),8,ST_CHAR,null,null,CT_8B,[Ryu.CHAR_NUM],[Games.ninjaGaidenSms,Games.ninjaGaidenSnes,Games.ninjaGaidenShadow,Games.ninjaGaidenSms],[null,null,"Irene"],null));
         BMC_VEC.push(new BmdSkinCont(new Ryu009(),9,ST_CHAR,null,null,CT_8B,[Ryu.CHAR_NUM],[Games.ninjaGaiden2,Games.ninjaGaidenSnes,Games.ninjaGaidenShadow,Games.ninjaGaiden2],["Ryu Clone","Ryu?","Irene"],null));
         BMC_VEC.push(new BmdSkinCont(new Ryu010(),10,ST_CHAR,null,null,CT_8B,[Ryu.CHAR_NUM],[Games.shadowOfTheNinja,Games.shadowOfTheNinja,Games.shadowOfTheNinja,Games.shadowOfTheNinja],["Hayate","Hayate","Kaede"],null));
         BMC_VEC.push(new BmdSkinCont(new Ryu011(),11,ST_CHAR,null,null,CT_8B,[Ryu.CHAR_NUM],[Games.shadowOfTheNinja,Games.shadowOfTheNinja,Games.shadowOfTheNinja,Games.shadowOfTheNinja],["Kaede","Kaede","Hayate"],null));
         addCharPalette(samus_palette,Samus.CHAR_NUM);
         BMC_VEC.push(new BmdSkinCont(new Samus000(),0,ST_CHAR,null,null,CT_8B,[Samus.CHAR_NUM],[Games.metroid,Games.superMetroid,Games.metroid2,Games.metroid],[null,null,"the hatchling"],null));
         BMC_VEC.push(new BmdSkinCont(new Samus001(),1,ST_CHAR,null,null,CT_16B,[Samus.CHAR_NUM],[Games.metroid,Games.superMetroid,Games.metroid2,Games.superMetroid],[null,null,"the hatchling"],null));
         BMC_VEC.push(new BmdSkinCont(new Samus002(),2,ST_CHAR,null,null,CT_GB,[Samus.CHAR_NUM],[Games.metroid,Games.superMetroid,Games.metroid2,Games.metroid2],[null,null,"the hatchling"],null));
         BMC_VEC.push(new BmdSkinCont(new Samus003(),3,ST_CHAR,null,null,CT_8B,[Samus.CHAR_NUM],[Games.metroid,Games.superMetroid,Games.metroid2,Games.metroid],[null,null,"the hatchling"],null));
         BMC_VEC.push(new BmdSkinCont(new Samus004(),4,ST_CHAR,null,null,CT_16B,[Samus.CHAR_NUM],[Games.metroid,Games.superMetroid,Games.metroid2,Games.metroidPrime3Corruption],["Dark Samus","Dark Samus","the hatchling"],null));
         BMC_VEC.push(new BmdSkinCont(new Samus005(),5,ST_CHAR,null,null,CT_8B,[Samus.CHAR_NUM],[Games.metroid,Games.superMetroid,Games.metroid2,Games.metroidZeroMission],["Zero Suit Samus","Samus","the hatchling"],null));
         BMC_VEC.push(new BmdSkinCont(new Samus006(),6,ST_CHAR,null,null,CT_8B,[Samus.CHAR_NUM],[Games.kidIcarus,Games.kidIcarus,Games.kidIcarus,Games.kidIcarus],["Pit","Pit","Palutena"],Samus.skinSettingsWrite(22,true,false,true,false,SoundNames.SFX_PIT_SHOOT,SoundNames.SFX_PIT_JUMP),null,SkinDescriptions.SAMUS_SKIN_PIT));
         BMC_VEC.push(new BmdSkinCont(new Samus007(),7,ST_CHAR,null,null,CT_8B,[Samus.CHAR_NUM],[Games.superMarioBrosAtari,Games.superMarioBrosAtari,Games.superMarioBrosAtari,Games.metroid],[null,null,"the hatchling"],null));
         BMC_VEC.push(new BmdSkinCont(new Samus008(),8,ST_CHAR,null,null,CT_8B,[Samus.CHAR_NUM],[Games.metroid,Games.superMetroid,Games.metroid2,Games.metroid],[null,null,"the hatchling"],null));
         BMC_VEC.push(new BmdSkinCont(new Samus009(),9,ST_CHAR,null,null,CT_16B,[Samus.CHAR_NUM],[Games.metroid,Games.superMetroid,Games.metroid2,Games.superMetroid],[null,null,"the hatchling"],null));
         BMC_VEC.push(new BmdSkinCont(new Samus010(),10,ST_CHAR,null,null,CT_16B,[Samus.CHAR_NUM],[Games.metroid,Games.superMetroid,Games.metroid2,Games.metroid],[null,null,"the hatchling"],null));
         BMC_VEC.push(new BmdSkinCont(new Samus011(),11,ST_CHAR,null,null,CT_8B,[Samus.CHAR_NUM],[Games.kidIcarus,Games.kidIcarus,Games.kidIcarus,Games.kidIcarusUprising],["Dark Pit","Dark Pit","the Reaper"],Samus.skinSettingsWrite(22,true,false,true,false,SoundNames.SFX_PIT_SHOOT,SoundNames.SFX_PIT_JUMP),null,SkinDescriptions.SAMUS_SKIN_PIT));
         BMC_VEC.push(new BmdSkinCont(new Samus012(),12,ST_CHAR,null,null,CT_GB,[Samus.CHAR_NUM],[Games.metroid,Games.superMetroid,Games.metroid2,Games.metroidPrime3Corruption],["Dark Samus","Dark Samus","the hatchling"],null));
         BMC_VEC.push(new BmdSkinCont(new Samus013(),13,ST_CHAR,null,null,CT_8B,[Samus.CHAR_NUM],[Games.metroid,Games.superMetroid,Games.metroid2,Games.metroidPrime3Corruption],["Dark Samus","Dark Samus","the hatchling"],null));
         addCharPalette(simon_palette,Simon.CHAR_NUM);
         BMC_VEC.push(new BmdSkinCont(new Simon000(),0,ST_CHAR,null,null,CT_8B,[Simon.CHAR_NUM],[Games.castlevania,Games.superCastlevania4,Games.castlevaniaAdventure,Games.castlevania],[null,null,"your friend"],Simon.skinSettings(0,0,0,0,0,0,0,0,0,0,0,0)));
         BMC_VEC.push(new BmdSkinCont(new Simon001(),1,ST_CHAR,null,null,CT_16B,[Simon.CHAR_NUM],[Games.castlevania,Games.superCastlevania4,Games.castlevaniaAdventure,Games.castlevania],[null,null,"your friend"],Simon.skinSettings(0,0,0,0,0,0,0,0,0,0,0,0)));
         BMC_VEC.push(new BmdSkinCont(new Simon002(),2,ST_CHAR,null,null,CT_GB,[Simon.CHAR_NUM],[Games.castlevania,Games.superCastlevania4,Games.castlevaniaAdventure,Games.castlevaniaBelmontsRevenge],["Christopher Belmont","Christopher","Soleiyu"],Simon.skinSettings(18,2,12,6,2,-2,18,0,12,4,2,-4)));
         BMC_VEC.push(new BmdSkinCont(new Simon003(),3,ST_CHAR,null,null,CT_8B,[Simon.CHAR_NUM],[Games.castlevania3,Games.castlevaniaDraculaX,Games.castlevaniaLegends,Games.castlevania3],["Trevor Belmont","Trevor","the true Sypha"],Simon.skinSettings(0,-10,0,-8,8,0,0,-10,0,-8,8,0)));
         BMC_VEC.push(new BmdSkinCont(new Simon004(),4,ST_CHAR,null,null,CT_16B,[Simon.CHAR_NUM],[Games.castlevania3,Games.castlevaniaDraculaX,Games.castlevaniaLegends,Games.castlevania3],["Trevor Belmont","Trevor","the true Sypha"],Simon.skinSettings(0,-10,0,-8,8,0,0,-10,0,-8,8,0)));
         BMC_VEC.push(new BmdSkinCont(new Simon005(),5,ST_CHAR,null,null,CT_GB,[Simon.CHAR_NUM],[Games.castlevania3,Games.castlevaniaDraculaX,Games.castlevaniaLegends,Games.castlevania3],["Trevor Belmont","Trevor","the true Sypha"],Simon.skinSettings(18,2,10,6,2,-2,18,0,10,4,2,-4)));
         BMC_VEC.push(new BmdSkinCont(new Simon006(),6,ST_CHAR,null,null,CT_8B,[Simon.CHAR_NUM],[Games.castlevania2,Games.superCastlevania4,Games.castlevaniaAdventure,Games.castlevania2],[null,null,"the priest"],Simon.skinSettings(0,-2,0,0,4,-2,0,0,0,0,4,-2)));
         BMC_VEC.push(new BmdSkinCont(new Simon007(),7,ST_CHAR,null,null,CT_16B,[Simon.CHAR_NUM],[Games.castlevania,Games.superCastlevania4,Games.castlevaniaAdventure,Games.superCastlevania4],[null,null,"your friend"],Simon.skinSettings(-2,-6,-2,-10,8,0,0,-6,-2,-10,8,0)));
         BMC_VEC.push(new BmdSkinCont(new Simon008(),8,ST_CHAR,null,null,CT_8B,[Simon.CHAR_NUM],[Games.castlevania3,Games.castlevaniaDraculaX,Games.castlevaniaLegends,Games.castlevania3],["Whip Skeleton","Skeleton","your captain"],Simon.skinSettings(2,-4,-4,-10,6,0,2,-8,-2,-14,2,-6)));
         BMC_VEC.push(new BmdSkinCont(new Simon009(),9,ST_CHAR,null,null,CT_8B,[Simon.CHAR_NUM],[Games.superMarioBrosAtari,Games.superMarioBrosAtari,Games.superMarioBrosAtari,Games.castlevania],[null,null,"your friend"],Simon.skinSettings(0,-2,2,-2,2,-2,0,-2,2,-2,4,-2)));
         BMC_VEC.push(new BmdSkinCont(new Simon010(),10,ST_CHAR,null,null,CT_8B,[Simon.CHAR_NUM],[Games.castlevania,Games.superCastlevania4,Games.castlevaniaAdventure,Games.castlevania],[null,null,"your friend"],Simon.skinSettings(0,0,0,0,0,0,0,0,0,0,0,0)));
         BMC_VEC.push(new BmdSkinCont(new Simon011(),11,ST_CHAR,null,null,CT_8B,[Simon.CHAR_NUM],[Games.castlevania3J,Games.castlevaniaDraculaX,Games.castlevaniaLegends,Games.castlevaniaDraculaX],["Richter Belmont","Richter","Annette"],Simon.skinSettings(2,-10,0,-10,8,0,6,-10,0,-10,6,-2)));
         BMC_VEC.push(new BmdSkinCont(new Simon012(),12,ST_CHAR,null,null,CT_8B,[Simon.CHAR_NUM],[Games.riverCityRansom,Games.riverCityRansom,Games.riverCityRansom,Games.riverCityRansom],["Alex","Alex","Cyndi"],Simon.skinSettings(16,-32,6,-26,4,-6,16,-30,6,-24,4,-6)));
         BMC_VEC.push(new BmdSkinCont(new Simon013(),13,ST_CHAR,null,null,CT_8B,[Simon.CHAR_NUM],[Games.castlevania3J,Games.castlevaniaDraculaX,Games.castlevaniaLegends,Games.castlevania3],["Trevor?","Trevor?","Sypha?"],Simon.skinSettings(0,-10,0,-8,8,0,0,-10,0,-8,8,0)));
         BMC_VEC.push(new BmdSkinCont(new Simon014(),14,ST_CHAR,null,null,CT_16B,[Simon.CHAR_NUM],[Games.castlevania3J,Games.castlevaniaDraculaX,Games.castlevaniaLegends,Games.castlevaniaSymphonyOfTheNight],["Trevor?","Trevor?","Sypha?"],Simon.skinSettings(0,-10,0,-8,8,0,0,-10,0,-8,8,0)));
         BMC_VEC.push(new BmdSkinCont(new Simon015(),15,ST_CHAR,null,null,CT_16B,[Simon.CHAR_NUM],[Games.castlevania3J,Games.castlevaniaDraculaX,Games.castlevaniaLegends,Games.castlevaniaDraculaX],["Richter Belmont","Richter","Maria"],Simon.skinSettings(0,0,26,-6,2,-8,2,0,22,-6,-2,-8)));
         BMC_VEC.push(new BmdSkinCont(new Simon016(),16,ST_CHAR,null,null,CT_GB,[Simon.CHAR_NUM],[Games.castlevania,Games.superCastlevania4,Games.castlevaniaLegends,Games.castlevaniaLegends],["Sonia Belmont","Sonia","Alucard"],Simon.skinSettings(16,0,2,10,-4,-2,16,-2,4,8,-2,-4)));
         BMC_VEC.push(new BmdSkinCont(new Simon017(),17,ST_CHAR,null,null,CT_16B,[Simon.CHAR_NUM],[Games.riverCityRansom,Games.riverCityRansom,Games.riverCityRansom,Games.riverCityRansomEX],["Kunio","Kunio","Mami"],Simon.skinSettings(2,-24,-2,-26,6,-4,8,-22,0,-24,8,-6)));
         BMC_VEC.push(new BmdSkinCont(new Simon018(),18,ST_CHAR,null,null,CT_GB,[Simon.CHAR_NUM],[Games.castlevania,Games.superCastlevania4,Games.castlevaniaAdventure,Games.castlevaniaBelmontsRevenge],["Soleiyu","Soleiyu","your father"],Simon.skinSettings(18,2,10,6,2,-2,18,0,10,4,2,-4)));
         addCharPalette(sophia_palette,Sophia.CHAR_NUM);
         BMC_VEC.push(new BmdSkinCont(new Sophia000(),0,ST_CHAR,null,null,CT_8B,[Sophia.CHAR_NUM],[Games.blasterMaster,Games.blasterMasterSnes,Games.blasterMasterEnemyBelow,Games.blasterMaster],[null,null,"your frog"],null));
         BMC_VEC.push(new BmdSkinCont(new Sophia001(),1,ST_CHAR,null,null,CT_16B,[Sophia.CHAR_NUM],[Games.blasterMaster,Games.blasterMasterSnes,Games.blasterMasterEnemyBelow,Games.blasterMaster],[null,null,"your frog"],null));
         BMC_VEC.push(new BmdSkinCont(new Sophia002(),2,ST_CHAR,null,null,CT_GB,[Sophia.CHAR_NUM],[Games.blasterMaster,Games.blasterMasterSnes,Games.blasterMasterEnemyBelow,Games.blasterMasterEnemyBelow],[null,null,"your frog"],null));
         BMC_VEC.push(new BmdSkinCont(new Sophia003(),3,ST_CHAR,null,null,CT_8B,[Sophia.CHAR_NUM],[Games.blasterMaster,Games.blasterMasterSnes,Games.blasterMasterEnemyBelow,Games.blasterMasterBlastingAgain],["Sophia J-7","Sophia J-7","your frog"],null));
         BMC_VEC.push(new BmdSkinCont(new Sophia004(),4,ST_CHAR,null,null,CT_16B,[Sophia.CHAR_NUM],[Games.blasterMaster,Games.blasterMasterSnes,Games.blasterMasterEnemyBelow,Games.blasterMasterBlastingAgain],["Sophia J-7","Sophia J-7","your frog"],null));
         BMC_VEC.push(new BmdSkinCont(new Sophia005(),5,ST_CHAR,null,null,CT_GB,[Sophia.CHAR_NUM],[Games.blasterMaster,Games.blasterMasterSnes,Games.blasterMasterEnemyBelow,Games.blasterMasterBlastingAgain],["Sophia J-7","Sophia J-7","your frog"],null));
         BMC_VEC.push(new BmdSkinCont(new Sophia006(),6,ST_CHAR,null,null,CT_8B,[Sophia.CHAR_NUM],[Games.tetris,Games.tetrisDrMario,Games.tetrisGb,Games.tetris],["Tetrimino","Tetrimino","our king"],null));
         BMC_VEC.push(new BmdSkinCont(new Sophia007(),7,ST_CHAR,null,null,CT_8B,[Sophia.CHAR_NUM],[Games.superMarioBrosAtari,Games.superMarioBrosAtari,Games.superMarioBrosAtari,Games.blasterMaster],[null,null,"your frog"],null));
         BMC_VEC.push(new BmdSkinCont(new Sophia008(),8,ST_CHAR,null,null,CT_GB,[Sophia.CHAR_NUM],[Games.blasterMaster,Games.blasterMasterSnes,Games.blasterMasterEnemyBelow,Games.blasterMaster],[null,null,"your frog"],null));
         BMC_VEC.push(new BmdSkinCont(new Sophia009(),9,ST_CHAR,null,null,CT_16B,[Sophia.CHAR_NUM],[Games.tetris,Games.tetrisDrMario,Games.tetrisGb,Games.tetrisDrMario],["Tetrimino","Tetrimino","our king"],null));
         BMC_VEC.push(new BmdSkinCont(new Sophia010(),10,ST_CHAR,null,null,CT_16B,[Sophia.CHAR_NUM],[Games.blasterMaster,Games.blasterMasterSnes,Games.blasterMasterEnemyBelow,Games.blasterMaster],[null,null,"your frog"],null));
      }
      
      public function BmdInfo()
      {
         super();
      }
      
      public static function initiate() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < HIDE_TOP_CASTLES.length)
         {
            _loc2_ = int(HIDE_TOP_CASTLES[_loc1_]);
            hideTopCastleDct[_loc2_] = _loc2_;
            _loc1_++;
         }
      }
      
      public static function setUpMasterCharBmpVec() : void
      {
         var _loc4_:* = null;
         var _loc5_:Class = null;
         var _loc1_:Vector.<Array> = CharacterInfo.CHAR_ARR;
         var _loc2_:int = int(_loc1_.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = _loc1_[_loc3_][CharacterInfo.IND_CHAR_NAME_CLASS] + "000";
            _loc5_ = BmdInfo[_loc4_];
            MASTER_CHAR_BMP_VEC[_loc3_] = new _loc5_();
            _loc3_++;
         }
      }
      
      public static function getBmcVec() : Vector.<BmdSkinCont>
      {
         return BMC_VEC;
      }
      
      public static function getBmp(param1:Array) : Bitmap
      {
         return Bitmap(param1[IND_BMP]);
      }
      
      public static function getSkinType(param1:Array) : int
      {
         return param1[IND_SHEET_TYPE];
      }
      
      public static function getConsoleType(param1:Array) : String
      {
         return param1[IND_CONSOLE_TYPE];
      }
      
      public static function getCharNums(param1:Array) : Array
      {
         return param1[IND_CHARACTERS];
      }
      
      public static function getGames(param1:Array) : Array
      {
         return param1[IND_GAMES];
      }
      
      public static function getMasterCharBmp(param1:int) : Bitmap
      {
         return MASTER_CHAR_BMP_VEC[param1];
      }
      
      private static function addTheme(param1:Class, param2:int, param3:Array, param4:Array = null) : void
      {
         if(!param4)
         {
            param4 = [];
         }
         var _loc5_:Array = StringUtils.readClassData(param1);
         THEME_VEC.push(new BmdSkinCont(new param1(),_loc5_[StringUtils.IND_DATA_SKIN],ST_THEME,null,null,param2,param3,param4));
      }
      
      private static function addMainPalette(param1:Class) : void
      {
         var _loc2_:Bitmap = Bitmap(new param1());
         var _loc3_:Array = StringUtils.readClassData(param1);
         var _loc4_:int = int(_loc3_[StringUtils.IND_DATA_SKIN]);
         MAIN_PALETTE_VEC[_loc4_] = new PaletteSheet(_loc2_,PaletteSheet.TYPE_MAIN,_loc4_);
      }
      
      private static function addCharPalette(param1:Class, param2:int) : void
      {
         var _loc3_:Bitmap = Bitmap(new param1());
         CHAR_PALETTE_VEC[param2] = new PaletteSheet(_loc3_,PaletteSheet.TYPE_CHARACTER,param2);
      }
      
      private static function addCharacterPreview(param1:Class, param2:int) : void
      {
         CHARACTER_PREVIEW_VEC[param2] = Bitmap(new param1());
      }
      
      public static function getTheme(param1:int) : BmdSkinCont
      {
         return THEME_VEC[param1];
      }
      
      public static function getMainPaletteSheet(param1:int) : PaletteSheet
      {
         return MAIN_PALETTE_VEC[param1];
      }
      
      public static function getCharPaletteSheet(param1:int) : PaletteSheet
      {
         return CHAR_PALETTE_VEC[param1];
      }
      
      public static function getMapSkinPreviews() : Vector.<CustomMovieClip>
      {
         var _loc1_:Vector.<BmdSkinCont> = null;
         var _loc2_:int = 0;
         var _loc3_:BitmapData = null;
         var _loc4_:BitmapData = null;
         var _loc5_:CustomMovieClip = null;
         if(mapSkinPreviews == null)
         {
            _loc1_ = GraphicsManager.INSTANCE.CLEAN_BMD_VEC_MAP;
            mapSkinPreviews = new Vector.<CustomMovieClip>(_loc1_.length,true);
            while(_loc2_ < _loc1_.length)
            {
               _loc3_ = _loc1_[_loc2_].bmd;
               _loc4_ = new BitmapData(MAP_SKIN_PREVIEW_RECTANGLE.width,MAP_SKIN_PREVIEW_RECTANGLE.height,true,0);
               _loc4_.copyPixels(_loc3_,MAP_SKIN_PREVIEW_RECTANGLE,GlobVars.ZERO_PT);
               _loc5_ = new CustomMovieClip();
               _loc5_.setNumFrames(1);
               _loc5_.addChildToSingleFrame(new Bitmap(_loc4_),1);
               _loc5_.scaleX = GlobVars.SCALE;
               _loc5_.scaleY = GlobVars.SCALE;
               _loc5_.gotoAndStop(1);
               mapSkinPreviews[_loc2_] = _loc5_;
               _loc2_++;
            }
         }
         return mapSkinPreviews;
      }
      
      public static function getSoundReplaceDct(param1:int, param2:int, param3:int) : Dictionary
      {
         return null;
      }
   }
}
