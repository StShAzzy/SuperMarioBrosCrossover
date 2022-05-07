package com.smbc.projectiles
{
   import com.explodingRabbit.cross.gameplay.statusEffects.StatusProperty;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.characters.Samus;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.DamageValue;
   import com.smbc.data.SoundNames;
   import com.smbc.enemies.Enemy;
   import com.smbc.interfaces.IAttackable;
   import com.smbc.interfaces.ICustomTimer;
   import flash.events.TimerEvent;
   
   public class SamusBomb extends Projectile
   {
       
      
      private const FL_BOMB_1:String = "bombStart";
      
      private const FL_BOMB_2:String = "bomb-2";
      
      private const FL_BOMB_3:String = "bomb-3";
      
      private const FL_BOMB_4:String = "bombEnd";
      
      private const FL_EXPLODE_START:String = "explodeStart";
      
      private const FL_EXPLODE_END:String = "explodeEnd";
      
      private const BOMB_TMR:CustomTimer = new CustomTimer(950,1);
      
      private const EXPLODE_WAIT_TMR:CustomTimer = new CustomTimer(200,1);
      
      public var hitSamus:Boolean;
      
      private const Y_OFFSET:int = 12;
      
      private var psStr:String;
      
      private const ANIM_FAST_TMR:CustomTimer = AnimationTimers.ANIM_FAST_TMR;
      
      private const ANIM_SLOW_TMR:CustomTimer = AnimationTimers.ANIM_SLOW_TMR;
      
      private var samus:Samus;
      
      public function SamusBomb(param1:Samus)
      {
         var _loc2_:StatusProperty = null;
         this.samus = param1;
         super(param1,SOURCE_TYPE_PLAYER);
         for each(_loc2_ in Samus.DEFAULT_PROPS_DCT)
         {
            addProperty(_loc2_);
         }
         addProperty(new StatusProperty(PR_PASSTHROUGH_ALWAYS));
         removeProperty(PR_INVULNERABLE_AGG);
         _damageAmt = DamageValue.SAMUS_BOMB;
         stopAnim = true;
         defyGrav = true;
         this.psStr = param1.pState.toString();
         vx = 0;
         vy = 0;
         mainAnimTmr = AnimationTimers.ANIM_FAST_TMR;
         x = param1.nx;
         y = param1.ny - this.Y_OFFSET;
         gotoAndStop(this.FL_BOMB_1);
         addTmr(this.BOMB_TMR);
         this.BOMB_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.bombTmrLsr);
         this.BOMB_TMR.start();
         addTmr(this.EXPLODE_WAIT_TMR);
         this.EXPLODE_WAIT_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.explodeWaitTmrHandler,false,0,true);
         SND_MNGR.playSound(SoundNames.SFX_SAMUS_BOMB_SET);
      }
      
      private function bombTmrLsr(param1:TimerEvent) : void
      {
         gotoAndStop(this.FL_EXPLODE_START);
         stopAnim = false;
         checkAtkRect = true;
         addHitTestableItem(HT_CHARACTER);
         hitTestTypesDct.addItem(HT_ENEMY);
         this.BOMB_TMR.stop();
         SND_MNGR.playSound(SoundNames.SFX_SAMUS_BOMB_EXPLODE);
         ACTIVE_ANIM_TMRS_DCT.addItem(this.ANIM_SLOW_TMR);
         mainAnimTmr = this.ANIM_SLOW_TMR;
      }
      
      private function explodeWaitTmrHandler(param1:TimerEvent) : void
      {
         destroy();
      }
      
      override public function animate(param1:ICustomTimer) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:String = null;
         if(stopAnim && param1 == this.ANIM_FAST_TMR)
         {
            _loc3_ = currentLabel;
            if(_loc3_ == this.FL_EXPLODE_END)
            {
               if(visible)
               {
                  visible = false;
               }
               else
               {
                  visible = true;
               }
            }
            else if(_loc3_ == this.FL_BOMB_1)
            {
               gotoAndStop(this.FL_BOMB_2);
               _loc2_ = true;
            }
            else if(_loc3_ == this.FL_BOMB_2)
            {
               gotoAndStop(this.FL_BOMB_3);
               _loc2_ = true;
            }
            else if(_loc3_ == this.FL_BOMB_3)
            {
               gotoAndStop(this.FL_BOMB_4);
               _loc2_ = true;
            }
            else if(_loc3_ == this.FL_BOMB_4)
            {
               gotoAndStop(this.FL_BOMB_1);
               _loc2_ = true;
            }
         }
         else
         {
            _loc2_ = super.animate(param1);
         }
         return _loc2_;
      }
      
      override public function checkFrame() : void
      {
         if(!stopAnim && currentFrameLabel == this.FL_EXPLODE_END)
         {
            stopAnim = true;
            mainAnimTmr = this.ANIM_FAST_TMR;
            ACTIVE_ANIM_TMRS_DCT.removeItem(this.ANIM_SLOW_TMR);
            this.EXPLODE_WAIT_TMR.start();
         }
      }
      
      override protected function attackObjPiercing(param1:IAttackable) : void
      {
         super.attackObjPiercing(param1);
         if(param1 is Enemy)
         {
            SND_MNGR.playSound(SoundNames.SFX_SAMUS_HIT_ENEMY);
         }
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         if(this.BOMB_TMR.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.BOMB_TMR.removeEventListener(TimerEvent.TIMER_COMPLETE,this.bombTmrLsr);
         }
         this.EXPLODE_WAIT_TMR.removeEventListener(TimerEvent.TIMER_COMPLETE,this.explodeWaitTmrHandler);
      }
      
      override protected function reattachLsrs() : void
      {
         super.reattachLsrs();
         if(this.BOMB_TMR && !this.BOMB_TMR.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.BOMB_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.bombTmrLsr);
         }
         this.EXPLODE_WAIT_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.explodeWaitTmrHandler,false,0,true);
      }
      
      override public function cleanUp() : void
      {
         super.cleanUp();
         this.samus.BOMB_DCT.removeItem(this);
      }
   }
}
