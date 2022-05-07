package com.smbc.projectiles
{
   import com.explodingRabbit.cross.gameplay.statusEffects.StatusProperty;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.characters.Character;
   import com.smbc.interfaces.ICustomTimer;
   import com.smbc.main.LevObj;
   import flash.events.TimerEvent;
   
   public class HammerWeapon extends Projectile
   {
      
      private static const FL_ABOVE:String = "above";
      
      private static const FL_SIDE:String = "side";
      
      private static const DAMAGE_AMOUNT:int = int.MAX_VALUE;
       
      
      private var owner:Character;
      
      private var destroyTimer:CustomTimer;
      
      private var changeFrame:Boolean;
      
      public function HammerWeapon(param1:LevObj)
      {
         this.destroyTimer = new CustomTimer(10000,1);
         super(param1,SOURCE_TYPE_PLAYER);
         this.owner = param1 as Character;
         x = this.owner.nx;
         y = this.owner.ny;
         destroyOffScreen = false;
         addProperty(new StatusProperty(PR_PASSTHROUGH_ALWAYS));
         addProperty(new StatusProperty(PR_PIERCE_AGG,11));
         _damageAmt = DAMAGE_AMOUNT;
         addTmr(this.destroyTimer);
         this.destroyTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.destroyTimerHandler,false,0,true);
         this.destroyTimer.start();
         defyGrav = true;
      }
      
      protected function destroyTimerHandler(param1:TimerEvent) : void
      {
         removeTmr(this.destroyTimer);
         this.destroyTimer.stop();
         this.destroyTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,this.destroyTimerHandler);
         this.destroyTimer = null;
         destroy();
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         if(this.destroyTimer != null)
         {
            this.destroyTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,this.destroyTimerHandler);
         }
      }
      
      public function update() : void
      {
         if(this.changeFrame)
         {
            if(currentLabel == FL_ABOVE)
            {
               gotoAndStop(FL_SIDE);
            }
            else
            {
               gotoAndStop(FL_ABOVE);
            }
            this.changeFrame = false;
         }
         scaleX = this.owner.scaleX;
         if(currentLabel == FL_ABOVE)
         {
            x = this.owner.nx;
            y = this.owner.hTop;
         }
         else if(currentLabel == FL_SIDE)
         {
            if(this.owner.scaleX > 0)
            {
               x = this.owner.hRht;
            }
            else
            {
               x = this.owner.hLft;
            }
            y = this.owner.hBot - TILE_SIZE / 2;
         }
      }
      
      override public function animate(param1:ICustomTimer) : Boolean
      {
         this.changeFrame = true;
         return false;
      }
   }
}
