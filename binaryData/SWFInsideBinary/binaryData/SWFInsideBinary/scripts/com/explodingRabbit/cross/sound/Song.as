package com.explodingRabbit.cross.sound
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.games.Game;
   import com.explodingRabbit.utils.StringUtils;
   import flash.utils.ByteArray;
   
   public class Song
   {
      
      public static const EMPTY_SONG:Song = new Song(null);
       
      
      private var _game:Game;
      
      private var _track:int;
      
      private var _volume:int;
      
      private var _start:int;
      
      private var _loop:int;
      
      private var _dataClass:Class;
      
      private var _name:String;
      
      private var _format:String;
      
      private var _fadeStart:int;
      
      private var dataClassName:String;
      
      public function Song(param1:Class, param2:int = -1, param3:Game = null, param4:int = 100, param5:int = 0, param6:int = 0, param7:int = 0, param8:int = 0)
      {
         super();
         this._dataClass = param1;
         this._game = param3;
         this._track = param2;
         this._volume = param4;
         this._start = param5;
         this._loop = param6;
         this._name = this.name;
         this._fadeStart = param7;
         if(param1)
         {
            this.dataClassName = StringUtils.getClassNameFromClass(param1);
         }
         if(param3)
         {
            this._format = this.getFormatFromConsole(param3.console);
         }
      }
      
      private function getFormatFromConsole(param1:String) : String
      {
         var _loc2_:String = null;
         switch(param1)
         {
            case Consoles.nintendo:
               _loc2_ = this.dataClassName.charAt(this.dataClassName.length - 1);
               if(_loc2_.toUpperCase() == "E")
               {
                  return MusicFormat.NSFE;
               }
               return MusicFormat.NSF;
               break;
            case Consoles.superNintendo:
               return MusicFormat.SPC;
            case Consoles.gameBoy:
               return MusicFormat.GBS;
            case Consoles.segaMasterSystem:
               return MusicFormat.KSS;
            case Consoles.atari:
               return MusicFormat.SAP;
            default:
               return null;
         }
      }
      
      public function getSoundData() : ByteArray
      {
         return ByteArray(new this._dataClass());
      }
      
      public function get format() : String
      {
         return this._format;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get loop() : int
      {
         return this._loop;
      }
      
      public function get start() : int
      {
         return this._start;
      }
      
      public function get volume() : int
      {
         return this._volume;
      }
      
      public function get track() : int
      {
         return this._track;
      }
      
      public function get game() : Game
      {
         return this._game;
      }
      
      public function get dataClass() : Class
      {
         return this._dataClass;
      }
      
      public function set game(param1:Game) : void
      {
         if(this._game != null)
         {
            throw new Error("game can only be set once");
         }
         this._game = param1;
         this._format = this.getFormatFromConsole(this.game.console);
      }
      
      public function set name(param1:String) : void
      {
         if(this._name != null)
         {
            throw new Error("name can only be set once");
         }
         this._name = param1;
      }
      
      public function get fadeStart() : int
      {
         return this._fadeStart;
      }
   }
}
