package com.smbc.sound
{
   import com.smbc.data.SoundNames;
   import com.smbc.errors.SingletonError;
   import flash.events.Event;
   import flash.media.SoundTransform;
   import flash.utils.ByteArray;
   
   public class BackgroundMusic extends SoundContainer
   {
      
      public static var instance:BackgroundMusic;
       
      
      protected var loopNum:int;
      
      public function BackgroundMusic(param1:String, param2:ByteArray = null)
      {
         super(param1,param2);
         if(instance != null)
         {
            throw new SingletonError();
         }
         if(!SND_MNGR.muteMusic)
         {
            this.checkLoopNum();
            this.playSound();
         }
         else
         {
            this.cleanUp();
         }
      }
      
      override protected function soundCompleteLsr(param1:Event) : void
      {
         if(channel)
         {
            if(channel.hasEventListener(Event.SOUND_COMPLETE))
            {
               channel.removeEventListener(Event.SOUND_COMPLETE,this.soundCompleteLsr);
            }
            channel.stop();
         }
         if(this.loopNum)
         {
            channel = sound.play(this.loopNum,int.MAX_VALUE);
         }
         else
         {
            channel = sound.play(0,int.MAX_VALUE);
         }
         if(channel && transform)
         {
            channel.soundTransform = transform;
         }
      }
      
      protected function originalSoundCompleteLsr(param1:Event) : void
      {
         super.soundCompleteLsr(param1);
      }
      
      public function playAtLoopNum() : void
      {
         if(this.loopNum)
         {
            this.soundCompleteLsr(new Event(Event.SOUND_COMPLETE));
         }
      }
      
      public function fakePause(param1:Number) : void
      {
         if(param1 < 0)
         {
            throw new Error("can\'t pause background music at negative position");
         }
         _cPos = param1;
         _paused = true;
      }
      
      private function checkLoopNum() : void
      {
         if(soundName == SoundNames.BGM_BILL_UNDER_GROUND)
         {
            this.loopNum = 6390;
         }
         else if(soundName == SoundNames.BGM_BILL_DUNGEON)
         {
            this.loopNum = 11182;
         }
         else if(soundName == SoundNames.BGM_BILL_OVER_WORLD)
         {
            this.loopNum = 1589;
         }
         else if(soundName == SoundNames.BGM_BILL_WATER)
         {
            this.loopNum = 1197;
         }
         else if(soundName == SoundNames.BGM_LINK_OVER_WORLD)
         {
            this.loopNum = 6391;
         }
         else if(soundName == SoundNames.BGM_LINK_UNDER_GROUND)
         {
            this.loopNum = 3193;
         }
         else if(soundName == SoundNames.BGM_MEGA_MAN_DUNGEON)
         {
            this.loopNum = 6390;
         }
         else if(soundName == SoundNames.BGM_MEGA_MAN_UNDER_GROUND)
         {
            this.loopNum = 25561;
         }
         else if(soundName == SoundNames.BGM_MEGA_MAN_OVER_WORLD)
         {
            this.loopNum = 30121;
         }
         else if(soundName == SoundNames.BGM_MEGA_MAN_WATER)
         {
            this.loopNum = 10651;
         }
         else if(soundName == SoundNames.BGM_RYU_DUNGEON)
         {
            this.loopNum = 1865;
         }
         else if(soundName == SoundNames.BGM_RYU_OVER_WORLD)
         {
            this.loopNum = 12789;
         }
         else if(soundName == SoundNames.BGM_RYU_UNDER_GROUND)
         {
            this.loopNum = 1599;
         }
         else if(soundName == SoundNames.BGM_RYU_WATER)
         {
            this.loopNum = 881;
         }
         else if(soundName == SoundNames.BGM_SIMON_WATER)
         {
            this.loopNum = 22630;
         }
      }
      
      override protected function setUpSoundTransform() : void
      {
         var _loc1_:int = SND_MNGR.SND_LEV_DCT[this.soundName] - SND_MNGR.musicVolMinusNum;
         if(_loc1_ < 0)
         {
            _loc1_ = 0;
         }
         var _loc2_:Number = 0;
         if(_loc1_ > 0)
         {
            _loc2_ = _loc1_ / SND_MNGR.SND_LEV_DIVISOR;
         }
         transform = new SoundTransform(_loc2_);
         super.setUpSoundTransform();
      }
      
      override protected function playSound() : void
      {
         if(this.loopNum)
         {
            channel = sound.play();
            if(channel)
            {
               channel.addEventListener(Event.SOUND_COMPLETE,this.soundCompleteLsr,false,0,true);
               if(transform)
               {
                  channel.soundTransform = transform;
               }
            }
         }
         else
         {
            channel = sound.play(0,int.MAX_VALUE);
            if(channel && transform)
            {
               channel.soundTransform = transform;
            }
         }
      }
      
      override public function pauseSound() : void
      {
         if(_paused)
         {
            return;
         }
         if(channel)
         {
            _cPos = channel.position;
            if(channel.hasEventListener(Event.SOUND_COMPLETE))
            {
               channel.removeEventListener(Event.SOUND_COMPLETE,this.soundCompleteLsr);
            }
            channel.stop();
            _paused = true;
         }
      }
      
      override public function resumeSound() : void
      {
         if(!_paused)
         {
            return;
         }
         _paused = false;
         if(_cPos)
         {
            channel = sound.play(_cPos);
         }
         else
         {
            channel = sound.play();
         }
         if(channel)
         {
            channel.addEventListener(Event.SOUND_COMPLETE,this.soundCompleteLsr,false,0,true);
            if(transform)
            {
               channel.soundTransform = transform;
            }
         }
      }
      
      override public function cleanUp() : void
      {
         instance = null;
         super.cleanUp();
      }
   }
}
