package com.smbc.enemies
{
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.characters.base.MarioBase;
   import com.smbc.data.Cheats;
   import com.smbc.data.EnemyInfo;
   import com.smbc.data.HealthValue;
   import com.smbc.data.ScoreValue;
   import com.smbc.level.FlyingCheepSpawner;
   import com.smbc.main.GlobVars;
   import com.smbc.main.LevObj;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   
   public class CheepFast extends Enemy
   {
      
      public static const ENEMY_NUM:int = EnemyInfo.CheepFast;
      
      private static const FLYING_JUMP_PWR:int = 555;
      
      private static const VY_BOUNCY_PITS:int = -FLYING_JUMP_PWR;
       
      
      protected var ranLocBuf:int = 5;
      
      protected var color:String;
      
      protected var moveType:String;
      
      protected var yWaveMid:Number;
      
      protected var yWaveTop:Number;
      
      protected var yWaveBot:Number;
      
      public var flying:Boolean;
      
      private const MAX_HORZ_FLY_SPEED:int = 250;
      
      private const MIN_HORZ_FLY_SPEED:int = 50;
      
      private const FLYING_GRAVITY:int = 375;
      
      private const FLYING_GRAVITY_DIE:int = 650;
      
      protected var fcs:FlyingCheepSpawner;
      
      private var destroyTmr:CustomTimer;
      
      private var destroyTmrDur:int = 250;
      
      public function CheepFast(param1:String, param2:FlyingCheepSpawner = null)
      {
         super();
         if(param1.indexOf("enemyCheepRed") != -1)
         {
            colorNum = 1;
            this.color = "red";
            this.calcMovement();
         }
         else if(param1.indexOf("enemyCheepGreen") != -1)
         {
            colorNum = 2;
            this.color = "gray";
            this.calcMovement();
         }
         else if(param1.indexOf("enemyCheepGray") != -1)
         {
            colorNum = 3;
            this.color = "gray";
            this.calcMovement();
         }
         else if(param1.indexOf("flying") != -1)
         {
            colorNum = 1;
            this.flying = true;
            this.fcs = param2;
         }
         removeAllHitTestableItems();
         addHitTestableItem(HT_CHARACTER);
         addHitTestableItem(HT_PROJECTILE_CHARACTER);
         bouncyPitsVy = VY_BOUNCY_PITS;
      }
      
      override protected function overwriteInitialStats() : void
      {
         super.overwriteInitialStats();
         _health = HealthValue.CHEEP_SWIMMING;
         scoreAttack = ScoreValue.CHEEP_ATTACK;
         scoreBelow = ScoreValue.CHEEP_BELOW;
         scoreStar = ScoreValue.CHEEP_STAR;
         scoreStomp = ScoreValue.CHEEP_STOMP;
      }
      
      private function calcColor() : void
      {
         if(Math.random() > 0.5)
         {
            this.color = "red";
            colorNum = 1;
         }
         else
         {
            this.color = "gray";
            colorNum = 3;
         }
      }
      
      private function calcMovement() : void
      {
         if(Math.random() > 0.5)
         {
            this.moveType = "wave";
         }
         else
         {
            this.moveType = "straight";
         }
      }
      
      private function calcPosition() : void
      {
         var _loc1_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:Number = Math.random();
         var _loc3_:Number = Math.random();
         _loc1_ = 1;
         while(_loc1_ < this.ranLocBuf + 1)
         {
            if(_loc4_ == 0 && _loc2_ < _loc1_ / this.ranLocBuf)
            {
               _loc4_ = _loc1_;
            }
            if(_loc5_ == 0 && _loc3_ < _loc1_ / this.ranLocBuf)
            {
               _loc5_ = _loc1_;
            }
            _loc1_++;
         }
         _loc4_ -= 3;
         _loc5_ -= 3;
         x += _loc4_ * TILE_SIZE;
         y += _loc5_ * TILE_SIZE;
         while(y > GLOB_STG_BOT - TILE_SIZE * 3)
         {
            y -= TILE_SIZE;
         }
         while(y < GLOB_STG_TOP + TILE_SIZE * 4)
         {
            y += TILE_SIZE;
         }
         if(this.moveType == "wave")
         {
            this.yWaveMid = y;
            this.yWaveTop = y - TILE_SIZE;
            this.yWaveBot = y + TILE_SIZE;
         }
      }
      
      override public function setStats() : void
      {
         if(this.flying)
         {
            gravity = this.FLYING_GRAVITY;
            ySpeed = FLYING_JUMP_PWR;
            stompable = true;
            vy = -ySpeed;
            y = GLOB_STG_BOT + height;
            this.destroyTmr = new CustomTimer(this.destroyTmrDur,1);
            updateOffScreen = true;
            addTmr(this.destroyTmr);
            this.destroyTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.destroyTmrLsr);
            this.destroyTmr.start();
            this.calcFlyingStats();
         }
         else
         {
            stompable = false;
            if(this.color == "gray")
            {
               xSpeed = 50;
            }
            else if(this.color == "red")
            {
               xSpeed = 100;
            }
            defyGrav = true;
            ySpeed = 20;
            vyMaxPsv = 400;
            gravity = 500;
            vx = -xSpeed;
            if(this.moveType == "wave")
            {
               vy = -ySpeed;
            }
            else
            {
               vy = 0;
            }
            this.calcPosition();
         }
         numColors = 3;
         setPlayFrame("swimStart");
         super.setStats();
      }
      
      private function calcFlyingStats() : void
      {
         var _loc6_:HammerBro = null;
         var _loc1_:int = Math.random() * GLOB_STG_RHT;
         var _loc2_:int = GlobVars.STAGE_WIDTH / 2;
         var _loc3_:int = 120;
         while(_loc1_ > _loc2_ - _loc3_ && _loc1_ < _loc2_ + _loc3_)
         {
            _loc1_ = Math.random() * GLOB_STG_RHT;
         }
         var _loc4_:Point = new Point(_loc1_,0);
         x = globalToLocal(_loc4_).x;
         var _loc5_:Number = Math.random() * (this.MAX_HORZ_FLY_SPEED - this.MIN_HORZ_FLY_SPEED) + this.MIN_HORZ_FLY_SPEED;
         if(player.vx > 0)
         {
            if(!(player is MarioBase) || player is MarioBase && player.vx <= MarioBase.MAX_WALK_SPEED)
            {
               vx = _loc5_;
            }
            else
            {
               _loc5_ = this.MAX_HORZ_FLY_SPEED;
               vx = _loc5_;
            }
         }
         else if(player.vx < 0)
         {
            if(!(player is MarioBase) || player is MarioBase && player.vx >= -MarioBase.MAX_WALK_SPEED)
            {
               vx = -_loc5_;
            }
            else
            {
               _loc5_ = this.MAX_HORZ_FLY_SPEED;
               vx = -_loc5_;
            }
            scaleX = -1;
         }
         else if(x > player.nx)
         {
            vx = -_loc5_;
            scaleX = -1;
         }
         else
         {
            vx = _loc5_;
         }
         if(!this.fcs.canReverseDirection && scaleX < 0)
         {
            scaleX = 1;
            vx = -vx;
         }
         if(Cheats.allHammerBros)
         {
            (_loc6_ = new HammerBro(null,true)).x = x;
            _loc6_.y = y;
            _loc6_.vx = vx;
            _loc6_.scaleX = scaleX;
            level.addToLevel(_loc6_);
            this.fcs.addHammerBro(_loc6_);
            destroy();
         }
      }
      
      override protected function updateStats() : void
      {
         super.updateStats();
         if(this.moveType == "wave" && cState != "die")
         {
            if(ny < this.yWaveTop)
            {
               ny = this.yWaveTop;
               vy = -vy;
            }
            else if(ny > this.yWaveBot)
            {
               ny = this.yWaveBot;
               vy = -vy;
            }
         }
      }
      
      override public function checkFrame() : void
      {
         if(currentFrame == getLabNum("swimEnd") + 1 && !stopUpdate)
         {
            setPlayFrame("swimStart");
         }
      }
      
      override public function stomp() : void
      {
         if(!stompable || !player.canStomp)
         {
            return;
         }
         super.stomp();
         this.die();
         vx = 0;
         vy = 0;
      }
      
      override public function die(param1:LevObj = null) : void
      {
         super.die(param1);
         if(this.flying)
         {
            vx = 0;
            gravity = this.FLYING_GRAVITY_DIE;
         }
         ++STAT_MNGR.numCheepCheepsDefeated;
      }
      
      private function destroyTmrLsr(param1:TimerEvent) : void
      {
         this.destroyTmr.stop();
         this.destroyTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.destroyTmrLsr);
         removeTmr(this.destroyTmr);
         this.destroyTmr = null;
         destroyOffScreen = true;
         updateOffScreen = false;
         if(!onScreen)
         {
            destroy();
         }
      }
      
      override public function cleanUp() : void
      {
         super.cleanUp();
         if(this.fcs)
         {
            this.fcs.ENEMY_DCT.removeItem(this);
         }
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         if(this.destroyTmr && this.destroyTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.destroyTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.destroyTmrLsr);
         }
      }
      
      override protected function reattachLsrs() : void
      {
         super.reattachLsrs();
         if(this.destroyTmr && !this.destroyTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.destroyTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.destroyTmrLsr);
         }
      }
   }
}
