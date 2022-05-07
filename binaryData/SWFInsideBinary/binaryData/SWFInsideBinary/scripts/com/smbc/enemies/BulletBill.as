package com.smbc.enemies
{
   import com.explodingRabbit.cross.gameplay.statusEffects.StatusProperty;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.EnemyInfo;
   import com.smbc.data.HealthValue;
   import com.smbc.data.ScoreValue;
   import com.smbc.data.SoundNames;
   import com.smbc.ground.Canon;
   import com.smbc.level.BulletBillSpawner;
   import com.smbc.main.LevObj;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   
   public class BulletBill extends Enemy
   {
      
      private static const MAIN_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_SLOWEST_TMR;
      
      public static const ENEMY_NUM:int = EnemyInfo.BulletBill;
      
      private static const CP_PNT:Point = new Point(169,127);
      
      public static const WIDTH:int = 32;
      
      public static const COLOR_BLACK:String = "black";
      
      public static const COLOR_GRAY:String = "gray";
      
      private static const FL_FLASH:String = "flash";
      
      public static const SPEED:int = 170;
       
      
      private var destroyableTmr:CustomTimer;
      
      private const DESTROYABLE_TMR_DUR:int = 200;
      
      private var color:String;
      
      private var goRht:Boolean;
      
      private const BG_MOVE_DIST:int = 32;
      
      private var startBgPos:Number;
      
      private var endBgPos:Number;
      
      private var spwnSrc:LevObj;
      
      public function BulletBill(param1:Number, param2:Number, param3:Boolean, param4:LevObj, param5:String = "black")
      {
         super();
         x = param1;
         y = param2;
         this.goRht = param3;
         this.color = param5;
         gravity = 1250;
         this.spwnSrc = param4;
         defyGrav = true;
         stopAnim = false;
         mainAnimTmr = MAIN_ANIM_TMR;
         stompable = true;
         addProperty(new StatusProperty(PR_PIERCE_PAS,PIERCE_STR_ARMORED));
         removeAllHitTestableItems();
         addHitTestableItem(HT_CHARACTER);
         addHitTestableItem(HT_PROJECTILE_CHARACTER);
         SND_MNGR.playSound(SoundNames.SFX_GAME_CANON);
         if(this.spwnSrc is Canon)
         {
            behindGround = true;
            this.startBgPos = x;
            destroyOffScreen = true;
         }
         if(this.goRht)
         {
            vx = SPEED;
            scaleX = 1;
            if(behindGround)
            {
               this.endBgPos = this.startBgPos + this.BG_MOVE_DIST;
            }
         }
         else
         {
            vx = -SPEED;
            scaleX = -1;
            if(behindGround)
            {
               this.endBgPos = this.startBgPos - this.BG_MOVE_DIST;
            }
         }
      }
      
      override protected function overwriteInitialStats() : void
      {
         _health = HealthValue.BULLET_BILL;
         scoreAttack = ScoreValue.BULLET_BILL_ATTACK;
         scoreBelow = ScoreValue.BULLET_BILL_BELOW;
         scoreStar = ScoreValue.BULLET_BILL_STAR;
         scoreStomp = ScoreValue.BULLET_BILL_STOMP;
         super.overwriteInitialStats();
      }
      
      override public function initiate() : void
      {
         super.initiate();
         if(this.spwnSrc is BulletBillSpawner)
         {
            this.destroyableTmr = new CustomTimer(this.DESTROYABLE_TMR_DUR,1);
            this.destroyableTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.destroyableTmrHandler,false,0,true);
            addTmr(this.destroyableTmr);
            this.destroyableTmr.start();
            updateOffScreen = true;
         }
      }
      
      override protected function updateStats() : void
      {
         super.updateStats();
         if(behindGround)
         {
            if(this.goRht && nx > this.endBgPos)
            {
               behindGround = false;
            }
            else if(!this.goRht && nx < this.endBgPos)
            {
               behindGround = false;
            }
         }
      }
      
      override public function stomp() : void
      {
         if(!player.canStomp)
         {
            return;
         }
         super.stomp();
         die();
         SND_MNGR.removeStoredSound(SoundNames.SFX_GAME_KICK_SHELL);
         vx = 0;
         vy = 0;
      }
      
      private function destroyableTmrHandler(param1:TimerEvent) : void
      {
         this.destroyableTmr.stop();
         removeTmr(this.destroyableTmr);
         this.destroyableTmr = null;
         destroyOffScreen = true;
         updateOffScreen = false;
         if(!onScreen)
         {
            destroy();
         }
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         if(this.destroyableTmr)
         {
            this.destroyableTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.destroyableTmrHandler);
         }
      }
      
      override protected function reattachLsrs() : void
      {
         super.reattachLsrs();
         if(this.destroyableTmr)
         {
            this.destroyableTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.destroyableTmrHandler,false,0,true);
         }
      }
      
      override public function cleanUp() : void
      {
         super.cleanUp();
         if(this.spwnSrc is Canon)
         {
            Canon.BILL_DCT.removeItem(this);
         }
         else if(this.spwnSrc is BulletBillSpawner)
         {
            BulletBillSpawner(this.spwnSrc).bulletBillDestroyed(this);
         }
      }
   }
}
