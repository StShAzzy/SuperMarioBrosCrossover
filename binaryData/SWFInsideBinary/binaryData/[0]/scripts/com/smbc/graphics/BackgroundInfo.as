package com.smbc.graphics
{
   import com.explodingRabbit.utils.ArrayUtils;
   import com.explodingRabbit.utils.CustomDictionary;
   import com.explodingRabbit.utils.StringUtils;
   import com.smbc.data.LevelTypes;
   import com.smbc.data.Themes;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.utils.Dictionary;
   
   public final class BackgroundInfo
   {
      
      public static const OBJ:Object = {};
      
      public static const SEP:String = "_";
      
      public static const NO_SCROLL:Number = 0;
      
      public static const SMA_SLOW:Number = 0.25;
      
      public static const SMA_MID:Number = 0.525;
      
      public static const SMA_FAST:Number = 0.8;
      
      public static const REG_SCROLL:int = Background.SCROLL_SPEED_NORMAL;
      
      private static const BG_ARR:Array = [];
      
      private static const FG_ARR:Array = [];
      
      private static const EXTRA_THEME_ARR:Array = [];
      
      private static const BG_SET_ARR:Array = [];
      
      private static var bgSetOvrdDct:CustomDictionary = new CustomDictionary();
      
      public static const THEME_OVRD_VEC:Vector.<Dictionary> = new Vector.<Dictionary>();
      
      private static const TYPE_BG:String = Background.TYPE_BG;
      
      private static const TYPE_FG:String = Background.TYPE_FG;
      
      public static const TYPE_MAP_OVRD:String = "ovrd";
      
      public static const TYPE_THEME:String = "thm";
      
      public static const IND_SET_ARR_BG:int = 0;
      
      public static const IND_SET_ARR_FG:int = 1;
      
      public static const IND_SET_ARR_MAP_OVRD:int = 2;
      
      public static const IND_DATA_TYPE:int = StringUtils.IND_DATA_TYPE;
      
      public static const IND_DATA_SKIN:int = StringUtils.IND_DATA_SKIN;
      
      public static const IND_DATA_THEME:int = StringUtils.IND_DATA_THEME;
      
      public static const IND_DATA_SET:int = StringUtils.IND_DATA_SET;
      
      public static const IND_DATA_LAYER:int = StringUtils.IND_DATA_LAYER;
      
      public static const NUM_THEMES_ON_SHEET:int = 9;
      
      private static const THEME_MIN:int = Themes.MIN_THEME;
      
      public static const SET_MIN:int = 1;
      
      public static const bg_000_01_01_00:Class = BackgroundInfo_bg_000_01_01_00;
      
      public static const bg_000_01_02_00:Class = BackgroundInfo_bg_000_01_02_00;
      
      public static const bg_000_01_03_00:Class = BackgroundInfo_bg_000_01_03_00;
      
      public static const bg_000_01_04_00:Class = BackgroundInfo_bg_000_01_04_00;
      
      public static const bg_000_01_05_00:Class = BackgroundInfo_bg_000_01_05_00;
      
      public static const bg_000_01_06_00:Class = BackgroundInfo_bg_000_01_06_00;
      
      public static const bg_000_01_07_00:Class = BackgroundInfo_bg_000_01_07_00;
      
      public static const bg_000_01_08_00:Class = BackgroundInfo_bg_000_01_08_00;
      
      public static const bg_000_01_09_00:Class = BackgroundInfo_bg_000_01_09_00;
      
      public static const bg_000_02_01_00:Class = BackgroundInfo_bg_000_02_01_00;
      
      public static const bg_000_02_02_00:Class = BackgroundInfo_bg_000_02_02_00;
      
      public static const bg_000_03_01_00:Class = BackgroundInfo_bg_000_03_01_00;
      
      public static const bg_000_03_02_00:Class = BackgroundInfo_bg_000_03_02_00;
      
      public static const bg_000_03_03_00:Class = BackgroundInfo_bg_000_03_03_00;
      
      public static const bg_000_03_04_00:Class = BackgroundInfo_bg_000_03_04_00;
      
      public static const bg_000_04_01_00:Class = BackgroundInfo_bg_000_04_01_00;
      
      public static const bg_000_04_02_00:Class = BackgroundInfo_bg_000_04_02_00;
      
      public static const bg_000_05_01_00:Class = BackgroundInfo_bg_000_05_01_00;
      
      public static const bg_000_05_02_00:Class = BackgroundInfo_bg_000_05_02_00;
      
      public static const bg_000_06_01_00:Class = BackgroundInfo_bg_000_06_01_00;
      
      public static const bg_000_06_02_00:Class = BackgroundInfo_bg_000_06_02_00;
      
      public static const bg_000_07_01_00:Class = BackgroundInfo_bg_000_07_01_00;
      
      public static const bg_000_07_02_00:Class = BackgroundInfo_bg_000_07_02_00;
      
      public static const bg_000_08_01_00:Class = BackgroundInfo_bg_000_08_01_00;
      
      public static const bg_001_01_01_00:Class = BackgroundInfo_bg_001_01_01_00;
      
      public static const bg_001_01_01_01:Class = BackgroundInfo_bg_001_01_01_01;
      
      public static const bg_001_01_01_02:Class = BackgroundInfo_bg_001_01_01_02;
      
      public static const bg_001_01_02_00:Class = BackgroundInfo_bg_001_01_02_00;
      
      public static const bg_001_01_02_01:Class = BackgroundInfo_bg_001_01_02_01;
      
      public static const bg_001_01_02_02:Class = BackgroundInfo_bg_001_01_02_02;
      
      public static const bg_001_01_03_00:Class = BackgroundInfo_bg_001_01_03_00;
      
      public static const bg_001_01_03_01:Class = BackgroundInfo_bg_001_01_03_01;
      
      public static const bg_001_01_03_02:Class = BackgroundInfo_bg_001_01_03_02;
      
      public static const bg_001_01_04_00:Class = BackgroundInfo_bg_001_01_04_00;
      
      public static const bg_001_01_04_01:Class = BackgroundInfo_bg_001_01_04_01;
      
      public static const bg_001_01_04_02:Class = BackgroundInfo_bg_001_01_04_02;
      
      public static const bg_001_01_05_00:Class = BackgroundInfo_bg_001_01_05_00;
      
      public static const bg_001_01_05_01:Class = BackgroundInfo_bg_001_01_05_01;
      
      public static const bg_001_01_05_02:Class = BackgroundInfo_bg_001_01_05_02;
      
      public static const bg_001_01_05_03:Class = BackgroundInfo_bg_001_01_05_03;
      
      public static const bg_001_01_06_00:Class = BackgroundInfo_bg_001_01_06_00;
      
      public static const bg_001_01_06_01:Class = BackgroundInfo_bg_001_01_06_01;
      
      public static const bg_001_01_06_02:Class = BackgroundInfo_bg_001_01_06_02;
      
      public static const bg_001_01_07_00:Class = BackgroundInfo_bg_001_01_07_00;
      
      public static const bg_001_01_07_01:Class = BackgroundInfo_bg_001_01_07_01;
      
      public static const bg_001_01_07_02:Class = BackgroundInfo_bg_001_01_07_02;
      
      public static const bg_001_01_08_00:Class = BackgroundInfo_bg_001_01_08_00;
      
      public static const bg_001_01_08_01:Class = BackgroundInfo_bg_001_01_08_01;
      
      public static const bg_001_01_09_00:Class = BackgroundInfo_bg_001_01_09_00;
      
      public static const bg_001_01_09_01:Class = BackgroundInfo_bg_001_01_09_01;
      
      public static const bg_001_01_09_02:Class = BackgroundInfo_bg_001_01_09_02;
      
      public static const bg_001_01_10_00:Class = BackgroundInfo_bg_001_01_10_00;
      
      public static const bg_001_01_10_01:Class = BackgroundInfo_bg_001_01_10_01;
      
      public static const bg_001_02_01_00:Class = BackgroundInfo_bg_001_02_01_00;
      
      public static const bg_001_02_01_01:Class = BackgroundInfo_bg_001_02_01_01;
      
      public static const bg_001_02_01_02:Class = BackgroundInfo_bg_001_02_01_02;
      
      public static const bg_001_02_02_00:Class = BackgroundInfo_bg_001_02_02_00;
      
      public static const bg_001_02_02_01:Class = BackgroundInfo_bg_001_02_02_01;
      
      public static const bg_001_02_02_02:Class = BackgroundInfo_bg_001_02_02_02;
      
      public static const bg_001_03_01_00:Class = BackgroundInfo_bg_001_03_01_00;
      
      public static const bg_001_03_02_00:Class = BackgroundInfo_bg_001_03_02_00;
      
      public static const bg_001_03_02_01:Class = BackgroundInfo_bg_001_03_02_01;
      
      public static const bg_001_03_03_00:Class = BackgroundInfo_bg_001_03_03_00;
      
      public static const fg_001_03_03_00:Class = BackgroundInfo_fg_001_03_03_00;
      
      public static const bg_001_03_04_00:Class = BackgroundInfo_bg_001_03_04_00;
      
      public static const bg_001_04_01_00:Class = BackgroundInfo_bg_001_04_01_00;
      
      public static const bg_001_04_01_01:Class = BackgroundInfo_bg_001_04_01_01;
      
      public static const fg_001_04_01_00:Class = BackgroundInfo_fg_001_04_01_00;
      
      public static const bg_001_04_02_00:Class = BackgroundInfo_bg_001_04_02_00;
      
      public static const bg_001_04_02_01:Class = BackgroundInfo_bg_001_04_02_01;
      
      public static const fg_001_04_02_00:Class = BackgroundInfo_fg_001_04_02_00;
      
      public static const bg_001_05_01_00:Class = BackgroundInfo_bg_001_05_01_00;
      
      public static const bg_001_05_02_00:Class = BackgroundInfo_bg_001_05_02_00;
      
      public static const bg_001_05_02_01:Class = BackgroundInfo_bg_001_05_02_01;
      
      public static const fg_001_05_02_00:Class = BackgroundInfo_fg_001_05_02_00;
      
      public static const bg_001_05_03_00:Class = BackgroundInfo_bg_001_05_03_00;
      
      public static const bg_001_06_01_00:Class = BackgroundInfo_bg_001_06_01_00;
      
      public static const bg_001_06_01_01:Class = BackgroundInfo_bg_001_06_01_01;
      
      public static const bg_001_06_01_02:Class = BackgroundInfo_bg_001_06_01_02;
      
      public static const bg_001_06_02_00:Class = BackgroundInfo_bg_001_06_02_00;
      
      public static const bg_001_06_02_01:Class = BackgroundInfo_bg_001_06_02_01;
      
      public static const bg_001_06_02_02:Class = BackgroundInfo_bg_001_06_02_02;
      
      public static const bg_001_06_02_03:Class = BackgroundInfo_bg_001_06_02_03;
      
      public static const bg_001_07_01_00:Class = BackgroundInfo_bg_001_07_01_00;
      
      public static const bg_001_07_01_01:Class = BackgroundInfo_bg_001_07_01_01;
      
      public static const bg_001_07_02_00:Class = BackgroundInfo_bg_001_07_02_00;
      
      public static const bg_001_07_02_01:Class = BackgroundInfo_bg_001_07_02_01;
      
      public static const bg_001_08_01_00:Class = BackgroundInfo_bg_001_08_01_00;
      
      public static const bg_001_08_01_01:Class = BackgroundInfo_bg_001_08_01_01;
      
      public static const bg_001_08_02_00:Class = BackgroundInfo_bg_001_08_02_00;
      
      public static const bg_001_08_02_01:Class = BackgroundInfo_bg_001_08_02_01;
      
      public static const bg_001_08_03_00:Class = BackgroundInfo_bg_001_08_03_00;
      
      public static const bg_001_08_03_01:Class = BackgroundInfo_bg_001_08_03_01;
      
      public static const bg_001_08_03_02:Class = BackgroundInfo_bg_001_08_03_02;
      
      public static const bg_001_08_04_00:Class = BackgroundInfo_bg_001_08_04_00;
      
      public static const bg_001_08_04_01:Class = BackgroundInfo_bg_001_08_04_01;
      
      public static const bg_001_08_04_02:Class = BackgroundInfo_bg_001_08_04_02;
      
      public static const bg_001_09_01_00:Class = BackgroundInfo_bg_001_09_01_00;
      
      public static const bg_001_10_01_00:Class = BackgroundInfo_bg_001_10_01_00;
      
      public static const bg_001_10_01_01:Class = BackgroundInfo_bg_001_10_01_01;
      
      public static const fg_001_10_01_00:Class = BackgroundInfo_fg_001_10_01_00;
      
      public static const bg_001_11_01_00:Class = BackgroundInfo_bg_001_11_01_00;
      
      public static const bg_001_11_01_01:Class = BackgroundInfo_bg_001_11_01_01;
      
      public static const fg_001_11_01_00:Class = BackgroundInfo_fg_001_11_01_00;
      
      public static const bg_002_01_01_00:Class = BackgroundInfo_bg_002_01_01_00;
      
      public static const bg_002_01_02_00:Class = BackgroundInfo_bg_002_01_02_00;
      
      public static const bg_002_01_03_00:Class = BackgroundInfo_bg_002_01_03_00;
      
      public static const bg_002_01_04_00:Class = BackgroundInfo_bg_002_01_04_00;
      
      public static const bg_002_02_01_00:Class = BackgroundInfo_bg_002_02_01_00;
      
      public static const bg_002_03_01_00:Class = BackgroundInfo_bg_002_03_01_00;
      
      public static const bg_002_03_02_00:Class = BackgroundInfo_bg_002_03_02_00;
      
      public static const bg_002_04_01_00:Class = BackgroundInfo_bg_002_04_01_00;
      
      public static const bg_002_05_01_00:Class = BackgroundInfo_bg_002_05_01_00;
      
      public static const bg_002_06_01_00:Class = BackgroundInfo_bg_002_06_01_00;
      
      public static const bg_002_07_01_00:Class = BackgroundInfo_bg_002_07_01_00;
      
      public static const bg_002_08_01_00:Class = BackgroundInfo_bg_002_08_01_00;
      
      public static const bg_002_09_01_00:Class = BackgroundInfo_bg_002_09_01_00;
      
      public static const bg_002_10_01_00:Class = BackgroundInfo_bg_002_10_01_00;
      
      public static const bg_002_11_01_00:Class = BackgroundInfo_bg_002_11_01_00;
      
      public static const bg_002_12_01_00:Class = BackgroundInfo_bg_002_12_01_00;
      
      private static const SKIN_SMB3:int = 3;
      
      public static const bg_003_01_01_00:Class = BackgroundInfo_bg_003_01_01_00;
      
      public static const bg_003_01_02_00:Class = BackgroundInfo_bg_003_01_02_00;
      
      public static const bg_003_02_01_00:Class = BackgroundInfo_bg_003_02_01_00;
      
      public static const bg_003_03_01_00:Class = BackgroundInfo_bg_003_03_01_00;
      
      public static const bg_003_03_02_00:Class = BackgroundInfo_bg_003_03_02_00;
      
      public static const bg_003_04_01_00:Class = BackgroundInfo_bg_003_04_01_00;
      
      public static const bg_003_04_02_00:Class = BackgroundInfo_bg_003_04_02_00;
      
      public static const bg_003_04_03_00:Class = BackgroundInfo_bg_003_04_03_00;
      
      public static const bg_003_05_01_00:Class = BackgroundInfo_bg_003_05_01_00;
      
      public static const fg_003_05_01_00:Class = BackgroundInfo_fg_003_05_01_00;
      
      public static const bg_003_05_02_00:Class = BackgroundInfo_bg_003_05_02_00;
      
      public static const bg_003_05_03_00:Class = BackgroundInfo_bg_003_05_03_00;
      
      public static const bg_003_05_04_00:Class = BackgroundInfo_bg_003_05_04_00;
      
      public static const fg_003_05_04_00:Class = BackgroundInfo_fg_003_05_04_00;
      
      public static const bg_003_05_05_00:Class = BackgroundInfo_bg_003_05_05_00;
      
      public static const bg_003_05_06_00:Class = BackgroundInfo_bg_003_05_06_00;
      
      public static const bg_003_05_07_00:Class = BackgroundInfo_bg_003_05_07_00;
      
      public static const bg_003_05_08_00:Class = BackgroundInfo_bg_003_05_08_00;
      
      public static const bg_003_05_09_00:Class = BackgroundInfo_bg_003_05_09_00;
      
      public static const bg_003_05_10_00:Class = BackgroundInfo_bg_003_05_10_00;
      
      public static const bg_003_06_01_00:Class = BackgroundInfo_bg_003_06_01_00;
      
      public static const bg_003_07_01_00:Class = BackgroundInfo_bg_003_07_01_00;
      
      public static const bg_003_08_01_00:Class = BackgroundInfo_bg_003_08_01_00;
      
      public static const bg_003_08_02_00:Class = BackgroundInfo_bg_003_08_02_00;
      
      public static const bg_003_09_01_00:Class = BackgroundInfo_bg_003_09_01_00;
      
      public static const bg_003_10_01_00:Class = BackgroundInfo_bg_003_10_01_00;
      
      public static const bg_003_10_02_00:Class = BackgroundInfo_bg_003_10_02_00;
      
      public static const bg_003_10_03_00:Class = BackgroundInfo_bg_003_10_03_00;
      
      public static const bg_003_11_01_00:Class = BackgroundInfo_bg_003_11_01_00;
      
      public static const bg_003_11_02_00:Class = BackgroundInfo_bg_003_11_02_00;
      
      public static const bg_003_12_01_00:Class = BackgroundInfo_bg_003_12_01_00;
      
      public static const bg_003_13_01_00:Class = BackgroundInfo_bg_003_13_01_00;
      
      public static const bg_003_14_01_00:Class = BackgroundInfo_bg_003_14_01_00;
      
      public static const bg_003_15_01_00:Class = BackgroundInfo_bg_003_15_01_00;
      
      public static const rep_003_castle:Class = BackgroundInfo_rep_003_castle;
      
      public static const bg_004_01_01_00:Class = BackgroundInfo_bg_004_01_01_00;
      
      public static const bg_004_01_01_01:Class = BackgroundInfo_bg_004_01_01_01;
      
      public static const bg_004_01_02_00:Class = BackgroundInfo_bg_004_01_02_00;
      
      public static const bg_004_01_03_00:Class = BackgroundInfo_bg_004_01_03_00;
      
      public static const bg_004_01_03_01:Class = BackgroundInfo_bg_004_01_03_01;
      
      public static const bg_004_02_01_00:Class = BackgroundInfo_bg_004_02_01_00;
      
      public static const bg_004_02_01_01:Class = BackgroundInfo_bg_004_02_01_01;
      
      public static const bg_004_02_02_00:Class = BackgroundInfo_bg_004_02_02_00;
      
      public static const bg_004_02_02_01:Class = BackgroundInfo_bg_004_02_02_01;
      
      public static const bg_004_03_01_00:Class = BackgroundInfo_bg_004_03_01_00;
      
      public static const bg_004_03_02_00:Class = BackgroundInfo_bg_004_03_02_00;
      
      public static const bg_004_03_03_00:Class = BackgroundInfo_bg_004_03_03_00;
      
      public static const bg_004_04_01_00:Class = BackgroundInfo_bg_004_04_01_00;
      
      public static const fg_004_04_01_01:Class = BackgroundInfo_fg_004_04_01_01;
      
      public static const bg_004_05_01_00:Class = BackgroundInfo_bg_004_05_01_00;
      
      public static const bg_004_05_01_01:Class = BackgroundInfo_bg_004_05_01_01;
      
      public static const fg_004_05_01_01:Class = BackgroundInfo_fg_004_05_01_01;
      
      public static const bg_004_06_01_00:Class = BackgroundInfo_bg_004_06_01_00;
      
      public static const bg_004_06_02_00:Class = BackgroundInfo_bg_004_06_02_00;
      
      public static const fg_004_06_02_01:Class = BackgroundInfo_fg_004_06_02_01;
      
      public static const bg_004_07_01_00:Class = BackgroundInfo_bg_004_07_01_00;
      
      public static const bg_004_07_02_00:Class = BackgroundInfo_bg_004_07_02_00;
      
      public static const bg_004_08_01_00:Class = BackgroundInfo_bg_004_08_01_00;
      
      public static const bg_004_08_02_00:Class = BackgroundInfo_bg_004_08_02_00;
      
      public static const bg_004_08_03_00:Class = BackgroundInfo_bg_004_08_03_00;
      
      public static const bg_004_09_01_00:Class = BackgroundInfo_bg_004_09_01_00;
      
      public static const bg_004_09_02_00:Class = BackgroundInfo_bg_004_09_02_00;
      
      public static const bg_004_10_01_00:Class = BackgroundInfo_bg_004_10_01_00;
      
      public static const bg_004_10_01_01:Class = BackgroundInfo_bg_004_10_01_01;
      
      public static const bg_004_10_02_00:Class = BackgroundInfo_bg_004_10_02_00;
      
      public static const bg_004_10_02_01:Class = BackgroundInfo_bg_004_10_02_01;
      
      public static const bg_004_10_03_00:Class = BackgroundInfo_bg_004_10_03_00;
      
      public static const bg_004_11_01_00:Class = BackgroundInfo_bg_004_11_01_00;
      
      public static const bg_004_11_01_01:Class = BackgroundInfo_bg_004_11_01_01;
      
      public static const bg_004_11_02_00:Class = BackgroundInfo_bg_004_11_02_00;
      
      public static const bg_004_11_03_00:Class = BackgroundInfo_bg_004_11_03_00;
      
      public static const bg_004_12_01_00:Class = BackgroundInfo_bg_004_12_01_00;
      
      public static const bg_004_12_02_00:Class = BackgroundInfo_bg_004_12_02_00;
      
      public static const bg_004_13_01_00:Class = BackgroundInfo_bg_004_13_01_00;
      
      public static const bg_004_13_01_01:Class = BackgroundInfo_bg_004_13_01_01;
      
      public static const bg_004_13_02_00:Class = BackgroundInfo_bg_004_13_02_00;
      
      public static const bg_004_13_02_01:Class = BackgroundInfo_bg_004_13_02_01;
      
      public static const bg_004_13_03_00:Class = BackgroundInfo_bg_004_13_03_00;
      
      public static const bg_004_13_03_01:Class = BackgroundInfo_bg_004_13_03_01;
      
      public static const fg_004_13_03_01:Class = BackgroundInfo_fg_004_13_03_01;
      
      public static const fg_004_11_02_01:Class = BackgroundInfo_fg_004_11_02_01;
      
      public static const bg_004_14_01_00:Class = BackgroundInfo_bg_004_14_01_00;
      
      public static const bg_004_14_01_01:Class = BackgroundInfo_bg_004_14_01_01;
      
      public static const bg_004_14_02_00:Class = BackgroundInfo_bg_004_14_02_00;
      
      public static const bg_004_15_01_00:Class = BackgroundInfo_bg_004_15_01_00;
      
      public static const rep_004_castle:Class = BackgroundInfo_rep_004_castle;
      
      public static const bg_005_01_01_00:Class = BackgroundInfo_bg_005_01_01_00;
      
      public static const bg_005_01_02_00:Class = BackgroundInfo_bg_005_01_02_00;
      
      public static const bg_005_01_03_00:Class = BackgroundInfo_bg_005_01_03_00;
      
      public static const bg_005_01_04_00:Class = BackgroundInfo_bg_005_01_04_00;
      
      public static const bg_005_02_01_00:Class = BackgroundInfo_bg_005_02_01_00;
      
      public static const bg_005_02_02_00:Class = BackgroundInfo_bg_005_02_02_00;
      
      public static const bg_005_02_03_00:Class = BackgroundInfo_bg_005_02_03_00;
      
      public static const bg_005_02_04_00:Class = BackgroundInfo_bg_005_02_04_00;
      
      public static const bg_005_02_05_00:Class = BackgroundInfo_bg_005_02_05_00;
      
      public static const bg_005_03_01_00:Class = BackgroundInfo_bg_005_03_01_00;
      
      public static const bg_005_03_02_00:Class = BackgroundInfo_bg_005_03_02_00;
      
      public static const bg_005_03_03_00:Class = BackgroundInfo_bg_005_03_03_00;
      
      public static const bg_005_03_04_00:Class = BackgroundInfo_bg_005_03_04_00;
      
      public static const fg_005_03_01_01:Class = BackgroundInfo_fg_005_03_01_01;
      
      public static const fg_005_03_02_01:Class = BackgroundInfo_fg_005_03_02_01;
      
      public static const fg_005_03_03_01:Class = BackgroundInfo_fg_005_03_03_01;
      
      public static const fg_005_03_04_01:Class = BackgroundInfo_fg_005_03_04_01;
      
      public static const bg_005_04_01_00:Class = BackgroundInfo_bg_005_04_01_00;
      
      public static const bg_005_04_02_00:Class = BackgroundInfo_bg_005_04_02_00;
      
      public static const bg_005_04_03_00:Class = BackgroundInfo_bg_005_04_03_00;
      
      public static const bg_005_04_04_00:Class = BackgroundInfo_bg_005_04_04_00;
      
      public static const bg_005_04_05_00:Class = BackgroundInfo_bg_005_04_05_00;
      
      public static const bg_005_05_01_00:Class = BackgroundInfo_bg_005_05_01_00;
      
      public static const bg_005_05_02_00:Class = BackgroundInfo_bg_005_05_02_00;
      
      public static const bg_005_06_01_00:Class = BackgroundInfo_bg_005_06_01_00;
      
      public static const bg_005_06_02_00:Class = BackgroundInfo_bg_005_06_02_00;
      
      public static const bg_005_06_03_00:Class = BackgroundInfo_bg_005_06_03_00;
      
      public static const bg_005_06_04_00:Class = BackgroundInfo_bg_005_06_04_00;
      
      public static const bg_006_01_01_00:Class = BackgroundInfo_bg_006_01_01_00;
      
      public static const bg_006_01_02_00:Class = BackgroundInfo_bg_006_01_02_00;
      
      public static const bg_006_02_01_00:Class = BackgroundInfo_bg_006_02_01_00;
      
      public static const bg_006_02_02_00:Class = BackgroundInfo_bg_006_02_02_00;
      
      public static const bg_006_02_03_00:Class = BackgroundInfo_bg_006_02_03_00;
      
      public static const bg_006_02_04_00:Class = BackgroundInfo_bg_006_02_04_00;
      
      public static const bg_006_03_01_00:Class = BackgroundInfo_bg_006_03_01_00;
      
      public static const bg_006_04_01_00:Class = BackgroundInfo_bg_006_04_01_00;
      
      public static const bg_006_04_02_00:Class = BackgroundInfo_bg_006_04_02_00;
      
      public static const bg_006_05_01_00:Class = BackgroundInfo_bg_006_05_01_00;
      
      public static const bg_006_05_02_00:Class = BackgroundInfo_bg_006_05_02_00;
      
      public static const bg_006_05_03_00:Class = BackgroundInfo_bg_006_05_03_00;
      
      public static const bg_006_06_01_00:Class = BackgroundInfo_bg_006_06_01_00;
      
      public static const bg_006_07_01_00:Class = BackgroundInfo_bg_006_07_01_00;
      
      public static const bg_006_07_02_00:Class = BackgroundInfo_bg_006_07_02_00;
      
      public static const bg_006_08_01_00:Class = BackgroundInfo_bg_006_08_01_00;
      
      public static const bg_006_08_02_00:Class = BackgroundInfo_bg_006_08_02_00;
      
      public static const bg_006_09_01_00:Class = BackgroundInfo_bg_006_09_01_00;
      
      public static const bg_006_09_02_00:Class = BackgroundInfo_bg_006_09_02_00;
      
      public static const bg_006_10_01_00:Class = BackgroundInfo_bg_006_10_01_00;
      
      public static const bg_006_10_02_00:Class = BackgroundInfo_bg_006_10_02_00;
      
      public static const bg_006_11_01_00:Class = BackgroundInfo_bg_006_11_01_00;
      
      public static const bg_006_11_02_00:Class = BackgroundInfo_bg_006_11_02_00;
      
      public static const bg_006_12_01_00:Class = BackgroundInfo_bg_006_12_01_00;
      
      public static const bg_006_12_02_00:Class = BackgroundInfo_bg_006_12_02_00;
      
      public static const bg_006_13_01_00:Class = BackgroundInfo_bg_006_13_01_00;
      
      public static const bg_006_13_02_00:Class = BackgroundInfo_bg_006_13_02_00;
      
      public static const bg_006_13_03_00:Class = BackgroundInfo_bg_006_13_03_00;
      
      public static const bg_006_13_04_00:Class = BackgroundInfo_bg_006_13_04_00;
      
      public static const bg_006_13_05_00:Class = BackgroundInfo_bg_006_13_05_00;
      
      public static const bg_006_14_01_00:Class = BackgroundInfo_bg_006_14_01_00;
      
      public static const bg_006_15_01_00:Class = BackgroundInfo_bg_006_15_01_00;
      
      public static const bg_006_15_02_00:Class = BackgroundInfo_bg_006_15_02_00;
      
      public static const bg_006_16_01_00:Class = BackgroundInfo_bg_006_16_01_00;
      
      public static const bg_007_01_01_00:Class = BackgroundInfo_bg_007_01_01_00;
      
      public static const bg_007_01_02_00:Class = BackgroundInfo_bg_007_01_02_00;
      
      public static const bg_007_01_03_00:Class = BackgroundInfo_bg_007_01_03_00;
      
      public static const bg_007_01_04_00:Class = BackgroundInfo_bg_007_01_04_00;
      
      public static const bg_007_01_05_00:Class = BackgroundInfo_bg_007_01_05_00;
      
      public static const bg_008_01_01_00:Class = BackgroundInfo_bg_008_01_01_00;
      
      public static const bg_008_01_02_00:Class = BackgroundInfo_bg_008_01_02_00;
      
      public static const bg_008_01_03_00:Class = BackgroundInfo_bg_008_01_03_00;
      
      public static const bg_008_01_04_00:Class = BackgroundInfo_bg_008_01_04_00;
      
      public static const bg_008_01_05_00:Class = BackgroundInfo_bg_008_01_05_00;
      
      public static const bg_008_01_06_00:Class = BackgroundInfo_bg_008_01_06_00;
      
      public static const bg_008_01_07_00:Class = BackgroundInfo_bg_008_01_07_00;
      
      public static const bg_008_01_08_00:Class = BackgroundInfo_bg_008_01_08_00;
      
      public static const bg_008_02_01_00:Class = BackgroundInfo_bg_008_02_01_00;
      
      public static const bg_008_03_01_00:Class = BackgroundInfo_bg_008_03_01_00;
      
      public static const bg_008_03_02_00:Class = BackgroundInfo_bg_008_03_02_00;
      
      public static const bg_008_03_03_00:Class = BackgroundInfo_bg_008_03_03_00;
      
      public static const bg_008_03_04_00:Class = BackgroundInfo_bg_008_03_04_00;
      
      public static const bg_008_04_01_00:Class = BackgroundInfo_bg_008_04_01_00;
      
      public static const bg_008_04_02_00:Class = BackgroundInfo_bg_008_04_02_00;
      
      public static const bg_008_05_01_00:Class = BackgroundInfo_bg_008_05_01_00;
      
      public static const bg_008_05_02_00:Class = BackgroundInfo_bg_008_05_02_00;
      
      public static const bg_008_06_01_00:Class = BackgroundInfo_bg_008_06_01_00;
      
      public static const bg_008_07_01_00:Class = BackgroundInfo_bg_008_07_01_00;
      
      public static const bg_008_07_02_00:Class = BackgroundInfo_bg_008_07_02_00;
      
      public static const bg_008_08_01_00:Class = BackgroundInfo_bg_008_08_01_00;
      
      public static const bg_009_01_01_00:Class = BackgroundInfo_bg_009_01_01_00;
      
      public static const bg_009_01_02_00:Class = BackgroundInfo_bg_009_01_02_00;
      
      public static const bg_009_01_03_00:Class = BackgroundInfo_bg_009_01_03_00;
      
      public static const bg_009_02_01_00:Class = BackgroundInfo_bg_009_02_01_00;
      
      public static const bg_009_02_02_00:Class = BackgroundInfo_bg_009_02_02_00;
      
      public static const bg_009_02_03_00:Class = BackgroundInfo_bg_009_02_03_00;
      
      public static const bg_009_02_04_00:Class = BackgroundInfo_bg_009_02_04_00;
      
      public static const bg_009_02_05_00:Class = BackgroundInfo_bg_009_02_05_00;
      
      public static const bg_009_02_06_00:Class = BackgroundInfo_bg_009_02_06_00;
      
      public static const bg_009_03_01_00:Class = BackgroundInfo_bg_009_03_01_00;
      
      public static const bg_009_03_02_00:Class = BackgroundInfo_bg_009_03_02_00;
      
      public static const bg_009_04_01_00:Class = BackgroundInfo_bg_009_04_01_00;
      
      public static const bg_009_05_01_00:Class = BackgroundInfo_bg_009_05_01_00;
      
      public static const bg_009_06_01_00:Class = BackgroundInfo_bg_009_06_01_00;
      
      public static const bg_009_06_02_00:Class = BackgroundInfo_bg_009_06_02_00;
      
      public static const bg_009_07_01_00:Class = BackgroundInfo_bg_009_07_01_00;
      
      public static const bg_009_08_01_00:Class = BackgroundInfo_bg_009_08_01_00;
      
      public static const bg_009_09_01_00:Class = BackgroundInfo_bg_009_09_01_00;
      
      public static const bg_009_10_01_00:Class = BackgroundInfo_bg_009_10_01_00;
      
      public static const bg_009_11_01_00:Class = BackgroundInfo_bg_009_11_01_00;
      
      public static const bg_009_12_01_00:Class = BackgroundInfo_bg_009_12_01_00;
      
      public static const bg_009_13_01_00:Class = BackgroundInfo_bg_009_13_01_00;
      
      public static const bg_009_14_01_00:Class = BackgroundInfo_bg_009_14_01_00;
      
      public static const bg_009_15_01_00:Class = BackgroundInfo_bg_009_15_01_00;
      
      public static const bg_010_01_01_00:Class = BackgroundInfo_bg_010_01_01_00;
      
      public static const bg_010_01_02_00:Class = BackgroundInfo_bg_010_01_02_00;
      
      public static const bg_010_01_03_00:Class = BackgroundInfo_bg_010_01_03_00;
      
      public static const bg_010_01_04_00:Class = BackgroundInfo_bg_010_01_04_00;
      
      public static const bg_010_01_05_00:Class = BackgroundInfo_bg_010_01_05_00;
      
      public static const bg_010_01_06_00:Class = BackgroundInfo_bg_010_01_06_00;
      
      public static const bg_010_01_07_00:Class = BackgroundInfo_bg_010_01_07_00;
      
      public static const bg_010_01_08_00:Class = BackgroundInfo_bg_010_01_08_00;
      
      public static const bg_010_01_09_00:Class = BackgroundInfo_bg_010_01_09_00;
      
      public static const bg_010_01_10_00:Class = BackgroundInfo_bg_010_01_10_00;
      
      public static const bg_010_01_11_00:Class = BackgroundInfo_bg_010_01_11_00;
      
      public static const bg_010_01_12_00:Class = BackgroundInfo_bg_010_01_12_00;
      
      public static const bg_010_01_13_00:Class = BackgroundInfo_bg_010_01_13_00;
      
      public static const bg_010_01_14_00:Class = BackgroundInfo_bg_010_01_14_00;
      
      public static const bg_010_01_15_00:Class = BackgroundInfo_bg_010_01_15_00;
      
      public static const bg_010_02_01_00:Class = BackgroundInfo_bg_010_02_01_00;
      
      public static const bg_010_02_02_00:Class = BackgroundInfo_bg_010_02_02_00;
      
      public static const bg_010_02_03_00:Class = BackgroundInfo_bg_010_02_03_00;
      
      public static const bg_010_02_04_00:Class = BackgroundInfo_bg_010_02_04_00;
      
      public static const bg_010_02_05_00:Class = BackgroundInfo_bg_010_02_05_00;
      
      public static const bg_010_03_01_00:Class = BackgroundInfo_bg_010_03_01_00;
      
      public static const bg_010_03_01_01:Class = BackgroundInfo_bg_010_03_01_01;
      
      public static const bg_010_03_02_00:Class = BackgroundInfo_bg_010_03_02_00;
      
      public static const bg_010_03_02_01:Class = BackgroundInfo_bg_010_03_02_01;
      
      public static const bg_010_03_03_00:Class = BackgroundInfo_bg_010_03_03_00;
      
      public static const bg_010_03_04_00:Class = BackgroundInfo_bg_010_03_04_00;
      
      public static const bg_010_03_04_01:Class = BackgroundInfo_bg_010_03_04_01;
      
      public static const bg_010_04_01_00:Class = BackgroundInfo_bg_010_04_01_00;
      
      public static const bg_010_04_02_00:Class = BackgroundInfo_bg_010_04_02_00;
      
      public static const bg_010_04_03_00:Class = BackgroundInfo_bg_010_04_03_00;
      
      public static const bg_010_04_04_00:Class = BackgroundInfo_bg_010_04_04_00;
      
      public static const bg_010_05_01_00:Class = BackgroundInfo_bg_010_05_01_00;
      
      public static const bg_010_05_02_00:Class = BackgroundInfo_bg_010_05_02_00;
      
      public static const bg_010_05_03_00:Class = BackgroundInfo_bg_010_05_03_00;
      
      public static const bg_010_05_04_00:Class = BackgroundInfo_bg_010_05_04_00;
      
      public static const bg_010_05_05_00:Class = BackgroundInfo_bg_010_05_05_00;
      
      public static const bg_010_05_06_00:Class = BackgroundInfo_bg_010_05_06_00;
      
      public static const bg_010_05_07_00:Class = BackgroundInfo_bg_010_05_07_00;
      
      public static const bg_010_05_08_00:Class = BackgroundInfo_bg_010_05_08_00;
      
      public static const bg_010_06_01_00:Class = BackgroundInfo_bg_010_06_01_00;
      
      public static const bg_010_07_01_00:Class = BackgroundInfo_bg_010_07_01_00;
      
      public static const bg_010_07_02_00:Class = BackgroundInfo_bg_010_07_02_00;
      
      public static const bg_010_07_03_00:Class = BackgroundInfo_bg_010_07_03_00;
      
      public static const bg_010_08_01_00:Class = BackgroundInfo_bg_010_08_01_00;
      
      public static const bg_010_08_02_00:Class = BackgroundInfo_bg_010_08_02_00;
      
      public static const bg_011_01_01_00:Class = BackgroundInfo_bg_011_01_01_00;
      
      public static const bg_011_01_02_00:Class = BackgroundInfo_bg_011_01_02_00;
      
      public static const bg_011_01_03_00:Class = BackgroundInfo_bg_011_01_03_00;
      
      public static const bg_011_01_04_00:Class = BackgroundInfo_bg_011_01_04_00;
      
      public static const bg_011_01_05_00:Class = BackgroundInfo_bg_011_01_05_00;
      
      public static const bg_011_01_06_00:Class = BackgroundInfo_bg_011_01_06_00;
      
      public static const bg_011_01_07_00:Class = BackgroundInfo_bg_011_01_07_00;
      
      public static const bg_011_01_08_00:Class = BackgroundInfo_bg_011_01_08_00;
      
      public static const bg_011_01_09_00:Class = BackgroundInfo_bg_011_01_09_00;
      
      public static const bg_011_02_01_00:Class = BackgroundInfo_bg_011_02_01_00;
      
      public static const bg_011_02_02_00:Class = BackgroundInfo_bg_011_02_02_00;
      
      public static const bg_011_03_01_00:Class = BackgroundInfo_bg_011_03_01_00;
      
      public static const bg_011_03_02_00:Class = BackgroundInfo_bg_011_03_02_00;
      
      public static const bg_011_04_01_00:Class = BackgroundInfo_bg_011_04_01_00;
      
      public static const bg_011_04_02_00:Class = BackgroundInfo_bg_011_04_02_00;
      
      public static const bg_011_05_01_00:Class = BackgroundInfo_bg_011_05_01_00;
      
      public static const bg_011_05_02_00:Class = BackgroundInfo_bg_011_05_02_00;
      
      public static const bg_011_05_03_00:Class = BackgroundInfo_bg_011_05_03_00;
      
      public static const bg_011_05_04_00:Class = BackgroundInfo_bg_011_05_04_00;
      
      public static const bg_011_06_01_00:Class = BackgroundInfo_bg_011_06_01_00;
      
      public static const bg_011_06_02_00:Class = BackgroundInfo_bg_011_06_02_00;
      
      public static const bg_011_07_01_00:Class = BackgroundInfo_bg_011_07_01_00;
      
      public static const bg_012_01_01_00:Class = BackgroundInfo_bg_012_01_01_00;
      
      public static const bg_012_01_02_00:Class = BackgroundInfo_bg_012_01_02_00;
      
      public static const bg_012_01_03_00:Class = BackgroundInfo_bg_012_01_03_00;
      
      public static const bg_012_01_04_00:Class = BackgroundInfo_bg_012_01_04_00;
      
      public static const bg_012_01_04_01:Class = BackgroundInfo_bg_012_01_04_01;
      
      public static const bg_012_02_01_00:Class = BackgroundInfo_bg_012_02_01_00;
      
      public static const bg_012_02_02_00:Class = BackgroundInfo_bg_012_02_02_00;
      
      public static const bg_012_02_02_01:Class = BackgroundInfo_bg_012_02_02_01;
      
      public static const bg_012_03_01_00:Class = BackgroundInfo_bg_012_03_01_00;
      
      public static const bg_012_03_02_00:Class = BackgroundInfo_bg_012_03_02_00;
      
      public static const bg_012_04_01_00:Class = BackgroundInfo_bg_012_04_01_00;
      
      public static const bg_012_05_01_00:Class = BackgroundInfo_bg_012_05_01_00;
      
      public static const bg_012_06_01_00:Class = BackgroundInfo_bg_012_06_01_00;
      
      public static const bg_012_07_01_00:Class = BackgroundInfo_bg_012_07_01_00;
      
      public static const bg_012_08_01_00:Class = BackgroundInfo_bg_012_08_01_00;
      
      public static const bg_012_09_01_00:Class = BackgroundInfo_bg_012_09_01_00;
      
      public static const bg_012_10_01_00:Class = BackgroundInfo_bg_012_10_01_00;
      
      public static const bg_012_11_01_00:Class = BackgroundInfo_bg_012_11_01_00;
      
      public static const bg_012_12_01_00:Class = BackgroundInfo_bg_012_12_01_00;
      
      public static const bg_012_13_01_00:Class = BackgroundInfo_bg_012_13_01_00;
      
      public static const bg_012_13_02_00:Class = BackgroundInfo_bg_012_13_02_00;
      
      public static const bg_012_14_01_00:Class = BackgroundInfo_bg_012_14_01_00;
      
      public static const bg_012_15_01_00:Class = BackgroundInfo_bg_012_15_01_00;
      
      public static const bg_012_15_02_00:Class = BackgroundInfo_bg_012_15_02_00;
      
      public static const bg_012_15_03_00:Class = BackgroundInfo_bg_012_15_03_00;
      
      public static const bg_012_16_01_00:Class = BackgroundInfo_bg_012_16_01_00;
      
      public static const bg_012_16_02_00:Class = BackgroundInfo_bg_012_16_02_00;
      
      public static const bg_013_01_01_00:Class = BackgroundInfo_bg_013_01_01_00;
      
      public static const bg_013_01_01_01:Class = BackgroundInfo_bg_013_01_01_01;
      
      public static const bg_013_01_01_02:Class = BackgroundInfo_bg_013_01_01_02;
      
      public static const bg_013_01_02_00:Class = BackgroundInfo_bg_013_01_02_00;
      
      public static const bg_013_01_02_01:Class = BackgroundInfo_bg_013_01_02_01;
      
      public static const bg_013_01_02_02:Class = BackgroundInfo_bg_013_01_02_02;
      
      public static const bg_013_01_03_00:Class = BackgroundInfo_bg_013_01_03_00;
      
      public static const bg_013_01_03_01:Class = BackgroundInfo_bg_013_01_03_01;
      
      public static const bg_013_01_03_02:Class = BackgroundInfo_bg_013_01_03_02;
      
      public static const bg_013_01_03_03:Class = BackgroundInfo_bg_013_01_03_03;
      
      public static const bg_013_01_04_00:Class = BackgroundInfo_bg_013_01_04_00;
      
      public static const bg_013_01_04_01:Class = BackgroundInfo_bg_013_01_04_01;
      
      public static const bg_013_01_04_02:Class = BackgroundInfo_bg_013_01_04_02;
      
      public static const bg_013_01_05_00:Class = BackgroundInfo_bg_013_01_05_00;
      
      public static const bg_013_01_06_00:Class = BackgroundInfo_bg_013_01_06_00;
      
      public static const bg_013_02_01_00:Class = BackgroundInfo_bg_013_02_01_00;
      
      public static const bg_013_02_02_00:Class = BackgroundInfo_bg_013_02_02_00;
      
      public static const bg_013_02_02_01:Class = BackgroundInfo_bg_013_02_02_01;
      
      public static const bg_013_02_02_02:Class = BackgroundInfo_bg_013_02_02_02;
      
      public static const bg_013_02_03_00:Class = BackgroundInfo_bg_013_02_03_00;
      
      public static const fg_013_02_03_00:Class = BackgroundInfo_fg_013_02_03_00;
      
      public static const bg_013_02_04_00:Class = BackgroundInfo_bg_013_02_04_00;
      
      public static const fg_013_02_04_00:Class = BackgroundInfo_fg_013_02_04_00;
      
      public static const bg_013_03_01_00:Class = BackgroundInfo_bg_013_03_01_00;
      
      public static const bg_013_03_02_00:Class = BackgroundInfo_bg_013_03_02_00;
      
      public static const bg_013_04_01_00:Class = BackgroundInfo_bg_013_04_01_00;
      
      public static const bg_013_04_01_01:Class = BackgroundInfo_bg_013_04_01_01;
      
      public static const bg_013_04_01_02:Class = BackgroundInfo_bg_013_04_01_02;
      
      public static const bg_013_04_02_00:Class = BackgroundInfo_bg_013_04_02_00;
      
      public static const bg_013_04_02_01:Class = BackgroundInfo_bg_013_04_02_01;
      
      public static const bg_013_04_02_02:Class = BackgroundInfo_bg_013_04_02_02;
      
      public static const bg_013_05_01_00:Class = BackgroundInfo_bg_013_05_01_00;
      
      public static const bg_013_06_01_00:Class = BackgroundInfo_bg_013_06_01_00;
      
      public static const bg_013_07_01_00:Class = BackgroundInfo_bg_013_07_01_00;
      
      public static const bg_013_07_01_01:Class = BackgroundInfo_bg_013_07_01_01;
      
      public static const bg_013_07_01_02:Class = BackgroundInfo_bg_013_07_01_02;
      
      public static const bg_013_07_02_00:Class = BackgroundInfo_bg_013_07_02_00;
      
      public static const bg_013_07_02_01:Class = BackgroundInfo_bg_013_07_02_01;
      
      public static const bg_013_07_02_02:Class = BackgroundInfo_bg_013_07_02_02;
      
      public static const bg_013_07_02_03:Class = BackgroundInfo_bg_013_07_02_03;
      
      public static const bg_013_08_01_00:Class = BackgroundInfo_bg_013_08_01_00;
      
      public static const bg_013_09_01_00:Class = BackgroundInfo_bg_013_09_01_00;
      
      public static const bg_013_10_01_00:Class = BackgroundInfo_bg_013_10_01_00;
      
      public static const bg_013_11_01_00:Class = BackgroundInfo_bg_013_11_01_00;
      
      public static const bg_013_12_01_00:Class = BackgroundInfo_bg_013_12_01_00;
      
      public static const bg_013_12_01_01:Class = BackgroundInfo_bg_013_12_01_01;
      
      public static const bg_013_12_01_02:Class = BackgroundInfo_bg_013_12_01_02;
      
      public static const bg_013_13_01_00:Class = BackgroundInfo_bg_013_13_01_00;
      
      public static const bg_013_13_02_00:Class = BackgroundInfo_bg_013_13_02_00;
      
      public static const fg_013_13_02_00:Class = BackgroundInfo_fg_013_13_02_00;
      
      public static const bg_013_14_01_00:Class = BackgroundInfo_bg_013_14_01_00;
      
      public static const bg_013_14_02_00:Class = BackgroundInfo_bg_013_14_02_00;
      
      public static const bg_013_14_03_00:Class = BackgroundInfo_bg_013_14_03_00;
      
      public static const bg_013_14_04_00:Class = BackgroundInfo_bg_013_14_04_00;
      
      public static const bg_013_14_05_00:Class = BackgroundInfo_bg_013_14_05_00;
      
      public static const bg_013_14_05_01:Class = BackgroundInfo_bg_013_14_05_01;
      
      public static const bg_013_14_05_02:Class = BackgroundInfo_bg_013_14_05_02;
      
      public static const bg_013_15_01_00:Class = BackgroundInfo_bg_013_15_01_00;
      
      public static const bg_013_15_01_01:Class = BackgroundInfo_bg_013_15_01_01;
      
      public static const bg_013_15_02_00:Class = BackgroundInfo_bg_013_15_02_00;
      
      public static const bg_013_15_02_01:Class = BackgroundInfo_bg_013_15_02_01;
      
      public static const bg_013_15_03_00:Class = BackgroundInfo_bg_013_15_03_00;
      
      public static const bg_014_01_01_00:Class = BackgroundInfo_bg_014_01_01_00;
      
      public static const bg_014_01_02_00:Class = BackgroundInfo_bg_014_01_02_00;
      
      public static const bg_014_01_03_00:Class = BackgroundInfo_bg_014_01_03_00;
      
      public static const bg_014_01_04_00:Class = BackgroundInfo_bg_014_01_04_00;
      
      public static const bg_014_01_05_00:Class = BackgroundInfo_bg_014_01_05_00;
      
      public static const bg_014_01_06_00:Class = BackgroundInfo_bg_014_01_06_00;
      
      public static const bg_014_02_01_00:Class = BackgroundInfo_bg_014_02_01_00;
      
      public static const bg_014_03_01_00:Class = BackgroundInfo_bg_014_03_01_00;
      
      public static const bg_014_03_02_00:Class = BackgroundInfo_bg_014_03_02_00;
      
      public static const bg_014_03_03_00:Class = BackgroundInfo_bg_014_03_03_00;
      
      public static const bg_014_04_01_00:Class = BackgroundInfo_bg_014_04_01_00;
      
      public static const bg_014_04_02_00:Class = BackgroundInfo_bg_014_04_02_00;
      
      public static const bg_014_05_01_00:Class = BackgroundInfo_bg_014_05_01_00;
      
      public static const bg_014_05_02_00:Class = BackgroundInfo_bg_014_05_02_00;
      
      public static const bg_014_06_01_00:Class = BackgroundInfo_bg_014_06_01_00;
      
      public static const bg_014_07_01_00:Class = BackgroundInfo_bg_014_07_01_00;
      
      public static const bg_014_07_02_00:Class = BackgroundInfo_bg_014_07_02_00;
      
      public static const bg_014_08_01_00:Class = BackgroundInfo_bg_014_08_01_00;
      
      public static const bg_015_01_01_00:Class = BackgroundInfo_bg_015_01_01_00;
      
      public static const bg_015_02_01_00:Class = BackgroundInfo_bg_015_02_01_00;
      
      public static const bg_015_02_02_00:Class = BackgroundInfo_bg_015_02_02_00;
      
      public static const bg_015_02_03_00:Class = BackgroundInfo_bg_015_02_03_00;
      
      public static const bg_015_02_04_00:Class = BackgroundInfo_bg_015_02_04_00;
      
      public static const bg_015_02_05_00:Class = BackgroundInfo_bg_015_02_05_00;
      
      public static const bg_015_03_01_00:Class = BackgroundInfo_bg_015_03_01_00;
      
      public static const bg_015_03_02_00:Class = BackgroundInfo_bg_015_03_02_00;
      
      public static const bg_015_04_01_00:Class = BackgroundInfo_bg_015_04_01_00;
      
      public static const bg_015_05_01_00:Class = BackgroundInfo_bg_015_05_01_00;
      
      public static const bg_015_05_02_00:Class = BackgroundInfo_bg_015_05_02_00;
      
      public static const bg_015_05_03_00:Class = BackgroundInfo_bg_015_05_03_00;
      
      public static const bg_015_06_01_00:Class = BackgroundInfo_bg_015_06_01_00;
      
      public static const bg_015_06_02_00:Class = BackgroundInfo_bg_015_06_02_00;
      
      public static const bg_015_07_01_00:Class = BackgroundInfo_bg_015_07_01_00;
      
      public static const bg_015_08_01_00:Class = BackgroundInfo_bg_015_08_01_00;
      
      public static const bg_016_01_01_00:Class = BackgroundInfo_bg_016_01_01_00;
      
      public static const bg_016_01_02_00:Class = BackgroundInfo_bg_016_01_02_00;
      
      public static const bg_016_01_03_00:Class = BackgroundInfo_bg_016_01_03_00;
      
      public static const bg_016_01_04_00:Class = BackgroundInfo_bg_016_01_04_00;
      
      public static const bg_016_01_05_00:Class = BackgroundInfo_bg_016_01_05_00;
      
      public static const bg_016_01_06_00:Class = BackgroundInfo_bg_016_01_06_00;
      
      public static const bg_016_01_07_00:Class = BackgroundInfo_bg_016_01_07_00;
      
      public static const bg_016_01_08_00:Class = BackgroundInfo_bg_016_01_08_00;
      
      public static const bg_016_01_09_00:Class = BackgroundInfo_bg_016_01_09_00;
      
      public static const bg_016_02_01_00:Class = BackgroundInfo_bg_016_02_01_00;
      
      public static const bg_016_02_02_00:Class = BackgroundInfo_bg_016_02_02_00;
      
      public static const bg_016_03_01_00:Class = BackgroundInfo_bg_016_03_01_00;
      
      public static const bg_016_03_02_00:Class = BackgroundInfo_bg_016_03_02_00;
      
      public static const bg_016_03_03_00:Class = BackgroundInfo_bg_016_03_03_00;
      
      public static const bg_016_03_04_00:Class = BackgroundInfo_bg_016_03_04_00;
      
      public static const bg_016_04_01_00:Class = BackgroundInfo_bg_016_04_01_00;
      
      public static const bg_016_04_02_00:Class = BackgroundInfo_bg_016_04_02_00;
      
      public static const bg_016_05_01_00:Class = BackgroundInfo_bg_016_05_01_00;
      
      public static const bg_016_05_02_00:Class = BackgroundInfo_bg_016_05_02_00;
      
      public static const bg_016_06_01_00:Class = BackgroundInfo_bg_016_06_01_00;
      
      public static const bg_016_07_01_00:Class = BackgroundInfo_bg_016_07_01_00;
      
      public static const bg_016_07_02_00:Class = BackgroundInfo_bg_016_07_02_00;
      
      public static const bg_016_08_01_00:Class = BackgroundInfo_bg_016_08_01_00;
      
      {
         addBg(bg_000_01_01_00,NO_SCROLL);
         addBg(bg_000_01_02_00,NO_SCROLL);
         addBg(bg_000_01_03_00,NO_SCROLL);
         addBg(bg_000_01_04_00,NO_SCROLL);
         addBg(bg_000_01_05_00,NO_SCROLL);
         addBg(bg_000_01_06_00,NO_SCROLL);
         addBg(bg_000_01_07_00,NO_SCROLL);
         addBg(bg_000_01_08_00,REG_SCROLL);
         addBg(bg_000_01_09_00,NO_SCROLL);
         addBg(bg_000_02_01_00,NO_SCROLL);
         addBg(bg_000_02_02_00,NO_SCROLL);
         addBg(bg_000_03_01_00,NO_SCROLL);
         addBg(bg_000_03_02_00,NO_SCROLL);
         addBg(bg_000_03_03_00,NO_SCROLL);
         addBg(bg_000_03_04_00,NO_SCROLL);
         addBg(bg_000_04_01_00,NO_SCROLL);
         addBg(bg_000_04_02_00,NO_SCROLL);
         addBg(bg_000_05_01_00,NO_SCROLL);
         addBg(bg_000_05_02_00,NO_SCROLL);
         addBg(bg_000_06_01_00,NO_SCROLL);
         addBg(bg_000_06_02_00,NO_SCROLL);
         addBg(bg_000_07_01_00,NO_SCROLL);
         addBg(bg_000_07_02_00,NO_SCROLL);
         addBg(bg_000_08_01_00,NO_SCROLL);
         addBg(bg_001_01_01_00,NO_SCROLL);
         addBg(bg_001_01_01_01,SMA_SLOW);
         addBg(bg_001_01_01_02,SMA_MID);
         addBg(bg_001_01_02_00,NO_SCROLL);
         addBg(bg_001_01_02_01,SMA_SLOW);
         addBg(bg_001_01_02_02,SMA_MID,true,120,"bg_001_01_02_02");
         addBg(bg_001_01_03_00,NO_SCROLL);
         addBg(bg_001_01_03_01,SMA_SLOW);
         addBg(bg_001_01_03_02,SMA_MID);
         addBg(bg_001_01_04_00,NO_SCROLL);
         addBg(bg_001_01_04_01,SMA_SLOW);
         addBg(bg_001_01_04_02,SMA_MID);
         addBg(bg_001_01_05_00,NO_SCROLL);
         addBg(bg_001_01_05_01,SMA_SLOW);
         addBg(bg_001_01_05_02,SMA_MID);
         addBg(bg_001_01_05_03,SMA_MID);
         addBg(bg_001_01_06_00,NO_SCROLL);
         addBg(bg_001_01_06_01,SMA_SLOW);
         addBg(bg_001_01_06_02,SMA_MID);
         addBg(bg_001_01_07_00,NO_SCROLL);
         addBg(bg_001_01_07_01,SMA_SLOW);
         addBg(bg_001_01_07_02,SMA_MID);
         addBg(bg_001_01_08_00,NO_SCROLL);
         addBg(bg_001_01_08_01,SMA_SLOW,true,135,"BgNightStars");
         addBg(bg_001_01_09_00,NO_SCROLL);
         addBg(bg_001_01_09_01,SMA_SLOW,true,135,"BgNightStars");
         addBg(bg_001_01_09_02,SMA_MID);
         addBg(bg_001_01_10_00,NO_SCROLL);
         addBg(bg_001_01_10_01,SMA_SLOW);
         addBg(bg_001_02_01_00,NO_SCROLL);
         addBg(bg_001_02_01_01,SMA_SLOW);
         addBg(bg_001_02_01_02,SMA_MID);
         addBg(bg_001_02_02_00,NO_SCROLL);
         addBg(bg_001_02_02_01,SMA_SLOW,true,135,"BgNightStars");
         addBg(bg_001_02_02_02,SMA_MID);
         addBg(bg_001_03_01_00,SMA_MID,true,140,"BgUnderGround");
         addBg(bg_001_03_02_00,NO_SCROLL);
         addBg(bg_001_03_02_01,SMA_SLOW);
         addBg(bg_001_03_03_00,SMA_MID,true,140,"BgUnderGround");
         addBg(fg_001_03_03_00,NO_SCROLL,true,0,null,WaterHaze,BlendMode.SCREEN);
         addBg(bg_001_03_04_00,SMA_MID,true,140,"BgUnderGround");
         addBg(bg_001_04_01_00,NO_SCROLL);
         addBg(bg_001_04_01_01,SMA_MID,true,0,null,WaterShiftingBg);
         addBg(fg_001_04_01_00,NO_SCROLL,true,0,null,WaterHaze,BlendMode.SCREEN);
         addBg(bg_001_04_02_00,NO_SCROLL);
         addBg(bg_001_04_02_01,SMA_MID,true,0,null,WaterShiftingBg);
         addBg(fg_001_04_02_00,NO_SCROLL,true,0,null,WaterHaze,BlendMode.SCREEN);
         addBg(bg_001_05_01_00,SMA_MID);
         addBg(bg_001_05_02_00,NO_SCROLL);
         addBg(bg_001_05_02_01,SMA_MID,true,0,null,WaterShiftingBg);
         addBg(fg_001_05_02_00,NO_SCROLL,true,0,null,WaterHaze,BlendMode.SCREEN);
         addBg(bg_001_05_03_00,SMA_MID,true,140,"bg_001_05_03_00");
         addBg(bg_001_06_01_00,NO_SCROLL);
         addBg(bg_001_06_01_01,SMA_SLOW);
         addBg(bg_001_06_01_02,SMA_MID);
         addBg(bg_001_06_02_00,NO_SCROLL);
         addBg(bg_001_06_02_01,SMA_SLOW);
         addBg(bg_001_06_02_02,SMA_MID);
         addBg(bg_001_06_02_03,SMA_MID);
         addBg(bg_001_07_01_00,NO_SCROLL);
         addBg(bg_001_07_01_01,SMA_MID);
         addBg(bg_001_07_02_00,NO_SCROLL);
         addBg(bg_001_07_02_01,SMA_MID);
         addBg(bg_001_08_01_00,NO_SCROLL);
         addBg(bg_001_08_01_01,SMA_SLOW);
         addBg(bg_001_08_02_00,NO_SCROLL);
         addBg(bg_001_08_02_01,SMA_SLOW);
         addBg(bg_001_08_03_00,NO_SCROLL);
         addBg(bg_001_08_03_01,NO_SCROLL);
         addBg(bg_001_08_03_02,SMA_SLOW);
         addBg(bg_001_08_04_00,NO_SCROLL);
         addBg(bg_001_08_04_01,NO_SCROLL);
         addBg(bg_001_08_04_02,SMA_SLOW);
         addBg(bg_001_09_01_00,NO_SCROLL);
         addBg(bg_001_10_01_00,NO_SCROLL);
         addBg(bg_001_10_01_01,SMA_MID,true,0,null,WaterShiftingBg);
         addBg(fg_001_10_01_00,NO_SCROLL,true,0,null,WaterHaze,BlendMode.SCREEN);
         addBg(bg_001_11_01_00,NO_SCROLL);
         addBg(bg_001_11_01_01,SMA_MID,true,0,null,WaterShiftingBg);
         addBg(fg_001_11_01_00,NO_SCROLL,true,0,null,WaterHaze,BlendMode.SCREEN);
         (function():void
         {
            var _loc1_:* = 1;
            var _loc2_:* = 2;
            var _loc3_:* = 3;
            var _loc4_:* = 4;
            var _loc5_:* = 5;
            var _loc6_:* = 6;
            var _loc7_:* = 7;
            var _loc8_:* = 8;
            var _loc9_:* = 9;
            addOvRd(1,"2-1a",Themes.NORMAL,_loc3_);
            addOvRd(1,"3-1c",Themes.COIN_HEAVEN,2);
            addOvRd(1,"3-3a",Themes.NORMAL,_loc8_);
            addOvRd(1,"4-1a",Themes.NORMAL,_loc5_);
            addOvRd(1,"4-2c",Themes.PLATFORM);
            addOvRd(1,"4-3a",Themes.PLATFORM);
            addOvRd(1,"6-2d",Themes.COIN_HEAVEN,2);
            addOvRd(1,"6-3a",Themes.NORMAL,_loc8_);
            addOvRd(1,"7-1a",Themes.SNOW);
            addOvRd(1,"8-2a",Themes.NORMAL,_loc6_);
            addOvRd(1,"8-3a",Themes.NORMAL,_loc7_);
            addOvRd(1,"3",Themes.SNOW,2,9);
            addOvRd(1,"5",Themes.SNOW,1,9);
            addOvRd(1,"6",Themes.NORMAL,_loc9_,9);
            addOvRd(1,LevelTypes.PLATFORM,Themes.NORMAL,_loc2_);
            addOvRd(1,LevelTypes.CHEEP_CHEEP,Themes.NORMAL,_loc4_);
         })();
         addBg(bg_002_01_01_00,REG_SCROLL,true,120,"bg_002_01_01_00");
         addBg(bg_002_01_02_00,REG_SCROLL);
         addBg(bg_002_01_03_00,REG_SCROLL);
         addBg(bg_002_01_04_00,REG_SCROLL);
         addBg(bg_002_02_01_00,REG_SCROLL);
         addBg(bg_002_03_01_00,REG_SCROLL);
         addBg(bg_002_03_02_00,REG_SCROLL);
         addBg(bg_002_04_01_00,REG_SCROLL);
         addBg(bg_002_05_01_00,REG_SCROLL);
         addBg(bg_002_06_01_00,REG_SCROLL);
         addBg(bg_002_07_01_00,REG_SCROLL);
         addBg(bg_002_08_01_00,REG_SCROLL);
         addBg(bg_002_09_01_00,REG_SCROLL);
         addBg(bg_002_10_01_00,REG_SCROLL);
         addBg(bg_002_11_01_00,REG_SCROLL,true,140,"bg_002_11_01_00");
         addBg(bg_002_12_01_00,REG_SCROLL);
         addBg(bg_003_01_01_00,REG_SCROLL);
         addBg(bg_003_01_02_00,REG_SCROLL);
         addBg(bg_003_02_01_00,REG_SCROLL);
         addBg(bg_003_03_01_00,REG_SCROLL);
         addBg(bg_003_03_02_00,REG_SCROLL);
         addBg(bg_003_04_01_00,REG_SCROLL);
         addBg(bg_003_04_02_00,REG_SCROLL);
         addBg(bg_003_04_03_00,REG_SCROLL);
         addBg(bg_003_05_01_00,REG_SCROLL);
         addBg(fg_003_05_01_00,REG_SCROLL,true,60,"fg_003_05_02_00",RisingWater);
         addBg(bg_003_05_02_00,REG_SCROLL);
         addBg(bg_003_05_03_00,REG_SCROLL);
         addBg(bg_003_05_04_00,REG_SCROLL);
         addBg(fg_003_05_04_00,REG_SCROLL,true,60,"fg_003_05_02_00",RisingWater);
         addBg(bg_003_05_05_00,REG_SCROLL);
         addBg(bg_003_05_06_00,REG_SCROLL);
         addBg(bg_003_05_07_00,REG_SCROLL);
         addBg(bg_003_05_08_00,REG_SCROLL);
         addBg(bg_003_05_09_00,REG_SCROLL);
         addBg(bg_003_05_10_00,REG_SCROLL);
         addBg(bg_003_06_01_00,REG_SCROLL);
         addBg(bg_003_07_01_00,REG_SCROLL);
         addBg(bg_003_08_01_00,REG_SCROLL);
         addBg(bg_003_08_02_00,REG_SCROLL);
         addBg(bg_003_09_01_00,REG_SCROLL);
         addBg(bg_003_10_01_00,REG_SCROLL);
         addBg(bg_003_10_02_00,REG_SCROLL);
         addBg(bg_003_10_03_00,REG_SCROLL);
         addBg(bg_003_11_01_00,REG_SCROLL);
         addBg(bg_003_11_02_00,REG_SCROLL);
         addBg(bg_003_12_01_00,REG_SCROLL);
         addBg(bg_003_13_01_00,REG_SCROLL);
         addBg(bg_003_14_01_00,REG_SCROLL);
         addBg(bg_003_15_01_00,REG_SCROLL);
         addBg(bg_004_01_01_00,SMA_MID);
         addBg(bg_004_01_01_01,SMA_SLOW);
         addBg(bg_004_01_02_00,SMA_MID);
         addBg(bg_004_01_03_00,SMA_MID);
         addBg(bg_004_01_03_01,SMA_SLOW,true,140,"bg_004_01_03_01");
         addBg(bg_004_02_01_00,SMA_MID);
         addBg(bg_004_02_01_01,SMA_SLOW);
         addBg(bg_004_02_02_00,SMA_MID);
         addBg(bg_004_02_02_01,SMA_SLOW);
         addBg(bg_004_03_01_00,SMA_MID);
         addBg(bg_004_03_02_00,SMA_SLOW,true,140,"bg_004_03_02_00");
         addBg(bg_004_03_03_00,SMA_MID);
         addBg(bg_004_04_01_00,SMA_MID);
         addBg(fg_004_04_01_01,REG_SCROLL,true,140,"fg_004_04_01_01",null,BlendMode.SCREEN);
         addBg(bg_004_05_01_00,SMA_SLOW);
         addBg(bg_004_05_01_01,SMA_SLOW,true,140,"bg_004_05_01_01");
         addBg(fg_004_05_01_01,REG_SCROLL,true,60,"fg_004_05_01_01",RisingWater);
         addBg(bg_004_06_01_00,SMA_SLOW,true,140,"bg_004_06_01_00");
         addBg(bg_004_06_02_00,SMA_SLOW,true,140,"bg_004_06_01_00");
         addBg(fg_004_06_02_01,REG_SCROLL,true,140,"fg_004_04_01_01",null,BlendMode.SCREEN);
         addBg(bg_004_07_01_00,SMA_MID);
         addBg(bg_004_07_02_00,SMA_MID);
         addBg(bg_004_08_01_00,SMA_MID);
         addBg(bg_004_08_02_00,SMA_MID);
         addBg(bg_004_08_03_00,SMA_MID);
         addBg(bg_004_09_01_00,SMA_MID);
         addBg(bg_004_09_02_00,SMA_MID);
         addBg(bg_004_10_01_00,SMA_MID);
         addBg(bg_004_10_01_01,SMA_SLOW);
         addBg(bg_004_10_02_00,SMA_SLOW,true,140,"bg_004_10_02_00");
         addBg(bg_004_10_02_01,SMA_MID);
         addBg(bg_004_10_03_00,SMA_MID);
         addBg(bg_004_11_01_00,SMA_SLOW);
         addBg(bg_004_11_01_01,SMA_MID);
         addBg(bg_004_11_02_00,SMA_MID);
         addBg(bg_004_11_03_00,SMA_MID);
         addBg(bg_004_12_01_00,SMA_MID);
         addBg(bg_004_12_02_00,SMA_MID);
         addBg(bg_004_13_01_00,SMA_SLOW);
         addBg(bg_004_13_01_01,SMA_MID);
         addBg(bg_004_13_02_00,SMA_SLOW);
         addBg(bg_004_13_02_01,SMA_MID);
         addBg(bg_004_13_03_00,SMA_SLOW);
         addBg(bg_004_13_03_01,SMA_MID);
         addBg(fg_004_13_03_01,REG_SCROLL,true,60,"fg_004_05_01_01",RisingWater);
         addBg(fg_004_11_02_01,REG_SCROLL,true,140,"fg_004_04_01_01",null,BlendMode.SCREEN);
         addBg(bg_004_14_01_00,SMA_SLOW);
         addBg(bg_004_14_01_01,SMA_MID);
         addBg(bg_004_14_02_00,SMA_SLOW);
         addBg(bg_004_15_01_00,SMA_MID);
         addBg(bg_005_01_01_00,NO_SCROLL);
         addBg(bg_005_01_02_00,NO_SCROLL);
         addBg(bg_005_01_03_00,NO_SCROLL);
         addBg(bg_005_01_04_00,NO_SCROLL);
         addBg(bg_005_02_01_00,REG_SCROLL);
         addBg(bg_005_02_02_00,REG_SCROLL);
         addBg(bg_005_02_03_00,REG_SCROLL);
         addBg(bg_005_02_04_00,REG_SCROLL);
         addBg(bg_005_02_05_00,REG_SCROLL);
         addBg(bg_005_03_01_00,REG_SCROLL);
         addBg(bg_005_03_02_00,REG_SCROLL);
         addBg(bg_005_03_03_00,REG_SCROLL);
         addBg(bg_005_03_04_00,REG_SCROLL);
         addBg(fg_005_03_01_01,REG_SCROLL);
         addBg(fg_005_03_02_01,REG_SCROLL);
         addBg(fg_005_03_03_01,REG_SCROLL);
         addBg(fg_005_03_04_01,REG_SCROLL);
         addBg(bg_005_04_01_00,REG_SCROLL);
         addBg(bg_005_04_02_00,REG_SCROLL);
         addBg(bg_005_04_03_00,REG_SCROLL);
         addBg(bg_005_04_04_00,REG_SCROLL);
         addBg(bg_005_04_05_00,REG_SCROLL);
         addBg(bg_005_05_01_00,REG_SCROLL);
         addBg(bg_005_05_02_00,NO_SCROLL);
         addBg(bg_005_06_01_00,REG_SCROLL);
         addBg(bg_005_06_02_00,REG_SCROLL);
         addBg(bg_005_06_03_00,REG_SCROLL);
         addBg(bg_005_06_04_00,REG_SCROLL);
         addBg(bg_006_01_01_00,REG_SCROLL);
         addBg(bg_006_01_02_00,REG_SCROLL);
         addBg(bg_006_02_01_00,REG_SCROLL);
         addBg(bg_006_02_02_00,REG_SCROLL);
         addBg(bg_006_02_03_00,REG_SCROLL);
         addBg(bg_006_02_04_00,REG_SCROLL);
         addBg(bg_006_03_01_00,REG_SCROLL);
         addBg(bg_006_04_01_00,REG_SCROLL);
         addBg(bg_006_04_02_00,REG_SCROLL);
         addBg(bg_006_05_01_00,REG_SCROLL);
         addBg(bg_006_05_02_00,REG_SCROLL);
         addBg(bg_006_05_03_00,REG_SCROLL);
         addBg(bg_006_06_01_00,REG_SCROLL);
         addBg(bg_006_07_01_00,REG_SCROLL);
         addBg(bg_006_07_02_00,REG_SCROLL);
         addBg(bg_006_08_01_00,REG_SCROLL);
         addBg(bg_006_08_02_00,REG_SCROLL);
         addBg(bg_006_09_01_00,REG_SCROLL);
         addBg(bg_006_09_02_00,REG_SCROLL);
         addBg(bg_006_10_01_00,REG_SCROLL);
         addBg(bg_006_10_02_00,REG_SCROLL);
         addBg(bg_006_11_01_00,REG_SCROLL);
         addBg(bg_006_11_02_00,REG_SCROLL);
         addBg(bg_006_12_01_00,REG_SCROLL);
         addBg(bg_006_12_02_00,REG_SCROLL);
         addBg(bg_006_13_01_00,REG_SCROLL);
         addBg(bg_006_13_02_00,REG_SCROLL);
         addBg(bg_006_13_03_00,REG_SCROLL);
         addBg(bg_006_13_04_00,REG_SCROLL);
         addBg(bg_006_13_05_00,REG_SCROLL);
         addBg(bg_006_14_01_00,REG_SCROLL);
         addBg(bg_006_15_01_00,REG_SCROLL);
         addBg(bg_006_15_02_00,REG_SCROLL);
         addBg(bg_006_16_01_00,REG_SCROLL);
         addBg(bg_007_01_01_00,REG_SCROLL);
         addBg(bg_007_01_02_00,REG_SCROLL);
         addBg(bg_007_01_03_00,REG_SCROLL);
         addBg(bg_007_01_04_00,REG_SCROLL);
         addBg(bg_007_01_05_00,REG_SCROLL);
         addBg(bg_008_01_01_00,NO_SCROLL);
         addBg(bg_008_01_02_00,NO_SCROLL);
         addBg(bg_008_01_03_00,NO_SCROLL);
         addBg(bg_008_01_04_00,NO_SCROLL);
         addBg(bg_008_01_05_00,NO_SCROLL);
         addBg(bg_008_01_06_00,NO_SCROLL);
         addBg(bg_008_01_07_00,NO_SCROLL);
         addBg(bg_008_01_08_00,NO_SCROLL);
         addBg(bg_008_02_01_00,NO_SCROLL);
         addBg(bg_008_03_01_00,NO_SCROLL);
         addBg(bg_008_03_02_00,NO_SCROLL);
         addBg(bg_008_03_03_00,NO_SCROLL);
         addBg(bg_008_03_04_00,NO_SCROLL);
         addBg(bg_008_04_01_00,NO_SCROLL);
         addBg(bg_008_04_02_00,NO_SCROLL);
         addBg(bg_008_05_01_00,NO_SCROLL);
         addBg(bg_008_05_02_00,NO_SCROLL);
         addBg(bg_008_06_01_00,NO_SCROLL);
         addBg(bg_008_07_01_00,NO_SCROLL);
         addBg(bg_008_07_02_00,NO_SCROLL);
         addBg(bg_008_08_01_00,NO_SCROLL);
         addBg(bg_009_01_01_00,REG_SCROLL);
         addBg(bg_009_01_02_00,REG_SCROLL);
         addBg(bg_009_01_03_00,REG_SCROLL);
         addBg(bg_009_02_01_00,REG_SCROLL);
         addBg(bg_009_02_02_00,REG_SCROLL);
         addBg(bg_009_02_03_00,REG_SCROLL);
         addBg(bg_009_02_04_00,REG_SCROLL);
         addBg(bg_009_02_05_00,REG_SCROLL);
         addBg(bg_009_02_06_00,REG_SCROLL);
         addBg(bg_009_03_01_00,REG_SCROLL);
         addBg(bg_009_03_02_00,REG_SCROLL);
         addBg(bg_009_04_01_00,REG_SCROLL);
         addBg(bg_009_05_01_00,REG_SCROLL);
         addBg(bg_009_06_01_00,REG_SCROLL);
         addBg(bg_009_06_02_00,REG_SCROLL);
         addBg(bg_009_07_01_00,REG_SCROLL);
         addBg(bg_009_08_01_00,REG_SCROLL);
         addBg(bg_009_09_01_00,REG_SCROLL);
         addBg(bg_009_10_01_00,REG_SCROLL);
         addBg(bg_009_11_01_00,REG_SCROLL);
         addBg(bg_009_12_01_00,REG_SCROLL);
         addBg(bg_009_13_01_00,REG_SCROLL);
         addBg(bg_009_14_01_00,REG_SCROLL);
         addBg(bg_009_15_01_00,REG_SCROLL);
         addBg(bg_010_01_01_00,SMA_SLOW);
         addBg(bg_010_01_02_00,SMA_SLOW);
         addBg(bg_010_01_03_00,SMA_SLOW);
         addBg(bg_010_01_04_00,SMA_SLOW);
         addBg(bg_010_01_05_00,SMA_SLOW,true,120,"bg_010_01_05_00");
         addBg(bg_010_01_06_00,SMA_SLOW);
         addBg(bg_010_01_07_00,SMA_SLOW);
         addBg(bg_010_01_08_00,SMA_SLOW);
         addBg(bg_010_01_09_00,SMA_SLOW);
         addBg(bg_010_01_10_00,SMA_SLOW);
         addBg(bg_010_01_11_00,SMA_SLOW);
         addBg(bg_010_01_12_00,SMA_SLOW);
         addBg(bg_010_01_13_00,SMA_SLOW);
         addBg(bg_010_01_14_00,SMA_SLOW);
         addBg(bg_010_01_15_00,SMA_SLOW);
         addBg(bg_010_02_01_00,SMA_SLOW,true,120,"bg_010_02_01_00");
         addBg(bg_010_02_02_00,SMA_SLOW,true,120,"bg_010_02_01_00");
         addBg(bg_010_02_03_00,SMA_SLOW,true,120,"bg_010_02_03_00");
         addBg(bg_010_02_04_00,SMA_SLOW,true,120,"bg_010_02_04_00");
         addBg(bg_010_02_05_00,SMA_SLOW,true,120,"bg_010_02_01_00");
         addBg(bg_010_03_01_00,SMA_SLOW);
         addBg(bg_010_03_01_01,SMA_MID);
         addBg(bg_010_03_02_00,SMA_SLOW);
         addBg(bg_010_03_02_01,SMA_MID);
         addBg(bg_010_03_03_00,SMA_SLOW);
         addBg(bg_010_03_04_00,SMA_SLOW);
         addBg(bg_010_03_04_01,SMA_MID);
         addBg(bg_010_04_01_00,SMA_SLOW,true,120,"bg_010_04_01_00");
         addBg(bg_010_04_02_00,SMA_SLOW,true,120,"bg_010_04_02_00");
         addBg(bg_010_04_03_00,SMA_SLOW,true,120,"bg_010_04_03_00");
         addBg(bg_010_04_04_00,SMA_SLOW);
         addBg(bg_010_05_01_00,SMA_SLOW,true,120,"bg_010_05_01_00");
         addBg(bg_010_05_02_00,SMA_SLOW);
         addBg(bg_010_05_03_00,SMA_SLOW);
         addBg(bg_010_05_04_00,SMA_SLOW,true,120,"bg_010_05_04_00");
         addBg(bg_010_05_05_00,SMA_SLOW);
         addBg(bg_010_05_06_00,SMA_SLOW);
         addBg(bg_010_05_07_00,SMA_SLOW);
         addBg(bg_010_05_08_00,SMA_SLOW);
         addBg(bg_010_06_01_00,SMA_SLOW);
         addBg(bg_010_07_01_00,SMA_SLOW);
         addBg(bg_010_07_02_00,SMA_SLOW,true,120,"bg_010_07_02_00");
         addBg(bg_010_07_03_00,SMA_SLOW);
         addBg(bg_010_08_01_00,SMA_SLOW);
         addBg(bg_010_08_02_00,SMA_SLOW);
         addBg(bg_011_01_01_00,NO_SCROLL);
         addBg(bg_011_01_02_00,NO_SCROLL);
         addBg(bg_011_01_03_00,NO_SCROLL);
         addBg(bg_011_01_04_00,NO_SCROLL);
         addBg(bg_011_01_05_00,NO_SCROLL);
         addBg(bg_011_01_06_00,REG_SCROLL);
         addBg(bg_011_01_07_00,NO_SCROLL);
         addBg(bg_011_01_08_00,NO_SCROLL);
         addBg(bg_011_01_09_00,NO_SCROLL);
         addBg(bg_011_02_01_00,NO_SCROLL);
         addBg(bg_011_02_02_00,NO_SCROLL);
         addBg(bg_011_03_01_00,NO_SCROLL);
         addBg(bg_011_03_02_00,NO_SCROLL);
         addBg(bg_011_04_01_00,NO_SCROLL);
         addBg(bg_011_04_02_00,NO_SCROLL);
         addBg(bg_011_05_01_00,NO_SCROLL);
         addBg(bg_011_05_02_00,NO_SCROLL);
         addBg(bg_011_05_03_00,NO_SCROLL);
         addBg(bg_011_05_04_00,NO_SCROLL);
         addBg(bg_011_06_01_00,NO_SCROLL);
         addBg(bg_011_06_02_00,NO_SCROLL);
         addBg(bg_011_07_01_00,NO_SCROLL);
         addBg(bg_012_01_01_00,REG_SCROLL);
         addBg(bg_012_01_02_00,REG_SCROLL);
         addBg(bg_012_01_03_00,REG_SCROLL);
         addBg(bg_012_01_04_00,REG_SCROLL);
         addBg(bg_012_01_04_01,REG_SCROLL,true,140,"bg_012_01_04_01");
         addBg(bg_012_02_01_00,REG_SCROLL);
         addBg(bg_012_02_02_00,REG_SCROLL);
         addBg(bg_012_02_02_01,REG_SCROLL,true,140,"bg_012_02_02_01");
         addBg(bg_012_03_01_00,REG_SCROLL);
         addBg(bg_012_03_02_00,REG_SCROLL);
         addBg(bg_012_04_01_00,REG_SCROLL);
         addBg(bg_012_05_01_00,REG_SCROLL);
         addBg(bg_012_06_01_00,REG_SCROLL);
         addBg(bg_012_07_01_00,REG_SCROLL);
         addBg(bg_012_08_01_00,REG_SCROLL);
         addBg(bg_012_09_01_00,REG_SCROLL);
         addBg(bg_012_10_01_00,REG_SCROLL);
         addBg(bg_012_11_01_00,REG_SCROLL);
         addBg(bg_012_12_01_00,REG_SCROLL);
         addBg(bg_012_13_01_00,REG_SCROLL);
         addBg(bg_012_13_02_00,REG_SCROLL);
         addBg(bg_012_14_01_00,REG_SCROLL);
         addBg(bg_012_15_01_00,REG_SCROLL);
         addBg(bg_012_15_02_00,REG_SCROLL);
         addBg(bg_012_15_03_00,REG_SCROLL);
         addBg(bg_012_16_01_00,REG_SCROLL);
         addBg(bg_012_16_02_00,REG_SCROLL);
         addBg(bg_013_01_01_00,NO_SCROLL);
         addBg(bg_013_01_01_01,SMA_SLOW);
         addBg(bg_013_01_01_02,SMA_MID);
         addBg(bg_013_01_02_00,NO_SCROLL);
         addBg(bg_013_01_02_01,SMA_SLOW);
         addBg(bg_013_01_02_02,SMA_MID);
         addBg(bg_013_01_03_00,NO_SCROLL);
         addBg(bg_013_01_03_01,SMA_SLOW);
         addBg(bg_013_01_03_02,SMA_MID);
         addBg(bg_013_01_03_03,REG_SCROLL,true,140,"bg_013_water");
         addBg(bg_013_01_04_00,NO_SCROLL);
         addBg(bg_013_01_04_01,SMA_MID);
         addBg(bg_013_01_04_02,SMA_SLOW,true,140,"bg_013_stars");
         addBg(bg_013_01_05_00,NO_SCROLL);
         addBg(bg_013_01_06_00,NO_SCROLL);
         addBg(bg_013_02_01_00,SMA_MID);
         addBg(bg_013_02_02_00,NO_SCROLL);
         addBg(bg_013_02_02_01,SMA_MID);
         addBg(bg_013_02_02_02,SMA_SLOW,true,140,"bg_013_stars");
         addBg(bg_013_02_03_00,SMA_MID);
         addBg(fg_013_02_03_00,NO_SCROLL,true,0,null,WaterHaze,BlendMode.SCREEN);
         addBg(bg_013_02_04_00,NO_SCROLL);
         addBg(fg_013_02_04_00,NO_SCROLL,true,0,null,WaterHaze,BlendMode.SCREEN);
         addBg(bg_013_03_01_00,SMA_MID);
         addBg(bg_013_03_02_00,NO_SCROLL);
         addBg(bg_013_04_01_00,NO_SCROLL);
         addBg(bg_013_04_01_01,SMA_MID);
         addBg(bg_013_04_01_02,SMA_SLOW,true,140,"bg_013_stars");
         addBg(bg_013_04_02_00,NO_SCROLL);
         addBg(bg_013_04_02_01,SMA_SLOW);
         addBg(bg_013_04_02_02,SMA_MID);
         addBg(bg_013_05_01_00,SMA_MID);
         addBg(bg_013_06_01_00,SMA_MID);
         addBg(bg_013_07_01_00,NO_SCROLL);
         addBg(bg_013_07_01_01,SMA_SLOW);
         addBg(bg_013_07_01_02,SMA_MID);
         addBg(bg_013_07_02_00,NO_SCROLL);
         addBg(bg_013_07_02_01,SMA_SLOW);
         addBg(bg_013_07_02_02,SMA_MID);
         addBg(bg_013_07_02_03,REG_SCROLL,true,140,"bg_013_water");
         addBg(bg_013_08_01_00,SMA_MID,true,140,"bg_013_cave_ice");
         addBg(bg_013_09_01_00,SMA_MID);
         addBg(bg_013_10_01_00,REG_SCROLL);
         addBg(bg_013_11_01_00,SMA_MID);
         addBg(bg_013_12_01_00,NO_SCROLL);
         addBg(bg_013_12_01_01,SMA_SLOW);
         addBg(bg_013_12_01_02,SMA_MID);
         addBg(bg_013_13_01_00,SMA_MID);
         addBg(bg_013_13_02_00,SMA_MID);
         addBg(fg_013_13_02_00,NO_SCROLL,true,0,null,WaterHaze,BlendMode.SCREEN);
         addBg(bg_013_14_01_00,SMA_MID);
         addBg(bg_013_14_02_00,SMA_MID);
         addBg(bg_013_14_03_00,SMA_MID,true,140,"bg_013_cave_ice");
         addBg(bg_013_14_04_00,SMA_MID);
         addBg(bg_013_14_05_00,SMA_MID);
         addBg(bg_013_14_05_01,SMA_SLOW);
         addBg(bg_013_14_05_02,SMA_MID);
         addBg(bg_013_15_01_00,NO_SCROLL);
         addBg(bg_013_15_01_01,SMA_SLOW);
         addBg(bg_013_15_02_00,NO_SCROLL);
         addBg(bg_013_15_02_01,SMA_SLOW,true,140,"bg_013_stars");
         addBg(bg_013_15_03_00,NO_SCROLL);
         addBg(bg_014_01_01_00,NO_SCROLL);
         addBg(bg_014_01_02_00,NO_SCROLL);
         addBg(bg_014_01_03_00,NO_SCROLL);
         addBg(bg_014_01_04_00,REG_SCROLL);
         addBg(bg_014_01_05_00,REG_SCROLL);
         addBg(bg_014_01_06_00,REG_SCROLL);
         addBg(bg_014_02_01_00,NO_SCROLL);
         addBg(bg_014_03_01_00,NO_SCROLL);
         addBg(bg_014_03_02_00,NO_SCROLL);
         addBg(bg_014_03_03_00,NO_SCROLL);
         addBg(bg_014_04_01_00,REG_SCROLL);
         addBg(bg_014_04_02_00,REG_SCROLL);
         addBg(bg_014_05_01_00,NO_SCROLL);
         addBg(bg_014_05_02_00,NO_SCROLL);
         addBg(bg_014_06_01_00,NO_SCROLL);
         addBg(bg_014_07_01_00,NO_SCROLL);
         addBg(bg_014_07_02_00,NO_SCROLL);
         addBg(bg_014_08_01_00,NO_SCROLL);
         addBg(bg_015_01_01_00,REG_SCROLL);
         addBg(bg_015_02_01_00,REG_SCROLL);
         addBg(bg_015_02_02_00,REG_SCROLL);
         addBg(bg_015_02_03_00,REG_SCROLL);
         addBg(bg_015_02_04_00,REG_SCROLL);
         addBg(bg_015_02_05_00,REG_SCROLL);
         addBg(bg_015_03_01_00,REG_SCROLL);
         addBg(bg_015_03_02_00,REG_SCROLL);
         addBg(bg_015_04_01_00,REG_SCROLL);
         addBg(bg_015_05_01_00,REG_SCROLL);
         addBg(bg_015_05_02_00,REG_SCROLL);
         addBg(bg_015_05_03_00,REG_SCROLL);
         addBg(bg_015_06_01_00,REG_SCROLL);
         addBg(bg_015_06_02_00,REG_SCROLL);
         addBg(bg_015_07_01_00,REG_SCROLL);
         addBg(bg_015_08_01_00,REG_SCROLL);
         addBg(bg_016_01_01_00,NO_SCROLL);
         addBg(bg_016_01_02_00,NO_SCROLL);
         addBg(bg_016_01_03_00,NO_SCROLL);
         addBg(bg_016_01_04_00,NO_SCROLL);
         addBg(bg_016_01_05_00,NO_SCROLL);
         addBg(bg_016_01_06_00,NO_SCROLL);
         addBg(bg_016_01_07_00,NO_SCROLL);
         addBg(bg_016_01_08_00,REG_SCROLL);
         addBg(bg_016_01_09_00,NO_SCROLL);
         addBg(bg_016_02_01_00,NO_SCROLL);
         addBg(bg_016_02_02_00,NO_SCROLL);
         addBg(bg_016_03_01_00,NO_SCROLL);
         addBg(bg_016_03_02_00,NO_SCROLL);
         addBg(bg_016_03_03_00,NO_SCROLL);
         addBg(bg_016_03_04_00,NO_SCROLL);
         addBg(bg_016_04_01_00,NO_SCROLL);
         addBg(bg_016_04_02_00,NO_SCROLL);
         addBg(bg_016_05_01_00,NO_SCROLL);
         addBg(bg_016_05_02_00,NO_SCROLL);
         addBg(bg_016_06_01_00,NO_SCROLL);
         addBg(bg_016_07_01_00,NO_SCROLL);
         addBg(bg_016_07_02_00,NO_SCROLL);
         addBg(bg_016_08_01_00,NO_SCROLL);
         addFirstBgSets();
      }
      
      public function BackgroundInfo()
      {
         super();
      }
      
      private static function addFirstBgSets() : void
      {
         var _loc1_:int = 0;
         var _loc4_:int = 0;
         var _loc6_:Background = null;
         var _loc10_:Class = null;
         var _loc11_:Array = null;
         var _loc2_:int = THEME_MIN;
         var _loc3_:int = SET_MIN;
         var _loc5_:Background = _loc5_ = getBg(_loc1_,_loc2_,_loc3_);
         var _loc7_:Array = [];
         var _loc8_:Array = [];
         var _loc9_:CustomDictionary = new CustomDictionary();
         _loc9_.addItem(TYPE_BG);
         _loc9_.addItem(TYPE_FG);
         while(_loc5_)
         {
            while(_loc5_)
            {
               while(_loc5_)
               {
                  while(Boolean(_loc5_) || Boolean(_loc6_))
                  {
                     _loc5_ = getBg(_loc1_,_loc2_,_loc3_,_loc4_,TYPE_BG);
                     _loc6_ = getBg(_loc1_,_loc2_,_loc3_,_loc4_,TYPE_FG);
                     if(_loc5_)
                     {
                        _loc7_.push(_loc5_);
                     }
                     if(_loc6_)
                     {
                        _loc8_.push(_loc6_);
                     }
                     _loc4_++;
                  }
                  addBgSetItem(_loc1_,_loc2_,_loc3_,_loc7_,TYPE_BG);
                  addBgSetItem(_loc1_,_loc2_,_loc3_,_loc8_,TYPE_FG);
                  _loc7_ = [];
                  _loc8_ = [];
                  _loc4_ = 0;
                  _loc3_++;
                  _loc5_ = getBg(_loc1_,_loc2_,_loc3_);
               }
               _loc2_++;
               _loc3_ = SET_MIN;
               _loc5_ = getBg(_loc1_,_loc2_,_loc3_);
            }
            _loc1_++;
            _loc2_ = THEME_MIN;
            _loc3_ = SET_MIN;
            _loc5_ = getBg(_loc1_,_loc2_,_loc3_);
         }
         THEME_OVRD_VEC.length = _loc1_;
         THEME_OVRD_VEC.fixed = true;
         for each(_loc10_ in bgSetOvrdDct)
         {
            _loc11_ = StringUtils.readClassData(_loc10_);
            addBgSetItem(_loc11_[IND_DATA_SKIN],_loc11_[IND_DATA_THEME],_loc11_[IND_DATA_SET],_loc10_,_loc11_[IND_DATA_TYPE]);
         }
      }
      
      private static function addBgSetItem(param1:int, param2:int, param3:int, param4:Object, param5:String) : void
      {
         if(param5 == TYPE_BG || param5 == TYPE_FG)
         {
            param4 = Vector.<Background>(param4).concat();
         }
         else
         {
            param4 = Bitmap(new param4()).bitmapData;
         }
         ArrayUtils.writeNestedArray(BG_SET_ARR,param4,param1,param2,param3,getTypeInd(param5));
      }
      
      public static function getBgSetItem(param1:int, param2:int, param3:int, param4:String = null) : Object
      {
         if(!param4)
         {
            param4 = TYPE_BG;
         }
         return ArrayUtils.readNestedArr(BG_SET_ARR,param1,param2,param3,getTypeInd(param4));
      }
      
      public static function getSetBmdOvrd(param1:int, param2:int, param3:int, param4:String) : BitmapData
      {
         return getBgSetItem(param1,param2,param3,param4) as BitmapData;
      }
      
      public static function addBg(param1:Class, param2:Number, param3:Boolean = true, param4:int = 0, param5:String = null, param6:Class = null, param7:String = "normal") : void
      {
         if(!param6)
         {
            param6 = Background;
         }
         var _loc8_:Array = StringUtils.readClassData(param1);
         var _loc9_:String = _loc8_[IND_DATA_TYPE];
         var _loc10_:int = int(_loc8_[IND_DATA_SKIN]);
         var _loc11_:int = int(_loc8_[IND_DATA_THEME]);
         var _loc12_:int = int(_loc8_[IND_DATA_SET]);
         var _loc13_:int = int(_loc8_[IND_DATA_LAYER]);
         var _loc14_:Background;
         (_loc14_ = new param6(param1,param2,param3,param4,param5)).skinNum = _loc10_;
         _loc14_.themeNum = _loc11_;
         _loc14_.setNum = _loc12_;
         _loc14_.layerNum = _loc13_;
         _loc14_.type = _loc9_;
         _loc14_.blendMode = param7;
         ArrayUtils.writeNestedArray(BG_ARR,_loc14_,_loc10_,_loc11_,_loc12_,_loc13_,getTypeInd(_loc9_));
      }
      
      public static function getBg(param1:int, param2:int, param3:int, param4:int = 0, param5:String = null) : Background
      {
         if(!param5)
         {
            param5 = TYPE_BG;
         }
         return ArrayUtils.readNestedArr(BG_ARR,param1,param2,param3,param4,getTypeInd(param5));
      }
      
      private static function getTypeInd(param1:String) : int
      {
         switch(param1)
         {
            case TYPE_BG:
               return IND_SET_ARR_BG;
            case TYPE_FG:
               return IND_SET_ARR_FG;
            case TYPE_MAP_OVRD:
               return IND_SET_ARR_MAP_OVRD;
            default:
               return -1;
         }
      }
      
      public static function getExtraTheme(param1:int, param2:int) : BitmapData
      {
         var _loc3_:Array = EXTRA_THEME_ARR[param1];
         if(!_loc3_)
         {
            return null;
         }
         return _loc3_[param2];
      }
      
      private static function addOvRd(param1:int, param2:String, param3:int, param4:int = 1, param5:int = 5) : void
      {
         if(THEME_OVRD_VEC.length < param1 + 1)
         {
            THEME_OVRD_VEC.length = param1 + 1;
         }
         var _loc6_:Dictionary = THEME_OVRD_VEC[param1];
         if(!_loc6_)
         {
            _loc6_ = new Dictionary();
            THEME_OVRD_VEC[param1] = _loc6_;
         }
         _loc6_[param2] = [param3,param4,param5];
      }
   }
}
