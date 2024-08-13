package com.smbc.enemies
{
   import com.smbc.data.EnemyInfo;
   
   public class KoopaRed extends KoopaGreen
   {
      
      public static const ENEMY_NUM:int = EnemyInfo.KoopaRed;
       
      
      public function KoopaRed(param1:String)
      {
         super(param1);
         red = true;
      }
   }
}
