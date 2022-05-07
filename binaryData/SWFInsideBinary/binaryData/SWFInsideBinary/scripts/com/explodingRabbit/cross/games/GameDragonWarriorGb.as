package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.smbc.errors.SingletonError;
   
   public class GameDragonWarriorGb extends Game
   {
      
      private static var instance:Game;
       
      
      public function GameDragonWarriorGb(param1:int, param2:int = -1)
      {
         super("Dragon Quest I & II (GBC)","Square-Enix",Consoles.nintendo,param1,"DQ I & II (GBC)",param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function setUpLevelThemes() : void
      {
      }
      
      override protected function createPlayList() : void
      {
      }
   }
}
