package neoart.flod.xm
{
   import neoart.flod.core.SBChannel;
   
   public final class XMVoice
   {
       
      
      var index:int;
      
      var next:XMVoice;
      
      var channel:SBChannel;
      
      var flags:int;
      
      var note:int;
      
      var target:int;
      
      var period:int;
      
      var frequency:int;
      
      var frqDelta:int;
      
      var delay:int;
      
      var keyoff:int;
      
      var instrument:XMInstrument;
      
      var autoVibratoPos:int;
      
      var autoSweepPos:int;
      
      var sample:XMSample;
      
      var finetune:int;
      
      var sampleOffset:int;
      
      var patternLoopRow:int;
      
      var patternLoopCnt:int;
      
      var fadeout:int;
      
      var isFading:int;
      
      var volume:int;
      
      var volSlide:int;
      
      var volSlideMaster:int;
      
      var fineVolSlideUp:int;
      
      var fineVolSlideDown:int;
      
      var volEnvelope:XMEnvelope;
      
      var panning:int;
      
      var panSlide:int;
      
      var panEnvelope:XMEnvelope;
      
      var arpeggioOn:int;
      
      var portaDown:int;
      
      var portaUp:int;
      
      var finePortaUp:int;
      
      var finePortaDown:int;
      
      var xtraPortaUp:int;
      
      var xtraPortaDown:int;
      
      var portaPeriod:int;
      
      var portaSpeed:int;
      
      var vibratoOn:int;
      
      var vibratoPos:int;
      
      var vibratoSpeed:int;
      
      var vibratoDepth:int;
      
      var tremoloPos:int;
      
      var tremoloSpeed:int;
      
      var tremoloDepth:int;
      
      var waveControl:int;
      
      var tremorPos:int;
      
      var tremorOn:int;
      
      var tremorOff:int;
      
      var tremorVol:int;
      
      var retrigX:int;
      
      var retrigY:int;
      
      var volTemp:int;
      
      public function XMVoice(param1:int)
      {
         super();
         this.index = param1;
         this.volEnvelope = new XMEnvelope();
         this.panEnvelope = new XMEnvelope();
      }
      
      function reset() : void
      {
         this.volume = this.sample.volume;
         this.volTemp = this.volume;
         this.panning = this.sample.panning;
         this.finetune = this.sample.finetune;
         this.keyoff = 0;
         this.fadeout = 65536;
         this.isFading = 0;
         this.volEnvelope.reset(64);
         this.panEnvelope.reset(32);
         this.autoVibratoPos = 0;
         this.autoSweepPos = 0;
         this.tremorPos = 0;
         if((this.waveControl & 15) < 4)
         {
            this.vibratoPos = 0;
         }
         if(this.waveControl >> 4 < 4)
         {
            this.tremoloPos = 0;
         }
         this.flags |= XM.FLAG_VOLUME | XM.FLAG_PANNING;
      }
      
      function autoVibrato() : void
      {
         var _loc1_:int = 0;
         if(++this.autoSweepPos > this.instrument.vibratoSweep)
         {
            this.autoSweepPos = this.instrument.vibratoSweep;
         }
         this.autoVibratoPos = this.autoVibratoPos + this.instrument.vibratoSpeed & 255;
         switch(this.instrument.vibratoType)
         {
            case 0:
               _loc1_ = XM.FT2_SINE[this.autoVibratoPos];
               break;
            case 1:
               if(this.autoVibratoPos < 128)
               {
                  _loc1_ = -64;
               }
               else
               {
                  _loc1_ = 64;
               }
               break;
            case 2:
               _loc1_ = (64 + (this.autoVibratoPos >> 1) & 127) - 64;
               break;
            case 3:
               _loc1_ = (64 - (this.autoVibratoPos >> 1) & 127) - 64;
         }
         _loc1_ *= this.instrument.vibratoDepth;
         if(this.instrument.vibratoSweep)
         {
            _loc1_ *= this.autoSweepPos / this.instrument.vibratoSweep;
         }
         this.frqDelta = _loc1_ >> 6;
         this.flags |= XM.FLAG_PERIOD;
      }
      
      function tonePortamento() : void
      {
         if(this.period < this.portaPeriod)
         {
            this.period += this.portaSpeed << 2;
            if(this.period > this.portaPeriod)
            {
               this.period = this.portaPeriod;
            }
         }
         else if(this.period > this.portaPeriod)
         {
            this.period -= this.portaSpeed << 2;
            if(this.period < this.portaPeriod)
            {
               this.period = this.portaPeriod;
            }
         }
         this.frequency = this.period;
         this.flags |= XM.FLAG_PERIOD;
      }
      
      function tremolo() : void
      {
         var _loc1_:* = 0;
         var _loc3_:* = 0;
         var _loc2_:* = this.tremoloPos & 31;
         switch(this.waveControl >> 4 & 3)
         {
            case 0:
               _loc1_ = int(XM.MOD_SINE[_loc2_]);
               break;
            case 1:
               _loc1_ = _loc2_ << 3;
               break;
            case 2:
               _loc1_ = 255;
         }
         _loc3_ = _loc1_ * this.tremoloDepth >> 6;
         if(this.tremoloPos > 31)
         {
            this.volume = this.volTemp - _loc3_;
         }
         else
         {
            this.volume = this.volTemp + _loc3_;
         }
         this.tremoloPos = this.tremoloPos + this.tremoloSpeed & 63;
         this.flags |= XM.FLAG_VOLUME;
      }
      
      function vibrato() : void
      {
         var _loc1_:* = 0;
         var _loc3_:* = 0;
         var _loc2_:* = this.vibratoPos & 31;
         switch(this.waveControl & 3)
         {
            case 0:
               _loc1_ = int(XM.MOD_SINE[_loc2_]);
               break;
            case 1:
               _loc1_ = _loc2_ << 3;
               if(this.vibratoPos > 31)
               {
                  _loc1_ = int(255 - _loc1_);
               }
               break;
            default:
               _loc1_ = 255;
         }
         _loc3_ = _loc1_ * this.vibratoDepth >> 7;
         if(this.vibratoPos > 31)
         {
            this.frequency = this.period - _loc3_;
         }
         else
         {
            this.frequency = this.period + _loc3_;
         }
         this.vibratoPos = this.vibratoPos + this.vibratoSpeed & 63;
         this.flags |= XM.FLAG_PERIOD;
      }
      
      function tremor() : void
      {
         if(this.tremorPos >= this.tremorOn)
         {
            this.tremorVol = this.volume;
            this.volume = 0;
            this.flags |= XM.FLAG_VOLUME;
         }
         if(++this.tremorPos >= this.tremorOff)
         {
            this.tremorPos = 0;
            this.volume = this.tremorVol;
            this.flags |= XM.FLAG_VOLUME;
         }
      }
   }
}
