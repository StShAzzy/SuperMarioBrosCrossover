package com.smbc.enemies
{
   import com.explodingRabbit.cross.gameplay.statusEffects.StatusProperty;
   import com.explodingRabbit.utils.CustomDictionary;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.characters.Simon;
   import com.smbc.characters.base.MarioBase;
   import com.smbc.data.DamageValue;
   import com.smbc.data.EnemyInfo;
   import com.smbc.data.HealthValue;
   import com.smbc.data.ScoreValue;
   import com.smbc.data.SoundNames;
   import com.smbc.events.CustomEvents;
   import com.smbc.main.LevObj;
   import com.smbc.managers.GraphicsManager;
   import com.smbc.projectiles.BowserFireBall;
   import com.smbc.projectiles.Hammer;
   import com.smbc.utils.GameLoopTimer;
   import flash.events.Event;
   import flash.events.TimerEvent;
   
   public class Bowser extends Enemy
   {
      
      public static const ENEMY_NUM:int = EnemyInfo.Bowser;
      
      public static const MAX_FIREBALLS_ON_SCREEN:int = 2;
      
      private static const FL_BREATHE_FIRE:String = "breatheFire";
      
      private static const FL_CLOSE_1:String = "close-1";
      
      private static const FL_CLOSE_2:String = "close-2";
      
      private static const FL_DIE:String = "die_";
      
      private static const FL_FALL_END:String = "fallEnd";
      
      private static const FL_FALL_START:String = "fallStart";
      
      private static const FL_JUMP:String = "jump";
      
      private static const FL_OPEN_1:String = "open-1";
      
      private static const FL_OPEN_2:String = "open-2";
      
      private static const FL_PREPARE_FIRE:String = "prepareFire";
      
      private static const FL_WALK_END:String = "walkEnd";
      
      private static const FL_WALK_START:String = "walkStart";
      
      private static const ST_BREAKING_BRIDGE:String = "breakingBridge";
      
      private static const ST_CHASE:String = "chase";
      
      private static const ST_NORMAL:String = "normal";
      
      private static const BOOM_STUN_DUR:int = 1000;
      
      private static const ATK_STUN_DUR:int = 100;
       
      
      protected var xMin:Number;
      
      protected var xMax:Number;
      
      private const WALK_SPEED:int = 30;
      
      private const RUN_SPEED:int = 62;
      
      private const MAX_HAMMERS_ON_SCREEN:int = 6;
      
      public const FB_TMR:CustomTimer = new CustomTimer(1,1);
      
      private const FB_TMR_DUR_MIN:int = 1500;
      
      private const FB_TMR_DUR_MAX:int = 3500;
      
      private const FB_DEL_TMR:CustomTimer = new CustomTimer(450,1);
      
      private const AFTER_FB_TMR:GameLoopTimer = new GameLoopTimer(300,1);
      
      private const JUMP_TMR:CustomTimer = new CustomTimer(1000,1);
      
      private const JUMP_TMR_DUR_MIN:int = 400;
      
      private const JUMP_TMR_DUR_MAX:int = 3000;
      
      private const THROW_HAMMER_TMR_DUR_MIN:int = 40;
      
      private const THROW_HAMMER_TMR_DUR_MAX:int = 200;
      
      private const NUM_FIREBALLS_TO_KILL:int = 5;
      
      private const THROW_HAMMER_TMR:CustomTimer = new CustomTimer(this.THROW_HAMMER_TMR_DUR_MIN,1);
      
      private const HAMMER_TYPE:String = Hammer.TYPE_BOWSER;
      
      public const FB_DCT:CustomDictionary = new CustomDictionary(true);
      
      public const HAMMER_DCT:CustomDictionary = new CustomDictionary(true);
      
      private var throwHammers:Boolean;
      
      private var shootFireballs:Boolean;
      
      public var fbLev1:Number;
      
      public var fbLev2:Number;
      
      public var fbLev3:Number;
      
      private var stopMoving:Boolean;
      
      private var firstFB:Boolean = true;
      
      public var gotAxe:Boolean;
      
      private var singleFrameJump:Boolean;
      
      public function Bowser()
      {
         super();
         addProperty(new StatusProperty(PR_STOP_PAS,Simon.STOP_WATCH_STRENGTH));
         addProperty(new StatusProperty(PR_FREEZE_PAS,10));
         addProperty(new StatusProperty(StatusProperty.TYPE_KNOCK_BACK_PAS,10));
         stompable = false;
         level.bowser = this;
         forceDefaultDeath = true;
         dropsItems = false;
         sy = 400;
         scaleX = -1;
         vx = 0;
         vy = 0;
         removeHitTestableItem(HT_PLATFORM);
         this.JUMP_TMR.delay = int(Math.random() * (this.JUMP_TMR_DUR_MAX - this.JUMP_TMR_DUR_MIN) + this.JUMP_TMR_DUR_MIN);
         this.FB_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.fbTmrLsr);
         addTmr(this.FB_TMR);
         this.FB_DEL_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.fbDelTmrLsr);
         addTmr(this.FB_DEL_TMR);
         this.JUMP_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.jumpTmrLsr);
         addTmr(this.JUMP_TMR);
         this.JUMP_TMR.start();
         this.AFTER_FB_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.afterFbTmrHandler,false,0,true);
         this.stopMoving = false;
         setState(ST_NORMAL);
         GraphicsManager.INSTANCE.addEventListener(CustomEvents.ENEMY_SKIN_CHANGE,this.enemySkinChangeHandler,false,0,true);
      }
      
      protected function enemySkinChangeHandler(param1:Event) : void
      {
         if(frameIsEmpty(FL_JUMP))
         {
            this.singleFrameJump = false;
         }
         else
         {
            this.singleFrameJump = true;
         }
      }
      
      override protected function updDirection() : void
      {
      }
      
      override public function initiate() : void
      {
         super.initiate();
         jumpPwr = 280;
         this.fbLev1 = y - TILE_SIZE * 0.5;
         this.fbLev2 = y - TILE_SIZE * 1.5;
         this.fbLev3 = y - TILE_SIZE * 2.5;
         vx = -this.WALK_SPEED;
      }
      
      override protected function overwriteInitialStats() : void
      {
         if(level.worldNum < 6)
         {
            this.shootFireballs = true;
         }
         else if(level.worldNum == 6 || level.worldNum == 7)
         {
            this.throwHammers = true;
         }
         else
         {
            this.shootFireballs = true;
            this.throwHammers = true;
         }
         if(this.throwHammers)
         {
            this.THROW_HAMMER_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.throwHammerTmrHandler,false,0,true);
            addTmr(this.THROW_HAMMER_TMR);
         }
         if(player is MarioBase)
         {
            _health = DamageValue.MARIO_FIRE_BALL * this.NUM_FIREBALLS_TO_KILL;
         }
         else if(this.shootFireballs && !this.throwHammers)
         {
            _health = HealthValue.BOWSER_NORMAL;
         }
         else if(this.throwHammers && !this.shootFireballs)
         {
            _health = HealthValue.BOWSER_HAMMER;
         }
         else
         {
            _health = HealthValue.BOWSER_FIREBALL_HAMMER;
         }
         scoreAttack = ScoreValue.BOWSER_ATTACK;
         scoreBelow = ScoreValue.BOWSER_BELOW;
         scoreStar = ScoreValue.BOWSER_STAR;
         scoreStomp = ScoreValue.BOWSER_STOMP;
         super.overwriteInitialStats();
      }
      
      public function getXMaxMin(param1:Number, param2:Number) : void
      {
         this.xMax = param1 + TILE_SIZE;
         this.xMin = param2 + TILE_SIZE * 3;
      }
      
      override protected function updateStats() : void
      {
         var _loc1_:int = 0;
         super.updateStats();
         if(onGround && !this.JUMP_TMR.running)
         {
            _loc1_ = int(Math.random() * (this.JUMP_TMR_DUR_MAX - this.JUMP_TMR_DUR_MIN) + this.JUMP_TMR_DUR_MIN);
            this.JUMP_TMR.delay = _loc1_;
            this.JUMP_TMR.start();
         }
         if(onGround && player.nx > nx && !this.gotAxe)
         {
            vx = this.RUN_SPEED;
            scaleX = 1;
            setState(ST_CHASE);
         }
         else if(!this.gotAxe)
         {
            setState(ST_NORMAL);
            scaleX = -1;
            if(vx < -this.WALK_SPEED)
            {
               vx = -this.WALK_SPEED;
            }
            else if(vx > this.WALK_SPEED)
            {
               vx = this.WALK_SPEED;
            }
            if(this.throwHammers)
            {
               if(vx == 0 && cState != ST_DIE && !this.shootFireballs)
               {
                  vx = -this.WALK_SPEED;
               }
               if(!this.THROW_HAMMER_TMR.running)
               {
                  this.THROW_HAMMER_TMR.start();
               }
            }
            if(this.shootFireballs)
            {
               if(!this.FB_TMR.running && this.FB_DCT.length < MAX_FIREBALLS_ON_SCREEN)
               {
                  this.startFbTmr();
               }
            }
         }
         if(onGround && vx != 0 && stopAnim && !this.AFTER_FB_TMR.running)
         {
            setPlayFrame(FL_WALK_START);
         }
         else if(this.singleFrameJump && !onGround && !this.stopMoving && !this.AFTER_FB_TMR.running && !stopAnim)
         {
            setStopFrame(FL_JUMP);
         }
         if(hLft <= this.xMin)
         {
            if(vx < 0)
            {
               vx = -vx;
            }
            nx = this.xMin + hWidth * 0.5;
         }
         else if(hRht >= this.xMax)
         {
            if(vx > 0)
            {
               if(cState == ST_NORMAL)
               {
                  vx = -vx;
               }
               else
               {
                  vx = 0;
               }
            }
            nx = this.xMax - hWidth * 0.5;
         }
      }
      
      public function startFbTmr() : void
      {
         if(this.firstFB)
         {
            this.fbTmrLsr(new TimerEvent(TimerEvent.TIMER_COMPLETE));
         }
         this.firstFB = false;
         var _loc1_:int = int(Math.random() * (this.FB_TMR_DUR_MAX - this.FB_TMR_DUR_MIN) + this.FB_TMR_DUR_MIN);
         this.FB_TMR.reset();
         this.FB_TMR.delay = _loc1_;
         this.FB_TMR.start();
      }
      
      private function fbTmrLsr(param1:TimerEvent) : void
      {
         this.FB_TMR.reset();
         if(onScreen)
         {
            if(cState == ST_NORMAL && this.shootFireballs)
            {
               if(this.FB_DEL_TMR.running)
               {
                  this.FB_DEL_TMR.reset();
               }
               this.FB_DEL_TMR.start();
               this.stopMoving = true;
               stopAnim = true;
               vx = 0;
               setStopFrame(FL_PREPARE_FIRE);
            }
         }
         else
         {
            if(this.FB_DEL_TMR.running)
            {
               this.FB_DEL_TMR.reset();
            }
            this.FB_DEL_TMR.start();
         }
      }
      
      private function fbDelTmrLsr(param1:TimerEvent) : void
      {
         var _loc2_:BowserFireBall = null;
         this.FB_DEL_TMR.reset();
         if(onScreen)
         {
            if(cState == ST_NORMAL && this.FB_DCT.length < MAX_FIREBALLS_ON_SCREEN && this.shootFireballs)
            {
               _loc2_ = new BowserFireBall(this);
               this.FB_DCT.addItem(_loc2_);
               level.addToLevel(_loc2_);
            }
            this.stopMoving = false;
            stopAnim = false;
            if(this.singleFrameJump)
            {
               setStopFrame(FL_BREATHE_FIRE);
               this.AFTER_FB_TMR.start();
            }
            else
            {
               setPlayFrame(FL_WALK_START);
            }
            if(cState == ST_NORMAL)
            {
               if(Math.random() < 0.4)
               {
                  vx = -this.WALK_SPEED;
               }
               else
               {
                  vx = this.WALK_SPEED;
               }
            }
         }
         else if(this.FB_DCT.length < MAX_FIREBALLS_ON_SCREEN)
         {
            _loc2_ = new BowserFireBall(this);
            this.FB_DCT.addItem(_loc2_);
            level.addToLevel(_loc2_);
         }
      }
      
      protected function afterFbTmrHandler(param1:Event) : void
      {
         if(onGround || !this.singleFrameJump)
         {
            setPlayFrame(FL_WALK_START);
         }
         else
         {
            setStopFrame(FL_JUMP);
         }
      }
      
      private function throwHammerTmrHandler(param1:TimerEvent) : void
      {
         var _loc2_:Hammer = null;
         if(!this.throwHammers)
         {
            return;
         }
         this.THROW_HAMMER_TMR.reset();
         this.THROW_HAMMER_TMR.delay = int(Math.random() * (this.THROW_HAMMER_TMR_DUR_MAX - this.THROW_HAMMER_TMR_DUR_MIN) + this.THROW_HAMMER_TMR_DUR_MIN);
         if(cState == ST_NORMAL && this.HAMMER_DCT.length < this.MAX_HAMMERS_ON_SCREEN)
         {
            _loc2_ = new Hammer(this.HAMMER_TYPE,this);
            this.HAMMER_DCT.addItem(_loc2_);
            level.addToLevel(_loc2_);
         }
      }
      
      public function breakBridgeStart() : void
      {
         setState(ST_BREAKING_BRIDGE);
         setStopFrame(FL_FALL_START);
         vx = 0;
         vy = 0;
         defyGrav = true;
         stopHit = true;
         this.gotAxe = true;
      }
      
      public function breakBridgeInc() : void
      {
         var _loc1_:String = currentLabel;
         if(_loc1_ == FL_FALL_END)
         {
            setStopFrame(FL_FALL_START);
         }
         else
         {
            setStopFrame(FL_FALL_END);
         }
      }
      
      public function breakBridgeEnd() : void
      {
         defyGrav = false;
         stopAnim = true;
         SND_MNGR.playSoundNow(SoundNames.SFX_GAME_BOWSER_FALL);
      }
      
      private function jumpTmrLsr(param1:TimerEvent) : void
      {
         this.JUMP_TMR.reset();
         if(onGround && cState == ST_NORMAL)
         {
            this.jump();
         }
      }
      
      private function jump() : void
      {
         vy = -jumpPwr;
         onGround = false;
         if(this.singleFrameJump && !this.AFTER_FB_TMR.running)
         {
            setStopFrame(FL_JUMP);
         }
      }
      
      override public function checkFrame() : void
      {
         var _loc1_:int = currentFrame;
         if(_loc1_ == getLabNum(FL_WALK_END) + 1)
         {
            setPlayFrame(FL_WALK_START);
         }
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         this.FB_TMR.removeEventListener(TimerEvent.TIMER_COMPLETE,this.fbTmrLsr);
         this.FB_DEL_TMR.removeEventListener(TimerEvent.TIMER_COMPLETE,this.fbDelTmrLsr);
         this.JUMP_TMR.removeEventListener(TimerEvent.TIMER_COMPLETE,this.jumpTmrLsr);
         this.AFTER_FB_TMR.removeEventListener(TimerEvent.TIMER_COMPLETE,this.afterFbTmrHandler);
         if(this.throwHammers)
         {
            this.THROW_HAMMER_TMR.removeEventListener(TimerEvent.TIMER_COMPLETE,this.throwHammerTmrHandler);
         }
         GraphicsManager.INSTANCE.removeEventListener(CustomEvents.ENEMY_SKIN_CHANGE,this.enemySkinChangeHandler);
      }
      
      override public function rearm() : void
      {
         super.rearm();
         level.bowser = this;
      }
      
      override public function die(param1:LevObj = null) : void
      {
         stopTimers();
         setStopFrame(FL_DIE + level.worldNum.toString());
         super.die(param1);
         vx = 0;
         SND_MNGR.playSound(SoundNames.SFX_GAME_BOWSER_FALL);
         SND_MNGR.removeStoredSound(SoundNames.SFX_GAME_KICK_SHELL);
      }
      
      override protected function reattachLsrs() : void
      {
         super.reattachLsrs();
         this.FB_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.fbTmrLsr);
         this.FB_DEL_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.fbDelTmrLsr);
         this.JUMP_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.jumpTmrLsr);
         if(this.throwHammers)
         {
            this.THROW_HAMMER_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.throwHammerTmrHandler,false,0,true);
         }
      }
      
      override public function cleanUp() : void
      {
         super.cleanUp();
         if(level.bowser == this)
         {
            level.bowser = null;
         }
      }
   }
}
