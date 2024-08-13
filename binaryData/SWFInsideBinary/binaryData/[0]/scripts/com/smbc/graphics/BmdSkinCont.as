package com.smbc.graphics
{
   import com.explodingRabbit.cross.games.Game;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   
   public class BmdSkinCont
   {
      
      public static const TYPE_MAP:int = 0;
      
      public static const TYPE_CHARACTER:int = 1;
      
      public static const TYPE_ENEMY:int = 2;
      
      public static const TYPE_INTERFACE:int = 3;
      
      public static const TYPE_BACKGROUND:int = 4;
      
      public static const TYPE_NEUTRAL:int = 5;
      
      public static const TYPE_PALETTE:int = 6;
      
      public static const TYPE_THEME:int = 7;
      
      public static const IND_NAME_ARR_FULL:int = 0;
      
      public static const IND_NAME_ARR_SHORT:int = 1;
      
      public static const IND_NAME_ARR_PRINCESS:int = 2;
      
      public static const IND_GAME_SOURCE:int = 3;
       
      
      public var bmp:Bitmap;
      
      public var bmd:BitmapData;
      
      public var sprite:Sprite;
      
      public var skinNum:int;
      
      public var gbPal:int;
      
      public const SPRITE_POS_VEC:Vector.<Point> = new Vector.<Point>();
      
      public var type:int;
      
      public var parent:DisplayObjectContainer;
      
      public var mask:DisplayObject;
      
      public var games:Vector.<Game>;
      
      public var charArr:Array;
      
      public var namesArr:Array;
      
      public var consoleType:int;
      
      public var specialSettings:Object;
      
      public var soundReplaceDct:Dictionary;
      
      public var skinDescription:String;
      
      public function BmdSkinCont(param1:Bitmap, param2:int, param3:int, param4:DisplayObjectContainer = null, param5:DisplayObject = null, param6:int = 0, param7:Array = null, param8:Array = null, param9:Array = null, param10:Object = null, param11:Object = null, param12:String = null)
      {
         super();
         this.bmp = param1;
         this.skinNum = param2;
         this.bmd = param1.bitmapData;
         this.parent = param4;
         this.mask = param5;
         this.consoleType = param6;
         this.charArr = param7;
         if(param8)
         {
            this.games = Vector.<Game>(param8);
         }
         this.namesArr = param9;
         this.specialSettings = param10;
         this.type = param3;
         this.skinDescription = param12;
         if(!param7)
         {
            param7 = [];
         }
         if(!param8)
         {
            param8 = [];
         }
         this.sprite = Sprite(param1.parent);
         this.SPRITE_POS_VEC.push(null);
      }
      
      public function clone() : BmdSkinCont
      {
         return new BmdSkinCont(new Bitmap(this.bmd.clone()),this.skinNum,this.type,this.parent,this.mask,this.consoleType,this.charArr,this.games as Array,this.namesArr,this.specialSettings,this.soundReplaceDct,this.skinDescription);
      }
      
      public function copyStatsFrom(param1:BmdSkinCont) : void
      {
         this.skinNum = param1.skinNum;
         this.type = param1.type;
         this.parent = param1.parent;
         this.mask = param1.mask;
         this.consoleType = param1.consoleType;
         this.charArr = param1.charArr;
         this.games = param1.games;
         this.gbPal = param1.gbPal;
         this.specialSettings = param1.specialSettings;
         this.soundReplaceDct = param1.soundReplaceDct;
         this.skinDescription = param1.skinDescription;
      }
      
      public function get charNum() : int
      {
         if(this.type != TYPE_CHARACTER)
         {
            return -1;
         }
         return this.charArr[0];
      }
   }
}
