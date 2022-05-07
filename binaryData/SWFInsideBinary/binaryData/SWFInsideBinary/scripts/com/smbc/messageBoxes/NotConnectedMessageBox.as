package com.smbc.messageBoxes
{
   import com.smbc.data.GameStates;
   import com.smbc.managers.GameStateManager;
   
   public class NotConnectedMessageBox extends PlainMessageBox
   {
       
      
      public function NotConnectedMessageBox()
      {
         super("Could not download required data. Please make sure you\'re connected to the internet or try again later.");
         nonActive = true;
         nonInteractive = true;
         var _loc1_:GameStateManager = GameStateManager.GS_MNGR;
         _loc1_.lockGameState = false;
         _loc1_.gameState = GameStates.LOGOS;
         _loc1_.lockGameState = true;
      }
   }
}
