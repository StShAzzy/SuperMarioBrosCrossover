package com.smbc.sound
{
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class LoopingSoundEffect extends SoundEffect
   {
       
      
      public function LoopingSoundEffect(param1:String, param2:ByteArray = null)
      {
         super(param1,param2);
      }
      
      override protected function playSound() : void
      {
         channel = sound.play(0,int.MAX_VALUE);
         if(Boolean(channel) && Boolean(transform))
         {
            channel.soundTransform = transform;
         }
      }
      
      override protected function soundCompleteLsr(param1:Event) : void
      {
         this.playSound();
      }
   }
}
