package com.smbc.enemies
{
   import com.explodingRabbit.cross.gameplay.statusEffects.StatusProperty;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.EnemyInfo;
   import com.smbc.data.HealthValue;
   import com.smbc.data.ScoreValue;
   import com.smbc.main.LevObj;
   import flash.events.TimerEvent;
   
   public class PiranhaGreen extends Enemy
   {
      
      public static const RED:String = "Red";
      
      public static const GREEN:String = "Green";
      
      public static const UPSIDE_DOWN_STR:String = "UpsideDown";
      
      public static const ENEMY_NUM:int = EnemyInfo.PiranhaGreen;
       
      
      public var upsideDown:Boolean;
      
      private const WAIT_TMR:CustomTimer = new CustomTimer(1000,1);
      
      private var abovePipe:Boolean;
      
      private var inY:Number;
      
      public var outY:Number;
      
      private var verticalDirection:int = 1;
      
      protected var riseWhenNearPlayer:Boolean;
      
      private var readyToRise:Boolean;
      
      private var stopRiseY:Number;
      
      protected var stopRiseRightX:Number;
      
      protected var stopRiseLeftX:Number;
      
      private const PIR_HEIGHT:int = 46;
      
      private var pipeLeft:Number;
      
      private var pipeRight:Number;
      
      public var originalX:Number;
      
      public var originalY:Number;
      
      public function PiranhaGreen(param1:String)
      {
         super();
         if(param1.indexOf(UPSIDE_DOWN_STR) != -1)
         {
            this.upsideDown = true;
         }
         removeAllHitTestableItems();
         addHitTestableItem(HT_CHARACTER);
         addHitTestableItem(HT_PROJECTILE_CHARACTER);
         addProperty(new StatusProperty(StatusProperty.TYPE_KNOCK_BACK_PAS,10));
      }
      
      override protected function overwriteInitialStats() : void
      {
         _health = HealthValue.PIRANHA;
         scoreAttack = ScoreValue.PIRANHA_ATTACK;
         scoreBelow = ScoreValue.PIRANHA_BELOW;
         scoreStar = ScoreValue.PIRANHA_STAR;
         scoreStomp = ScoreValue.PIRANHA_STOMP;
         super.overwriteInitialStats();
      }
      
      override public function setStats() : void
      {
         this.originalX = x;
         this.originalY = y;
         if(!this.upsideDown)
         {
            this.outY = y;
            y += this.PIR_HEIGHT;
            this.inY = y;
            this.stopRiseY = this.outY - TILE_SIZE * 12;
         }
         else
         {
            scaleY = -1;
            this.outY = y;
            y -= this.PIR_HEIGHT;
            this.inY = y;
            this.verticalDirection = -1;
            this.stopRiseY = this.outY + TILE_SIZE * 10;
         }
         behindGround = true;
         numColors = 2;
         stompable = false;
         defyGrav = true;
         setPlayFrame("open");
         this.pipeLeft = x - TILE_SIZE;
         this.pipeRight = x + TILE_SIZE;
         this.stopRiseLeftX = x - TILE_SIZE * 2;
         this.stopRiseRightX = x + TILE_SIZE * 2;
         ySpeed = 75 * this.verticalDirection;
         vy = 0;
         this.readyToRise = true;
         setState("below");
         y = this.inY;
         ny = this.inY;
         this.abovePipe = false;
         super.setStats();
         addTmr(this.WAIT_TMR);
         this.WAIT_TMR.addEventListener(TimerEvent.TIMER,this.waitTmrLsr);
      }
      
      override public function rearm() : void
      {
         super.rearm();
         setState("below");
         ny = this.inY;
         y = ny;
         this.abovePipe = false;
         this.readyToRise = true;
         vy = 0;
         this.WAIT_TMR.reset();
      }
      
      override protected function checkState() : void
      {
         if(vy != 0)
         {
            if((!this.upsideDown && ny <= this.outY || this.upsideDown && ny >= this.outY) && cState == "rise")
            {
               setState("above");
               this.WAIT_TMR.start();
               ny = this.outY;
               vy = 0;
            }
            else if((!this.upsideDown && ny >= this.inY || this.upsideDown && ny <= this.inY) && cState == "lower")
            {
               setState("below");
               stopHit = true;
               this.WAIT_TMR.start();
               ny = this.inY;
               vy = 0;
            }
         }
         if(this.readyToRise && onScreen && !(player.nx > this.stopRiseLeftX && player.nx < this.stopRiseRightX && (!this.upsideDown && player.ny > this.stopRiseY || this.upsideDown && player.ny < this.stopRiseY)))
         {
            if(!(player.hRht > this.pipeLeft && player.hLft < this.pipeRight && player.hBot <= this.outY && !this.upsideDown))
            {
               vy = -ySpeed;
               scaleX = player.nx >= nx ? Number(1) : Number(-1);
               setState("rise");
               stopHit = false;
               this.readyToRise = false;
            }
         }
         super.checkState();
      }
      
      private function waitTmrLsr(param1:TimerEvent) : void
      {
         this.WAIT_TMR.reset();
         if(cState == "above")
         {
            vy = ySpeed;
            setState("lower");
         }
         else if(cState == "below")
         {
            this.readyToRise = true;
         }
      }
      
      override public function stomp() : void
      {
      }
      
      override public function die(param1:LevObj = null) : void
      {
         super.die(param1);
         destroy();
      }
      
      override public function checkFrame() : void
      {
         if(currentFrame == getLabNum("close") + 1)
         {
            setPlayFrame("open");
         }
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         this.WAIT_TMR.removeEventListener(TimerEvent.TIMER,this.waitTmrLsr);
      }
      
      override protected function reattachLsrs() : void
      {
         super.reattachLsrs();
         this.WAIT_TMR.addEventListener(TimerEvent.TIMER,this.waitTmrLsr);
      }
   }
}
