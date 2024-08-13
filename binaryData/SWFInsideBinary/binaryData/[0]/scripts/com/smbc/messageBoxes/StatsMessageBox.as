package com.smbc.messageBoxes
{
   import com.smbc.data.GameStates;
   import com.smbc.managers.GameStateManager;
   import com.smbc.managers.StatManager;
   
   public class StatsMessageBox extends PlainMessageBox
   {
      
      private static const END_WIDTH:int = 480;
       
      
      private var resumeGame:Boolean;
      
      public function StatsMessageBox()
      {
         super(this.loadText());
         endBoxWidth = END_WIDTH;
      }
      
      private function loadText() : String
      {
         var _loc1_:StatManager = StatManager.STAT_MNGR;
         var _loc2_:String = "";
         _loc2_ += "Enemies Defeated: " + _loc1_.numEnemiesDefeated;
         _loc2_ += "\\nEnemies Stomped: " + _loc1_.numEnemiesStomped;
         _loc2_ += "\\nCheep Cheeps Defeated: " + _loc1_.numCheepCheepsDefeated;
         _loc2_ += "\\nHammer Bros Defeated: " + _loc1_.numHammerBrosDefeated;
         _loc2_ += "\\nContinues Used: " + _loc1_.numContinuesUsed;
         return _loc2_ + ("\\nAmmo Pickups: " + _loc1_.numAmmoPickupsCollected);
      }
      
      override public function pressPseBtn() : void
      {
         if(GameStateManager.GS_MNGR.gameState == GameStates.PAUSE)
         {
            this.resumeGame = true;
            nextMsgBxToCreate = null;
            cancel();
         }
      }
      
      override protected function destroy() : void
      {
         super.destroy();
         if(this.resumeGame)
         {
            EVENT_MNGR.unpauseGame();
         }
      }
   }
}
