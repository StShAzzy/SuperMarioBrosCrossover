package com.smbc.data
{
   import com.smbc.level.Level;
   import com.smbc.main.LevObj;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class HRect extends Sprite
   {
       
      
      private var level:Level;
      
      public var hTop:Number;
      
      public var hBot:Number;
      
      public var hLft:Number;
      
      public var hRht:Number;
      
      public var hMidX:Number;
      
      public var hMidY:Number;
      
      public var hWidth:Number;
      
      public var hHeight:Number;
      
      public var rect:Rectangle;
      
      private var cx:Number;
      
      private var cy:Number;
      
      private var levObj:LevObj;
      
      public function HRect()
      {
         this.level = Level.levelInstance;
         super();
         visible = false;
      }
      
      public function getHitPoints(param1:Number, param2:Number, param3:Number) : void
      {
         this.cx = parent.x;
         this.cy = parent.y;
         parent.x = param1;
         parent.y = param2;
         this.rect = getBounds(LevObj(parent).level);
         var _loc4_:Number;
         if((_loc4_ = parent.rotation) == 0 || _loc4_ == 180)
         {
            this.rect.height = height;
            this.rect.width = width;
         }
         else
         {
            this.rect.height = width;
            this.rect.width = height;
         }
         parent.x = this.cx;
         parent.y = this.cy;
         this.hTop = this.rect.top;
         this.hBot = this.rect.bottom;
         this.hLft = this.rect.left;
         this.hRht = this.rect.right;
         this.hWidth = this.rect.width;
         this.hHeight = this.rect.height;
         this.hMidX = this.rect.left + this.hWidth * 0.5;
         this.hMidY = this.rect.top + this.hHeight * 0.5;
      }
   }
}
