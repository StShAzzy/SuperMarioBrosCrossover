package com.smbc.enemies
{
   import com.smbc.data.EnemyInfo;
   
   public class PiranhaRed extends PiranhaGreen
   {
      
      public static const ENEMY_NUM:int = EnemyInfo.PiranhaRed;
       
      
      public function PiranhaRed(param1:String)
      {
         super(param1);
      }
      
      override public function setStats() : void
      {
         super.setStats();
         stopRiseLeftX = x - TILE_SIZE * 1.4;
         stopRiseRightX = x + TILE_SIZE * 1.4;
      }
   }
}
