package com.smbc.managers
{
   import com.smbc.data.GameStates;
   import com.smbc.errors.SingletonError;
   
   public final class GameStateManager extends MainManager
   {
      
      public static const GS_MNGR:GameStateManager = new GameStateManager();
      
      private static var instantiated:Boolean;
       
      
      private const GS_PLAY:String = "play";
      
      private var _gameState:String;
      
      public var lockGameState:Boolean;
      
      public function GameStateManager()
      {
         super();
         if(instantiated)
         {
            throw new SingletonError();
         }
         instantiated = true;
      }
      
      override public function initiate() : void
      {
         super.initiate();
         this.gameState = GameStates.LOADING;
      }
      
      public function get gameState() : String
      {
         return this._gameState;
      }
      
      public function set gameState(param1:String) : void
      {
         if(this.lockGameState)
         {
            return;
         }
         var _loc2_:String = this._gameState;
         this._gameState = param1;
         if(this._gameState != this.GS_PLAY)
         {
            statMngr.stopTmrs();
         }
         else
         {
            statMngr.startTmrs();
         }
      }
   }
}
