package com.smbc.enemies
{
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.characters.Character;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.EnemyInfo;
   import com.smbc.data.HealthValue;
   import com.smbc.data.HitTester;
   import com.smbc.data.ScoreValue;
   import com.smbc.data.SoundNames;
   import com.smbc.graphics.StarBurst;
   import com.smbc.ground.Brick;
   import com.smbc.ground.Ground;
   import com.smbc.interfaces.ICustomTimer;
   import com.smbc.main.LevObj;
   import flash.events.TimerEvent;
   
   public class KoopaGreen extends Enemy
   {
      
      public static const ENEMY_NUM:int = EnemyInfo.KoopaGreen;
      
      protected static const FL_SHELL_SPIN_END:String = "shellSpinEnd";
      
      protected static const FL_SHELL_SPIN_START:String = "shellSpinStart";
      
      public static const ST_KICKED:String = "kicked";
      
      private static const HEALTH_WALKING:int = HealthValue.KOOPA_WALKING;
      
      private static const HEALTH_SHELL:int = 200;
      
      private static const BOUNCE_GRAVITY:int = 1500;
       
      
      private const FT_VERT:String = "vetical";
      
      private const FT_HORZ:String = "horizontal";
      
      private const FT_JUMP:String = "jump";
      
      protected const FL_SHELL:String = "shell";
      
      protected const FL_SHELL_FEET:String = "shellFeet";
      
      protected const FL_WALK_END:String = "walkEnd";
      
      protected const FL_WALK_START:String = "walkStart";
      
      private const FL_WING_END:String = "wingEnd";
      
      private const FL_WING_START:String = "wingStart";
      
      public const ST_FLY:String = "fly";
      
      public const ST_WALK:String = "walk";
      
      protected const ST_SHELL:String = "shell";
      
      private const BOUNCE_AMT:int = 350;
      
      private var bounced:Boolean;
      
      protected const KICK_SPEED_GROUND:int = 360;
      
      protected const KICK_SPEED_AIR:int = 190;
      
      private const HORZ_FLY_VERT_MOVEMENT_SPEED:int = 25;
      
      private var flyType:String;
      
      protected const SHELL_TMR_1:CustomTimer = new CustomTimer(3800,1);
      
      protected const SHELL_TMR_2:CustomTimer = new CustomTimer(900,1);
      
      protected const SHELL_TMR_3:CustomTimer = new CustomTimer(250,1);
      
      private const SHOW_LEGS_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_VERY_SLOW_TMR;
      
      public const NO_HIT_SHELL_TMR:CustomTimer = new CustomTimer(250,1);
      
      public var red:Boolean;
      
      public var groundInFront:Boolean = true;
      
      protected var numContEnemiesHit:int;
      
      private const HIT_WALL_SND_STR:String = SoundNames.SFX_GAME_HIT_CEILING;
      
      protected var waveAngle:Number = 0;
      
      protected var waveSpeed:Number = 1.5;
      
      protected var waveRange:Number = 85;
      
      private var yTop:Number;
      
      private var yBot:Number;
      
      protected var centerX:int;
      
      protected var centerY:int;
      
      public function KoopaGreen(param1:String)
      {
         if(param1.indexOf("enemyKoopaGreen") != -1)
         {
            colorNum = 1;
         }
         else if(param1.indexOf("enemyKoopaRed") != -1)
         {
            this.red = true;
            colorNum = 2;
         }
         else if(param1.indexOf("enemyKoopaBlue") != -1)
         {
            colorNum = 3;
         }
         else if(param1.indexOf("enemyWingedKoopaGreen") != -1)
         {
            setState(this.ST_FLY);
            this.flyType = this.FT_JUMP;
            colorNum = 1;
         }
         else if(param1.indexOf("enemyWingedKoopaHorizontalGreen") != -1)
         {
            setState(this.ST_FLY);
            this.flyType = this.FT_HORZ;
            defyGrav = true;
            colorNum = 1;
         }
         else if(param1.indexOf("enemyWingedKoopaRed") != -1)
         {
            setState(this.ST_FLY);
            this.flyType = this.FT_VERT;
            this.red = true;
            defyGrav = true;
            colorNum = 2;
         }
         else if(param1.indexOf("enemyWingedKoopaBlue") != -1)
         {
            setState(this.ST_FLY);
            this.flyType = this.FT_JUMP;
            colorNum = 3;
         }
         super();
         stompKills = false;
      }
      
      override protected function overwriteInitialStats() : void
      {
         if(cState == this.ST_FLY)
         {
            _health = HealthValue.KOOPA_FLYING;
         }
         else
         {
            _health = HealthValue.KOOPA_WALKING;
         }
         scoreAttack = ScoreValue.KOOPA_ATTACK;
         scoreBelow = ScoreValue.KOOPA_BELOW;
         scoreStar = ScoreValue.KOOPA_STAR;
         scoreStomp = ScoreValue.KOOPA_STOMP;
         super.overwriteInitialStats();
      }
      
      override protected function takeDamage(param1:int, param2:LevObj = null) : void
      {
         super.takeDamage(param1,param2);
         if(cState != ST_DIE && !getStatusEffect(STATFX_FREEZE))
         {
            if(_health <= HEALTH_SHELL && (cState == this.ST_FLY || cState == this.ST_WALK))
            {
               this.enterShell();
            }
            else if(_health <= HEALTH_WALKING && cState == this.ST_FLY)
            {
               this.startWalk(scaleX);
            }
         }
      }
      
      override public function setStats() : void
      {
         stompable = true;
         numColors = 3;
         xSpeed = defaultWalkSpeed;
         ySpeed = 400;
         gravity = enemyGravDef;
         vx = -xSpeed;
         vyMaxPsv = enemyVYMaxPsvDef;
         addTmr(this.NO_HIT_SHELL_TMR);
         this.NO_HIT_SHELL_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.noHitShellTmrHandler,false,0,true);
         addTmr(this.SHELL_TMR_1);
         this.SHELL_TMR_1.addEventListener(TimerEvent.TIMER_COMPLETE,this.shellTmr1Handler,false,0,true);
         addTmr(this.SHELL_TMR_2);
         this.SHELL_TMR_2.addEventListener(TimerEvent.TIMER_COMPLETE,this.shellTmr2Handler,false,0,true);
         addTmr(this.SHELL_TMR_3);
         this.SHELL_TMR_3.addEventListener(TimerEvent.TIMER_COMPLETE,this.shellTmr3Handler,false,0,true);
         if(cState == "fly")
         {
            if(this.flyType == this.FT_HORZ)
            {
               vx = 0;
               this.centerX = x;
               this.centerY = y;
               this.yTop = y - TILE_SIZE / 2;
               this.yBot = y + TILE_SIZE / 2;
               vy = -this.HORZ_FLY_VERT_MOVEMENT_SPEED;
               onGround = false;
            }
            else if(this.flyType == this.FT_VERT)
            {
               vx = 0;
               this.centerX = x;
               this.centerY = y;
               scaleX = -1;
               onGround = false;
            }
            setPlayFrame("wingStart");
         }
         else
         {
            setPlayFrame("walkStart");
            setState(this.ST_WALK);
         }
         super.setStats();
         if(cState == this.ST_FLY)
         {
            onGround = false;
         }
      }
      
      override protected function updateStats() : void
      {
         super.updateStats();
         var _loc1_:String = currentFrameLabel;
         if(cState == ST_KICKED)
         {
            if(onGround)
            {
               if(vx > 0)
               {
                  vx = this.KICK_SPEED_GROUND;
               }
               else
               {
                  vx = -this.KICK_SPEED_GROUND;
               }
            }
            else if(vx > 0)
            {
               vx = this.KICK_SPEED_AIR;
            }
            else
            {
               vx = -this.KICK_SPEED_AIR;
            }
         }
         else if(cState == this.ST_SHELL && _loc1_ != convLab(this.FL_SHELL) && _loc1_ != convLab(this.FL_SHELL_FEET))
         {
            setStopFrame(this.FL_SHELL);
         }
         if(cState == this.ST_SHELL && onGround)
         {
            vx = 0;
         }
      }
      
      override public function stomp() : void
      {
         if(this.NO_HIT_SHELL_TMR.running || cState == this.ST_SHELL || !player.canStomp)
         {
            return;
         }
         super.stomp();
         if(cState == this.ST_FLY)
         {
            this.startWalk();
         }
         else if((cState == this.ST_WALK || cState == ST_KICKED) && !this.NO_HIT_SHELL_TMR.running)
         {
            this.enterShell();
         }
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
         vx = defaultWalkSpeed;
         if(nx < param1.hMidX)
         {
            vx = -vx;
         }
         this.enterShell();
      }
      
      private function enterShell() : void
      {
         if(cState != ST_KICKED)
         {
            hitTestTypesDct.removeItem(HT_CHARACTER);
         }
         defyGrav = false;
         destroyOffScreen = false;
         setState(this.ST_SHELL);
         setStopFrame(this.FL_SHELL);
         stompable = false;
         this.SHELL_TMR_1.reset();
         this.SHELL_TMR_2.reset();
         this.SHELL_TMR_3.reset();
         this.SHELL_TMR_1.start();
         if(!this.bounced)
         {
            vx = 0;
         }
         this.bounced = false;
      }
      
      protected function shellTmr1Handler(param1:TimerEvent) : void
      {
         this.SHELL_TMR_1.reset();
         if(cState != this.ST_SHELL)
         {
            return;
         }
         ACTIVE_ANIM_TMRS_DCT.addItem(this.SHOW_LEGS_ANIM_TMR);
         this.SHELL_TMR_2.start();
      }
      
      private function shellTmr2Handler(param1:TimerEvent) : void
      {
         this.SHELL_TMR_2.reset();
         if(cState != this.ST_SHELL)
         {
            return;
         }
         this.SHELL_TMR_3.start();
      }
      
      private function shellTmr3Handler(param1:TimerEvent) : void
      {
         this.SHELL_TMR_3.reset();
         if(cState != this.ST_SHELL)
         {
            return;
         }
         if(mainAnimTmr != this.SHOW_LEGS_ANIM_TMR)
         {
            ACTIVE_ANIM_TMRS_DCT.removeItem(this.SHOW_LEGS_ANIM_TMR);
         }
         this.startWalk();
      }
      
      private function noHitShellTmrHandler(param1:TimerEvent) : void
      {
         this.NO_HIT_SHELL_TMR.reset();
      }
      
      private function startWalk(param1:int = 0) : void
      {
         defyGrav = false;
         destroyOffScreen = false;
         setPlayFrame(this.FL_WALK_START);
         if(stopUpdate)
         {
            stopAnim = true;
         }
         setState(this.ST_WALK);
         stompable = true;
         if(param1 == 1)
         {
            vx = xSpeed;
         }
         else if(param1 == -1)
         {
            vx = -xSpeed;
         }
         else if(scaleX > 0)
         {
            vx = xSpeed;
         }
         else
         {
            vx = -xSpeed;
         }
         if(!onGround)
         {
            vy = 0;
            if(player.nx > nx)
            {
               vx = xSpeed;
            }
            else
            {
               vx = -xSpeed;
            }
         }
         if(vx > 0)
         {
            scaleX = 1;
         }
         else
         {
            scaleX = -1;
         }
      }
      
      override protected function checkState() : void
      {
         var _loc1_:Number = NaN;
         if(!onGround)
         {
            if(cState == this.ST_FLY)
            {
               if(this.flyType == this.FT_VERT)
               {
                  ny = this.centerY + Math.sin(this.waveAngle) * this.waveRange;
                  this.waveAngle += this.waveSpeed * dt;
               }
               else if(this.flyType == this.FT_HORZ)
               {
                  _loc1_ = nx;
                  nx = this.centerX + Math.sin(this.waveAngle) * this.waveRange;
                  this.waveAngle += this.waveSpeed * dt;
                  if(nx > _loc1_)
                  {
                     scaleX = 1;
                  }
                  else
                  {
                     scaleX = -1;
                  }
                  if(ny <= this.yTop)
                  {
                     vy = this.HORZ_FLY_VERT_MOVEMENT_SPEED;
                  }
                  else if(ny >= this.yBot)
                  {
                     vy = -this.HORZ_FLY_VERT_MOVEMENT_SPEED;
                  }
               }
            }
            else
            {
               falling = true;
            }
         }
         else
         {
            if(cState == this.ST_FLY && this.flyType == this.FT_JUMP)
            {
               vy = -ySpeed;
            }
            else if(cState == this.ST_WALK)
            {
               if(falling)
               {
                  if(player.nx >= nx)
                  {
                     vx = xSpeed;
                  }
                  else
                  {
                     vx = -xSpeed;
                  }
               }
               if(this.red && !this.groundInFront)
               {
                  vx = -vx;
                  updDirection();
               }
            }
            falling = false;
         }
         this.groundInFront = false;
         super.checkState();
      }
      
      private function kickShell(param1:Character, param2:String) : void
      {
         var _loc3_:int = 0;
         if(this.SHELL_TMR_3.running)
         {
            _loc3_ = ScoreValue.KICK_SHELL_RIGHT_BEFORE_WALK;
         }
         else if(this.SHELL_TMR_2.running)
         {
            _loc3_ = ScoreValue.KICK_SHELL_WHILE_LEGS_ARE_OUT;
         }
         else if(player.numContStomps > 0)
         {
            _loc3_ = ScoreValue.KICK_SHELL_AFTER_STOMP;
         }
         else
         {
            _loc3_ = ScoreValue.KICK_SHELL_NORMAL;
         }
         this.SHELL_TMR_1.reset();
         this.SHELL_TMR_2.reset();
         this.SHELL_TMR_3.reset();
         stompable = true;
         level.scorePop(_loc3_,nx,hTop - SP_Y_OFFSET);
         stopUpdate = false;
         if(param1.nx >= nx)
         {
            vx = -this.KICK_SPEED_GROUND;
         }
         else
         {
            vx = this.KICK_SPEED_GROUND;
         }
         level.addToLevel(new StarBurst(this,StarBurst.TYPE_SHELL_KICK));
         setState(ST_KICKED);
         this.numContEnemiesHit = 0;
         if(mainAnimTmr != this.SHOW_LEGS_ANIM_TMR)
         {
            ACTIVE_ANIM_TMRS_DCT.removeItem(this.SHOW_LEGS_ANIM_TMR);
         }
         SND_MNGR.playSound(SFX_GAME_KICK_SHELL);
         setPlayFrame(FL_SHELL_SPIN_START);
         this.NO_HIT_SHELL_TMR.start();
         destroyOffScreen = true;
         hitTestTypesDct.addItem(HT_CHARACTER);
      }
      
      override public function groundOnSide(param1:Ground, param2:String) : void
      {
         super.groundOnSide(param1,param2);
         if(cState == "kicked" && !stopUpdate)
         {
            SND_MNGR.playSound(this.HIT_WALL_SND_STR);
            level.addToLevel(new StarBurst(this,StarBurst.TYPE_SHELL_WALL));
         }
      }
      
      override public function hitEnemy(param1:Enemy, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param1.cState == ST_DIE)
         {
            return;
         }
         if(cState == ST_KICKED)
         {
            level.addToLevel(new StarBurst(this,StarBurst.TYPE_SHELL_ENEMY));
            param1.die();
            ++this.numContEnemiesHit;
            switch(this.numContEnemiesHit)
            {
               case 1:
                  _loc3_ = ScoreValue.SHELL_KICK_SEQ_1;
                  break;
               case 2:
                  _loc3_ = ScoreValue.SHELL_KICK_SEQ_2;
                  break;
               case 3:
                  _loc3_ = ScoreValue.SHELL_KICK_SEQ_3;
                  break;
               case 4:
                  _loc3_ = ScoreValue.SHELL_KICK_SEQ_4;
                  break;
               case 5:
                  _loc3_ = ScoreValue.SHELL_KICK_SEQ_5;
                  break;
               case 6:
                  _loc3_ = ScoreValue.SHELL_KICK_SEQ_6;
                  break;
               case 7:
                  _loc3_ = ScoreValue.SHELL_KICK_SEQ_7;
                  break;
               default:
                  _loc3_ = ScoreValue.SHELL_KICK_SEQ_MAX;
            }
            level.scorePop(_loc3_,nx,hTop - SP_Y_OFFSET);
            return;
         }
         super.hitEnemy(param1,param2);
      }
      
      override public function checkFrame() : void
      {
         var _loc1_:int = currentFrame;
         if(cState == this.ST_WALK && _loc1_ == getLabNum("walkEnd") + 1)
         {
            setPlayFrame("walkStart");
         }
         else if(cState == "fly" && _loc1_ == getLabNum("wingEnd") + 1)
         {
            setPlayFrame("wingStart");
         }
         else if(cState == ST_KICKED && _loc1_ == getLabNum(FL_SHELL_SPIN_END) + 1)
         {
            setPlayFrame(FL_SHELL_SPIN_START);
         }
      }
      
      override public function hitCharacter(param1:Character, param2:String) : void
      {
         if(cState == this.ST_SHELL)
         {
            this.kickShell(param1,param2);
         }
         super.hitCharacter(param1,param2);
      }
      
      override public function hitGround(param1:Ground, param2:String) : void
      {
         var _loc3_:Brick = null;
         if(cState == ST_KICKED && param1 is Brick && (param2 == HitTester.SIDE_LEFT || param2 == HitTester.SIDE_RIGHT))
         {
            _loc3_ = param1 as Brick;
            _loc3_.breakBrick();
         }
         super.hitGround(param1,param2);
      }
      
      override public function die(param1:LevObj = null) : void
      {
         setStopFrame(this.FL_SHELL);
         super.die(param1);
      }
      
      override public function animate(param1:ICustomTimer) : Boolean
      {
         var _loc3_:String = null;
         var _loc2_:Boolean = super.animate(param1);
         if(param1 == this.SHOW_LEGS_ANIM_TMR && (this.SHELL_TMR_2.running || this.SHELL_TMR_3.running))
         {
            _loc3_ = currentLabel;
            if(_loc3_ == convLab(this.FL_SHELL))
            {
               setStopFrame(this.FL_SHELL_FEET);
            }
            else if(_loc3_ == convLab(this.FL_SHELL_FEET))
            {
               setStopFrame(this.FL_SHELL);
            }
         }
         return _loc2_;
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         this.SHELL_TMR_1.removeEventListener(TimerEvent.TIMER_COMPLETE,this.shellTmr1Handler);
         this.SHELL_TMR_2.removeEventListener(TimerEvent.TIMER_COMPLETE,this.shellTmr2Handler);
         this.SHELL_TMR_3.removeEventListener(TimerEvent.TIMER_COMPLETE,this.shellTmr3Handler);
         this.NO_HIT_SHELL_TMR.removeEventListener(TimerEvent.TIMER_COMPLETE,this.noHitShellTmrHandler);
      }
      
      override protected function reattachLsrs() : void
      {
         super.reattachLsrs();
         this.SHELL_TMR_1.addEventListener(TimerEvent.TIMER_COMPLETE,this.shellTmr1Handler,false,0,true);
         this.SHELL_TMR_2.addEventListener(TimerEvent.TIMER_COMPLETE,this.shellTmr2Handler,false,0,true);
         this.SHELL_TMR_3.addEventListener(TimerEvent.TIMER_COMPLETE,this.shellTmr3Handler,false,0,true);
         this.NO_HIT_SHELL_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.noHitShellTmrHandler,false,0,true);
      }
   }
}
