package com.smbc.ground
{
   import com.explodingRabbit.utils.CustomDictionary;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.Cheats;
   import com.smbc.data.SoundNames;
   import com.smbc.enemies.BulletBill;
   import com.smbc.enemies.Enemy;
   import com.smbc.enemies.HammerBro;
   import com.smbc.events.CustomEvents;
   import com.smbc.graphics.CanonSmoke;
   import flash.events.Event;
   import flash.events.TimerEvent;
   
   public class Canon extends Ground
   {
      
      public static const BILL_DCT:CustomDictionary = new CustomDictionary();
       
      
      protected var shootTmr:CustomTimer;
      
      private const SHOOT_TMR_DUR_MIN:int = 1000;
      
      private const SHOOT_TMR_DUR_MAX:int = 3500;
      
      private const MAX_BULLET_BILLS:int = 2;
      
      private const GS_PLAY:String = "play";
      
      private const STOP_SHOOT_DIST:int = 64.0;
      
      private var stopShootLft:Number;
      
      private var stopShootRht:Number;
      
      private var readyToShoot:Boolean;
      
      public function Canon()
      {
         super("nothing");
      }
      
      override public function initiate() : void
      {
         super.initiate();
         setColPoints();
         this.stopShootLft = hMidX - this.STOP_SHOOT_DIST;
         this.stopShootRht = hMidX + this.STOP_SHOOT_DIST;
         var _loc1_:int = int(Math.random() * (this.SHOOT_TMR_DUR_MAX - this.SHOOT_TMR_DUR_MIN) + this.SHOOT_TMR_DUR_MIN);
         this.shootTmr = new CustomTimer(_loc1_,1);
         addTmr(this.shootTmr);
         this.shootTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.shootTmrLsr);
         this.shootTmr.start();
      }
      
      private function shootTmrLsr(param1:TimerEvent) : void
      {
         var _loc2_:CanonSmoke = null;
         var _loc3_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:HammerBro = null;
         var _loc6_:BulletBill = null;
         this.shootTmr.reset();
         if(BILL_DCT.length < this.MAX_BULLET_BILLS && GS_MNGR.gameState == this.GS_PLAY && (player.nx < this.stopShootLft || player.nx > this.stopShootRht))
         {
            _loc3_ = false;
            _loc4_ = 0;
            if(player.nx >= hMidX)
            {
               _loc3_ = true;
            }
            if(Cheats.allHammerBros)
            {
               _loc5_ = new HammerBro(null,true);
               level.addToLevelNow(_loc5_);
               if(_loc3_)
               {
                  _loc5_.x = x + TILE_SIZE + _loc5_.hWidth / 2;
                  _loc5_.vx = BulletBill.SPEED;
                  _loc5_.scaleX = 1;
               }
               else
               {
                  _loc5_.x = x - _loc5_.hWidth / 2;
                  _loc5_.vx = -BulletBill.SPEED;
                  _loc5_.scaleX = -1;
               }
               _loc5_.y = y + TILE_SIZE - 2;
               _loc5_.vy = 0;
               _loc5_.destroyOffScreen = true;
               _loc5_.addEventListener(CustomEvents.CLEAN_UP,this.enemyCleanUpHandler,false,0,true);
               _loc2_ = new CanonSmoke();
               _loc2_.explode(this,_loc3_);
               BILL_DCT.addItem(_loc5_);
               SND_MNGR.playSound(SoundNames.SFX_GAME_CANON);
            }
            else
            {
               _loc6_ = new BulletBill(x + TILE_SIZE / 2,y + TILE_SIZE,_loc3_,this);
               level.addToLevel(_loc6_);
               _loc2_ = new CanonSmoke();
               _loc2_.explode(this,_loc3_);
               BILL_DCT.addItem(_loc6_);
            }
         }
         this.shootTmr.delay = int(Math.random() * (this.SHOOT_TMR_DUR_MAX - this.SHOOT_TMR_DUR_MIN) + this.SHOOT_TMR_DUR_MIN);
         this.shootTmr.start();
      }
      
      private function enemyCleanUpHandler(param1:Event) : void
      {
         var _loc2_:Enemy = param1.target as Enemy;
         _loc2_.removeEventListener(CustomEvents.CLEAN_UP,this.enemyCleanUpHandler);
         BILL_DCT.removeItem(_loc2_);
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         if(this.shootTmr && this.shootTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.shootTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.shootTmrLsr);
         }
      }
      
      override protected function reattachLsrs() : void
      {
         super.reattachLsrs();
         if(this.shootTmr && !this.shootTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.shootTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.shootTmrLsr);
         }
      }
   }
}
