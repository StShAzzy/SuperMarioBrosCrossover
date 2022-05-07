package com.smbc.graphics
{
   import com.explodingRabbit.utils.CustomDictionary;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.GameSettings;
   import com.smbc.graphics.fontChars.FontCharHud;
   import com.smbc.graphics.skins.BmdInfo;
   import com.smbc.graphics.skins.BmdSkinCont;
   import com.smbc.interfaces.ICustomTimer;
   import com.smbc.level.Level;
   import com.smbc.main.GlobVars;
   import com.smbc.main.SkinObj;
   import com.smbc.text.TextFieldContainer;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.events.Event;
   
   public class Scenery extends SkinObj
   {
      
      public static const WAVE_Y_POS:int = 64;
      
      private static const FL_BUSH_GREEN:String = "bushGreen";
      
      private static const FL_BUSH_GREEN_LEFT:String = "bushGreenLeft";
      
      private static const FL_BUSH_GREEN_LEFT_END:String = "bushGreenLeftEnd";
      
      private static const FL_BUSH_GREEN_MID:String = "bushGreenMid";
      
      private static const FL_BUSH_GREEN_MID_END:String = "bushGreenMidEnd";
      
      private static const FL_BUSH_GREEN_RIGHT:String = "bushGreenRight";
      
      private static const FL_BUSH_GREEN_RIGHT_END:String = "bushGreenRightEnd";
      
      private static const FL_BUSH_GREEN_SMALL:String = "bushGreenSmall";
      
      private static const FL_BUSH_GREEN_SMALL_END:String = "bushGreenSmallEnd";
      
      private static const FL_COLOR_RED:String = "colorRed";
      
      private static const FL_COLOR_LIGHT_BLUE:String = "colorLightBlue";
      
      private static const FL_HILL_SMALL:String = "hillSmall";
      
      private static const FL_HILL_MEDIUM:String = "hillMedium";
      
      private static const FL_HILL_BIG:String = "hillBig";
      
      public static const FL_CLOUD_SMALL:String = "cloudSmall";
      
      private static const FL_CLOUD_SINGLE:String = "cloudSingle";
      
      private static const FL_CLOUD_DOUBLE:String = "cloudDouble";
      
      private static const FL_CLOUD_TRIPLE:String = "cloudTriple";
      
      private static const FL_FLAG:String = "flag";
      
      private static const FL_FLAG_END:String = "flagEnd";
      
      private static const FL_WAVES_LAVA:String = "wavesLava";
      
      private static const FL_WAVES_LAVA_END:String = "wavesLavaEnd";
      
      private static const FL_WAVES_NIGHT:String = "wavesNight";
      
      private static const FL_WAVES_NIGHT_END:String = "wavesNightEnd";
      
      private static const FL_WAVES_DAY_ODD:String = "wavesDayOdd";
      
      private static const FL_WAVES_DAY_ODD_END:String = "wavesDayOddEnd";
      
      private static const FL_WAVES_DAY_EVEN:String = "wavesDayEven";
      
      private static const FL_WAVES_DAY_EVEN_END:String = "wavesDayEvenEnd";
      
      public static const FL_TOAD_BOT:String = "toad";
      
      public static const FL_PRINCESS_BOT:String = "peach";
      
      public static const WAVE_BASE_STR:String = "wavesDay";
      
      private static const WATER_LAYERED_SKIN_NUM:int = 1;
      
      private static const TEXT_ADD_STR:String = "sceneryText_";
      
      private static var lastWaveStr:String;
      
      public static var mapSkin:int;
      
      private static const BACK_LAYER_DCT:CustomDictionary = new CustomDictionary();
      
      private static const THEME_DCT:CustomDictionary = new CustomDictionary();
      
      {
         THEME_DCT.addItem(FL_BUSH_GREEN);
         THEME_DCT.addItem(FL_BUSH_GREEN_LEFT);
         THEME_DCT.addItem(FL_BUSH_GREEN_MID);
         THEME_DCT.addItem(FL_BUSH_GREEN_RIGHT);
         THEME_DCT.addItem(FL_BUSH_GREEN_SMALL);
         THEME_DCT.addItem("fence");
         THEME_DCT.addItem("standardPlatformStem");
         THEME_DCT.addItem("standardPlatformStemLft");
         THEME_DCT.addItem("standardPlatformStemMid");
         THEME_DCT.addItem("standardPlatformStemRht");
         THEME_DCT.addItem("standardPlatformStemSin");
         THEME_DCT.addItem("standardPlatformStemLftTop");
         THEME_DCT.addItem("standardPlatformStemMidTop");
         THEME_DCT.addItem("standardPlatformStemRhtTop");
         THEME_DCT.addItem("standardPlatformStemSinTop");
         THEME_DCT.addItem("");
         THEME_DCT.addItem("");
         THEME_DCT.addItem("");
         THEME_DCT.addItem("");
         THEME_DCT.addItem("railing");
         THEME_DCT.addItem("treeSmallTop");
         THEME_DCT.addItem("treeBigTop");
         THEME_DCT.addItem("treeSmallTrunk");
         THEME_DCT.addItem("treeBigTrunk");
         THEME_DCT.addItem("treeGreenLeavesBottom");
         THEME_DCT.addItem("treeWhiteLeavesBottom");
         BACK_LAYER_DCT.addItem(FL_WAVES_NIGHT);
         BACK_LAYER_DCT.addItem(FL_COLOR_LIGHT_BLUE);
         BACK_LAYER_DCT.addItem(FL_CLOUD_SINGLE);
         BACK_LAYER_DCT.addItem(FL_CLOUD_SMALL);
         BACK_LAYER_DCT.addItem(FL_CLOUD_DOUBLE);
         BACK_LAYER_DCT.addItem(FL_CLOUD_TRIPLE);
         BACK_LAYER_DCT.addItem(FL_HILL_SMALL);
         BACK_LAYER_DCT.addItem(FL_HILL_MEDIUM);
         BACK_LAYER_DCT.addItem(FL_HILL_BIG);
         BACK_LAYER_DCT.addItem(FL_BUSH_GREEN);
         BACK_LAYER_DCT.addItem(FL_BUSH_GREEN_LEFT);
         BACK_LAYER_DCT.addItem(FL_BUSH_GREEN_MID);
         BACK_LAYER_DCT.addItem(FL_BUSH_GREEN_RIGHT);
         BACK_LAYER_DCT.addItem(FL_BUSH_GREEN_SMALL);
         BACK_LAYER_DCT.addItem("fence");
         BACK_LAYER_DCT.addItem("railing");
         BACK_LAYER_DCT.addItem("treeSmallTop");
         BACK_LAYER_DCT.addItem("treeBigTop");
         BACK_LAYER_DCT.addItem("treeSmallTrunk");
         BACK_LAYER_DCT.addItem("treeBigTrunk");
         BACK_LAYER_DCT.addItem("treeGreenLeavesBottom");
         BACK_LAYER_DCT.addItem("treeWhiteLeavesBottom");
      }
      
      public var inFrontOfEverything:Boolean;
      
      public var topLayer:Boolean;
      
      public var bottomLayer:Boolean;
      
      public var layerable:Boolean;
      
      public var level:Level;
      
      protected var TILE_SIZE:int = 32;
      
      protected var HALF_TILE_SIZE:int;
      
      private var GLOB_STG_RHT:int = 512;
      
      public var colKey:Number;
      
      public var rowKey:Number;
      
      protected var bmd:BmdSkinCont;
      
      protected var bmp:Bitmap;
      
      public var stopFrame:String;
      
      private var widthNum:Number;
      
      public var originalX:Number;
      
      private var animTmrSkinArr:Array;
      
      public function Scenery(param1:String)
      {
         var _loc3_:int = 0;
         var _loc4_:TextFieldContainer = null;
         var _loc5_:String = null;
         this.level = GlobVars.level;
         this.HALF_TILE_SIZE = this.TILE_SIZE / 2;
         if(param1 != null)
         {
            _loc3_ = param1.indexOf(Level.PROP_SEP);
            if(_loc3_ != -1)
            {
               param1 = param1.substring(0,_loc3_);
            }
         }
         if(THEME_DCT[param1])
         {
            inheritedForceShortClassName = "SceneryTheme";
         }
         super();
         if(BACK_LAYER_DCT[param1] != undefined)
         {
            this.bottomLayer = true;
         }
         if(param1 && param1.indexOf(WAVE_BASE_STR) != -1)
         {
            if(lastWaveStr == FL_WAVES_DAY_EVEN)
            {
               lastWaveStr = FL_WAVES_DAY_ODD;
            }
            else
            {
               lastWaveStr = FL_WAVES_DAY_EVEN;
            }
            param1 = lastWaveStr;
         }
         addEventListener(Event.REMOVED_FROM_STAGE,this.removedLsr);
         gotoAndStop(param1);
         this.stopFrame = param1;
         var _loc2_:int = numChildren;
         if(param1 && param1.indexOf(TEXT_ADD_STR) != -1)
         {
            _loc4_ = new TextFieldContainer(FontCharHud.FONT_NUM);
            _loc5_ = param1.substr(TEXT_ADD_STR.length);
            if(param1 == "sceneryText_WelcomeToWarpZone")
            {
               _loc5_ = "Welcome to Warp Zone!";
            }
            else
            {
               _loc4_.y = -16;
            }
            _loc4_.text = _loc5_;
            masterObj.addChildToSingleFrame(_loc4_,currentFrame);
            masterObj.redraw(currentFrame);
            copySingleFrameFromOtherCmc(masterObj,currentFrame,currentFrame);
         }
         this.widthNum = this.TILE_SIZE;
         this.checkIfAnimated();
      }
      
      private function checkIfAnimated() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         mainAnimTmr = null;
         if(this.stopFrame == FL_BUSH_GREEN_LEFT || this.stopFrame == FL_BUSH_GREEN_MID || this.stopFrame == FL_BUSH_GREEN_RIGHT || this.stopFrame == FL_BUSH_GREEN)
         {
            mainAnimTmr = AnimationTimers.ANIM_SUPER_SLOWEST_TMR;
         }
         else if(this.stopFrame == FL_WAVES_LAVA)
         {
            mainAnimTmr = AnimationTimers.ANIM_SLOWEST_TMR;
            this.layerable = true;
         }
         else if(this.stopFrame == FL_COLOR_RED)
         {
            this.layerable = true;
         }
         else if(this.stopFrame == FL_WAVES_NIGHT)
         {
            mainAnimTmr = AnimationTimers.ANIM_SLOWEST_TMR;
         }
         else if(this.stopFrame == FL_FLAG)
         {
            mainAnimTmr = AnimationTimers.ANIM_SLOWEST_TMR;
         }
         else if(this.stopFrame == FL_WAVES_DAY_EVEN || this.stopFrame == FL_WAVES_DAY_ODD)
         {
            mainAnimTmr = AnimationTimers.ANIM_SLOWEST_TMR;
            this.layerable = true;
         }
         if(mainAnimTmr)
         {
            if(this.animTmrSkinArr)
            {
               _loc1_ = BmdInfo.NUM_SKIN_SETS;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  if(!this.animTmrSkinArr[_loc2_])
                  {
                     this.animTmrSkinArr[_loc2_] = mainAnimTmr;
                  }
                  _loc2_++;
               }
            }
            this.setUpAnimation();
         }
      }
      
      public function setUpAnimation() : void
      {
         stopAnim = false;
         this.level.ALWAYS_ANIM_DCT.addItem(this);
         ACTIVE_ANIM_TMRS_DCT.addItem(mainAnimTmr);
      }
      
      override public function animate(param1:ICustomTimer) : Boolean
      {
         var _loc2_:String = currentLabel;
         if(_loc2_ == FL_BUSH_GREEN_LEFT_END)
         {
            gotoAndStop(FL_BUSH_GREEN_LEFT);
         }
         else if(_loc2_ == FL_BUSH_GREEN_MID_END)
         {
            gotoAndStop(FL_BUSH_GREEN_MID);
         }
         else if(_loc2_ == FL_BUSH_GREEN_RIGHT_END)
         {
            gotoAndStop(FL_BUSH_GREEN_RIGHT);
         }
         else if(_loc2_ == FL_BUSH_GREEN_SMALL_END)
         {
            gotoAndStop(FL_BUSH_GREEN_SMALL);
         }
         else if(_loc2_ == FL_FLAG_END)
         {
            gotoAndStop(FL_FLAG);
         }
         else if(_loc2_ == FL_WAVES_LAVA_END)
         {
            gotoAndStop(FL_WAVES_LAVA);
         }
         else if(_loc2_ == FL_WAVES_DAY_EVEN_END)
         {
            gotoAndStop(FL_WAVES_DAY_EVEN);
         }
         else if(_loc2_ == FL_WAVES_DAY_ODD_END)
         {
            gotoAndStop(FL_WAVES_DAY_ODD);
         }
         else
         {
            if(_loc2_ != FL_WAVES_NIGHT_END)
            {
               return super.animate(param1);
            }
            gotoAndStop(FL_WAVES_NIGHT);
         }
         return true;
      }
      
      public function checkStgPos() : void
      {
         if(x + this.widthNum > this.level.locStgLft && x < this.level.locStgRht + this.HALF_TILE_SIZE)
         {
            if(parent != this.level)
            {
               this.level.addChild(this);
            }
         }
         else if(parent == this.level)
         {
            this.level.removeChild(this);
         }
      }
      
      public function updateOnSkinChange() : Boolean
      {
         var _loc2_:Bitmap = null;
         var _loc3_:int = 0;
         var _loc4_:CustomTimer = null;
         var _loc5_:DisplayObject = null;
         if(this.layerable)
         {
            if(GameSettings.getMapSkinLimited() == WATER_LAYERED_SKIN_NUM)
            {
               this.inFrontOfEverything = true;
            }
            else
            {
               this.inFrontOfEverything = false;
            }
         }
         if(!drawnFramesDct[currentFrame])
         {
            gotoAndStop(currentFrame);
         }
         if((currentLabel == "castleSmall" && y == 480 - this.TILE_SIZE * 3 || currentLabel == "castleBig") && (mapSkin == 3 || mapSkin == 4))
         {
            if(mapSkin == 3)
            {
               _loc2_ = new BackgroundInfo.rep_003_castle();
            }
            else if(mapSkin == 4)
            {
               _loc2_ = new BackgroundInfo.rep_004_castle();
            }
            _loc2_.scaleX = 2;
            _loc2_.scaleY = 2;
            _loc2_.y -= _loc2_.height - this.TILE_SIZE - 64;
            _loc3_ = 6;
            if(currentLabel == "castleSmall")
            {
               _loc2_.x -= this.TILE_SIZE * 2;
            }
            else
            {
               _loc2_.x -= this.TILE_SIZE;
            }
            if(x < 300)
            {
               _loc2_.scaleX = -_loc2_.scaleX;
               if(currentLabel == "castleSmall")
               {
                  _loc2_.x += _loc2_.width / 2 + this.TILE_SIZE * 3;
               }
               else
               {
                  _loc2_.x += _loc2_.width / 2 + this.TILE_SIZE * 4;
               }
               _loc2_.x -= _loc3_;
            }
            else if(currentLabel == "castleSmall")
            {
               _loc2_.x += this.TILE_SIZE - _loc3_;
            }
            else
            {
               _loc2_.x += this.TILE_SIZE * 2;
            }
            if(height < _loc2_.height)
            {
               addChild(_loc2_);
               _loc2_.x -= _loc3_;
            }
         }
         else if(currentLabel == "castleSmall" && y != 480 - this.TILE_SIZE * 3)
         {
            if(BmdInfo.hideTopCastleDct[mapSkin] == undefined)
            {
               visible = true;
            }
            else
            {
               visible = false;
            }
         }
         else if(!(this is NPC) && (currentLabel == FL_TOAD_BOT || currentLabel == FL_PRINCESS_BOT))
         {
            this.level.addToLevel(new NPC(this));
            this.cleanUp();
         }
         if(this.animTmrSkinArr)
         {
            if(_loc4_ = this.animTmrSkinArr[GameSettings.getMapSkinLimited()])
            {
               mainAnimTmr = _loc4_;
               ACTIVE_ANIM_TMRS_DCT.clear();
               ACTIVE_ANIM_TMRS_DCT.addItem(mainAnimTmr);
            }
         }
         if(width <= this.TILE_SIZE && currentLabel != "castleSmall" && currentLabel != "castleBig")
         {
            return false;
         }
         if(isNaN(this.originalX))
         {
            this.originalX = x;
         }
         x = this.originalX;
         var _loc1_:int = 0;
         while(_loc1_ < numChildren)
         {
            if((_loc5_ = getChildAt(_loc1_)) is Bitmap)
            {
               x += _loc5_.x;
               _loc5_.x = 0;
            }
            _loc1_++;
         }
         if(width < this.TILE_SIZE)
         {
            this.widthNum = this.TILE_SIZE;
         }
         else
         {
            this.widthNum = width;
         }
         return true;
      }
      
      override protected function addedToStageHandler(param1:Event) : void
      {
         super.addedToStageHandler(param1);
         this.level.SCENERY_STG_DCT.addItem(this);
      }
      
      protected function removedLsr(param1:Event) : void
      {
         this.level.SCENERY_STG_DCT.removeItem(this);
      }
      
      override public function cleanUp() : void
      {
         this.level.SCENERY_DCT.removeItem(this);
         if(this.level.ALWAYS_ANIM_DCT[this])
         {
            this.level.ALWAYS_ANIM_DCT.removeItem(this);
         }
      }
   }
}
