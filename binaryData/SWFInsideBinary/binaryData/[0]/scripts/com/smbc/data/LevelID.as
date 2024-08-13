package com.smbc.data
{
   import flash.utils.Dictionary;
   
   public class LevelID
   {
      
      public static const SEPARATOR:String = "-";
      
      public static const DEFAULT_AREA:String = "a";
      
      private static const MAX_WORLD_BEFORE_USING_LETTERS:int = 10;
      
      private static const LETTERS_FOR_WORLD:Vector.<String> = Vector.<String>(["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]);
      
      private static const LETTERS_DCT:Dictionary = new Dictionary();
      
      {
         initiateClass();
      }
      
      private var _world:int;
      
      private var _stage:int;
      
      private var _area:String;
      
      private var _nameWithoutArea:String;
      
      private var _fullName:String;
      
      public function LevelID(param1:int, param2:int, param3:String = "a")
      {
         super();
         this._world = param1;
         this._stage = param2;
         this._area = param3;
         this._nameWithoutArea = this._world.toString() + SEPARATOR + this._stage.toString();
         this._fullName = this._nameWithoutArea + param3;
      }
      
      public static function initiateClass() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < LETTERS_FOR_WORLD.length)
         {
            LETTERS_DCT[LETTERS_FOR_WORLD[_loc1_]] = _loc1_;
            _loc1_++;
         }
      }
      
      public static function Create(param1:String) : LevelID
      {
         var _loc4_:int = 0;
         var _loc6_:String = null;
         var _loc2_:int = int(param1.indexOf(SEPARATOR));
         var _loc3_:String = param1.charAt(0);
         if(LETTERS_DCT[_loc3_] == undefined)
         {
            _loc4_ = int(param1.substr(0,_loc2_));
         }
         else
         {
            _loc4_ = int(LETTERS_DCT[_loc3_]) + MAX_WORLD_BEFORE_USING_LETTERS;
         }
         var _loc5_:int = int(param1.charAt(_loc2_ + 1));
         if(param1.length > _loc2_ + 2)
         {
            _loc6_ = param1.charAt(_loc2_ + 2);
         }
         if(_loc6_ == null)
         {
            _loc6_ = DEFAULT_AREA;
         }
         return new LevelID(_loc4_,_loc5_,_loc6_);
      }
      
      public static function getWorldNumber(param1:String) : int
      {
         var _loc2_:int = int(param1.indexOf(SEPARATOR));
         return int(param1.substr(0,_loc2_));
      }
      
      public static function ToDisplay(param1:int) : String
      {
         if(param1 < MAX_WORLD_BEFORE_USING_LETTERS)
         {
            return param1.toString();
         }
         return LETTERS_FOR_WORLD[param1 - MAX_WORLD_BEFORE_USING_LETTERS];
      }
      
      public function get world() : int
      {
         return this._world;
      }
      
      public function get worldDisplay() : String
      {
         return ToDisplay(this._world);
      }
      
      public function get nameWithoutAreaDisplay() : String
      {
         return this.worldDisplay + SEPARATOR + this._stage.toString();
      }
      
      public function get stage() : int
      {
         return this._stage;
      }
      
      public function get area() : String
      {
         return this._area;
      }
      
      public function get fullName() : String
      {
         return this._fullName;
      }
      
      public function get nameWithoutArea() : String
      {
         return this._nameWithoutArea;
      }
   }
}
