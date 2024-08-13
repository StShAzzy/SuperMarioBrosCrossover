package com.smbc.level
{
   import com.explodingRabbit.utils.CustomDictionary;
   import com.smbc.ground.Ground;
   import com.smbc.main.GlobVars;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.Sprite;
   
   public class GridTile extends Sprite
   {
      
      private static const TILE_SIZE:int = GlobVars.TILE_SIZE;
       
      
      private var fill:Shape;
      
      private var level:Level;
      
      public const ITEMS_DCT:CustomDictionary = new CustomDictionary(true);
      
      public function GridTile()
      {
         this.fill = new Shape();
         this.level = Level.levelInstance;
         super();
         graphics.lineStyle(2,0);
         graphics.drawRect(0,0,TILE_SIZE,TILE_SIZE);
         this.fill.graphics.beginFill(16777215);
         this.fill.graphics.drawRect(0,0,TILE_SIZE,TILE_SIZE);
         addChild(this.fill);
         this.fill.alpha = 0.01;
      }
      
      public function addItem(param1:DisplayObject) : void
      {
         this.ITEMS_DCT.addItem(param1);
      }
      
      public function clickTile() : void
      {
         var _loc1_:DisplayObject = null;
         for each(_loc1_ in this.ITEMS_DCT)
         {
            if(_loc1_ is Ground)
            {
               this.ITEMS_DCT.removeItem(_loc1_);
               this.level.destroy(_loc1_ as Ground);
               return;
            }
         }
         _loc1_ = new Ground("groundBrown");
         _loc1_.x = x;
         _loc1_.y = y;
         this.addItem(_loc1_);
         this.level.addToLevel(_loc1_ as MovieClip);
      }
   }
}
