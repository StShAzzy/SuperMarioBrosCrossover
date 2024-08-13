package com.smbc.level
{
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.GameSettings;
   import com.smbc.data.MapDifficulty;
   import com.smbc.enemies.Enemy;
   import com.smbc.enemies.Lakitu;
   import flash.events.TimerEvent;
   
   public class LakituSpawner extends EnemySpawner
   {
       
      
      protected var spawnDelTmrDur:int = 15880;
      
      protected var spawnDelTmr:CustomTimer;
      
      protected var spawnedFirst:Boolean;
      
      protected var middlePosition:Boolean;
      
      public function LakituSpawner(param1:Number, param2:Number, param3:Boolean)
      {
         super(param1,param2);
         this.middlePosition = param3;
         switch(GameSettings.mapDifficulty)
         {
            case MapDifficulty.EASY:
               this.spawnDelTmrDur = 48 * 397;
               break;
            case MapDifficulty.NORMAL:
               this.spawnDelTmrDur = 40 * 397;
               break;
            case MapDifficulty.HARD:
               this.spawnDelTmrDur = 16 * 397;
         }
         this.spawnDelTmr = new CustomTimer(this.spawnDelTmrDur,1);
         addTmr(this.spawnDelTmr);
         this.spawnDelTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.spawnDelTmrLsr);
      }
      
      override public function updateSpawner() : void
      {
         super.updateSpawner();
         if(inSpawnZone && ENEMY_DCT.length < 1 && !this.spawnDelTmr.running)
         {
            if(!this.spawnedFirst)
            {
               this.spawnEnemy(new Lakitu(this,this.middlePosition));
            }
            else
            {
               this.spawnDelTmr.start();
            }
         }
      }
      
      private function spawnDelTmrLsr(param1:TimerEvent) : void
      {
         this.spawnDelTmr.reset();
         if(inSpawnZone && ENEMY_DCT.length < 1)
         {
            this.spawnEnemy(new Lakitu(this,this.middlePosition));
         }
      }
      
      override protected function spawnEnemy(param1:Enemy) : void
      {
         super.spawnEnemy(param1);
         this.spawnedFirst = true;
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         if(Boolean(this.spawnDelTmr) && this.spawnDelTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.spawnDelTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.spawnDelTmrLsr);
         }
      }
      
      override protected function reattachLsrs() : void
      {
         super.reattachLsrs();
         if(Boolean(this.spawnDelTmr) && !this.spawnDelTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.spawnDelTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.spawnDelTmrLsr);
         }
      }
   }
}
