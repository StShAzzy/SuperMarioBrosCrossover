package com.smbc.level
{
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.Cheats;
   import com.smbc.data.SoundNames;
   import com.smbc.enemies.BulletBill;
   import com.smbc.enemies.Enemy;
   import com.smbc.enemies.HammerBro;
   import com.smbc.events.CustomEvents;
   import flash.events.Event;
   import flash.events.TimerEvent;
   
   public class BulletBillSpawner extends EnemySpawner
   {
      
      private static const DEL_DEFAULT:int = 250;
      
      private static const DEL_HB:int = 2000;
       
      
      private const RESPAWN_DELAY_TMR:CustomTimer = new CustomTimer(DEL_DEFAULT,1);
      
      private const BULLET_BILL_WIDTH:int = BulletBill.WIDTH;
      
      private var curBulBill:Enemy;
      
      private const NUM_Y_POSITIONS:int = 5;
      
      private var bulBillColor:String;
      
      private const GS_PLAY:String = "play";
      
      public function BulletBillSpawner(param1:Number, param2:Number, param3:String)
      {
         this.bulBillColor = param3;
         super(param1,param2);
         if(Cheats.allHammerBros)
         {
            this.RESPAWN_DELAY_TMR.delay = DEL_HB;
         }
         this.RESPAWN_DELAY_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.respawnTmrHandler,false,0,true);
         addTmr(this.RESPAWN_DELAY_TMR);
      }
      
      override public function updateSpawner() : void
      {
         super.updateSpawner();
         if(inSpawnZone && !this.curBulBill && !this.RESPAWN_DELAY_TMR.running)
         {
            this.RESPAWN_DELAY_TMR.start();
         }
      }
      
      private function respawnTmrHandler(param1:TimerEvent) : void
      {
         var _loc3_:int = 0;
         var _loc5_:Number = NaN;
         this.RESPAWN_DELAY_TMR.reset();
         if(GS_MNGR.gameState != this.GS_PLAY || !inSpawnZone)
         {
            return;
         }
         var _loc2_:Number = Math.random();
         var _loc4_:int = 1;
         while(_loc4_ < this.NUM_Y_POSITIONS + 1)
         {
            if(_loc2_ < _loc4_ / this.NUM_Y_POSITIONS)
            {
               _loc3_ = _loc4_;
               break;
            }
            _loc4_++;
         }
         _loc3_ -= 3;
         _loc5_ = level.locStgRht + this.BULLET_BILL_WIDTH / 2;
         var _loc6_:Number = level.getNearestGrid(player.ny) + _loc3_ * TILE_SIZE;
         while(_loc6_ > GLOB_STG_BOT - TILE_SIZE * 1)
         {
            _loc6_ -= TILE_SIZE;
         }
         while(_loc6_ < GLOB_STG_TOP + TILE_SIZE * 3)
         {
            _loc6_ += TILE_SIZE;
         }
         if(!Cheats.allHammerBros)
         {
            this.curBulBill = new BulletBill(_loc5_,_loc6_,false,this,this.bulBillColor);
         }
         else
         {
            this.curBulBill = new HammerBro(null,true);
            this.curBulBill.scaleX = -1;
            this.curBulBill.x = _loc5_;
            this.curBulBill.y = GLOB_STG_TOP + TILE_SIZE * 3;
            this.curBulBill.vx = -BulletBill.SPEED;
            this.curBulBill.vy = 0;
            this.curBulBill.destroyOffScreen = true;
            this.curBulBill.addEventListener(CustomEvents.CLEAN_UP,this.enemyCleanUpHandler,false,0,true);
            SND_MNGR.playSound(SoundNames.SFX_GAME_CANON);
         }
         level.addToLevel(this.curBulBill);
      }
      
      private function enemyCleanUpHandler(param1:Event) : void
      {
         var _loc2_:Enemy = param1.target as Enemy;
         _loc2_.removeEventListener(CustomEvents.CLEAN_UP,this.enemyCleanUpHandler);
         this.bulletBillDestroyed(_loc2_);
      }
      
      public function bulletBillDestroyed(param1:Enemy) : void
      {
         if(param1 != this.curBulBill)
         {
            return;
         }
         if(this.RESPAWN_DELAY_TMR.running)
         {
            this.RESPAWN_DELAY_TMR.reset();
         }
         this.RESPAWN_DELAY_TMR.start();
         this.curBulBill = null;
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         this.RESPAWN_DELAY_TMR.removeEventListener(TimerEvent.TIMER_COMPLETE,this.respawnTmrHandler);
      }
      
      override protected function reattachLsrs() : void
      {
         super.reattachLsrs();
         this.RESPAWN_DELAY_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.respawnTmrHandler,false,0,true);
      }
   }
}
