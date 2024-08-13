package com.smbc.sound
{
   import flash.media.SoundTransform;
   import flash.utils.ByteArray;
   
   public class MusicEffect extends SoundContainer
   {
       
      
      public function MusicEffect(param1:String, param2:ByteArray = null)
      {
         super(param1,param2);
         if(!SND_MNGR.muteMusic)
         {
            playSound();
         }
         else
         {
            cleanUp();
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
   }
}
