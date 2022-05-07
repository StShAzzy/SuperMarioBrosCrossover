package com.smbc.projectiles
{
   public class Bubble extends Projectile
   {
       
      
      protected var riseSpeed:Number = 100;
      
      public function Bubble()
      {
         super(null,SOURCE_TYPE_NEUTRAL);
         stopAnim = true;
         vx = 0;
         vy = -this.riseSpeed;
         x = player.nx;
         y = player.ny - player.height * 0.75;
         defyGrav = true;
         mainAnimTmr = null;
      }
      
      override protected function updateStats() : void
      {
         super.updateStats();
         if(ny <= GLOB_STG_TOP + TILE_SIZE * 2.4)
         {
            destroy();
         }
      }
   }
}
