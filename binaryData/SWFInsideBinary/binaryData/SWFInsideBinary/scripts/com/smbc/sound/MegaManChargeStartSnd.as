package com.smbc.sound
{
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.SoundNames;
   import com.smbc.managers.SoundManager;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   
   public final class MegaManChargeStartSnd extends SoundContainer
   {
       
      
      private const RUSH_TMR:CustomTimer = new CustomTimer(1,1);
      
      private const RUSH_OFFSET:int = 1050;
      
      private const SFX_MEGA_MAN_CHARGE_LOOP:String = SoundNames.SFX_MEGA_MAN_CHARGE_LOOP;
      
      public function MegaManChargeStartSnd(param1:String, param2:ByteArray = null)
      {
         volType = VT_SFX;
         super(param1,param2);
         if(!SND_MNGR.muteSfx)
         {
            this.RUSH_TMR.delay = this.RUSH_OFFSET;
            this.RUSH_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.rushTmrLsr,false,0,true);
         }
      }
      
      override protected function playSound() : void
      {
         super.playSound();
         this.RUSH_TMR.start();
      }
      
      private function rushTmrLsr(param1:TimerEvent) : void
      {
         SoundManager.SND_MNGR.playSound(this.SFX_MEGA_MAN_CHARGE_LOOP);
      }
      
      override protected function soundCompleteLsr(param1:Event) : void
      {
         super.soundCompleteLsr(param1);
      }
      
      override public function cleanUp() : void
      {
         this.RUSH_TMR.stop();
         this.RUSH_TMR.removeEventListener(TimerEvent.TIMER_COMPLETE,this.rushTmrLsr);
         super.cleanUp();
      }
   }
}
