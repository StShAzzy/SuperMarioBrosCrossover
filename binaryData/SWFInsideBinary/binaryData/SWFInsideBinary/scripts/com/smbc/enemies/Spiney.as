package com.smbc.enemies
{
   import com.smbc.data.EnemyInfo;
   import com.smbc.data.HealthValue;
   import com.smbc.data.ScoreValue;
   import com.smbc.ground.Ground;
   import com.smbc.main.LevObj;
   
   public class Spiney extends Goomba
   {
      
      public static const ENEMY_NUM:int = EnemyInfo.Spiney;
      
      private static const BOUNCE_GRAVITY:int = 1500;
       
      
      private var lakitu:Lakitu;
      
      protected var throwPwr:int = 300;
      
      private const BOUNCE_AMT:int = 350;
      
      private var bounced:Boolean;
      
      public function Spiney()
      {
         super("null");
      }
      
      override public function setStats() : void
      {
         super.setStats();
         numColors = 1;
         stompable = false;
         vyMaxPsv = 325;
         onGround = false;
         if(this.lakitu)
         {
            setState("ball");
            nx = this.lakitu.nx;
            ny = this.lakitu.ny;
            x = nx;
            y = ny;
            vx = 0;
            vy = -this.throwPwr;
            setPlayFrame("ballStart");
            destroyOffScreen = true;
         }
      }
      
      override protected function overwriteInitialStats() : void
      {
         super.overwriteInitialStats();
         _health = HealthValue.SPINEY;
         scoreAttack = ScoreValue.SPINEY_ATTACK;
         scoreBelow = ScoreValue.SPINEY_BELOW;
         scoreStar = ScoreValue.SPINEY_STAR;
         scoreStomp = ScoreValue.SPINEY_STOMP;
      }
      
      override protected function checkState() : void
      {
         if(cState == "ball")
         {
            if(onGround)
            {
               setState("neutral");
               setPlayFrame("walkStart");
               if(nx > player.nx)
               {
                  vx = -xSpeed;
               }
               else
               {
                  vx = xSpeed;
               }
               updDirection();
            }
         }
         else if(cState != "ball" && !onGround)
         {
            falling = true;
         }
         else if(cState != "ball" && onGround)
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
      
      override public function checkFrame() : void
      {
         if(cState == "ball" && currentFrame == getLabNum("ballEnd") + 1)
         {
            setPlayFrame("ballStart");
         }
         super.checkFrame();
      }
      
      override public function die(param1:LevObj = null) : void
      {
         super.die(param1);
         setStopFrame("walkStart");
      }
      
      public function getLakitu(param1:Lakitu) : void
      {
         this.lakitu = param1;
      }
      
      override public function cleanUp() : void
      {
         super.cleanUp();
         if(this.lakitu)
         {
            this.lakitu.SPINEY_DCT.removeItem(this);
         }
      }
   }
}
