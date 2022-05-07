package com.smbc.graphics
{
   import com.explodingRabbit.display.CustomMovieClip;
   import com.smbc.main.GlobVars;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   
   public class GridItem extends Sprite
   {
       
      
      private var _borderImage:Bitmap;
      
      private var _image:CustomMovieClip;
      
      public var row:int;
      
      public var column:int;
      
      public var skinNum:int;
      
      private var borderContainer:Sprite;
      
      public function GridItem()
      {
         super();
      }
      
      public function set borderImage(param1:Bitmap) : void
      {
         this._borderImage = param1;
         this.borderContainer = new Sprite();
         addChildAt(this.borderContainer,0);
         this.borderContainer.addChild(this._borderImage);
         this.borderContainer.scaleX = GlobVars.SCALE;
         this.borderContainer.scaleY = GlobVars.SCALE;
      }
      
      public function get image() : CustomMovieClip
      {
         return this._image;
      }
      
      public function set image(param1:CustomMovieClip) : void
      {
         this._image = param1;
         addChild(this._image);
         this._image.x = GlobVars.SCALE;
         this._image.y = GlobVars.SCALE;
      }
   }
}
