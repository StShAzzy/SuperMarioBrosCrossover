package com.smbc.graphics
{
   import com.explodingRabbit.display.CustomMovieClip;
   import com.smbc.characters.Character;
   import com.smbc.errors.SingletonError;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import nl.stroep.utils.ImageSaver;
   
   public class AllCharactersCmc extends CustomMovieClip
   {
      
      private static var instance:AllCharactersCmc;
       
      
      public function AllCharactersCmc(param1:Sprite = null, param2:Array = null, param3:String = null, param4:Boolean = false)
      {
         super(param1,param2,param3,param4);
         if(instance)
         {
            throw new SingletonError();
         }
      }
      
      public static function getInstance() : AllCharactersCmc
      {
         if(!instance)
         {
            instance = new AllCharactersCmc(null,null,"Ryu");
         }
         return instance;
      }
      
      public function drawCharacter(param1:Character) : void
      {
         var _loc2_:int = param1.charNum + 1;
         var _loc3_:BitmapData = ImageSaver.INSTANCE.getBitmapData(param1,0);
         var _loc4_:Rectangle;
         if(!(_loc4_ = _loc3_.getColorBoundsRect(4294967295,0,false)).width || !_loc4_.height)
         {
            return;
         }
         var _loc5_:BitmapData;
         (_loc5_ = new BitmapData(_loc4_.width,_loc4_.height,true,0)).copyPixels(_loc3_,_loc4_,new Point());
         var _loc6_:Bitmap = new Bitmap(_loc5_);
         clearFrame(_loc2_);
         addChildToSingleFrame(_loc6_,_loc2_);
         gotoAndStop(_loc2_);
      }
   }
}
