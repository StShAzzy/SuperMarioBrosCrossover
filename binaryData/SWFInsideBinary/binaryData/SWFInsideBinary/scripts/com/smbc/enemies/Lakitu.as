package com.smbc.enemies
{
   import com.explodingRabbit.cross.gameplay.statusEffects.StatusProperty;
   import com.explodingRabbit.utils.CustomDictionary;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.Cheats;
   import com.smbc.data.EnemyInfo;
   import com.smbc.data.HealthValue;
   import com.smbc.data.ScoreValue;
   import com.smbc.data.SoundNames;
   import com.smbc.events.CustomEvents;
   import com.smbc.interfaces.ICustomTimer;
   import com.smbc.level.LakituSpawner;
   import com.smbc.level.Level;
   import com.smbc.main.LevObj;
   import flash.events.Event;
   import flash.events.TimerEvent;
   
   public class Lakitu extends Enemy
   {
      
      public static const ENEMY_NUM:int = EnemyInfo.Lakitu;
       
      
      protected var lakSpwnr:LakituSpawner;
      
      protected var throwTmrDur:int = 250;
      
      protected var throwTmr:CustomTimer;
      
      protected var hideTmrDur:int = 1500;
      
      protected var hideTmr:CustomTimer;
      
      private const FL_HIDE:String = "hide";
      
      private const FL_NORMAL:String = "normal";
      
      public const SPINEY_DCT:CustomDictionary = new CustomDictionary();
      
      private const MAX_SPINEYS:int = 4;
      
      private const DEF_VX_MAX:int = 200;
      
      private const VX_MAX_INCREASE_NUM:int = 100;
      
      private const EXIT_SPEED:int = 100;
      
      private const START_FOLLOW_DEL_TMR:CustomTimer = new CustomTimer(800,1);
      
      private var withinBoundaries:Boolean;
      
      private var edgeBuffer:Number;
      
      private var exiting:Boolean;
      
      private var followDir:String;
      
      private const FD_RHT:String = "right";
      
      private const FD_LFT:String = "left";
      
      private var followPlayer:Boolean;
      
      private var MIN_CHANGE_DIR_DIST:int;
      
      public function Lakitu()
      {
         var _loc1_:Object = null;
         super();
         this.MIN_CHANGE_DIR_DIST = Level.levelInstance.TILE_SIZE;
         for each(_loc1_ in level.ENEMY_SPAWNER_DCT)
         {
            if(_loc1_ is LakituSpawner)
            {
               this.lakSpwnr = _loc1_ as LakituSpawner;
            }
         }
         addProperty(new StatusProperty(PR_STOP_PAS,10));
         addProperty(new StatusProperty(PR_FREEZE_PAS,10));
         addProperty(new StatusProperty(StatusProperty.TYPE_KNOCK_BACK_PAS,10));
         this.edgeBuffer = TILE_SIZE * 2;
         y = GLOB_STG_TOP + TILE_SIZE * 3;
         x = locStgRht + width * 0.5;
         updateOffScreen = true;
         addTmr(this.START_FOLLOW_DEL_TMR);
         this.START_FOLLOW_DEL_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.startFollowDelTmrHandler,false,0,true);
         removeAllHitTestableItems();
         addHitTestableItem(HT_CHARACTER);
         addHitTestableItem(HT_PROJECTILE_CHARACTER);
      }
      
      override protected function overwriteInitialStats() : void
      {
         _health = HealthValue.LAKITU;
         scoreAttack = ScoreValue.LAKITU_ATTACK;
         scoreBelow = ScoreValue.LAKITU_BELOW;
         scoreStar = ScoreValue.LAKITU_STAR;
         scoreStomp = ScoreValue.LAKITU_STOMP;
         super.overwriteInitialStats();
      }
      
      override public function setStats() : void
      {
         stompable = true;
         numColors = 1;
         ax = 200;
         fx = 1e-11;
         vx = 0;
         vy = 0;
         vxMax = this.DEF_VX_MAX;
         defyGrav = true;
         setStopFrame(this.FL_NORMAL);
         setState("neutral");
         super.setStats();
         onGround = false;
         vx = 0;
         this.throwTmr = new CustomTimer(this.throwTmrDur,1);
         addTmr(this.throwTmr);
         this.throwTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.throwTmrLsr);
         this.hideTmr = new CustomTimer(this.hideTmrDur,1);
         addTmr(this.hideTmr);
         this.hideTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.hideTmrLsr);
         this.hideTmr.start();
      }
      
      override protected function checkState() : void
      {
         var _loc1_:int = 0;
         vxMax = this.DEF_VX_MAX;
         if(player.nx > this.lakSpwnr.enemyEndPos)
         {
            vx = -this.EXIT_SPEED;
            setStopFrame(this.FL_NORMAL);
            destroyOffScreen = true;
            updateOffScreen = false;
            if(!this.exiting)
            {
               stopTimers();
               this.exiting = true;
            }
            return;
         }
         if(this.exiting)
         {
            resumeTimers();
            destroyOffScreen = false;
            updateOffScreen = true;
         }
         this.exiting = false;
         if(this.withinBoundaries && nx < locStgLft + this.edgeBuffer)
         {
            if(player.vx > 0 && vx < player.vx)
            {
               vx = player.vx;
            }
            nx = locStgLft + this.edgeBuffer;
            if(stunned)
            {
               stunned = false;
               stopUpdate = false;
               stopHit = false;
            }
         }
         else if(this.withinBoundaries && nx > locStgRht - this.edgeBuffer)
         {
            if(player.vx < 0 && vx > player.vx)
            {
               vx = player.vx;
            }
            nx = locStgRht - this.edgeBuffer;
            if(stunned)
            {
               stunned = false;
               stopUpdate = false;
               stopHit = false;
            }
         }
         if(this.followDir == this.FD_LFT && (player.rhtBtn || !player.lftBtn) || this.followDir == this.FD_RHT && (player.lftBtn || !player.rhtBtn))
         {
            this.cancelFollow();
         }
         if(!this.withinBoundaries)
         {
            vx = -vxMax;
            if(nx < locStgRht - this.edgeBuffer)
            {
               this.withinBoundaries = true;
            }
         }
         if(this.followPlayer)
         {
            if(this.followDir == this.FD_RHT)
            {
               vx += ax * dt;
               if(player.vx > this.DEF_VX_MAX - this.VX_MAX_INCREASE_NUM)
               {
                  vxMax = player.vx + this.VX_MAX_INCREASE_NUM;
               }
            }
            else if(this.followDir == this.FD_LFT)
            {
               vx -= ax * dt;
               if(player.vx < -this.DEF_VX_MAX + this.VX_MAX_INCREASE_NUM)
               {
                  vxMax = -(player.vx - this.VX_MAX_INCREASE_NUM);
               }
            }
            else
            {
               this.cancelFollow();
            }
         }
         else
         {
            if(player.rhtBtn)
            {
               if(!this.START_FOLLOW_DEL_TMR.running)
               {
                  this.START_FOLLOW_DEL_TMR.start();
                  this.followDir = this.FD_RHT;
               }
            }
            else if(player.lftBtn)
            {
               if(!this.START_FOLLOW_DEL_TMR.running)
               {
                  this.START_FOLLOW_DEL_TMR.start();
                  this.followDir = this.FD_LFT;
               }
            }
            _loc1_ = nx - player.nx;
            if(_loc1_ < 0)
            {
               _loc1_ = -_loc1_;
            }
            if(nx > player.nx)
            {
               if(_loc1_ < this.MIN_CHANGE_DIR_DIST && vx > 50)
               {
                  vx += ax * dt;
               }
               else
               {
                  vx -= ax * dt;
               }
            }
            else if(_loc1_ < this.MIN_CHANGE_DIR_DIST && vx < -50)
            {
               vx -= ax * dt;
            }
            else
            {
               vx += ax * dt;
            }
         }
         if(cState == "wait" && this.SPINEY_DCT.length < this.MAX_SPINEYS)
         {
            this.throwSpiney();
         }
         super.checkState();
      }
      
      private function cancelFollow() : void
      {
         this.START_FOLLOW_DEL_TMR.reset();
         this.followPlayer = false;
         this.followDir = null;
      }
      
      private function startFollowDelTmrHandler(param1:TimerEvent) : void
      {
         this.START_FOLLOW_DEL_TMR.reset();
         this.followPlayer = true;
      }
      
      private function hideTmrLsr(param1:TimerEvent) : void
      {
         this.hideTmr.reset();
         setStopFrame(this.FL_HIDE);
         this.throwTmr.start();
      }
      
      private function throwTmrLsr(param1:TimerEvent) : void
      {
         if(cState != ST_DIE)
         {
            this.throwTmr.reset();
            if(this.SPINEY_DCT.length < this.MAX_SPINEYS)
            {
               this.throwSpiney();
            }
            else
            {
               setState("wait");
            }
         }
      }
      
      private function throwSpiney() : void
      {
         var _loc1_:HammerBro = null;
         var _loc2_:Spiney = null;
         if(cState != ST_DIE)
         {
            if(Cheats.allHammerBros)
            {
               _loc1_ = new HammerBro(null);
               _loc1_.x = nx;
               _loc1_.y = ny;
               _loc1_.addEventListener(CustomEvents.CLEAN_UP,this.enemyCleanUpHandler,false,0,true);
               level.addToLevel(_loc1_);
               _loc1_.dosLft = true;
               this.SPINEY_DCT.addItem(_loc1_);
            }
            else
            {
               _loc2_ = new Spiney();
               _loc2_.getLakitu(this);
               level.addToLevel(_loc2_);
               this.SPINEY_DCT.addItem(_loc2_);
            }
            setStopFrame(this.FL_NORMAL);
            setState("neutral");
            this.hideTmr.start();
         }
      }
      
      override public function stomp() : void
      {
         if(!player.canStomp)
         {
            return;
         }
         super.stomp();
         this.die();
         SND_MNGR.removeStoredSound(SoundNames.SFX_GAME_KICK_SHELL);
         vx = 0;
         vy = 0;
      }
      
      override public function die(param1:LevObj = null) : void
      {
         super.die(param1);
         updateOffScreen = false;
      }
      
      override public function animate(param1:ICustomTimer) : Boolean
      {
         stopAnim = true;
         return super.animate(param1);
      }
      
      private function enemyCleanUpHandler(param1:Event) : void
      {
         var _loc2_:Enemy = param1.target as Enemy;
         _loc2_.removeEventListener(CustomEvents.CLEAN_UP,this.enemyCleanUpHandler);
         this.SPINEY_DCT.removeItem(_loc2_);
      }
      
      override public function cleanUp() : void
      {
         super.cleanUp();
         if(this.lakSpwnr)
         {
            this.lakSpwnr.ENEMY_DCT.removeItem(this);
         }
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         if(this.throwTmr && this.throwTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.throwTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.throwTmrLsr);
         }
         if(this.hideTmr && this.hideTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.hideTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.hideTmrLsr);
         }
         this.START_FOLLOW_DEL_TMR.removeEventListener(TimerEvent.TIMER_COMPLETE,this.startFollowDelTmrHandler);
      }
      
      override protected function reattachLsrs() : void
      {
         super.reattachLsrs();
         if(this.throwTmr && !this.throwTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.throwTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.throwTmrLsr);
         }
         if(this.hideTmr && !this.hideTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.hideTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.hideTmrLsr);
         }
         this.START_FOLLOW_DEL_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.startFollowDelTmrHandler,false,0,true);
      }
   }
}
