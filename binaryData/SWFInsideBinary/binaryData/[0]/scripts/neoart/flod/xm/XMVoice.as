package neoart.flod.xm
{
   import neoart.flod.core.*;
   
   public final class XMVoice
   {
       
      
      internal var index:int;
      
      internal var next:XMVoice;
      
      internal var channel:SBChannel;
      
      internal var flags:int;
      
      internal var note:int;
      
      internal var target:int;
      
      internal var period:int;
      
      internal var frequency:int;
      
      internal var frqDelta:int;
      
      internal var delay:int;
      
      internal var keyoff:int;
      
      internal var instrument:XMInstrument;
      
      internal var autoVibratoPos:int;
      
      internal var autoSweepPos:int;
      
      internal var sample:XMSample;
      
      internal var finetune:int;
      
      internal var sampleOffset:int;
      
      internal var patternLoopRow:int;
      
      internal var patternLoopCnt:int;
      
      internal var fadeout:int;
      
      internal var isFading:int;
      
      internal var volume:int;
      
      internal var volSlide:int;
      
      internal var volSlideMaster:int;
      
      internal var fineVolSlideUp:int;
      
      internal var fineVolSlideDown:int;
      
      internal var volEnvelope:XMEnvelope;
      
      internal var panning:int;
      
      internal var panSlide:int;
      
      internal var panEnvelope:XMEnvelope;
      
      internal var arpeggioOn:int;
      
      internal var portaDown:int;
      
      internal var portaUp:int;
      
      internal var finePortaUp:int;
      
      internal var finePortaDown:int;
      
      internal var xtraPortaUp:int;
      
      internal var xtraPortaDown:int;
      
      internal var portaPeriod:int;
      
      internal var portaSpeed:int;
      
      internal var vibratoOn:int;
      
      internal var vibratoPos:int;
      
      internal var vibratoSpeed:int;
      
      internal var vibratoDepth:int;
      
      internal var tremoloPos:int;
      
      internal var tremoloSpeed:int;
      
      internal var tremoloDepth:int;
      
      internal var waveControl:int;
      
      internal var tremorPos:int;
      
      internal var tremorOn:int;
      
      internal var tremorOff:int;
      
      internal var tremorVol:int;
      
      internal var retrigX:int;
      
      internal var retrigY:int;
      
      internal var volTemp:int;
      
      public function XMVoice(param1:int)
      {
         super();
         this.index = param1;
         this.volEnvelope = new XMEnvelope();
         this.panEnvelope = new XMEnvelope();
      }
      
      internal function reset() : void
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
         if((this.waveControl & 0x0F) < 4)
         {
            this.vibratoPos = 0;
         }
         if(this.waveControl >> 4 < 4)
         {
            this.tremoloPos = 0;
         }
         this.flags |= XM.FLAG_VOLUME | XM.FLAG_PANNING;
      }
      
      internal function autoVibrato() : void
      {
         var _loc1_:int = 0;
         if(++this.autoSweepPos > this.instrument.vibratoSweep)
         {
            this.autoSweepPos = this.instrument.vibratoSweep;
         }
         this.autoVibratoPos = this.autoVibratoPos + this.instrument.vibratoSpeed & 0xFF;
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
               _loc1_ = (64 + (this.autoVibratoPos >> 1) & 0x7F) - 64;
               break;
            case 3:
               _loc1_ = (64 - (this.autoVibratoPos >> 1) & 0x7F) - 64;
         }
         _loc1_ *= this.instrument.vibratoDepth;
         if(this.instrument.vibratoSweep)
         {
            _loc1_ *= this.autoSweepPos / this.instrument.vibratoSweep;
         }
         this.frqDelta = _loc1_ >> 6;
         this.flags |= XM.FLAG_PERIOD;
      }
      
      internal function tonePortamento() : void
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
      
      internal function tremolo() : void
      {
         var _loc1_:* = 0;
         var _loc3_:* = 0;
         var _loc2_:* = this.tremoloPos & 0x1F;
         switch(this.waveControl >> 4 & 3)
         {
            case 0:
               _loc1_ = XM.MOD_SINE[_loc2_];
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
         this.tremoloPos = this.tremoloPos + this.tremoloSpeed & 0x3F;
         this.flags |= XM.FLAG_VOLUME;
      }
      
      internal function vibrato() : void
      {
         var _loc1_:* = 0;
         var _loc3_:* = 0;
         var _loc2_:* = this.vibratoPos & 0x1F;
         switch(this.waveControl & 3)
         {
            case 0:
               _loc1_ = XM.MOD_SINE[_loc2_];
               break;
            case 1:
               _loc1_ = _loc2_ << 3;
               if(this.vibratoPos > 31)
               {
                  _loc1_ = 255 - _loc1_;
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
         this.vibratoPos = this.vibratoPos + this.vibratoSpeed & 0x3F;
         this.flags |= XM.FLAG_PERIOD;
      }
      
      internal function tremor() : void
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
