package com.smbc.graphics
{
   import com.explodingRabbit.display.CustomMovieClip;
   import com.explodingRabbit.utils.CustomDictionary;
   import com.smbc.level.Level;
   import com.smbc.main.GlobVars;
   import com.smbc.managers.GraphicsManager;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class Background extends Sprite
   {
      
      public static const TYPE_BG:String = "bg";
      
      public static const TYPE_FG:String = "fg";
      
      public static var COLOR_BLACK:int = 2;
      
      public static var COLOR_DARK_BLUE:int = 3;
      
      public static var COLOR_LIGHT_BLUE:int = 5;
      
      public static var COLOR_RED:int = 4;
      
      public static var COLOR_SKY_BLUE:int = 1;
      
      private static const Y_OFS:int = -14;
      
      public static const SCROLL_SPEED_STATIONARY:int = 0;
      
      public static const SCROLL_SPEED_NORMAL:int = 1;
       
      
      protected var itemDct:CustomDictionary;
      
      private var _scrollSpeed:Number;
      
      private var _repeat:Boolean;
      
      private var graphicClass:Class;
      
      private var animTmr:Timer;
      
      private var animSpeed:int;
      
      private var animated:Boolean;
      
      public var masterBmp:Bitmap;
      
      private var masterBmd:BitmapData;
      
      private var masterBmdClean:BitmapData;
      
      public var skinNum:int;
      
      public var themeNum:int;
      
      public var setNum:int;
      
      public var layerNum:int;
      
      public var type:String;
      
      public var bgXAtTeleport:Number = 0;
      
      public var getNewLevelX:Boolean;
      
      public var levelXAfterTeleport:Number = 0;
      
      private var shortClassName:String;
      
      private var xLeftSide:int;
      
      private var xRightSide:int;
      
      private var bgWidth:Number;
      
      public function Background(param1:Class, param2:Number = 1, param3:Boolean = true, param4:int = 0, param5:String = null)
      {
         var _loc7_:CustomMovieClip = null;
         this.itemDct = new CustomDictionary();
         super();
         this._scrollSpeed = param2;
         this._repeat = param3;
         this.graphicClass = param1;
         this.animSpeed = param4;
         this.shortClassName = param5;
         var _loc6_:DisplayObject;
         if((_loc6_ = new param1()) is Bitmap)
         {
            this.masterBmp = Bitmap(_loc6_);
         }
         else
         {
            this.animated = true;
            _loc7_ = new CustomMovieClip(null,null,param5);
            this.masterBmp = new Bitmap(_loc7_.masterObj.masterBmd);
         }
         this.masterBmd = this.masterBmp.bitmapData;
         this.masterBmdClean = this.masterBmd.clone();
      }
      
      public function initiateGraphic() : DisplayObject
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:CustomMovieClip = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:DisplayObject = null;
         if(!this.animated)
         {
            _loc1_ = new this.graphicClass();
            _loc1_.scaleX = 2;
            _loc1_.scaleY = 2;
         }
         else
         {
            _loc1_ = new CustomMovieClip(null,null,this.shortClassName);
         }
         _loc1_.y += Y_OFS;
         addChild(_loc1_);
         if(_loc1_ is Bitmap)
         {
            Bitmap(_loc1_).bitmapData = this.masterBmd;
         }
         if(_loc1_ is CustomMovieClip)
         {
            _loc2_ = _loc1_ as CustomMovieClip;
            _loc2_.stop();
            this.itemDct.addItem(_loc2_);
            _loc3_ = _loc2_.totalFrames;
            _loc4_ = _loc2_.numChildren;
            _loc5_ = 0;
            while(_loc5_ < _loc3_)
            {
               _loc2_.gotoAndStop(_loc5_ + 1);
               while(_loc6_ < _loc4_)
               {
                  if((_loc7_ = _loc2_.getChildAt(_loc6_)) is DisplayObjectContainer)
                  {
                     if((_loc8_ = _loc7_ as DisplayObjectContainer).numChildren)
                     {
                        if((_loc9_ = _loc8_.getChildAt(0)) is Bitmap)
                        {
                           Bitmap(_loc9_).bitmapData = this.masterBmd;
                        }
                     }
                  }
                  _loc6_++;
               }
               _loc5_++;
            }
         }
         return _loc1_;
      }
      
      private function animTmrHandler(param1:TimerEvent) : void
      {
         var _loc2_:CustomMovieClip = null;
         var _loc3_:int = 0;
         for each(_loc2_ in this.itemDct)
         {
            _loc3_ = _loc2_.currentFrame;
            if(_loc3_ != _loc2_.totalFrames)
            {
               _loc2_.gotoAndStop(_loc3_ + 1);
            }
            else
            {
               _loc2_.gotoAndStop(1);
            }
         }
      }
      
      public function activate() : void
      {
         var _loc1_:int = 0;
         var _loc3_:DisplayObject = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:DisplayObject = null;
         while(_loc1_ < numChildren)
         {
            _loc3_ = getChildAt(_loc1_);
            removeChild(_loc3_);
            _loc1_--;
            this.itemDct.clear();
            _loc1_++;
         }
         this.resetOffsets();
         var _loc2_:Rectangle = this.masterBmdClean.rect;
         this.masterBmd.fillRect(_loc2_,0);
         this.masterBmd.copyPixels(this.masterBmdClean,_loc2_,_loc2_.topLeft);
         this.initiateGraphic();
         if(this._repeat)
         {
            this.bgWidth = this.masterBmdClean.width * GraphicsManager.BMD_SCALE;
            _loc4_ = Level.levelInstance.mapWidth * this._scrollSpeed;
            _loc5_ = this.bgWidth;
            while(_loc5_ < _loc4_)
            {
               (_loc6_ = this.initiateGraphic()).x = _loc5_;
               _loc5_ += this.bgWidth;
            }
            this.xLeftSide = 0;
            this.xRightSide = _loc5_;
         }
         if(this.animSpeed > 0 && !this.animTmr)
         {
            this.animTmr = new Timer(this.animSpeed);
            this.animTmr.addEventListener(TimerEvent.TIMER,this.animTmrHandler,false,0,true);
            this.animTmr.start();
         }
      }
      
      private function resetOffsets() : void
      {
         this.levelXAfterTeleport = 0;
         this.bgXAtTeleport = 0;
         this.getNewLevelX = false;
      }
      
      public function checkIfNeedsExtension() : void
      {
         var _loc3_:DisplayObject = null;
         var _loc1_:Number = x - Math.abs(this.xLeftSide);
         var _loc2_:Number = x + this.xRightSide;
         if(_loc1_ > GlobVars.STAGE_LEFT)
         {
            _loc3_ = this.initiateGraphic();
            _loc3_.x = this.xLeftSide - this.bgWidth;
            this.xLeftSide = _loc3_.x;
         }
         else if(_loc2_ < GlobVars.STAGE_WIDTH)
         {
            _loc3_ = this.initiateGraphic();
            _loc3_.x = this.xRightSide;
            this.xRightSide += this.bgWidth;
         }
      }
      
      public function deactivate() : void
      {
         if(parent)
         {
            parent.removeChild(this);
         }
         if(this.itemDct)
         {
            this.itemDct.clear();
         }
         if(this.animTmr)
         {
            this.animTmr.stop();
            this.animTmr.removeEventListener(TimerEvent.TIMER,this.animTmrHandler);
            this.animTmr = null;
         }
         this.resetOffsets();
      }
      
      public function get scrollSpeed() : Number
      {
         return this._scrollSpeed;
      }
      
      public function get repeat() : Boolean
      {
         return this._repeat;
      }
      
      public function redraw() : void
      {
         var _loc1_:CustomMovieClip = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.itemDct;
         for each(_loc1_ in _loc3_)
         {
            _loc1_.masterObj.redraw();
         }
      }
   }
}
