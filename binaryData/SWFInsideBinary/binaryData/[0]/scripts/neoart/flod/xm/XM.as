package neoart.flod.xm
{
   public final class XM
   {
      
      public static const FLAG_PERIOD:int = 1;
      
      public static const FLAG_VOLUME:int = 2;
      
      public static const FLAG_PANNING:int = 4;
      
      public static const FLAG_TRIGGER:int = 8;
      
      public static const FLAG_STOP:int = 16;
      
      public static const NOTE_KEYOFF:int = 97;
      
      public static const ENVELOPE_OFF:int = 0;
      
      public static const ENVELOPE_ON:int = 1;
      
      public static const ENVELOPE_SUSTAIN:int = 2;
      
      public static const ENVELOPE_LOOP:int = 4;
      
      public static const FX_ARPEGGIO:int = 0;
      
      public static const FX_PORTAMENTO_UP:int = 1;
      
      public static const FX_PORTAMENTO_DOWN:int = 2;
      
      public static const FX_TONE_PORTAMENTO:int = 3;
      
      public static const FX_VIBRATO:int = 4;
      
      public static const FX_TONE_PORTAMENTO_VOLUME_SLIDE:int = 5;
      
      public static const FX_VIBRATO_VOLUME_SLIDE:int = 6;
      
      public static const FX_TREMOLO:int = 7;
      
      public static const FX_SET_PANNING:int = 8;
      
      public static const FX_SAMPLE_OFFSET:int = 9;
      
      public static const FX_VOLUME_SLIDE:int = 10;
      
      public static const FX_POSITION_JUMP:int = 11;
      
      public static const FX_SET_VOLUME:int = 12;
      
      public static const FX_PATTERN_BREAK:int = 13;
      
      public static const FX_EXTENDED_EFFECTS:int = 14;
      
      public static const FX_SET_SPEED:int = 15;
      
      public static const FX_SET_GLOBAL_VOLUME:int = 16;
      
      public static const FX_GLOBAL_VOLUME_SLIDE:int = 17;
      
      public static const FX_KEYOFF:int = 20;
      
      public static const FX_SET_ENVELOPE_POSITION:int = 21;
      
      public static const FX_PANNING_SLIDE:int = 24;
      
      public static const FX_MULTI_RETRIG_NOTE:int = 27;
      
      public static const FX_TREMOR:int = 29;
      
      public static const FX_EXTRA_FINE_PORTAMENTO:int = 31;
      
      public static const EX_FINE_PORTAMENTO_UP:int = 1;
      
      public static const EX_FINE_PORTAMENTO_DOWN:int = 2;
      
      public static const EX_GLISSANDO_CONTROL:int = 3;
      
      public static const EX_VIBRATO_CONTROL:int = 4;
      
      public static const EX_SET_FINETUNE:int = 5;
      
      public static const EX_PATTERN_LOOP:int = 6;
      
      public static const EX_TREMOLO_CONTROL:int = 7;
      
      public static const EX_RETRIG_NOTE:int = 9;
      
      public static const EX_FINE_VOLUME_SLIDE_UP:int = 10;
      
      public static const EX_FINE_VOLUME_SLIDE_DOWN:int = 11;
      
      public static const EX_NOTE_CUT:int = 12;
      
      public static const EX_NOTE_DELAY:int = 13;
      
      public static const EX_PATTERN_DELAY:int = 14;
      
      public static const VX_VOLUME_SLIDE_DOWN:int = 6;
      
      public static const VX_VOLUME_SLIDE_UP:int = 7;
      
      public static const VX_FINE_VOLUME_SLIDE_DOWN:int = 8;
      
      public static const VX_FINE_VOLUME_SLIDE_UP:int = 9;
      
      public static const VX_SET_VIBRATO_SPEED:int = 10;
      
      public static const VX_VIBRATO:int = 11;
      
      public static const VX_SET_PANNING:int = 12;
      
      public static const VX_PANNING_SLIDE_LEFT:int = 13;
      
      public static const VX_PANNING_SLIDE_RIGHT:int = 14;
      
      public static const VX_TONE_PORTAMENTO:int = 15;
      
      public static const MOD_SINE:Vector.<int> = Vector.<int>([0,24,49,74,97,120,141,161,180,197,212,224,235,244,250,253,255,253,250,244,235,224,212,197,180,161,141,120,97,74,49,24]);
      
      public static const FT2_SINE:Vector.<int> = Vector.<int>([0,-2,-3,-5,-6,-8,-9,-11,-12,-14,-16,-17,-19,-20,-22,-23,-24,-26,-27,-29,-30,-32,-33,-34,-36,-37,-38,-39,-41,-42,-43,-44,-45,-46,-47,-48,-49,-50,-51,-52,-53,-54,-55,-56,-56,-57,-58,-59,-59,-60,-60,-61,-61,-62,-62,-62,-63,-63,-63,-64,-64,-64,-64,-64,-64,-64,-64,-64,-64,-64,-63,-63,-63,-62,-62,-62,-61,-61,-60,-60,-59,-59,-58,-57,-56,-56,-55,-54,-53,-52,-51,-50,-49,-48,-47,-46,-45,-44,-43,-42,-41,-39,-38,-37,-36,-34,-33,-32,-30,-29,-27,-26,-24,-23,-22,-20,-19,-17,-16,-14,-12,-11,-9,-8,-6,-5,-3,-2,0,2,3,5,6,8,9,11,12,14,16,17,19,20,22,23,24,26,27,29,30,32,33,34,36,37,38,39,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,56,57,58,59,59,60,60,61,61,62,62,62,63,63,63,64,64,64,64,64,64,64,64,64,64,64,63,63,63,62,62,62,61,61,60,60,59,59,58,57,56,56,55,54,53,52,51,50,49,48,47,46,45,44,43,42,41,39,38,37,36,34,33,32,30,29,27,26,24,23,22,20,19,17,16,14,12,11,9,8,6,5,3,2]);
       
      
      public function XM()
      {
         super();
      }
   }
}
