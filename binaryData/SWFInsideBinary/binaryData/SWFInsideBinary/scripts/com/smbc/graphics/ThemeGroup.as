package com.smbc.graphics
{
   import com.explodingRabbit.cross.games.Game;
   
   public class ThemeGroup
   {
       
      
      private var _theme:int;
      
      private var _setNum:int;
      
      private var _musicType:String;
      
      private var _game:Game;
      
      public function ThemeGroup(param1:int, param2:int, param3:String = null)
      {
         super();
         this._setNum = param2;
         this._theme = param1;
         this._musicType = param3;
      }
      
      public function get setNum() : int
      {
         return this._setNum;
      }
      
      public function get theme() : int
      {
         return this._theme;
      }
      
      public function get musicType() : String
      {
         return this._musicType;
      }
      
      public function get game() : Game
      {
         return this._game;
      }
      
      public function set game(param1:Game) : void
      {
         if(this._game != null)
         {
            throw new Error("Can only set value of game once");
         }
         this._game = param1;
      }
   }
}
