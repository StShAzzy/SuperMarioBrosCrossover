package com.smbc.sound
{
   import com.smbc.errors.SingletonError;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundLoaderContext;
   import flash.media.SoundTransform;
   import flash.net.URLRequest;
   
   [Embed(source="/_assets/298_RepeatingSilenceSnd.mp3")]
   public class RepeatingSilenceOverrideSnd extends Sound
   {
      
      public static var instance:RepeatingSilenceOverrideSnd;
      
      public static var instantiated:Boolean;
       
      
      private var channel:SoundChannel;
      
      private const TRANSFORM:SoundTransform = new SoundTransform(0);
      
      public function RepeatingSilenceOverrideSnd(param1:URLRequest = null, param2:SoundLoaderContext = null)
      {
         this.channel = new SoundChannel();
         super(param1,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      public function playSound() : void
      {
         if(this.channel)
         {
            this.channel.stop();
         }
         this.channel = play(0,int.MAX_VALUE,this.TRANSFORM);
      }
   }
}
