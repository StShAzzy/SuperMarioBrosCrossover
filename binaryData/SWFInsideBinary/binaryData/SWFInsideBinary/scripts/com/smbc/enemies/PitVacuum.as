package com.smbc.enemies
{
   import com.smbc.characters.base.MarioBase;
   
   public class PitVacuum extends Enemy
   {
       
      
      public var dir:String;
      
      private var horzPullPwr:int = 400;
      
      private var vertPullPwr:int = 600;
      
      public function PitVacuum()
      {
         super();
         removeAllHitTestableItems();
      }
      
      public function setVacDir(param1:String) : void
      {
         this.dir = param1;
      }
      
      override public function setStats() : void
      {
         defyGrav = true;
         stopHit = true;
         stopAnim = true;
         vx = 0;
         vy = 0;
         super.setStats();
      }
      
      override protected function updateStats() : void
      {
         super.updateStats();
         player.setHitPoints();
         setHitPoints();
         if(player is MarioBase && player.hRht >= hLft && player.hLft <= hRht)
         {
            this.pull();
         }
      }
      
      private function pull() : void
      {
         if(this.dir == "down-left" && !player.pulledLeft)
         {
            player.vx -= this.horzPullPwr * dt;
            player.pulledLeft = true;
         }
         else if(this.dir == "down-right" && !player.pulledRight)
         {
            player.vx += this.horzPullPwr * dt;
            player.pulledRight = true;
         }
         if(!player.pulledDown)
         {
            player.vy += this.vertPullPwr * dt;
            player.pulledDown = true;
         }
      }
   }
}
