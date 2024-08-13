package com.smbc.level
{
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.GameSettings;
   import com.smbc.data.MapDifficulty;
   import com.smbc.enemies.CheepFlying;
   import com.smbc.enemies.Enemy;
   import com.smbc.enemies.HammerBro;
   import com.smbc.events.CustomEvents;
   import flash.events.Event;
   import flash.events.TimerEvent;
   
   public class FlyingCheepSpawner extends EnemySpawner
   {
      
      private static const CAN_REVERSE_DIRECTION_DELAY:int = 2000;
       
      
      private const MAX_CHEEP_EASY:int = 2;
      
      private const MAX_CHEEP_NORMAL:int = 3;
      
      private const MAX_CHEEP_HARD:int = 4;
      
      private var maxCheep:int = 0;
      
      private const GS_PLAY:String = "play";
      
      private const MIN_SPWN_DEL:int = 150;
      
      private const MAX_SPWN_DEL:int = 600;
      
      private const SPWN_DEL_TMR:CustomTimer = new CustomTimer(1,1);
      
      private var canReverseDirectionTimer:CustomTimer;
      
      public function FlyingCheepSpawner(param1:Number, param2:Number)
      {
         super(param1,param2);
         this.SPWN_DEL_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.spwnDelTmrHandler,false,0,true);
         addTmr(this.SPWN_DEL_TMR);
         this.canReverseDirectionTimer = new CustomTimer(CAN_REVERSE_DIRECTION_DELAY);
         this.canReverseDirectionTimer.start();
         switch(GameSettings.mapDifficulty)
         {
            case MapDifficulty.EASY:
               this.maxCheep = this.MAX_CHEEP_EASY;
               break;
            case MapDifficulty.NORMAL:
               this.maxCheep = this.MAX_CHEEP_NORMAL;
               break;
            case MapDifficulty.HARD:
               this.maxCheep = this.MAX_CHEEP_HARD;
         }
      }
      
      override public function updateSpawner() : void
      {
         if(GS_MNGR.gameState != this.GS_PLAY)
         {
            return;
         }
         super.updateSpawner();
         if(inSpawnZone && ENEMY_DCT.length < this.maxCheep && !this.SPWN_DEL_TMR.running)
         {
            this.SPWN_DEL_TMR.delay = Math.random() * (this.MAX_SPWN_DEL - this.MIN_SPWN_DEL) + this.MAX_SPWN_DEL;
            this.SPWN_DEL_TMR.start();
         }
         if(Boolean(player) && player.vx > 0)
         {
            this.canReverseDirectionTimer.reset();
            this.canReverseDirectionTimer.start();
         }
      }
      
      private function spwnDelTmrHandler(param1:TimerEvent) : void
      {
         this.SPWN_DEL_TMR.reset();
         if(GS_MNGR.gameState != this.GS_PLAY)
         {
            return;
         }
         if(inSpawnZone && ENEMY_DCT.length < this.maxCheep)
         {
            spawnEnemy(new CheepFlying("flying",this));
         }
      }
      
      public function get canReverseDirection() : Boolean
      {
         if(this.canReverseDirectionTimer.currentCount > 0)
         {
            return true;
         }
         return false;
      }
      
      public function addHammerBro(param1:HammerBro) : void
      {
         ENEMY_DCT.addItem(param1);
         param1.addEventListener(CustomEvents.CLEAN_UP,this.hammerBroCleanUpHandler,false,0,true);
      }
      
      private function hammerBroCleanUpHandler(param1:Event) : void
      {
         var _loc2_:Enemy = param1.target as Enemy;
         _loc2_.removeEventListener(CustomEvents.CLEAN_UP,this.hammerBroCleanUpHandler);
         ENEMY_DCT.removeItem(_loc2_);
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         this.SPWN_DEL_TMR.removeEventListener(TimerEvent.TIMER_COMPLETE,this.spwnDelTmrHandler);
      }
      
      override protected function reattachLsrs() : void
      {
         super.reattachLsrs();
         this.SPWN_DEL_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.spwnDelTmrHandler,false,0,true);
      }
   }
}
