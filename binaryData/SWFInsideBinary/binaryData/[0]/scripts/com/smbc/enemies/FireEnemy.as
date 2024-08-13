package com.smbc.enemies
{
   import com.explodingRabbit.cross.gameplay.statusEffects.StatusProperty;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.EnemyInfo;
   import com.smbc.data.ScoreValue;
   import com.smbc.ground.Ground;
   import flash.events.TimerEvent;
   
   public class FireEnemy extends Goomba
   {
      
      public static const ENEMY_NUM:int = EnemyInfo.FireEnemy;
      
      private static const BOUNCE_GRAVITY:int = 1500;
       
      
      private var changeDirectionTimer:CustomTimer;
      
      private const BOUNCE_AMT:int = 350;
      
      private var bounced:Boolean;
      
      public function FireEnemy(param1:String)
      {
         this.changeDirectionTimer = new CustomTimer(250);
         super(param1);
         addProperty(new StatusProperty(PR_PIERCE_PAS,11));
      }
      
      override protected function overwriteInitialStats() : void
      {
         super.overwriteInitialStats();
         scoreAttack = ScoreValue.SPINEY_ATTACK;
         scoreBelow = ScoreValue.SPINEY_BELOW;
         scoreStar = ScoreValue.SPINEY_STAR;
         scoreStomp = ScoreValue.SPINEY_STOMP;
      }
      
      override public function setStats() : void
      {
         super.setStats();
         stompable = false;
         addTmr(this.changeDirectionTimer);
         this.changeDirectionTimer.addEventListener(TimerEvent.TIMER,this.changeDirectionTimerHandler,false,0,true);
         this.changeDirectionTimer.start();
      }
      
      protected function changeDirectionTimerHandler(param1:TimerEvent) : void
      {
         var _loc2_:Number = Math.random();
         if(_loc2_ < 0.33)
         {
            vx = -defaultWalkSpeed;
            scaleX = -1;
         }
         else if(_loc2_ < 0.66)
         {
            vx = defaultWalkSpeed;
            scaleX = 1;
         }
         else
         {
            vx = 0;
         }
      }
      
      override protected function checkState() : void
      {
         if(onGround)
         {
            this.bounced = false;
         }
         if(stunned)
         {
            stunned = false;
            stopUpdate = false;
            stopHit = false;
         }
         super.checkState();
      }
      
      override public function stomp() : void
      {
      }
      
      override public function gBounceHit(param1:Ground) : void
      {
         vy = -this.BOUNCE_AMT;
         gravity = BOUNCE_GRAVITY;
         onGround = false;
         lastOnGround = false;
         this.bounced = true;
         updateLoc();
         setHitPoints();
         if(nx < param1.hMidX)
         {
            vx = -vx;
         }
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         if(this.changeDirectionTimer != null)
         {
            this.changeDirectionTimer.removeEventListener(TimerEvent.TIMER,this.changeDirectionTimerHandler);
         }
      }
      
      override protected function reattachLsrs() : void
      {
         super.reattachLsrs();
         if(this.changeDirectionTimer != null)
         {
            this.changeDirectionTimer.addEventListener(TimerEvent.TIMER,this.changeDirectionTimerHandler,false,0,true);
         }
      }
   }
}
