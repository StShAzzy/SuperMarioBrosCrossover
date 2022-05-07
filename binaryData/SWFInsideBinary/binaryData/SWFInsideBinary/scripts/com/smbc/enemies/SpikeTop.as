package com.smbc.enemies
{
   import com.explodingRabbit.cross.gameplay.statusEffects.StatusProperty;
   import com.smbc.data.EnemyInfo;
   import com.smbc.data.HealthValue;
   import com.smbc.data.ScoreValue;
   import com.smbc.ground.Ground;
   
   public class SpikeTop extends Goomba
   {
      
      public static const ENEMY_NUM:int = EnemyInfo.SpikeTop;
      
      private static const BOUNCE_GRAVITY:int = 1500;
       
      
      private const BOUNCE_AMT:int = 350;
      
      private var bounced:Boolean;
      
      public function SpikeTop(param1:String)
      {
         super(param1);
         addProperty(new StatusProperty(PR_PIERCE_PAS,PIERCE_STR_ARMORED));
      }
      
      override protected function overwriteInitialStats() : void
      {
         _health = HealthValue.SPIKE_TOP;
         scoreAttack = ScoreValue.BEETLE_ATTACK;
         scoreBelow = ScoreValue.BEETLE_BELOW;
         scoreStar = ScoreValue.BEETLE_STAR;
         scoreStomp = ScoreValue.BEETLE_STOMP;
         super.overwriteInitialStats();
      }
      
      override public function setStats() : void
      {
         super.setStats();
         stompable = false;
      }
      
      override protected function checkState() : void
      {
         if(!onGround)
         {
            falling = true;
         }
         else if(onGround)
         {
            if(falling && !this.bounced)
            {
               if(nx > player.nx)
               {
                  vx = -xSpeed;
               }
               else
               {
                  vx = xSpeed;
               }
            }
            else
            {
               this.bounced = false;
            }
            falling = false;
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
   }
}
