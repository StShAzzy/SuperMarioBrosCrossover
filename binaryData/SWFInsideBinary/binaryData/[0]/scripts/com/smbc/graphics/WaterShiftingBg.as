package com.smbc.graphics
{
   import com.smbc.main.GlobVars;
   import com.smbc.utils.GameLoopTimer;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class WaterShiftingBg extends Background
   {
      
      private static const Y_OFS:int = 7;
      
      private static const Y_VALUES_SET:Array = [241 + Y_OFS,242 + Y_OFS,243 + Y_OFS,244 + Y_OFS,245 + Y_OFS];
      
      private static const SPACE_BTW_SETS:int = 15;
      
      private static const NUM_VALUES_PER_SET:int = 5;
      
      private static const MOVE_TMR_DEL:int = 85;
      
      private static var masterBmd:BitmapData;
      
      private static const Y_MIN:int = 105 + Y_OFS;
      
      private static const Y_MAX:int = 240 + Y_OFS;
      
      private static const SHIFT_VAL_MIN:int = 0;
      
      private static const SHIFT_VAL_MAX:int = 5;
      
      private static const ZERO_PNT:Point = new Point();
      
      private static const Y_CTR_DEF:int = Y_MAX / SPACE_BTW_SETS;
       
      
      private var moveTmr:GameLoopTimer;
      
      private var IND_BMD:int = 0;
      
      private var IND_OFS:int = 1;
      
      private var IND_INCREASING:int = 2;
      
      private var IND_RECT:int = 3;
      
      private var arr:Array;
      
      private var yValsDct:Dictionary;
      
      private var yCtr:int = 16;
      
      public function WaterShiftingBg(param1:Class, param2:Number = 1, param3:Boolean = true, param4:int = 0, param5:String = null)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function activate() : void
      {
         var _loc1_:int = 0;
         var _loc2_:BitmapData = null;
         var _loc3_:Rectangle = null;
         var _loc4_:int = 0;
         var _loc5_:Point = null;
         var _loc6_:Rectangle = null;
         var _loc7_:int = 0;
         var _loc8_:BitmapData = null;
         var _loc9_:Array = null;
         var _loc10_:int = 0;
         super.activate();
         if(!this.arr)
         {
            this.arr = [];
            _loc1_ = GlobVars.STAGE_HEIGHT / 2;
            _loc2_ = Bitmap(getChildAt(0)).bitmapData.clone();
            masterBmd = new BitmapData(_loc4_ + SHIFT_VAL_MAX,_loc2_.height,true,0);
            _loc3_ = _loc2_.rect;
            _loc4_ = _loc3_.width;
            _loc3_.height = 1;
            _loc5_ = new Point(SHIFT_VAL_MAX,0);
            _loc6_ = new Rectangle(_loc4_ - SHIFT_VAL_MAX,0,SHIFT_VAL_MAX,1);
            _loc7_ = Y_MIN;
            while(_loc7_ <= Y_MAX)
            {
               _loc8_ = new BitmapData(_loc4_ + SHIFT_VAL_MAX,1,true,0);
               _loc3_.y = _loc7_;
               _loc6_.y = _loc7_;
               _loc8_.copyPixels(_loc2_,_loc3_,_loc5_);
               _loc8_.copyPixels(_loc2_,_loc6_,ZERO_PNT);
               masterBmd.copyPixels(_loc8_,_loc8_.rect,_loc3_.topLeft);
               _loc9_ = [];
               this.arr[_loc7_] = _loc9_;
               _loc9_[this.IND_BMD] = _loc8_;
               _loc9_[this.IND_INCREASING] = true;
               _loc3_.x = 0;
               _loc3_.width += SHIFT_VAL_MAX;
               _loc9_[this.IND_RECT] = _loc3_.clone();
               _loc7_++;
            }
         }
         else
         {
            _loc7_ = Y_MIN;
            while(_loc7_ <= Y_MAX)
            {
               this.moveTmrHandler(null);
               _loc7_++;
            }
         }
         if(!this.yValsDct)
         {
            this.yValsDct = new Dictionary();
            _loc10_ = (Y_MAX - Y_OFS) / SPACE_BTW_SETS;
            _loc7_ = Y_MAX;
            while(_loc7_ >= Y_MIN)
            {
               if(_loc7_ == SPACE_BTW_SETS * _loc10_ + Y_OFS && _loc7_ != Y_MIN)
               {
                  this.addNextSet();
                  _loc10_--;
               }
               this.moveTmrHandler(null);
               _loc7_--;
            }
         }
         if(!this.moveTmr)
         {
            this.moveTmr = new GameLoopTimer(MOVE_TMR_DEL);
            this.moveTmr.addEventListener(TimerEvent.TIMER,this.moveTmrHandler,false,0,true);
            this.moveTmr.start();
         }
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
         this.moveTmr.stop();
         this.moveTmr.removeEventListener(TimerEvent.TIMER,this.moveTmrHandler);
         this.moveTmr = null;
      }
      
      protected function moveTmrHandler(param1:Event) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:BitmapData = null;
         var _loc7_:Array = null;
         var _loc8_:BitmapData = null;
         var _loc2_:Dictionary = new Dictionary();
         for each(_loc3_ in this.yValsDct)
         {
            if(_loc3_ <= Y_MAX)
            {
               _loc4_ = numChildren;
               _loc5_ = 0;
               while(_loc5_ < _loc4_)
               {
                  _loc6_ = Bitmap(getChildAt(0)).bitmapData;
                  _loc7_ = this.arr[_loc3_];
                  _loc8_ = _loc7_[this.IND_BMD];
                  ZERO_PNT.x = this.getShiftValue(_loc7_) - SHIFT_VAL_MAX;
                  ZERO_PNT.y = _loc3_;
                  _loc6_.fillRect(_loc7_[this.IND_RECT],0);
                  _loc6_.copyPixels(_loc8_,_loc8_.rect,ZERO_PNT);
                  _loc5_++;
               }
            }
            delete this.yValsDct[_loc3_];
            _loc3_ = this.getNextY(_loc3_);
            _loc2_[_loc3_] = _loc3_;
         }
         this.yValsDct = null;
         this.yValsDct = _loc2_;
      }
      
      private function getNextY(param1:int) : int
      {
         param1--;
         if(param1 < Y_MIN)
         {
            param1 = Y_MAX;
         }
         return param1;
      }
      
      private function addNextSet() : void
      {
         var _loc1_:int = 0;
         --this.yCtr;
         for each(_loc1_ in Y_VALUES_SET)
         {
            if(this.yValsDct[_loc1_])
            {
               return;
            }
         }
         for each(_loc1_ in Y_VALUES_SET)
         {
            this.yValsDct[_loc1_] = _loc1_;
         }
      }
      
      private function getShiftValue(param1:Array) : int
      {
         var _loc2_:int = int(param1[this.IND_OFS]);
         var _loc3_:Boolean = Boolean(param1[this.IND_INCREASING]);
         if(_loc2_ == SHIFT_VAL_MAX)
         {
            _loc2_--;
            param1[this.IND_INCREASING] = false;
         }
         else if(_loc2_ == SHIFT_VAL_MIN)
         {
            _loc2_++;
            param1[this.IND_INCREASING] = true;
         }
         else if(_loc3_)
         {
            _loc2_++;
         }
         else
         {
            _loc2_--;
         }
         param1[this.IND_OFS] = _loc2_;
         return _loc2_;
      }
   }
}
