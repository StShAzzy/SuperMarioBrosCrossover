package com.smbc.graphics
{
   import com.smbc.characters.Sophia;
   import com.smbc.interfaces.ICustomTimer;
   import com.smbc.level.Level;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   
   public class SophiaWheel extends SubMc
   {
      
      private static const FL_START:String = Sophia.FL_WHEEL_START;
      
      private static const FL_END:String = Sophia.FL_WHEEL_END;
       
      
      private var frontWheel:SophiaFrontWheel;
      
      private var backWheel:SophiaBackWheel;
      
      private var sophia:Sophia;
      
      private var level:Level;
      
      public function SophiaWheel(param1:Sophia)
      {
         super(param1);
         this.sophia = param1;
      }
      
      override public function initiate() : void
      {
         super.initiate();
         this.level = Level.levelInstance;
         this.frontWheel = this.sophia.frontWheel;
         this.backWheel = this.sophia.backWheel;
         if(this == this.frontWheel)
         {
            setStopFrame(FL_START);
         }
         else
         {
            setStopFrame(FL_END);
            this.gotoAndStop(currentFrame - 1);
         }
         hasPState2 = true;
      }
      
      override public function gotoAndStop(param1:Object, param2:String = null) : void
      {
         super.gotoAndStop(param1,param2);
         if(this.level)
         {
            if(!this.level.RECOLOR_OBJS_DCT[this.sophia])
            {
               this.level.RECOLOR_OBJS_DCT.addItem(this.sophia);
            }
            recolor = true;
         }
      }
      
      override public function animate(param1:ICustomTimer) : Boolean
      {
         if(!stopAnim)
         {
            ANIMATOR.animate(this);
            this.checkFrame();
            return true;
         }
         return false;
      }
      
      override public function checkFrame() : void
      {
         var _loc1_:String = null;
         if(!this.sophia.hover && (!this.sophia.underWater || !this.sophia.classic && this.sophia.jumpRise || this.sophia.onGround))
         {
            if(this == this.frontWheel)
            {
               _loc1_ = currentLabel;
               if(_loc1_ == this.convLab(FL_END))
               {
                  setPlayFrame(FL_START);
               }
            }
            else
            {
               _loc1_ = this.frontWheel.currentLabel;
               if(_loc1_ != FL_START)
               {
                  setPlayFrame(_loc1_);
               }
               else
               {
                  setPlayFrame(FL_END);
               }
               this.gotoAndStop(currentFrame - 1);
            }
         }
      }
      
      override public function recolorBmps(param1:Palette, param2:Palette, param3:int = 0, param4:int = 0, param5:Palette = null) : void
      {
         var _loc6_:Bitmap = null;
         var _loc7_:int = 0;
         var _loc8_:DisplayObject = null;
         var _loc9_:int = 0;
         var _loc10_:DisplayObject = null;
         if(currentLabel == Sophia.FL_WHEEL_HOVER_BIG_FLAME || currentLabel == Sophia.FL_WHEEL_HOVER_SMALL_FLAME)
         {
            _loc7_ = numChildren;
            _loc9_ = 0;
            while(_loc9_ < _loc7_)
            {
               _loc10_ = getChildAt(_loc9_);
               if(_loc10_ is Bitmap)
               {
                  if(!_loc8_)
                  {
                     _loc8_ = _loc10_;
                  }
                  else if(_loc8_.y > _loc10_.y)
                  {
                     _loc6_ = _loc8_ as Bitmap;
                  }
                  else
                  {
                     _loc6_ = _loc10_ as Bitmap;
                  }
               }
               _loc9_++;
            }
            removeChild(_loc6_);
         }
         super.recolorBmps(param1,param2,param3,param4,param5);
         if(_loc6_)
         {
            addChild(_loc6_);
         }
      }
      
      override public function convLab(param1:String) : String
      {
         return param1;
      }
   }
}
