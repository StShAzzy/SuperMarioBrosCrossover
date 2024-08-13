package com.explodingRabbit.display
{
   import com.customClasses.MCAnimator;
   import com.explodingRabbit.utils.CustomDictionary;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.characters.Bill;
   import com.smbc.characters.Character;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.CharacterInfo;
   import com.smbc.data.EnemyInfo;
   import com.smbc.data.GameSettings;
   import com.smbc.data.HRect;
   import com.smbc.data.HitRectangle;
   import com.smbc.data.InterfaceInfo;
   import com.smbc.data.MapInfo;
   import com.smbc.data.MovieClipInfo;
   import com.smbc.data.PaletteTypes;
   import com.smbc.data.Themes;
   import com.smbc.graphics.BmdInfo;
   import com.smbc.graphics.BmdSkinCont;
   import com.smbc.graphics.MasterObjects;
   import com.smbc.graphics.MegaManHead;
   import com.smbc.graphics.Palette;
   import com.smbc.graphics.PaletteSheet;
   import com.smbc.graphics.SkinMask;
   import com.smbc.graphics.SubMc;
   import com.smbc.graphics.ThemeGroup;
   import com.smbc.interfaces.ICustomTimer;
   import com.smbc.main.GlobVars;
   import com.smbc.main.SkinObj;
   import com.smbc.managers.GraphicsManager;
   import com.smbc.managers.StatManager;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   
   public class CustomMovieClip extends Sprite
   {
      
      public static const CHARACTER_MASTER_OBJ_DCT:CustomDictionary = new CustomDictionary();
      
      public static const ENEMY_MASTER_OBJ_DCT:CustomDictionary = new CustomDictionary();
      
      public static const THEME_MASTER_OBJ_DCT:CustomDictionary = new CustomDictionary();
      
      public static const MAP_MASTER_OBJ_DCT:CustomDictionary = new CustomDictionary();
      
      public static const INTERFACE_MASTER_OBJ_DCT:CustomDictionary = new CustomDictionary();
      
      public static const IND_FLASH_ARR_PAL_IN:int = 0;
      
      public static const IND_FLASH_ARR_PAL_OUT:int = 1;
      
      public static const IND_FLASH_ARR_IN_COLOR:int = 2;
      
      public static const IND_FLASH_ARR_OUT_COLOR:int = 3;
      
      public static const IND_MBMDT_TYPE:int = 0;
      
      public static const IND_MBMDT_CHAR_NUM:int = 1;
      
      private static const IND_MATRIX_SRC:int = 0;
      
      private static const IND_SCALE_X_SRC:int = 1;
      
      private static const IND_SCALE_Y_SRC:int = 2;
      
      private static const IND_ROTATION_SRC:int = 3;
      
      private static const IND_MATRIX_TEMP:int = 4;
      
      private static const IND_MASK_RECT_SRC:int = 0;
      
      private static const IND_MASK_RECT_TMP:int = 1;
      
      private static const IND_TRIM_BMD:int = 0;
      
      private static const IND_TRIM_RECT:int = 1;
      
      private static const IND_TRIM_MATRIX:int = 2;
      
      private static const PAL_LEN_ARR_IND_TYPE:int = 0;
      
      private static const PAL_LEN_ARR_IND_LENGTH:int = 1;
      
      private static const PAL_TYPE_FLASH_POWERING_UP:String = PaletteTypes.FLASH_POWERING_UP;
      
      private static const PAL_TYPE_FLASH_STAR:String = PaletteTypes.FLASH_STAR;
      
      private static const PAL_TYPE_P_STATE:String = PaletteTypes.P_STATE;
      
      private static const ZERO_PNT:Point = new Point();
      
      protected static const IND_DEF_COLORS_IN:int = 0;
      
      protected static const IND_DEF_COLORS_OUT:int = 1;
       
      
      protected var FRAME_VEC:Vector.<Vector.<DisplayObject>>;
      
      private var LAB_VEC:Vector.<String>;
      
      protected var rectVec:Vector.<Dictionary>;
      
      private var drawVec:Vector.<Dictionary>;
      
      public var renderedFramesDct:Dictionary;
      
      public var drawnFramesDct:Dictionary;
      
      protected const ANIMATOR:MCAnimator = GlobVars.ANIMATOR;
      
      public var defColors:Palette;
      
      public var flashPalette:Palette;
      
      public var stopAnim:Boolean;
      
      public var mainAnimTmr:CustomTimer;
      
      protected var accurateAnimTmr:ICustomTimer;
      
      public var noAnimThisCycle:Boolean;
      
      public var checkFrameDuringStopAnim:Boolean;
      
      private var labObj:Object;
      
      public var STAT_VEC:Vector.<Dictionary>;
      
      private var _currentFrame:int = 1;
      
      private var _currentFrameLabel:String;
      
      private var _currentLabels:Array;
      
      private var numFrames:int;
      
      private var mcClassObj:Class;
      
      public var shortClassName:String;
      
      protected var paletteObjectName:String;
      
      public var fullClassName:String;
      
      public var classObj:Object;
      
      public var mcReplaceArr:Array;
      
      protected const currentBmpDct:CustomDictionary = new CustomDictionary(true);
      
      protected var useDefaultCreation:Boolean = true;
      
      public var masterObj:CustomMovieClip;
      
      public var masterBmdType:Array;
      
      public var masterBmdSkinCont:BmdSkinCont;
      
      public const ACTIVE_ANIM_TMRS_DCT:CustomDictionary = new CustomDictionary();
      
      public var masterBmd:BitmapData;
      
      protected var inheritedForceShortClassName:String;
      
      private var hRectDct:CustomDictionary;
      
      private var dontDrawYet:Boolean;
      
      protected var copyPixelsOfsPnt:Point;
      
      protected var trim:Boolean = true;
      
      protected var thisIsMaster:Boolean;
      
      public var masterChildrenDct:Dictionary;
      
      protected var curFlashPalType:String;
      
      public var palOrderArr:Array;
      
      protected var palLenArr:Array;
      
      protected var flashArr:Array;
      
      protected var flashCtr:int;
      
      public var flashTmr:ICustomTimer;
      
      protected var palettePnt:Point;
      
      public function CustomMovieClip(param1:Sprite = null, param2:Array = null, param3:String = null, param4:Boolean = false)
      {
         this.FRAME_VEC = new Vector.<Vector.<DisplayObject>>();
         this.LAB_VEC = new Vector.<String>();
         this.rectVec = new Vector.<Dictionary>();
         this.renderedFramesDct = new Dictionary();
         this.drawnFramesDct = new Dictionary();
         this.mainAnimTmr = AnimationTimers.ANIM_SLOW_TMR;
         this.labObj = {};
         this.STAT_VEC = new Vector.<Dictionary>();
         this._currentLabels = [];
         this.hRectDct = new CustomDictionary();
         super();
         this.masterBmdType = param2;
         this.dontDrawYet = param4;
         addEventListener(Event.ADDED_TO_STAGE,this.addedToStageHandler,false,0,true);
         if(param1)
         {
            this.fullClassName = getQualifiedClassName(param1);
         }
         else
         {
            this.fullClassName = getQualifiedClassName(this);
         }
         this.classObj = getDefinitionByName(this.fullClassName);
         if(param3)
         {
            this.shortClassName = param3;
         }
         else if(this.inheritedForceShortClassName)
         {
            this.shortClassName = this.inheritedForceShortClassName;
         }
         else
         {
            this.shortClassName = this.fullClassName.substr(this.fullClassName.indexOf("::") + 2);
            if(this.shortClassName.indexOf("MovieClipInfo_") != -1)
            {
               this.shortClassName = this.shortClassName.substr(14,this.shortClassName.length - 16);
            }
         }
         if(this.shortClassName.charAt(0) == "F")
         {
            if(this.shortClassName.indexOf("FontChar") != -1)
            {
               this.trim = false;
            }
         }
         this.firstCall();
         if(!param2)
         {
            if((this is SkinObj || param3 || param1) && !(this is Character || this is SubMc))
            {
               this.masterObj = MasterObjects[this.shortClassName + "Master"];
               if(this.masterObj)
               {
                  this.masterBmdType = this.masterObj.masterBmdType;
                  this.masterBmd = this.masterObj.masterBmd;
                  this.masterBmdSkinCont = this.masterObj.masterBmdSkinCont;
                  this.cloneFromMaster();
                  return;
               }
            }
         }
         this.thisIsMaster = true;
         if(param1)
         {
            this.createMasterFromMc(param1);
         }
         else
         {
            this.mcClassObj = MovieClipInfo[this.shortClassName + "Mc"];
            if(this.mcClassObj)
            {
               this.createMasterFromMc(new this.mcClassObj());
            }
            else
            {
               this.createMasterFromMc(this);
            }
         }
      }
      
      protected function addedToStageHandler(param1:Event) : void
      {
         if(!this.drawnFramesDct[this._currentFrame])
         {
            this.gotoAndStop(this._currentFrame);
         }
      }
      
      protected function firstCall() : void
      {
      }
      
      protected function prepareSkins() : void
      {
      }
      
      protected function mcReplacePrep(param1:MovieClip) : void
      {
      }
      
      public function cloneFromMaster(param1:Array = null) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         if(param1)
         {
            return;
         }
         this.setNumFrames(this.masterObj.numFrames,true);
         this.LAB_VEC = this.masterObj.LAB_VEC;
         this._currentLabels = this.masterObj.currentLabels;
         this.labObj = this.masterObj.labObj;
         this.gotoAndStop(this._currentFrame);
         this.masterObj.masterChildrenDct[this] = true;
      }
      
      public function getPaletteByRow(param1:int) : Palette
      {
         var _loc2_:PaletteSheet = this.getPaletteSheet();
         var _loc3_:int = this.getItemNum();
         var _loc4_:int = this.getThemeType();
         return _loc2_.getPaletteFromRow(_loc3_,param1,_loc4_,true);
      }
      
      protected function getThemeType() : int
      {
         switch(this.masterBmdType[IND_MBMDT_TYPE])
         {
            case BmdSkinCont.TYPE_CHARACTER:
               return PaletteSheet.THEME_TYPE_CHARACTER;
            case BmdSkinCont.TYPE_ENEMY:
               return PaletteSheet.THEME_TYPE_ENEMY;
            case BmdSkinCont.TYPE_MAP:
               return PaletteSheet.THEME_TYPE_MAP;
            case BmdSkinCont.TYPE_THEME:
               return PaletteSheet.THEME_TYPE_MAP;
            case BmdSkinCont.TYPE_INTERFACE:
               return PaletteSheet.THEME_TYPE_INTERFACE;
            default:
               return -1;
         }
      }
      
      public function masterBmdTypeToStr(param1:Array) : String
      {
         if(!param1)
         {
            if(this.shortClassName == "Ryu")
            {
               return "ryu";
            }
         }
         switch(param1[IND_MBMDT_TYPE])
         {
            case BmdSkinCont.TYPE_CHARACTER:
               return CharacterInfo.convNumToName(param1[IND_MBMDT_CHAR_NUM]);
            case BmdSkinCont.TYPE_ENEMY:
               return "enemy";
            case BmdSkinCont.TYPE_MAP:
               return "map";
            case BmdSkinCont.TYPE_THEME:
               return "theme";
            case BmdSkinCont.TYPE_INTERFACE:
               return "interface";
            case BmdSkinCont.TYPE_BACKGROUND:
               return "background";
            default:
               return null;
         }
      }
      
      protected function getPaletteSheet() : PaletteSheet
      {
         switch(this.masterBmdType[IND_MBMDT_TYPE])
         {
            case BmdSkinCont.TYPE_CHARACTER:
               return BmdInfo.getCharPaletteSheet(this.masterBmdType[IND_MBMDT_CHAR_NUM]);
            case BmdSkinCont.TYPE_ENEMY:
               return BmdInfo.getMainPaletteSheet(GameSettings.getEnemySkinLimited());
            case BmdSkinCont.TYPE_MAP:
               return BmdInfo.getMainPaletteSheet(GameSettings.getMapSkinLimited());
            case BmdSkinCont.TYPE_THEME:
               return BmdInfo.getMainPaletteSheet(GameSettings.getMapSkinLimited());
            case BmdSkinCont.TYPE_INTERFACE:
               return BmdInfo.getMainPaletteSheet(GameSettings.getInterfaceSkinLimited());
            default:
               return null;
         }
      }
      
      protected function getItemNum() : int
      {
         var _loc1_:int = 1;
         var _loc2_:String = this.shortClassName;
         if(this.paletteObjectName)
         {
            _loc2_ = this.paletteObjectName;
         }
         switch(this.masterBmdType[IND_MBMDT_TYPE])
         {
            case BmdSkinCont.TYPE_CHARACTER:
               return CharacterInfo.getCharClassFromNum(this.masterBmdType[IND_MBMDT_CHAR_NUM],false)[Character.IND_CI_NAME + _loc2_];
            case BmdSkinCont.TYPE_ENEMY:
               return EnemyInfo[_loc2_];
            case BmdSkinCont.TYPE_MAP:
               return MapInfo[_loc2_];
            case BmdSkinCont.TYPE_THEME:
               return MapInfo[_loc2_];
            case BmdSkinCont.TYPE_INTERFACE:
               return InterfaceInfo[_loc2_];
            default:
               return -1;
         }
      }
      
      public function resetColor(param1:Boolean = false) : void
      {
         this.relinkBmdToMasterSingleFrame(this.currentFrame);
      }
      
      protected function previousFrameLabelIs(param1:String) : Boolean
      {
         if(this.currentFrame == this.convFrameToInt(param1) + 1)
         {
            return true;
         }
         return false;
      }
      
      public function initiate() : void
      {
         if(this.flashTmr)
         {
            this.flashTmr.addEventListener(TimerEvent.TIMER,this.flashTmrHandler,false,0,true);
            this.flashTmr.start();
         }
      }
      
      public function cleanUp() : void
      {
         if(this.flashTmr)
         {
            this.flashTmr.removeEventListener(TimerEvent.TIMER,this.flashTmrHandler);
         }
         removeEventListener(Event.ADDED_TO_STAGE,this.addedToStageHandler);
      }
      
      protected function flashTmrHandler(param1:TimerEvent) : void
      {
         this.flash();
      }
      
      public function resetFlashCtr() : void
      {
         this.flashCtr = 0;
      }
      
      public function flash(param1:Boolean = true) : void
      {
         var _loc3_:int = 0;
         if(param1)
         {
            ++this.flashCtr;
         }
         var _loc2_:int = this.flashPalette.numRows;
         if(this.flashCtr > _loc2_ - 1)
         {
            this.flashCtr = 0;
         }
         this.setFlashArr(this.defColors,this.flashPalette,1,_loc3_ + this.flashCtr);
         this.recolorBmps(this.flashArr[IND_FLASH_ARR_PAL_IN],this.flashArr[IND_FLASH_ARR_PAL_OUT],this.flashArr[IND_FLASH_ARR_IN_COLOR],this.flashArr[IND_FLASH_ARR_OUT_COLOR]);
      }
      
      protected function setFlashArr(param1:Palette, param2:Palette, param3:int = 0, param4:int = 0) : void
      {
         this.flashArr = [];
         this.flashArr[IND_FLASH_ARR_PAL_IN] = param1;
         this.flashArr[IND_FLASH_ARR_PAL_OUT] = param2;
         this.flashArr[IND_FLASH_ARR_IN_COLOR] = param3;
         this.flashArr[IND_FLASH_ARR_OUT_COLOR] = param4;
      }
      
      public function recolorBmps(param1:Palette, param2:Palette, param3:int = 0, param4:int = 0, param5:Palette = null) : void
      {
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc12_:Bitmap = null;
         var _loc13_:BitmapData = null;
         var _loc6_:GraphicsManager = GraphicsManager.INSTANCE;
         if(param2.readColor(param4,1) == GraphicsManager.COLOR_STANDARD_PALETTE)
         {
            this.resetColor();
            return;
         }
         var _loc7_:Palette = this.defColors;
         if(param5)
         {
            _loc7_ = param5;
         }
         var _loc8_:Boolean = Boolean(_loc6_.getPalNumFromType(this.masterBmdSkinCont.type));
         if(_loc8_)
         {
            _loc8_ = _loc6_.shouldBeRecoloredToGb(this.masterBmdSkinCont);
            if(_loc8_)
            {
               _loc9_ = _loc6_.getGBPalette(this.masterBmdSkinCont.type);
               _loc10_ = _loc6_.getPaletteGroup(this);
               if(!(this is Character || this is SubMc))
               {
                  param1 = param1.convToGameBoy(_loc9_,_loc10_);
               }
            }
         }
         this.resetColor(true);
         var _loc11_:Vector.<Bitmap> = this.getBmpsFromFrame();
         if(_loc8_)
         {
            param2 = param2.convToGameBoy(_loc9_,_loc10_);
         }
         for each(_loc12_ in _loc11_)
         {
            _loc13_ = _loc12_.bitmapData.clone();
            _loc12_.bitmapData = _loc13_;
            _loc6_.recolorSingleBitmap(_loc13_,_loc7_,_loc7_,IND_DEF_COLORS_IN,IND_DEF_COLORS_OUT);
            _loc6_.recolorSingleBitmap(_loc13_,param1,param2,param3,param4);
         }
      }
      
      public function getBmpsFromFrame(param1:int = -1) : Vector.<Bitmap>
      {
         var _loc5_:DisplayObject = null;
         var _loc2_:int = this.currentFrame;
         if(param1 == -1)
         {
            param1 = _loc2_;
         }
         if(_loc2_ != param1)
         {
            this.gotoAndStop(param1);
         }
         var _loc3_:Vector.<Bitmap> = new Vector.<Bitmap>();
         var _loc4_:int = 0;
         while(_loc4_ < numChildren)
         {
            _loc5_ = getChildAt(_loc4_);
            if(_loc5_ is Bitmap)
            {
               _loc3_.push(_loc5_ as Bitmap);
            }
            _loc4_++;
         }
         if(_loc2_ != param1)
         {
            this.gotoAndStop(_loc2_);
         }
         return _loc3_;
      }
      
      protected function getNumPalRows(param1:String) : int
      {
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc2_:int = int(this.palLenArr.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.palLenArr[_loc3_];
            if((_loc5_ = _loc4_[PAL_LEN_ARR_IND_TYPE]) == param1)
            {
               return _loc4_[PAL_LEN_ARR_IND_LENGTH];
            }
            _loc3_++;
         }
         return 0;
      }
      
      protected function getPalRowOfs(param1:String) : int
      {
         var _loc3_:int = 0;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc2_:int = int(this.palLenArr.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc5_ = this.palLenArr[_loc4_];
            if((_loc6_ = _loc5_[PAL_LEN_ARR_IND_TYPE]) == param1)
            {
               return _loc3_;
            }
            _loc3_ += _loc5_[PAL_LEN_ARR_IND_LENGTH];
            _loc4_++;
         }
         return 0;
      }
      
      public function clearFrame(param1:Object) : void
      {
         var _loc5_:DisplayObject = null;
         var _loc2_:int = this.convFrameToInt(param1);
         var _loc3_:Vector.<DisplayObject> = this.FRAME_VEC[_loc2_];
         var _loc4_:Dictionary = this.STAT_VEC[_loc2_];
         while(_loc3_.length)
         {
            _loc5_ = _loc3_.shift();
            delete _loc4_[_loc5_];
         }
         if(this.currentFrame == _loc2_)
         {
            this.removeAllChildren();
         }
      }
      
      protected function copySingleFrameFromOtherCmc(param1:CustomMovieClip, param2:int, param3:int) : void
      {
         var _loc4_:Class = null;
         var _loc5_:HRect = null;
         var _loc10_:Boolean = false;
         var _loc13_:DisplayObject = null;
         var _loc14_:Bitmap = null;
         var _loc15_:DisplayObject = null;
         var _loc16_:CustomMovieClip = null;
         var _loc6_:Vector.<DisplayObject> = param1.FRAME_VEC[param2];
         if(!_loc6_)
         {
            param1.gotoAndStop(param2);
            _loc6_ = param1.FRAME_VEC[param2];
         }
         var _loc7_:Dictionary = param1.STAT_VEC[param2];
         var _loc8_:Vector.<DisplayObject> = new Vector.<DisplayObject>(_loc6_.length);
         var _loc9_:Dictionary = new Dictionary();
         var _loc11_:int = int(_loc6_.length);
         var _loc12_:int = 0;
         while(_loc12_ < _loc11_)
         {
            _loc13_ = _loc6_[_loc12_];
            if(_loc13_ is Bitmap)
            {
               _loc14_ = new Bitmap(Bitmap(_loc13_).bitmapData);
               _loc8_[_loc12_] = _loc14_;
               _loc9_[_loc14_] = _loc7_[_loc13_];
            }
            else if(_loc13_ is HRect)
            {
               _loc4_ = Object(_loc13_).constructor;
               for each(_loc15_ in this.hRectDct)
               {
                  if(Object(_loc15_).constructor == _loc4_)
                  {
                     _loc8_[_loc12_] = _loc15_;
                     _loc9_[_loc15_] = _loc7_[_loc13_];
                     _loc10_ = true;
                  }
               }
               if(!_loc10_)
               {
                  _loc5_ = new _loc4_();
                  this.hRectDct[_loc5_] = _loc5_;
                  _loc8_[_loc12_] = _loc5_;
                  _loc9_[_loc5_] = _loc7_[_loc13_];
               }
            }
            else if(_loc13_ is CustomMovieClip)
            {
               _loc16_ = new CustomMovieClip(null,null,CustomMovieClip(_loc13_).shortClassName);
               _loc8_[_loc12_] = _loc16_;
               _loc9_[_loc16_] = _loc7_[_loc13_];
            }
            else
            {
               _loc8_[_loc12_] = _loc13_;
               _loc9_[_loc13_] = _loc7_[_loc13_];
            }
            _loc12_++;
         }
         this.FRAME_VEC[param3] = _loc8_;
         this.STAT_VEC[param3] = _loc9_;
         this.renderedFramesDct[param3] = param3;
         this.gotoAndStop(this._currentFrame);
      }
      
      public function relinkBmdToMasterSingleFrame(param1:Object = null) : void
      {
         var _loc7_:DisplayObject = null;
         var _loc8_:Bitmap = null;
         if(!param1)
         {
            param1 = this.currentFrame;
         }
         var _loc2_:int = this.convFrameToInt(param1);
         if(!this.masterObj.renderedFramesDct[_loc2_])
         {
            this.masterObj.redraw(_loc2_);
         }
         this.drawnFramesDct[_loc2_] = _loc2_;
         var _loc3_:Vector.<DisplayObject> = this.masterObj.FRAME_VEC[_loc2_];
         var _loc4_:Vector.<DisplayObject> = this.FRAME_VEC[_loc2_];
         var _loc5_:int = int(_loc4_.length);
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            _loc7_ = _loc3_[_loc6_];
            if(_loc7_ is Bitmap)
            {
               (_loc8_ = _loc4_[_loc6_] as Bitmap).bitmapData = (_loc7_ as Bitmap).bitmapData;
            }
            _loc6_++;
         }
      }
      
      protected function getCleanMasterBmdSkinForReading() : BmdSkinCont
      {
         var _loc1_:GraphicsManager = GraphicsManager.INSTANCE;
         if(!this.masterBmdType)
         {
            return null;
         }
         switch(this.masterBmdType[IND_MBMDT_TYPE])
         {
            case BmdSkinCont.TYPE_CHARACTER:
               return _loc1_.CLEAN_BMC_VEC_CHARACTER[this.masterBmdType[IND_MBMDT_CHAR_NUM]][this.masterBmdSkinCont.skinNum];
            case BmdSkinCont.TYPE_ENEMY:
               return _loc1_.CLEAN_BMD_VEC_ENEMY[GameSettings.getEnemySkinLimited(false,true)];
            case BmdSkinCont.TYPE_MAP:
               return _loc1_.CLEAN_BMD_VEC_MAP[GameSettings.getMapSkinLimited()];
            case BmdSkinCont.TYPE_THEME:
               return _loc1_.CLEAN_BMD_VEC_THEME[GameSettings.getMapSkinLimited()];
            case BmdSkinCont.TYPE_INTERFACE:
               return _loc1_.CLEAN_BMC_VEC_INTERFACE[GameSettings.getInterfaceSkinLimited(false,true)];
            default:
               return null;
         }
      }
      
      private function getMasterBmd(param1:DisplayObjectContainer = null) : BitmapData
      {
         var _loc2_:GraphicsManager = GraphicsManager.INSTANCE;
         if(this is Character || this is SubMc)
         {
            this.masterBmdType = [BmdSkinCont.TYPE_CHARACTER,this["charNum"]];
         }
         if(!this.masterBmdType)
         {
            return null;
         }
         switch(this.masterBmdType[IND_MBMDT_TYPE])
         {
            case BmdSkinCont.TYPE_CHARACTER:
               CHARACTER_MASTER_OBJ_DCT.addItem(this.shortClassName,this);
               this.masterBmdSkinCont = _loc2_.drawingBoardCharSkinVec[this.masterBmdType[IND_MBMDT_CHAR_NUM]];
               return this.masterBmdSkinCont.bmd;
            case BmdSkinCont.TYPE_ENEMY:
               ENEMY_MASTER_OBJ_DCT.addItem(this);
               this.masterBmdSkinCont = _loc2_.drawingBoardEnemySkinCont;
               return this.masterBmdSkinCont.bmd;
            case BmdSkinCont.TYPE_MAP:
               MAP_MASTER_OBJ_DCT.addItem(this);
               this.masterBmdSkinCont = _loc2_.drawingBoardMapSkinCont;
               return this.masterBmdSkinCont.bmd;
            case BmdSkinCont.TYPE_THEME:
               THEME_MASTER_OBJ_DCT.addItem(this);
               this.masterBmdSkinCont = _loc2_.drawingBoardThemeSkinCont;
               return this.masterBmdSkinCont.bmd;
            case BmdSkinCont.TYPE_INTERFACE:
               INTERFACE_MASTER_OBJ_DCT.addItem(this);
               this.masterBmdSkinCont = _loc2_.drawingBoardInterfaceSkinCont;
               return this.masterBmdSkinCont.bmd;
            default:
               return null;
         }
      }
      
      protected function draw() : void
      {
         var _loc3_:Vector.<DisplayObject> = null;
         var _loc4_:Dictionary = null;
         var _loc5_:Dictionary = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:DisplayObject = null;
         var _loc9_:DisplayObjectContainer = null;
         var _loc10_:Bitmap = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:Rectangle = null;
         var _loc13_:BitmapData = null;
         var _loc14_:Rectangle = null;
         var _loc15_:Array = null;
         var _loc16_:Matrix = null;
         var _loc17_:Array = null;
         var _loc18_:Array = null;
         var _loc19_:Bitmap = null;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:int = 0;
         var _loc1_:Number = GraphicsManager.BMD_SCALE;
         var _loc2_:int = 1;
         while(_loc2_ <= this.numFrames)
         {
            _loc3_ = this.FRAME_VEC[_loc2_];
            _loc4_ = this.STAT_VEC[_loc2_];
            _loc5_ = new Dictionary();
            _loc6_ = int(_loc3_.length);
            _loc7_ = 0;
            while(_loc7_ < _loc6_)
            {
               _loc8_ = _loc3_[_loc7_];
               if(_loc8_ is DisplayObjectContainer && !(_loc8_ is HRect || _loc8_ is CustomMovieClip))
               {
                  _loc9_ = _loc8_ as DisplayObjectContainer;
                  if(Boolean(_loc9_.numChildren) && _loc9_.getChildAt(0) is Bitmap)
                  {
                     _loc10_ = _loc9_.getChildAt(0) as Bitmap;
                     _loc11_ = _loc3_[_loc7_ + 1];
                     this.moveSingleObjectToFrame(_loc11_,_loc2_);
                     this.moveSingleObjectToFrame(_loc8_,_loc2_);
                     _loc12_ = _loc11_.getBounds(_loc10_);
                     _loc13_ = new BitmapData(_loc12_.width,_loc12_.height,true,0);
                     if(this.copyPixelsOfsPnt)
                     {
                        _loc20_ = _loc12_.x;
                        _loc21_ = _loc12_.y;
                        _loc12_.x += this.copyPixelsOfsPnt.x;
                        _loc12_.y += this.copyPixelsOfsPnt.y;
                        _loc13_.copyPixels(this.masterBmd,_loc12_,ZERO_PNT);
                        _loc12_.x = _loc20_;
                        _loc12_.y = _loc21_;
                     }
                     else
                     {
                        _loc13_.copyPixels(this.masterBmd,_loc12_,ZERO_PNT);
                     }
                     _loc16_ = _loc8_.transform.matrix;
                     _loc16_.scale(_loc1_,_loc1_);
                     _loc16_.tx = _loc11_.x;
                     _loc16_.ty = _loc11_.y;
                     _loc17_ = [_loc16_,_loc8_.scaleX,_loc8_.scaleY,_loc8_.rotation];
                     _loc18_ = [];
                     if(this.trim)
                     {
                        _loc15_ = this.trimBmp(_loc13_,_loc12_,_loc17_);
                     }
                     if(_loc15_)
                     {
                        _loc19_ = new Bitmap(_loc15_[IND_TRIM_BMD]);
                        _loc18_[IND_MASK_RECT_TMP] = _loc15_[IND_TRIM_RECT];
                        _loc17_[IND_MATRIX_TEMP] = _loc15_[IND_TRIM_MATRIX];
                     }
                     else
                     {
                        _loc19_ = new Bitmap(_loc13_);
                     }
                     _loc18_[IND_MASK_RECT_SRC] = _loc12_;
                     _loc5_[_loc19_] = _loc18_;
                     _loc4_[_loc19_] = _loc17_;
                     _loc19_.name = _loc8_.name;
                     _loc3_.push(_loc19_);
                  }
               }
               if(!(_loc8_ is HRect || _loc8_ is CustomMovieClip))
               {
                  _loc22_ = int(_loc3_.indexOf(_loc8_));
                  _loc3_.splice(_loc7_,1);
                  _loc7_--;
                  _loc6_--;
                  delete _loc4_[_loc8_];
               }
               if(_loc8_ is MegaManHead)
               {
                  _loc8_.visible = false;
               }
               _loc7_++;
            }
            this.drawVec[_loc2_] = _loc5_;
            _loc2_++;
         }
         this.setObjsToRemoveFromFrames();
      }
      
      protected function trimBmp(param1:BitmapData, param2:Rectangle, param3:Array) : Array
      {
         var _loc5_:BitmapData = null;
         var _loc12_:Number = NaN;
         var _loc4_:Rectangle = param1.getColorBoundsRect(4294967295,0,false);
         if(!_loc4_.height || !_loc4_.width)
         {
            _loc4_ = new Rectangle(0,0,1,1);
         }
         var _loc6_:Number = 0;
         var _loc7_:Number = 0;
         _loc5_ = new BitmapData(_loc4_.width,_loc4_.height,true,0);
         _loc5_.copyPixels(param1,_loc4_,ZERO_PNT);
         var _loc8_:Rectangle = param1.rect;
         _loc6_ = _loc4_.x - _loc8_.x;
         _loc7_ = _loc4_.y - _loc8_.y;
         _loc4_.x = param2.x + _loc6_;
         _loc4_.y = param2.y + _loc7_;
         _loc6_ *= param3[IND_SCALE_X_SRC];
         _loc7_ *= param3[IND_SCALE_Y_SRC];
         var _loc9_:Number = Number(param3[IND_ROTATION_SRC]);
         if(_loc9_ != 0)
         {
            _loc12_ = _loc6_;
            if(_loc9_ == 180)
            {
               _loc6_ = -_loc6_;
               _loc7_ = -_loc7_;
            }
            else if(_loc9_ > 0)
            {
               _loc6_ = -_loc7_;
               _loc7_ = _loc12_;
            }
            else
            {
               _loc6_ = _loc7_;
               _loc7_ = -_loc12_;
            }
         }
         var _loc10_:Matrix = Matrix(param3[IND_MATRIX_SRC]).clone();
         var _loc11_:Number = GraphicsManager.BMD_SCALE;
         _loc10_.tx += _loc6_ * _loc11_;
         _loc10_.ty += _loc7_ * _loc11_;
         param1.dispose();
         return [_loc5_,_loc4_,_loc10_];
      }
      
      public function markForRedraw() : void
      {
         var _loc2_:Object = null;
         var _loc3_:CustomMovieClip = null;
         this.drawnFramesDct = null;
         this.drawnFramesDct = new Dictionary();
         var _loc1_:int = 0;
         for(_loc2_ in this.masterChildrenDct)
         {
            _loc3_ = _loc2_ as CustomMovieClip;
            _loc3_.drawnFramesDct = null;
            _loc3_.drawnFramesDct = new Dictionary();
            _loc1_++;
         }
      }
      
      public function redraw(param1:int = -1, param2:BitmapData = null) : void
      {
         var _loc6_:Dictionary = null;
         var _loc7_:Dictionary = null;
         var _loc8_:Object = null;
         var _loc9_:Array = null;
         var _loc10_:Rectangle = null;
         var _loc11_:Bitmap = null;
         var _loc12_:BitmapData = null;
         var _loc13_:Array = null;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Array = null;
         var _loc3_:int = this.numFrames;
         var _loc4_:int = 1;
         var _loc5_:BitmapData = this.masterBmd;
         if(param2)
         {
            _loc5_ = param2;
         }
         if(param1 != -1)
         {
            _loc4_ = param1;
            _loc3_ = param1;
         }
         while(_loc4_ <= _loc3_)
         {
            _loc6_ = this.drawVec[_loc4_];
            _loc7_ = this.STAT_VEC[_loc4_];
            this.drawnFramesDct[_loc4_] = _loc4_;
            for(_loc8_ in _loc6_)
            {
               _loc9_ = _loc6_[_loc8_];
               _loc10_ = _loc9_[IND_MASK_RECT_SRC];
               _loc11_ = Bitmap(_loc8_);
               if(this.trim)
               {
                  _loc12_ = new BitmapData(_loc10_.width,_loc10_.height,true,0);
               }
               else
               {
                  _loc12_ = _loc11_.bitmapData;
               }
               if(this.copyPixelsOfsPnt)
               {
                  _loc14_ = _loc10_.x;
                  _loc15_ = _loc10_.y;
                  _loc10_.x += this.copyPixelsOfsPnt.x;
                  _loc10_.y += this.copyPixelsOfsPnt.y;
                  _loc12_.copyPixels(this.masterBmd,_loc10_,ZERO_PNT);
                  _loc10_.x = _loc14_;
                  _loc10_.y = _loc15_;
               }
               else
               {
                  _loc12_.copyPixels(_loc5_,_loc10_,ZERO_PNT);
               }
               _loc13_ = _loc7_[_loc8_];
               if((Boolean(_loc13_)) && this.trim)
               {
                  _loc16_ = this.trimBmp(_loc12_,_loc10_,_loc13_);
                  if(_loc16_)
                  {
                     _loc13_[IND_MATRIX_TEMP] = _loc16_[IND_TRIM_MATRIX];
                     _loc9_[IND_MASK_RECT_TMP] = _loc16_[IND_TRIM_RECT];
                     _loc11_.bitmapData = _loc16_[IND_TRIM_BMD];
                  }
               }
            }
            _loc4_++;
         }
      }
      
      public function setUpCommonPalettes() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:ThemeGroup = null;
         var _loc4_:Boolean = false;
         if(!this.masterBmdType || this.masterBmdType[IND_MBMDT_TYPE] == BmdSkinCont.TYPE_BACKGROUND || this is Character)
         {
            return;
         }
         if(!this.masterBmdType)
         {
            return;
         }
         if(this.masterBmdType[IND_MBMDT_TYPE] == BmdSkinCont.TYPE_CHARACTER)
         {
            _loc1_ = StatManager.STAT_MNGR.getCharSkinNum(this.masterBmdType[IND_MBMDT_CHAR_NUM]);
            _loc4_ = true;
         }
         else
         {
            _loc3_ = Themes.getThemeBySkinNum(GraphicsManager.INSTANCE.getSkinNum(this.masterBmdType[IND_MBMDT_TYPE]));
            _loc1_ = _loc3_.setNum;
            _loc2_ = _loc3_.theme;
         }
         var _loc5_:Palette = this.getPaletteByRow(_loc1_);
         this.defColors = _loc5_.extractRowsAsPalette(0,_loc2_);
         if(this.defColors.numRows < 2)
         {
            this.defColors = _loc5_.extractRowsAsPalette(0,0);
         }
         if(_loc1_ != 0 && !_loc4_)
         {
            _loc5_ = this.getPaletteByRow(0);
         }
         this.flashPalette = _loc5_.extractPaletteByColorType(Palette.COLOR_NEW_FLASH_PALETTE);
      }
      
      protected function setObjsToRemoveFromFrames() : void
      {
      }
      
      protected function removeObjsFromFrames(param1:Object, param2:Array, param3:Boolean = false, param4:int = -1) : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc9_:Vector.<DisplayObject> = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:DisplayObject = null;
         var _loc13_:Dictionary = null;
         param2 = param2.concat();
         _loc5_ = int(param2.length);
         _loc6_ = 0;
         while(_loc6_ < _loc5_)
         {
            param2[_loc6_] = this.convFrameToInt(param2[_loc6_]);
            _loc6_++;
         }
         param2.sort(Array.NUMERIC);
         var _loc8_:Array = param2;
         if(param3)
         {
            _loc8_ = [];
            _loc6_ = 1;
            while(_loc6_ <= this.totalFrames)
            {
               _loc7_ = int(param2[0]);
               if(_loc6_ == _loc7_)
               {
                  param2.shift();
               }
               else
               {
                  _loc8_.push(_loc6_);
               }
               _loc6_++;
            }
         }
         _loc5_ = int(_loc8_.length);
         _loc6_ = 0;
         while(_loc6_ < _loc5_)
         {
            _loc7_ = int(_loc8_[_loc6_]);
            _loc9_ = this.FRAME_VEC[_loc7_];
            _loc10_ = int(_loc9_.length);
            _loc11_ = 0;
            while(_loc11_ < _loc10_)
            {
               _loc12_ = _loc9_[_loc11_];
               if(_loc12_ == param1 || param1 is Class && _loc12_ is Class(param1) || param1 is String && _loc12_.name == String(param1))
               {
                  if(param4 != -1)
                  {
                     if(param4 == 0)
                     {
                        _loc12_.visible = false;
                     }
                     else
                     {
                        _loc12_.visible = true;
                     }
                  }
                  else
                  {
                     _loc9_.splice(_loc11_,1);
                     _loc11_--;
                     _loc10_--;
                     _loc13_ = this.STAT_VEC[_loc7_];
                     delete _loc13_[_loc12_];
                     if(contains(_loc12_))
                     {
                        removeChild(_loc12_);
                     }
                  }
               }
               _loc11_++;
            }
            _loc6_++;
         }
      }
      
      public function convFrameToInt(param1:Object) : int
      {
         var _loc2_:int = 0;
         if(param1 is int)
         {
            _loc2_ = int(param1);
         }
         else
         {
            _loc2_ = int(this.labObj[param1]);
         }
         if(_loc2_ < 1 || _loc2_ > this.numFrames)
         {
            throw new Error("frame is outside of range");
         }
         return _loc2_;
      }
      
      protected function createMasterFromMc(param1:DisplayObjectContainer) : void
      {
         var _loc2_:MovieClip = null;
         var _loc4_:Vector.<DisplayObject> = null;
         var _loc5_:Dictionary = null;
         var _loc6_:Dictionary = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:String = null;
         var _loc10_:DisplayObject = null;
         var _loc11_:Rectangle = null;
         var _loc12_:DisplayObjectContainer = null;
         this.masterChildrenDct = new Dictionary(true);
         this.drawVec = new Vector.<Dictionary>();
         this.setUpLabelsFromMc(param1);
         if(param1 is MovieClip)
         {
            _loc2_ = param1 as MovieClip;
         }
         this.mcReplacePrep(_loc2_);
         this.masterBmd = this.getMasterBmd(param1);
         var _loc3_:int = 1;
         while(_loc3_ <= this.numFrames)
         {
            if(_loc2_)
            {
               _loc2_.gotoAndStop(_loc3_);
            }
            _loc4_ = new Vector.<DisplayObject>();
            _loc5_ = new Dictionary();
            _loc6_ = new Dictionary(true);
            _loc7_ = param1.numChildren;
            _loc8_ = 0;
            while(_loc8_ < _loc7_)
            {
               _loc10_ = param1.getChildAt(_loc8_);
               if(_loc10_ is SkinMask)
               {
                  DisplayObject(param1.getChildAt(_loc8_ - 1)).mask = _loc10_;
               }
               else if(_loc10_ is HRect)
               {
                  _loc11_ = new HitRectangle(_loc10_ as HRect);
                  _loc5_[_loc11_] = _loc11_;
               }
               else if(!this.masterBmd)
               {
                  _loc12_ = null;
                  if(_loc10_ is DisplayObjectContainer)
                  {
                     _loc12_ = _loc10_ as DisplayObjectContainer;
                  }
                  if(_loc12_ && _loc12_.numChildren && _loc12_.getChildAt(0) is Bitmap)
                  {
                     this.masterBmd = Bitmap(_loc12_.getChildAt(0)).bitmapData.clone();
                  }
               }
               _loc4_.push(_loc10_);
               _loc6_[_loc10_] = [_loc10_.transform.matrix];
               _loc8_++;
            }
            this.FRAME_VEC[_loc3_] = _loc4_;
            if(_loc2_)
            {
               _loc9_ = _loc2_.currentFrameLabel;
            }
            this.LAB_VEC[_loc3_] = _loc9_;
            this.labObj[_loc9_] = _loc3_;
            this.STAT_VEC[_loc3_] = _loc6_;
            this.rectVec[_loc3_] = _loc5_;
            _loc3_++;
         }
         if(this.mcReplaceArr)
         {
            this.replaceSubMovieClips();
         }
         if(!this.dontDrawYet)
         {
            this.finalCreateMaster();
         }
      }
      
      public function finalCreateMaster() : void
      {
         this.draw();
         if(this is Character && Character(this).putSubMcsOnTop)
         {
            this.reorderItems();
         }
         this.gotoAndStop(1);
         this.prepareSkins();
      }
      
      private function reorderItems() : void
      {
         var _loc2_:Vector.<DisplayObject> = null;
         var _loc1_:int = 1;
         while(_loc1_ <= this.numFrames)
         {
            _loc2_ = this.FRAME_VEC[_loc1_];
            _loc2_.sort(this.sortDisplayObjects);
            _loc1_++;
         }
      }
      
      protected function sortDisplayObjects(param1:DisplayObject, param2:DisplayObject) : int
      {
         if(param1 is Bitmap && param2 is SubMc)
         {
            return -1;
         }
         if(param1 is SubMc && param2 is Bitmap)
         {
            return 1;
         }
         return 0;
      }
      
      private function moveSingleObjectToFrame(param1:DisplayObject, param2:int) : void
      {
         var _loc3_:Array = this.STAT_VEC[param2][param1];
         param1.transform.matrix = _loc3_[0];
      }
      
      public function frameIsEmpty(param1:Object) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc7_:Bitmap = null;
         var _loc8_:BitmapData = null;
         var _loc9_:Rectangle = null;
         var _loc2_:int = this.convFrameToInt(param1);
         var _loc3_:Vector.<DisplayObject> = this.FRAME_VEC[_loc2_];
         if(!_loc3_)
         {
            this.copySingleFrameFromOtherCmc(this.masterObj,_loc2_,_loc2_);
            _loc3_ = this.FRAME_VEC[_loc2_];
         }
         var _loc5_:int = int(_loc3_.length);
         var _loc6_:Vector.<Bitmap> = this.getBmpsFromFrame(_loc2_);
         for each(_loc7_ in _loc6_)
         {
            if(_loc7_.visible)
            {
               _loc8_ = _loc7_.bitmapData;
               if((_loc9_ = _loc8_.getColorBoundsRect(4278190080,4278190080)).width != 0 || _loc9_.height != 0)
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      private function setUpLabelsFromMc(param1:DisplayObjectContainer) : void
      {
         var _loc2_:MovieClip = null;
         if(!(param1 is MovieClip))
         {
            this.setNumFrames(1);
            this._currentLabels = [null];
         }
         else
         {
            _loc2_ = MovieClip(param1);
            this.setNumFrames(_loc2_.totalFrames);
            this._currentLabels = _loc2_.currentLabels.concat();
         }
      }
      
      public function replaceSubMovieClips() : void
      {
         var _loc5_:Dictionary = null;
         var _loc6_:Vector.<DisplayObject> = null;
         var _loc7_:Array = null;
         var _loc8_:Array = null;
         var _loc9_:Object = null;
         var _loc10_:Array = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:DisplayObject = null;
         var _loc13_:Array = null;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:MovieClip = null;
         var _loc17_:DisplayObject = null;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         var _loc20_:DisplayObject = null;
         var _loc1_:int = int(this.STAT_VEC.length);
         var _loc2_:int = 0;
         var _loc3_:Array = this.mcReplaceArr;
         var _loc4_:int = 1;
         while(_loc4_ < _loc1_)
         {
            _loc5_ = this.STAT_VEC[_loc4_];
            _loc6_ = this.FRAME_VEC[_loc4_];
            _loc2_ = 0;
            _loc7_ = [];
            _loc8_ = [];
            for(_loc9_ in _loc5_)
            {
               _loc12_ = _loc9_ as DisplayObject;
               _loc13_ = _loc5_[_loc12_];
               _loc14_ = int(this.mcReplaceArr.length);
               _loc15_ = 0;
               while(_loc15_ < _loc14_)
               {
                  _loc16_ = this.mcReplaceArr[_loc15_];
                  if(_loc12_ == _loc16_)
                  {
                     _loc2_++;
                     _loc17_ = this.mcReplaceArr[_loc15_ + 1];
                     _loc7_.push([_loc17_,_loc13_]);
                     _loc8_.push(_loc12_);
                     _loc18_ = int(_loc6_.length);
                     _loc19_ = 0;
                     while(_loc19_ < _loc18_)
                     {
                        _loc20_ = _loc6_[_loc19_];
                        if(_loc20_ == _loc16_)
                        {
                           _loc6_[_loc19_] = _loc17_;
                        }
                        _loc19_++;
                     }
                  }
                  _loc15_++;
                  _loc15_++;
               }
            }
            for each(_loc10_ in _loc7_)
            {
               _loc5_[_loc10_[0]] = _loc10_[1];
            }
            for each(_loc11_ in _loc8_)
            {
               delete _loc5_[_loc11_];
            }
            _loc4_++;
         }
         if(this is Bill)
         {
            DisplayObject(this.mcReplaceArr[3]).transform.matrix = DisplayObject(this.mcReplaceArr[2]).transform.matrix;
         }
         this.mcReplaceArr = null;
      }
      
      public function addChildToSingleFrame(param1:DisplayObject, param2:Object) : void
      {
         var _loc3_:int = this.convFrameToInt(param2);
         if(this.FRAME_VEC[_loc3_] == null)
         {
            this.FRAME_VEC[_loc3_] = new Vector.<DisplayObject>();
         }
         this.FRAME_VEC[_loc3_].push(param1);
         if(this.STAT_VEC[_loc3_] == null)
         {
            this.STAT_VEC[_loc3_] = new Dictionary();
         }
         this.STAT_VEC[_loc3_][param1] = [param1.transform.matrix,param1.scaleX,param1.scaleY,param1.rotation];
      }
      
      public function setChildPoperty(param1:DisplayObject, param2:String, param3:Number, param4:Object = null) : void
      {
         var _loc5_:int = 0;
         var _loc10_:Dictionary = null;
         var _loc11_:Array = null;
         var _loc6_:int = this.currentFrame;
         if(param4)
         {
            if(param4 is String)
            {
               _loc5_ = this.convFrameToInt(param4);
            }
            else
            {
               _loc5_ = int(param4);
            }
         }
         var _loc7_:int = this.numFrames;
         var _loc8_:int = 1;
         if(_loc5_)
         {
            _loc8_ = _loc5_;
            _loc7_ = _loc5_;
            this.gotoAndStop(_loc5_);
         }
         param1[param2] = param3;
         var _loc9_:Matrix = param1.transform.matrix;
         while(_loc8_ <= _loc7_)
         {
            _loc10_ = this.STAT_VEC[_loc8_];
            (_loc11_ = _loc10_[param1])[IND_MATRIX_SRC] = _loc9_;
            _loc8_++;
         }
      }
      
      public function setNumFrames(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:* = undefined;
         this.numFrames = param1;
         if(!param2)
         {
            _loc3_ = [this.FRAME_VEC,this.LAB_VEC,this.STAT_VEC,this.rectVec];
            if(this.drawVec)
            {
               _loc3_.push(this.drawVec);
            }
            this.labObj = {};
            this._currentLabels.length = 0;
            this._currentLabels.length = _loc4_;
         }
         else
         {
            _loc3_ = [this.FRAME_VEC,this.STAT_VEC];
         }
         _loc4_ = int(_loc3_.length);
         while(_loc5_ < _loc4_)
         {
            (_loc6_ = _loc3_[_loc5_]).fixed = false;
            _loc6_.length = 0;
            _loc6_.length = param1 + 1;
            _loc6_.fixed = true;
            _loc5_++;
         }
      }
      
      public function gotoAndPlay(param1:Object, param2:String = null) : void
      {
      }
      
      public function gotoAndStop(param1:Object, param2:String = null) : void
      {
         var _loc6_:int = 0;
         var _loc7_:DisplayObject = null;
         var _loc8_:Array = null;
         var _loc9_:Matrix = null;
         if(param1 is int)
         {
            this._currentFrame = int(param1);
         }
         else if(param1 is String)
         {
            this._currentFrame = this.labObj[param1];
         }
         if(this._currentFrame <= 0)
         {
            this._currentFrame = 1;
         }
         else if(this._currentFrame > this.numFrames)
         {
            this._currentFrame = this.numFrames;
         }
         this._currentFrameLabel = this.LAB_VEC[this._currentFrame];
         this.removeAllChildren();
         this.currentBmpDct.clear();
         var _loc3_:Vector.<DisplayObject> = this.FRAME_VEC[this._currentFrame];
         if(!_loc3_)
         {
            this.copySingleFrameFromOtherCmc(this.masterObj,this._currentFrame,this._currentFrame);
            return;
         }
         if(!this.drawnFramesDct[this._currentFrame])
         {
            if(this.thisIsMaster)
            {
               this.redraw(this._currentFrame);
            }
            else
            {
               this.relinkBmdToMasterSingleFrame();
            }
         }
         var _loc4_:Dictionary = this.STAT_VEC[this._currentFrame];
         var _loc5_:int = int(_loc3_.length);
         while(_loc6_ < _loc5_)
         {
            _loc7_ = _loc3_[_loc6_];
            addChild(_loc7_);
            _loc8_ = _loc4_[_loc7_];
            if(!(_loc9_ = _loc8_[IND_MATRIX_TEMP]))
            {
               _loc9_ = _loc8_[IND_MATRIX_SRC];
            }
            _loc7_.transform.matrix = _loc9_;
            _loc6_++;
         }
      }
      
      public function play() : void
      {
      }
      
      public function stop() : void
      {
      }
      
      public function animate(param1:ICustomTimer) : Boolean
      {
         if(!this.stopAnim)
         {
            if(param1 == this.mainAnimTmr || param1 == this.accurateAnimTmr)
            {
               if(!this.noAnimThisCycle)
               {
                  this.ANIMATOR.animate(this);
                  return true;
               }
               this.noAnimThisCycle = false;
            }
         }
         return false;
      }
      
      private function removeAllChildren() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = numChildren;
         while(_loc2_ < _loc1_)
         {
            removeChildAt(0);
            _loc2_++;
         }
      }
      
      public function checkFrame() : void
      {
      }
      
      private function getVisibleBounds() : Rectangle
      {
         var _loc2_:Rectangle = null;
         var _loc3_:DisplayObject = null;
         var _loc1_:Vector.<DisplayObject> = this.FRAME_VEC[this._currentFrame];
         for each(_loc3_ in _loc1_)
         {
            if(_loc3_ is Bitmap)
            {
               _loc2_ = Bitmap(_loc3_).bitmapData.getColorBoundsRect(4294967295,0,false);
            }
         }
         return _loc2_;
      }
      
      override public function get height() : Number
      {
         return super.height;
      }
      
      override public function get width() : Number
      {
         return super.width;
      }
      
      public function get currentFrame() : int
      {
         return this._currentFrame;
      }
      
      public function get currentLabel() : String
      {
         var _loc1_:String = null;
         if(this._currentFrameLabel != null)
         {
            return this._currentFrameLabel;
         }
         var _loc2_:int = this._currentFrame;
         while(_loc2_ > 0)
         {
            _loc1_ = this.LAB_VEC[_loc2_];
            if(_loc1_ != null)
            {
               break;
            }
            _loc2_--;
         }
         return _loc1_;
      }
      
      public function get currentFrameLabel() : String
      {
         return this._currentFrameLabel;
      }
      
      public function get totalFrames() : int
      {
         return this.numFrames;
      }
      
      public function get currentLabels() : Array
      {
         return this._currentLabels;
      }
   }
}
