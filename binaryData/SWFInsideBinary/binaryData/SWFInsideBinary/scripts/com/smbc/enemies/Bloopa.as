package com.smbc.enemies
{
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.EnemyInfo;
   import com.smbc.data.HealthValue;
   import com.smbc.data.ScoreValue;
   import com.smbc.data.SoundNames;
   import com.smbc.interfaces.ICustomTimer;
   import flash.events.TimerEvent;
   
   public class Bloopa extends Enemy
   {
      
      public static const ENEMY_NUM:int = EnemyInfo.Bloopa;
       
      
      protected var fxy:Number;
      
      protected var axy:Number;
      
      protected var yMaxDist:Number;
      
      protected var yStartLoc:Number;
      
      protected var goRight:Boolean;
      
      protected var applyFric:Boolean;
      
      protected var moveDelTmr:CustomTimer;
      
      protected var moveDelTmrDur:int;
      
      private const MAX_BOTTOM_Y:int = 368.0;
      
      public function Bloopa()
      {
         super();
         removeAllHitTestableItems();
         addHitTestableItem(HT_CHARACTER);
         addHitTestableItem(HT_PROJECTILE_CHARACTER);
      }
      
      override protected function overwriteInitialStats() : void
      {
         _health = HealthValue.BLOOPA;
         scoreAttack = ScoreValue.BLOOPA_ATTACK;
         scoreBelow = ScoreValue.BLOOPA_BELOW;
         scoreStar = ScoreValue.BLOOPA_STAR;
         scoreStomp = ScoreValue.BLOOPA_STOMP;
         super.overwriteInitialStats();
      }
      
      override public function setStats() : void
      {
         if(level.waterLevel)
         {
            stompable = false;
         }
         else
         {
            stompable = true;
         }
         numColors = 1;
         this.axy = 700;
         this.fxy = 0.000001;
         this.yMaxDist = 50;
         defyGrav = true;
         ySpeed = 80;
         gravity = 500;
         vyMaxPsv = 400;
         vx = 0;
         vy = ySpeed;
         this.moveDelTmrDur = 200;
         setState("wait");
         setStopFrame("smushed");
         this.moveDelTmr = new CustomTimer(this.moveDelTmrDur,1);
         this.moveDelTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.moveDelTmrLsr);
         addTmr(this.moveDelTmr);
         this.moveDelTmr.start();
         super.setStats();
      }
      
      override public function stomp() : void
      {
         if(!stompable || !player.canStomp)
         {
            return;
         }
         super.stomp();
         die();
         SND_MNGR.removeStoredSound(SoundNames.SFX_GAME_KICK_SHELL);
         vx = 0;
         vy = 0;
      }
      
      override protected function updateStats() : void
      {
         super.updateStats();
         if(cState == "ready" && (player.ny < ny || ny > this.MAX_BOTTOM_Y))
         {
            setState("chase");
            setStopFrame("stretched");
            this.yStartLoc = ny;
            if(player.nx > nx)
            {
               this.goRight = true;
            }
            else
            {
               this.goRight = false;
            }
            vx = 0;
            vy = 0;
         }
         if(cState == "chase")
         {
            vy -= this.axy * dt;
            if(this.goRight)
            {
               vx += this.axy * dt;
            }
            else
            {
               vx -= this.axy * dt;
            }
            if(this.yStartLoc - ny > this.yMaxDist || ny < GLOB_STG_TOP + TILE_SIZE * 4)
            {
               this.applyFric = true;
            }
            if(this.applyFric)
            {
               vx *= Math.pow(this.fxy,dt);
               vy *= Math.pow(this.fxy,dt);
               if(vy < 50 && vy > -50)
               {
                  vx = 0;
                  vy = ySpeed;
                  this.applyFric = false;
                  setState("wait");
                  setStopFrame("smushed");
                  this.moveDelTmr.start();
               }
            }
         }
      }
      
      private function moveDelTmrLsr(param1:TimerEvent) : void
      {
         if(cState != "die")
         {
            setState("ready");
         }
         this.moveDelTmr.reset();
      }
      
      override public function animate(param1:ICustomTimer) : Boolean
      {
         stopAnim = true;
         return super.animate(param1);
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         if(this.moveDelTmr && this.moveDelTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.moveDelTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.moveDelTmrLsr);
         }
      }
      
      override protected function reattachLsrs() : void
      {
         super.reattachLsrs();
         if(this.moveDelTmr && !this.moveDelTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.moveDelTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.moveDelTmrLsr);
         }
      }
   }
}
