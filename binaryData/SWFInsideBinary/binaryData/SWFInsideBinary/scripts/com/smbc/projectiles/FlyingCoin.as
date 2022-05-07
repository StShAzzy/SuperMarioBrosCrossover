package com.smbc.projectiles
{
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.AnimationTimers;
   import com.smbc.graphics.CoinExplosion;
   import com.smbc.ground.Brick;
   import com.smbc.pickups.Coin;
   import com.smbc.utils.GameLoopTimer;
   import flash.events.Event;
   import flash.events.TimerEvent;
   
   public class FlyingCoin extends Projectile
   {
      
      public static const GRAVITY:int = 1550;
      
      public static const JUMP_PWR:int = 620;
      
      public static const MAIN_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_FAST_TMR;
      
      public static const END_Y_OFFSET:int = 70;
      
      private static const EXPLODE_Y_OFS:int = 120;
       
      
      public var brickParent:Brick;
      
      private var endY:Number;
      
      private var bpy:Number;
      
      private const SCORE_VALUE:int = 200;
      
      private const SP_OFFSET:int = 8;
      
      private var explodeY:Number;
      
      private var explosion:CoinExplosion;
      
      private var scorePopDelTmr:GameLoopTimer;
      
      public function FlyingCoin()
      {
         this.explosion = new CoinExplosion();
         super(null,SOURCE_TYPE_NEUTRAL);
         ySpeed = JUMP_PWR;
         gravity = GRAVITY;
         behindGround = true;
         stopHit = true;
         setDir();
         mainAnimTmr = MAIN_ANIM_TMR;
      }
      
      override protected function updateStats() : void
      {
         if(behindGround && ny + height * 0.5 < this.bpy)
         {
            behindGround = false;
         }
         if(ny < this.explodeY && !this.explosion.frameIsEmpty(1) && !this.scorePopDelTmr)
         {
            this.explode();
         }
         if(ny >= this.endY && vy > 0)
         {
            this.explode();
         }
         else
         {
            super.checkStgPos();
         }
      }
      
      private function explode() : void
      {
         this.explosion.explode(this);
         level.addToLevel(this.explosion);
         if(ny >= this.endY)
         {
            level.scorePop(this.SCORE_VALUE,nx,this.endY + this.SP_OFFSET,false,true);
            destroy();
         }
         else
         {
            visible = false;
            this.scorePopDelTmr = new GameLoopTimer(300,1);
            this.scorePopDelTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.scorePopDelTmrHandler,false,0,true);
            this.scorePopDelTmr.start();
         }
      }
      
      protected function scorePopDelTmrHandler(param1:Event) : void
      {
         this.scorePopDelTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.scorePopDelTmrHandler);
         level.scorePop(this.SCORE_VALUE,nx,this.endY + this.SP_OFFSET,false,true);
         destroy();
      }
      
      public function getFlyingCoinInfo(param1:Brick) : void
      {
         this.brickParent = param1;
         x = param1.x + TILE_SIZE / 2;
         this.bpy = param1.y;
         y = this.bpy + TILE_SIZE / 2;
         this.endY = y - END_Y_OFFSET;
         this.explodeY = y - EXPLODE_Y_OFS;
         vy = -ySpeed;
      }
      
      public function getAlternateInfo(param1:Coin) : void
      {
         x = param1.x;
         y = param1.y;
         this.bpy = param1.y - TILE_SIZE / 2;
         this.endY = y - END_Y_OFFSET;
         this.explodeY = y - EXPLODE_Y_OFS;
         vy = -ySpeed;
      }
      
      override public function checkFrame() : void
      {
         if(currentFrame >= totalFrames)
         {
            gotoAndStop("coinStart");
         }
      }
   }
}
