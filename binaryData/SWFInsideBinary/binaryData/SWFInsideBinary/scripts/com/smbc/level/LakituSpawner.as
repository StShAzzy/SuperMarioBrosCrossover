package com.smbc.level
{
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.enemies.Enemy;
   import com.smbc.enemies.Lakitu;
   import flash.events.TimerEvent;
   
   public class LakituSpawner extends EnemySpawner
   {
       
      
      protected var spawnDelTmrDur:int = 6000;
      
      protected var spawnDelTmr:CustomTimer;
      
      protected var spawnedFirst:Boolean;
      
      public function LakituSpawner(param1:Number, param2:Number)
      {
         super(param1,param2);
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
               this.spawnEnemy(new Lakitu());
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
            this.spawnEnemy(new Lakitu());
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
         if(this.spawnDelTmr && this.spawnDelTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.spawnDelTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.spawnDelTmrLsr);
         }
      }
      
      override protected function reattachLsrs() : void
      {
         super.reattachLsrs();
         if(this.spawnDelTmr && !this.spawnDelTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.spawnDelTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.spawnDelTmrLsr);
         }
      }
   }
}
