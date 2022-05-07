package com.smbc.graphics
{
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.AnimationTimers;
   import com.smbc.main.GlobVars;
   import com.smbc.main.SkinObj;
   import com.smbc.managers.GraphicsManager;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   
   public class GridSelector extends SkinObj
   {
      
      private static const TOP_LEFT_BORDER_POSITION_INTERFACE_SHEET:Point = new Point(178,90);
      
      private static const BORDER_SPACE_BETWEEN_ITEMS:int = 2;
      
      private static const SPACE_BETWEEN_FRAMES:int = 6;
      
      private static const FRAME_COUNT:int = 6;
       
      
      private var pixelWidth:Number;
      
      private var pixelHeight:Number;
      
      private var animTmr:CustomTimer;
      
      public function GridSelector(param1:Number, param2:Number)
      {
         this.animTmr = new CustomTimer(AnimationTimers.DEL_SLOWEST);
         super();
         this.pixelWidth = param1;
         this.pixelHeight = param2;
         setNumFrames(FRAME_COUNT);
         this.setUpFrames();
         scaleX = GlobVars.SCALE;
         scaleY = GlobVars.SCALE;
         stopAnim = false;
         mainAnimTmr = this.animTmr;
         this.animTmr.addEventListener(TimerEvent.TIMER,this.animTmrHandler,false,0,true);
         this.animTmr.start();
      }
      
      public static function drawBorder(param1:Number, param2:Number, param3:Point, param4:int, param5:BitmapData) : BitmapData
      {
         var _loc8_:int = 0;
         var _loc9_:Point = null;
         var _loc6_:BitmapData = new BitmapData(param1,param2,true,0);
         var _loc7_:int = 0;
         while(_loc7_ < param2)
         {
            _loc8_ = 0;
            while(_loc8_ < param1)
            {
               _loc9_ = param3.clone();
               if(_loc8_ == param1 - 1)
               {
                  _loc9_.x += param4 * 2;
               }
               else if(_loc8_ != 0)
               {
                  _loc9_.x += param4;
               }
               if(_loc7_ == param2 - 1)
               {
                  _loc9_.y += param4 * 2;
               }
               else if(_loc7_ != 0)
               {
                  _loc9_.y += param4;
               }
               _loc6_.setPixel32(_loc8_,_loc7_,param5.getPixel32(_loc9_.x,_loc9_.y));
               _loc8_++;
            }
            _loc7_++;
         }
         return _loc6_;
      }
      
      private function setUpFrames() : void
      {
         var _loc1_:Point = TOP_LEFT_BORDER_POSITION_INTERFACE_SHEET.clone();
         var _loc2_:BitmapData = GraphicsManager.INSTANCE.drawingBoardInterfaceSkinCont.bmd;
         var _loc3_:BitmapData = drawBorder(this.pixelWidth,this.pixelHeight,_loc1_,BORDER_SPACE_BETWEEN_ITEMS,_loc2_);
         var _loc4_:int = 1;
         while(_loc4_ < 4)
         {
            addChildToSingleFrame(new Bitmap(_loc3_),_loc4_);
            _loc4_++;
         }
         while(_loc4_ <= totalFrames)
         {
            _loc1_.x += SPACE_BETWEEN_FRAMES;
            _loc3_ = drawBorder(this.pixelWidth,this.pixelHeight,_loc1_,BORDER_SPACE_BETWEEN_ITEMS,_loc2_);
            addChildToSingleFrame(new Bitmap(_loc3_),_loc4_);
            _loc4_++;
         }
      }
      
      protected function animTmrHandler(param1:TimerEvent) : void
      {
         animate(this.animTmr);
         checkFrame();
      }
      
      override public function cleanUp() : void
      {
         this.animTmr.removeEventListener(TimerEvent.TIMER,this.animTmrHandler);
         super.cleanUp();
      }
   }
}
