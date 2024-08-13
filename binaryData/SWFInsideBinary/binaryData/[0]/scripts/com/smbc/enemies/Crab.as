package com.smbc.enemies
{
   import com.smbc.data.EnemyInfo;
   import com.smbc.data.HealthValue;
   import com.smbc.data.ScoreValue;
   import com.smbc.ground.Ground;
   import com.smbc.main.LevObj;
   import com.smbc.projectiles.MarioFireBall;
   
   public class Crab extends Goomba
   {
      
      public static const ENEMY_NUM:int = EnemyInfo.Crab;
      
      private static const ANGRY_SPEED_MULTIPLIER:Number = 1.66;
      
      private static const FL_WALK_START_ANGRY:String = "walkStartAngry";
      
      private static const FL_WALK_END_ANGRY:String = "walkEndAngry";
      
      private static const FL_WALK_START:String = "walkStart";
      
      private static const FL_WALK_END:String = "walkEnd";
      
      private static const BOUNCE_GRAVITY:int = 1500;
      
      private static const HEALTH_VALUE_ANGRY:int = 400;
       
      
      private const BOUNCE_AMT:int = 350;
      
      private var bounced:Boolean;
      
      private var angry:Boolean;
      
      public function Crab(param1:String)
      {
         super(param1);
      }
      
      override protected function overwriteInitialStats() : void
      {
         super.overwriteInitialStats();
         _health = HealthValue.CRAB;
         scoreAttack = ScoreValue.SPINEY_ATTACK;
         scoreBelow = ScoreValue.SPINEY_BELOW;
         scoreStar = ScoreValue.SPINEY_STAR;
         scoreStomp = ScoreValue.SPINEY_STOMP;
      }
      
      override protected function takeDamage(param1:int, param2:LevObj = null) : void
      {
         if(param2 is MarioFireBall && !this.angry)
         {
            _health = HEALTH_VALUE_ANGRY;
         }
         else
         {
            super.takeDamage(param1,param2);
         }
         if(!this.angry && cState != ST_DIE && _health <= HEALTH_VALUE_ANGRY && !getStatusEffect(STATFX_FREEZE))
         {
            setPlayFrame(FL_WALK_START_ANGRY);
            this.angry = true;
            _health = HEALTH_VALUE_ANGRY;
            vx *= ANGRY_SPEED_MULTIPLIER;
            vx = Math.abs(vx);
            if(player.nx < nx)
            {
               vx *= -1;
            }
         }
      }
      
      override public function setStats() : void
      {
         super.setStats();
         stompable = false;
      }
      
      override public function checkFrame() : void
      {
         super.checkFrame();
         var _loc1_:String = currentLabel;
         var _loc2_:int = currentFrame;
         if(!this.angry)
         {
            if(_loc2_ == convFrameToInt(FL_WALK_END) + 1)
            {
               setPlayFrame(FL_WALK_START);
            }
         }
         else if(_loc2_ == convFrameToInt(FL_WALK_END_ANGRY) + 1)
         {
            setPlayFrame(FL_WALK_START_ANGRY);
         }
      }
      
      override protected function checkState() : void
      {
         if(!onGround)
         {
            falling = true;
         }
         else if(onGround)
         {
            if(Boolean(falling) && !this.bounced && this.angry)
            {
               if(nx > player.nx)
               {
                  vx = -xSpeed * ANGRY_SPEED_MULTIPLIER;
               }
               else
               {
                  vx = xSpeed * ANGRY_SPEED_MULTIPLIER;
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
         if(!this.angry && !getStatusEffect(STATFX_FREEZE))
         {
            setPlayFrame(FL_WALK_START_ANGRY);
            this.angry = true;
            vx *= ANGRY_SPEED_MULTIPLIER;
            vx = Math.abs(vx);
            if(player.nx < nx)
            {
               vx *= -1;
            }
         }
      }
   }
}
