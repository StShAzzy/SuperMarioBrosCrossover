package com.smbc.enemies
{
   import com.explodingRabbit.cross.gameplay.statusEffects.StatusProperty;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.Cheats;
   import com.smbc.data.EnemyInfo;
   import com.smbc.data.HealthValue;
   import com.smbc.data.LevelTypes;
   import com.smbc.data.ScoreValue;
   import com.smbc.data.SoundNames;
   import com.smbc.events.CustomEvents;
   import com.smbc.ground.Brick;
   import com.smbc.ground.Ground;
   import com.smbc.level.Level;
   import com.smbc.main.LevObj;
   import com.smbc.messageBoxes.MenuBoxItems;
   import com.smbc.projectiles.Hammer;
   import flash.events.Event;
   import flash.events.TimerEvent;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol245")]
   public class HammerBro extends Enemy
   {
      
      public static const ENEMY_NUM:int = EnemyInfo.HammerBro;
      
      private static const CHASE_LABEL_STRING:String = "Chase";
      
      private static const FLY_SPEED:int = 1000;
       
      
      private const HAMMER_COLOR_BLACK:String = Hammer.TYPE_NORMAL;
      
      private const JUMP_TMR:CustomTimer = new CustomTimer(1,1);
      
      private const JUMP_TMR_DUR_MIN:int = 600;
      
      private const JUMP_TMR_DUR_MAX:int = 2000;
      
      private const HAMMER_TMR:CustomTimer = new CustomTimer(1,1);
      
      private const HAMMER_TMR_DUR_MIN:int = 300;
      
      private const HAMMER_TMR_DUR_MAX:int = 1200;
      
      private const HAMMER_DEL_TMR:CustomTimer = new CustomTimer(250,1);
      
      private const CHASE_TMR_DUR:int = 27000;
      
      private var chaseSpeed:int = 65;
      
      private const WALK_SPEED:int = 30;
      
      private const ST_CHASE:String = "chase";
      
      private const ST_NORMAL:String = "normal";
      
      private var hammerColor:String;
      
      private var chase:Boolean;
      
      private var chaseTmr:CustomTimer;
      
      private var smallJumpPwr:int;
      
      public var passThroughGround:Boolean;
      
      private var jumpedHigh:Boolean;
      
      private var jumped:Boolean;
      
      private var cannotPassThroughGround:Boolean;
      
      private var impassableGroundBelow:Boolean;
      
      private var startJumpLoc:Number;
      
      private var xWaveLeft:Number;
      
      private var xWaveRight:Number;
      
      private var evil:Boolean;
      
      private var flying:Boolean;
      
      public function HammerBro(param1:String = null, param2:Boolean = false)
      {
         this.hammerColor = this.HAMMER_COLOR_BLACK;
         if(Boolean(param1) && param1.indexOf("enemyHamBroBlue") != -1)
         {
            colorNum = 2;
         }
         else
         {
            colorNum = 1;
         }
         var _loc3_:String = Level.levelInstance.type;
         if(_loc3_ == LevelTypes.UNDER_GROUND || _loc3_ == LevelTypes.CASTLE)
         {
            this.cannotPassThroughGround = true;
            colorNum = 2;
         }
         super();
         if(param1 != null && param1.indexOf(CHASE_LABEL_STRING) != -1)
         {
            this.chase = true;
         }
         this.flying = param2;
         stompable = true;
         numColors = 2;
         jumpPwr = 625;
         this.smallJumpPwr = 200;
         gravity = 1250;
         vyMaxPsv = 500;
         scaleX = -1;
         vx = this.WALK_SPEED;
         if(param2)
         {
            vy = -FLY_SPEED;
            removeHitTestableItem(HT_ENEMY);
         }
         else
         {
            vy = 0;
         }
         addTmr(this.HAMMER_TMR);
         this.HAMMER_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.hammerTmrLsr);
         addTmr(this.HAMMER_DEL_TMR);
         this.HAMMER_DEL_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.hammerDelTmrLsr);
         this.JUMP_TMR.delay = int(Math.random() * (this.JUMP_TMR_DUR_MAX - this.JUMP_TMR_DUR_MIN) + this.JUMP_TMR_DUR_MIN);
         addTmr(this.JUMP_TMR);
         this.JUMP_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.jumpTmrLsr);
         this.JUMP_TMR.start();
         if(!this.chase)
         {
            this.chaseTmr = new CustomTimer(this.CHASE_TMR_DUR,1);
            addTmr(this.chaseTmr);
            this.chaseTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.chaseTmrHandler,false,0,true);
            this.chaseTmr.start();
         }
         setPlayFrame("walk-1");
         setState(this.ST_NORMAL);
         addProperty(new StatusProperty(StatusProperty.TYPE_KNOCK_BACK_PAS,10));
         var _loc4_:String = CustomEvents.MSG_BX_CHOOSE_ITEM + MenuBoxItems.EVIL_HAMMER_BROS;
         EVENT_MNGR.addEventListener(_loc4_,this.evilHammerBrosHandler,false,0,true);
         this.evilHammerBrosHandler(new Event(_loc4_));
      }
      
      override protected function updDirection() : void
      {
      }
      
      override protected function overwriteInitialStats() : void
      {
         _health = HealthValue.HAMMER_BRO;
         scoreAttack = ScoreValue.HAMMER_BRO_ATTACK;
         scoreBelow = ScoreValue.HAMMER_BRO_BELOW;
         scoreStar = ScoreValue.HAMMER_BRO_STAR;
         scoreStomp = ScoreValue.HAMMER_BRO_STOMP;
         super.overwriteInitialStats();
         this.chaseSpeed = defaultWalkSpeed;
      }
      
      override public function initiate() : void
      {
         super.initiate();
         this.xWaveLeft = x - TILE_SIZE * 0.5;
         this.xWaveRight = x + TILE_SIZE * 0.5;
         if(this.flying)
         {
            onGround = false;
            dosLft = true;
         }
      }
      
      override public function stomp() : void
      {
         if(cState == ST_DIE)
         {
            return;
         }
         player.hit(this,"bottom");
         super.stomp();
         if(!player.canStomp)
         {
            return;
         }
         this.die();
         SND_MNGR.removeStoredSound(SoundNames.SFX_GAME_KICK_SHELL);
         vx = 0;
         vy = 0;
      }
      
      override protected function updateStats() : void
      {
         var _loc1_:int = 0;
         super.updateStats();
         if(this.flying && onGround && vy == 0)
         {
            this.xWaveLeft = nx - TILE_SIZE * 0.5;
            this.xWaveRight = nx + TILE_SIZE * 0.5;
            this.flying = false;
            addHitTestableItem(HT_ENEMY);
         }
         if(cState != ST_DIE)
         {
            if(onGround)
            {
               stopAnim = false;
               this.jumped = false;
               if(!this.JUMP_TMR.running)
               {
                  this.JUMP_TMR.delay = int(Math.random() * (this.JUMP_TMR_DUR_MAX - this.JUMP_TMR_DUR_MIN) + this.JUMP_TMR_DUR_MIN);
                  this.JUMP_TMR.start();
               }
            }
            else
            {
               stopAnim = true;
            }
            if(!this.HAMMER_TMR.running && !this.HAMMER_DEL_TMR.running)
            {
               _loc1_ = int(Math.random() * (this.HAMMER_TMR_DUR_MAX - this.HAMMER_TMR_DUR_MIN) + this.HAMMER_TMR_DUR_MIN);
               this.HAMMER_TMR.delay = _loc1_;
               this.HAMMER_TMR.start();
            }
            if(!this.flying)
            {
               if(player.hRht < nx)
               {
                  if(this.chase || this.evil)
                  {
                     vx = -this.chaseSpeed;
                     setState(this.ST_CHASE);
                  }
                  else
                  {
                     setState(this.ST_NORMAL);
                  }
                  if(player.hRht < nx)
                  {
                     scaleX = -1;
                  }
               }
               else if(player.hLft > nx)
               {
                  if(this.evil)
                  {
                     vx = this.chaseSpeed;
                     setState(this.ST_CHASE);
                  }
                  else if(cState == this.ST_CHASE)
                  {
                     setState(this.ST_NORMAL);
                     this.xWaveLeft = nx - TILE_SIZE * 0.5;
                     this.xWaveRight = nx + TILE_SIZE * 0.5;
                  }
                  if(player.hRht > nx)
                  {
                     scaleX = 1;
                  }
               }
               else
               {
                  if(this.evil)
                  {
                     vx = 0;
                     setState(this.ST_CHASE);
                  }
                  else if(cState == this.ST_CHASE)
                  {
                     setState(this.ST_NORMAL);
                     this.xWaveLeft = nx - TILE_SIZE * 0.5;
                     this.xWaveRight = nx + TILE_SIZE * 0.5;
                  }
                  if(player.nx < nx)
                  {
                     scaleX = -1;
                  }
                  else
                  {
                     scaleX = 1;
                  }
               }
               if(cState == this.ST_NORMAL)
               {
                  if(vx < -this.WALK_SPEED)
                  {
                     vx = -this.WALK_SPEED;
                  }
                  else if(vx > this.WALK_SPEED)
                  {
                     vx = this.WALK_SPEED;
                  }
                  if(nx < this.xWaveLeft)
                  {
                     nx = this.xWaveLeft;
                     vx = -vx;
                  }
                  else if(nx > this.xWaveRight)
                  {
                     nx = this.xWaveRight;
                     vx = -vx;
                  }
               }
               if(this.jumpedHigh && vy < 0)
               {
                  this.passThroughGround = true;
               }
               else if(!this.jumpedHigh && this.jumped && vy > 0)
               {
                  this.passThroughGround = true;
               }
               else
               {
                  this.passThroughGround = false;
               }
               if(ny - this.startJumpLoc > TILE_SIZE * 2 || ny > GLOB_STG_BOT - TILE_SIZE * 2.9)
               {
                  this.passThroughGround = false;
               }
               if(this.cannotPassThroughGround)
               {
                  this.passThroughGround = false;
               }
            }
            else
            {
               if(vy < 0)
               {
                  this.passThroughGround = true;
               }
               else
               {
                  this.passThroughGround = false;
               }
               if(this.JUMP_TMR.running)
               {
                  this.JUMP_TMR.reset();
               }
            }
         }
         if(wallOnLeft || wallOnRight)
         {
            this.passThroughGround = false;
         }
         if(this.passThroughGround)
         {
            removeHitTestableItem(HT_GROUND_NON_BRICK);
            removeHitTestableItem(HT_BRICK);
         }
         else
         {
            addHitTestableItem(HT_GROUND_NON_BRICK);
            addHitTestableItem(HT_BRICK);
         }
      }
      
      private function hammerTmrLsr(param1:TimerEvent) : void
      {
         this.HAMMER_TMR.reset();
         this.HAMMER_DEL_TMR.start();
         if(currentFrameLabel == convLab("walk-1"))
         {
            setStopFrame("throw-1");
         }
         else if(currentFrameLabel == convLab("walk-2"))
         {
            setStopFrame("throw-2");
         }
      }
      
      private function hammerDelTmrLsr(param1:TimerEvent) : void
      {
         this.HAMMER_DEL_TMR.reset();
         if(cState != ST_DIE)
         {
            if(currentFrameLabel == convLab("throw-1"))
            {
               setStopFrame("walk-1");
            }
            else if(currentFrameLabel == convLab("throw-2"))
            {
               setStopFrame("walk-2");
            }
            level.addToLevel(new Hammer(this.hammerColor,this));
         }
      }
      
      private function jumpTmrLsr(param1:TimerEvent) : void
      {
         if(onGround)
         {
            this.jump();
         }
         this.JUMP_TMR.reset();
      }
      
      private function jump() : void
      {
         var highJump:Function = function():void
         {
            vy = -jumpPwr;
            onGround = false;
            jumpedHigh = true;
            jumped = true;
         };
         var lowJump:Function = function():void
         {
            vy = -smallJumpPwr;
            onGround = false;
            jumpedHigh = false;
            jumped = true;
         };
         if(ny == GLOB_STG_BOT - TILE_SIZE * 2 || this.cannotPassThroughGround || this.impassableGroundBelow)
         {
            highJump();
         }
         else if(ny == GLOB_STG_TOP + TILE_SIZE * 5)
         {
            lowJump();
         }
         else if(Math.random() >= 0.5)
         {
            highJump();
         }
         else
         {
            lowJump();
         }
         this.startJumpLoc = ny;
      }
      
      private function chaseTmrHandler(param1:TimerEvent) : void
      {
         this.chaseTmr.stop();
         this.chaseTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.chaseTmrHandler);
         removeTmr(this.chaseTmr);
         this.chaseTmr = null;
         this.chase = true;
      }
      
      override public function groundBelow(param1:Ground) : void
      {
         super.groundBelow(param1);
         if(param1 is Brick)
         {
            this.impassableGroundBelow = false;
         }
         else
         {
            this.impassableGroundBelow = true;
         }
      }
      
      override public function checkFrame() : void
      {
         if(!stopAnim)
         {
            if(currentFrame == getLabNum("walk-2") + 1)
            {
               setPlayFrame("walk-1");
            }
            else if(currentFrame == getLabNum("throw-2") + 1)
            {
               setPlayFrame("throw-1");
            }
         }
      }
      
      override public function die(param1:LevObj = null) : void
      {
         super.die(param1);
         ++STAT_MNGR.numHammerBrosDefeated;
      }
      
      private function evilHammerBrosHandler(param1:Event) : void
      {
         this.evil = Cheats.evilHammerBros;
         if(this.evil)
         {
            setState(this.ST_CHASE);
         }
         else if(this.chaseTmr)
         {
            setState(this.ST_NORMAL);
            this.xWaveLeft = nx - TILE_SIZE * 0.5;
            this.xWaveRight = nx + TILE_SIZE * 0.5;
         }
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         if(Boolean(this.JUMP_TMR) && this.JUMP_TMR.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.JUMP_TMR.removeEventListener(TimerEvent.TIMER_COMPLETE,this.jumpTmrLsr);
         }
         if(Boolean(this.HAMMER_TMR) && this.HAMMER_TMR.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.HAMMER_TMR.removeEventListener(TimerEvent.TIMER_COMPLETE,this.hammerTmrLsr);
         }
         if(Boolean(this.HAMMER_DEL_TMR) && this.HAMMER_DEL_TMR.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.HAMMER_DEL_TMR.removeEventListener(TimerEvent.TIMER_COMPLETE,this.hammerDelTmrLsr);
         }
         if(this.chaseTmr)
         {
            this.chaseTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.chaseTmrHandler);
         }
         EVENT_MNGR.removeEventListener(CustomEvents.MSG_BX_CHOOSE_ITEM + MenuBoxItems.EVIL_HAMMER_BROS,this.evilHammerBrosHandler);
      }
      
      override protected function reattachLsrs() : void
      {
         super.reattachLsrs();
         if(Boolean(this.JUMP_TMR) && !this.JUMP_TMR.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.JUMP_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.jumpTmrLsr);
         }
         if(Boolean(this.HAMMER_TMR) && !this.HAMMER_TMR.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.HAMMER_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.hammerTmrLsr);
         }
         if(Boolean(this.HAMMER_DEL_TMR) && !this.HAMMER_DEL_TMR.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.HAMMER_DEL_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.hammerDelTmrLsr);
         }
         if(this.chaseTmr)
         {
            this.chaseTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.chaseTmrHandler,false,0,true);
         }
         var _loc1_:String = CustomEvents.MSG_BX_CHOOSE_ITEM + MenuBoxItems.EVIL_HAMMER_BROS;
         EVENT_MNGR.addEventListener(_loc1_,this.evilHammerBrosHandler,false,0,true);
         this.evilHammerBrosHandler(new Event(_loc1_));
      }
   }
}
