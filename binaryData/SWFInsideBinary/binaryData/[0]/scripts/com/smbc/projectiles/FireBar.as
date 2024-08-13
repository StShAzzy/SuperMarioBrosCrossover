package com.smbc.projectiles
{
   import com.explodingRabbit.display.CustomMovieClip;
   import com.smbc.data.*;
   import com.smbc.interfaces.ICustomTimer;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class FireBar extends Projectile
   {
       
      
      private const ROTATE_SPEED:int = 106;
      
      protected var clockwise:Boolean;
      
      public var bmd2:BitmapData;
      
      public var bRect:Rectangle;
      
      public var offsetMx:Matrix;
      
      public var topLeftPt:Point;
      
      public function FireBar(param1:String)
      {
         this.topLeftPt = new Point();
         super(null,SOURCE_TYPE_ENEMY);
         gotoAndStop(1);
         checkFrameDuringStopAnim = true;
         addReasonOvRd(NAME_STOP_ANIM,true,RSN_NONSPECIFIC);
         defyGrav = true;
         destroyOffScreen = false;
         dosTop = false;
         dosBot = false;
         dosLft = false;
         dosRht = false;
         if(param1.indexOf("Left") != -1)
         {
            this.clockwise = false;
            scaleX = -1;
         }
         else if(param1.indexOf("Right") != -1)
         {
            this.clockwise = true;
         }
         if(param1.indexOf("Long") != -1)
         {
            gotoAndStop(2);
         }
         hitDistOver = height;
         var _loc2_:Number = numChildren;
      }
      
      public static function getSubCmcs(param1:CustomMovieClip) : void
      {
         var _loc3_:Object = null;
         var _loc4_:DisplayObject = null;
         var _loc2_:Dictionary = param1.STAT_VEC[2];
         param1.mcReplaceArr = [];
         for(_loc3_ in _loc2_)
         {
            _loc4_ = _loc3_ as DisplayObject;
            if(!(_loc4_ is HRect))
            {
               param1.mcReplaceArr.push(_loc4_);
               param1.mcReplaceArr.push(new CustomMovieClip(null,null,"FireBarChild"));
            }
         }
         param1.replaceSubMovieClips();
         param1.finalCreateMaster();
      }
      
      override protected function mcReplacePrep(param1:MovieClip) : void
      {
         super.mcReplacePrep(param1);
      }
      
      private function stopAllAnim() : void
      {
      }
      
      override public function initiate() : void
      {
         var _loc3_:DisplayObject = null;
         super.initiate();
         y -= TILE_SIZE / 2;
         ny = y;
         this.bRect = getBounds(level);
         this.offsetMx = transform.matrix;
         this.offsetMx.tx = x - this.bRect.x;
         this.offsetMx.ty = y - this.bRect.y;
         this.bmd2 = new BitmapData(this.bRect.width,this.bRect.height,true,0);
         var _loc1_:int = numChildren;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = getChildAt(_loc2_);
            if(!(_loc3_ is HRect))
            {
               _loc3_.visible = false;
            }
            else
            {
               _loc3_.visible = true;
            }
            _loc2_++;
         }
         this.bmd2.draw(this,this.offsetMx);
         _loc2_ = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = getChildAt(_loc2_);
            if(!(_loc3_ is HRect))
            {
               _loc3_.visible = true;
            }
            else
            {
               _loc3_.visible = false;
            }
            _loc2_++;
         }
      }
      
      override public function setHitPoints() : void
      {
         var _loc3_:DisplayObject = null;
         super.setHitPoints();
         this.bRect = getBounds(level);
         this.offsetMx = transform.matrix;
         this.offsetMx.tx = x - this.bRect.x;
         this.offsetMx.ty = y - this.bRect.y;
         this.bmd2.dispose();
         this.bmd2 = new BitmapData(this.bRect.width,this.bRect.height,true,0);
         var _loc1_:int = numChildren;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = getChildAt(_loc2_);
            if(!(_loc3_ is HRect))
            {
               _loc3_.visible = false;
            }
            else
            {
               _loc3_.visible = true;
            }
            _loc2_++;
         }
         this.bmd2.draw(this,this.offsetMx);
         _loc2_ = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = getChildAt(_loc2_);
            if(!(_loc3_ is HRect))
            {
               _loc3_.visible = true;
            }
            else
            {
               _loc3_.visible = false;
            }
            _loc2_++;
         }
      }
      
      override public function checkStgPos() : void
      {
         if(nx > level.locStgLft - TILE_SIZE * 3 && nx < level.locStgRht + TILE_SIZE * 2)
         {
            if(parent != level)
            {
               level.addChild(this);
            }
         }
         else if(parent == level && !updateOffScreen)
         {
            level.removeChild(this);
         }
         if(destroyOffScreen || dosTop || dosBot || dosLft || dosRht)
         {
            checkDosSides();
         }
      }
      
      override protected function updateStats() : void
      {
         super.updateStats();
         this.rotate();
      }
      
      private function rotate() : void
      {
         if(this.clockwise)
         {
            rotation += this.ROTATE_SPEED * dt;
         }
         else
         {
            rotation += -this.ROTATE_SPEED * dt;
         }
      }
      
      override public function checkFrame() : void
      {
         var _loc3_:DisplayObject = null;
         var _loc4_:CustomMovieClip = null;
         var _loc1_:Number = numChildren;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = DisplayObject(getChildAt(_loc2_));
            if(!(_loc3_ is HRect))
            {
               _loc4_ = CustomMovieClip(_loc3_);
               if(_loc4_.currentFrameLabel == "end")
               {
                  _loc4_.gotoAndStop("start");
               }
            }
            _loc2_++;
         }
      }
      
      override public function animate(param1:ICustomTimer) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         var _loc4_:DisplayObject = null;
         if(stopUpdate && GS_MNGR.gameState != GameStates.PAUSE)
         {
            return false;
         }
         if(param1 == mainAnimTmr)
         {
            _loc2_ = numChildren;
            _loc3_ = 0;
            while(_loc3_ < _loc2_)
            {
               _loc4_ = DisplayObject(getChildAt(_loc3_));
               if(!(_loc4_ is HRect))
               {
                  ANIMATOR.animate(CustomMovieClip(_loc4_));
               }
               _loc3_++;
            }
         }
         return super.animate(param1);
      }
   }
}
