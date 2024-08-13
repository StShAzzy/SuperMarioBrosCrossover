package com.smbc.level
{
   import com.explodingRabbit.utils.CustomDictionary;
   import com.smbc.enemies.Enemy;
   import com.smbc.main.LevObj;
   
   public class EnemySpawner extends LevObj
   {
       
      
      protected var _enemyStartPos:Number;
      
      protected var _enemyEndPos:Number;
      
      protected var inSpawnZone:Boolean;
      
      public const ENEMY_DCT:CustomDictionary = new CustomDictionary(true);
      
      protected var _active:Boolean = true;
      
      public function EnemySpawner(param1:Number, param2:Number)
      {
         super();
         this._enemyStartPos = param1;
         this._enemyEndPos = param2;
      }
      
      public function updateSpawner() : void
      {
         dt = level.dt;
         if(player.nx > this._enemyStartPos && player.nx < this._enemyEndPos)
         {
            this.inSpawnZone = true;
         }
         else
         {
            this.inSpawnZone = false;
         }
      }
      
      protected function spawnEnemy(param1:Enemy) : void
      {
         level.addToLevel(param1);
         this.ENEMY_DCT.addItem(param1);
      }
      
      override public function disarm() : void
      {
         super.disarm();
         this._active = false;
      }
      
      override public function rearm() : void
      {
         super.rearm();
         this._active = true;
      }
      
      public function get active() : Boolean
      {
         return this._active;
      }
      
      public function get enemyEndPos() : Number
      {
         return this._enemyEndPos;
      }
      
      public function get enemyStartPos() : Number
      {
         return this._enemyStartPos;
      }
   }
}
