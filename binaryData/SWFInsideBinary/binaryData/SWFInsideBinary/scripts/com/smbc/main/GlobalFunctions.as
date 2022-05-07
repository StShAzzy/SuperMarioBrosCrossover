package com.smbc.main
{
   import com.smbc.data.CharacterInfo;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Point;
   
   public final class GlobalFunctions
   {
      
      private static const ZERO_PT:Point = new Point();
       
      
      public function GlobalFunctions()
      {
         super();
      }
      
      public static function resetColor(param1:MovieClip) : void
      {
         var _loc2_:int = param1.currentFrame;
         param1.nextFrame();
         if(param1.currentFrame != _loc2_)
         {
            param1.gotoAndStop(_loc2_);
         }
         else
         {
            param1.prevFrame();
            if(_loc2_ == param1.currentFrame)
            {
               throw new Error("cannot reset color on movieclips with 1 frame");
            }
            param1.gotoAndStop(_loc2_);
         }
      }
      
      public static function recolorChildren(param1:DisplayObjectContainer, param2:uint, param3:uint) : void
      {
         var _loc6_:DisplayObject = null;
         var _loc7_:BitmapData = null;
         var _loc4_:int = param1.numChildren;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if((_loc6_ = param1.getChildAt(_loc5_)) is Bitmap)
            {
               _loc7_ = Bitmap(_loc6_).bitmapData;
               if(param1 is MovieClip)
               {
                  _loc7_.threshold(_loc7_,_loc7_.rect,ZERO_PT,"==",param2,param3);
               }
            }
            _loc5_++;
         }
      }
      
      public static function sortStrings(param1:String, param2:String) : int
      {
         if(param1 < param2)
         {
            return -1;
         }
         if(param1 > param2)
         {
            return 1;
         }
         return 0;
      }
      
      public static function sortNums(param1:Number, param2:Number) : int
      {
         if(param1 < param2)
         {
            return -1;
         }
         if(param1 > param2)
         {
            return 1;
         }
         return 0;
      }
      
      public static function convCharNameTxtToCaps(param1:String) : String
      {
         var _loc2_:int = CharacterInfo.convNameToNum(param1);
         return CharacterInfo.CHAR_ARR[_loc2_][CharacterInfo.IND_CHAR_NAME_CAPS];
      }
      
      public static function convCharNameToCharNameTxt(param1:String) : String
      {
         var _loc2_:int = CharacterInfo.convNameToNum(param1);
         return CharacterInfo.CHAR_ARR[_loc2_][CharacterInfo.IND_CHAR_NAME_MENUS];
      }
   }
}
