package com.smbc.enemies
{
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.EnemyInfo;
   import com.smbc.data.HealthValue;
   import com.smbc.data.ScoreValue;
   import com.smbc.level.TitleLevel;
   import com.smbc.main.LevObj;
   import flash.events.TimerEvent;
   
   public class Goomba extends Enemy
   {
      
      public static const ENEMY_NUM:int = EnemyInfo.Goomba;
       
      
      private var destroyTmr:CustomTimer;
      
      private var destroyDur:Number;
      
      public function Goomba(param1:String)
      {
         if(param1.indexOf("enemyGoombaBrown") != -1)
         {
            colorNum = 1;
         }
         else if(param1.indexOf("enemyGoombaBlue") != -1)
         {
            colorNum = 2;
         }
         else if(param1.indexOf("enemyGoombaGray") != -1)
         {
            colorNum = 3;
         }
         super();
      }
      
      override protected function overwriteInitialStats() : void
      {
         _health = HealthValue.GOOMBA;
         scoreAttack = ScoreValue.GOOMBA_ATTACK;
         scoreBelow = ScoreValue.GOOMBA_BELOW;
         scoreStar = ScoreValue.GOOMBA_STAR;
         scoreStomp = ScoreValue.GOOMBA_STOMP;
         super.overwriteInitialStats();
      }
      
      override public function setStats() : void
      {
         stompable = true;
         numColors = 3;
         this.destroyDur = 750;
         xSpeed = defaultWalkSpeed;
         ySpeed = 400;
         gravity = 1400;
         vx = -xSpeed;
         setPlayFrame("walkStart");
         super.setStats();
      }
      
      override public function updateObj() : void
      {
         super.updateObj();
      }
      
      override public function stomp() : void
      {
         super.stomp();
         if(cState == ST_DIE || !player.canStomp)
         {
            return;
         }
         if(level != TitleLevel.instance)
         {
            ++STAT_MNGR.numEnemiesDefeated;
         }
         setStopFrame("die");
         this.destroyTmr = new CustomTimer(this.destroyDur,1);
         addTmr(this.destroyTmr);
         this.destroyTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.destroyTmrLsr);
         this.destroyTmr.start();
         stopUpdate = true;
         stopHit = true;
         defyGrav = true;
         ACTIVE_ANIM_TMRS_DCT.clear();
         mainAnimTmr = null;
      }
      
      private function destroyTmrLsr(param1:TimerEvent) : void
      {
         destroy();
      }
      
      override public function die(param1:LevObj = null) : void
      {
         super.die(param1);
         if(currentLabel == convLab("die"))
         {
            setStopFrame("walkStart");
         }
      }
      
      override public function checkFrame() : void
      {
         super.checkFrame();
         var _loc1_:String = currentLabel;
         var _loc2_:int = currentFrame;
         if(_loc2_ == convFrameToInt("walkEnd") + 1 && cState != ST_DIE)
         {
            setPlayFrame("walkStart");
         }
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         if(Boolean(this.destroyTmr) && this.destroyTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.destroyTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.destroyTmrLsr);
         }
      }
      
      override protected function reattachLsrs() : void
      {
         super.reattachLsrs();
         if(Boolean(this.destroyTmr) && !this.destroyTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.destroyTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.destroyTmrLsr);
         }
      }
   }
}
