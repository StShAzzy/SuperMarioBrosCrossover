package apparat.lzma
{
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   
   public final class LZMADecoder
   {
       
      
      private var _outWindow:OutWindow;
      
      private var _rangeDecoder:Decoder;
      
      private var _isMatchDecoders:Vector.<int>;
      
      private var _isRepDecoders:Vector.<int>;
      
      private var _isRepG0Decoders:Vector.<int>;
      
      private var _isRepG1Decoders:Vector.<int>;
      
      private var _isRepG2Decoders:Vector.<int>;
      
      private var _isRep0LongDecoders:Vector.<int>;
      
      private var _posSlotDecoder:Vector.<BitTreeDecoder>;
      
      private var _posDecoders:Vector.<int>;
      
      private var _posAlignDecoder:BitTreeDecoder;
      
      private var _lenDecoder:LenDecoder;
      
      private var _repLenDecoder:LenDecoder;
      
      private var _literalDecoder:LiteralDecoder;
      
      private var _dictionarySize:int = -1;
      
      private var _dictionarySizeCheck:int = -1;
      
      private var _posStateMask:int;
      
      public function LZMADecoder()
      {
         this._outWindow = new OutWindow();
         this._rangeDecoder = new Decoder();
         this._isMatchDecoders = new Vector.<int>(Base.kNumStates << Base.kNumPosStatesBitsMax,true);
         this._isRepDecoders = new Vector.<int>(Base.kNumStates,true);
         this._isRepG0Decoders = new Vector.<int>(Base.kNumStates,true);
         this._isRepG1Decoders = new Vector.<int>(Base.kNumStates,true);
         this._isRepG2Decoders = new Vector.<int>(Base.kNumStates,true);
         this._isRep0LongDecoders = new Vector.<int>(Base.kNumStates << Base.kNumPosStatesBitsMax,true);
         this._posSlotDecoder = new Vector.<BitTreeDecoder>(Base.kNumLenToPosStates,true);
         this._posDecoders = new Vector.<int>(Base.kNumFullDistances - Base.kEndPosModelIndex,true);
         this._posAlignDecoder = new BitTreeDecoder(Base.kNumAlignBits);
         this._lenDecoder = new LenDecoder();
         this._repLenDecoder = new LenDecoder();
         this._literalDecoder = new LiteralDecoder();
         super();
         var _loc1_:int = 0;
         while(_loc1_ < Base.kNumLenToPosStates)
         {
            this._posSlotDecoder[_loc1_] = new BitTreeDecoder(Base.kNumPosSlotBits);
            _loc1_++;
         }
      }
      
      private function setDictionarySize(param1:int) : Boolean
      {
         if(param1 < 0)
         {
            return false;
         }
         if(this._dictionarySize != param1)
         {
            this._dictionarySize = param1;
            this._dictionarySizeCheck = Math.max(this._dictionarySize,1);
            this._outWindow.create(Math.max(this._dictionarySizeCheck,1 << 12));
         }
         return true;
      }
      
      private function setLcLpPb(param1:int, param2:int, param3:int) : Boolean
      {
         if(param1 > Base.kNumLitContextBitsMax || param2 > 4 || param3 > Base.kNumPosStatesBitsMax)
         {
            return false;
         }
         this._literalDecoder.create(param2,param1);
         var _loc4_:* = 1 << param3;
         this._lenDecoder.create(_loc4_);
         this._repLenDecoder.create(_loc4_);
         this._posStateMask = _loc4_ - 1;
         return true;
      }
      
      private function init() : void
      {
         var _loc1_:int = 0;
         this._outWindow.init(false);
         Decoder.initBitModels(this._isMatchDecoders);
         Decoder.initBitModels(this._isRep0LongDecoders);
         Decoder.initBitModels(this._isRepDecoders);
         Decoder.initBitModels(this._isRepG0Decoders);
         Decoder.initBitModels(this._isRepG1Decoders);
         Decoder.initBitModels(this._isRepG2Decoders);
         Decoder.initBitModels(this._posDecoders);
         this._literalDecoder.init();
         _loc1_ = 0;
         while(_loc1_ < Base.kNumLenToPosStates)
         {
            this._posSlotDecoder[_loc1_].init();
            _loc1_++;
         }
         this._lenDecoder.init();
         this._repLenDecoder.init();
         this._posAlignDecoder.init();
         this._rangeDecoder.init();
      }
      
      public function code(param1:IDataInput, param2:IDataOutput, param3:uint) : Boolean
      {
         var _loc11_:* = 0;
         var _loc12_:Decoder2 = null;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         this._rangeDecoder.setStream(param1);
         this._outWindow.setStream(param2);
         this.init();
         var _loc4_:int = Base.stateInit();
         var _loc5_:uint = 0;
         var _loc6_:int = 0;
         var _loc7_:* = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         while(param3 < 0 || _loc5_ < param3)
         {
            _loc11_ = _loc5_ & this._posStateMask;
            if(this._rangeDecoder.decodeBit(this._isMatchDecoders,(_loc4_ << Base.kNumPosStatesBitsMax) + _loc11_) == 0)
            {
               _loc12_ = this._literalDecoder.getDecoder(_loc5_,_loc6_);
               if(!Base.stateIsCharState(_loc4_))
               {
                  _loc6_ = _loc12_.decodeWithMatchByte(this._rangeDecoder,this._outWindow.getByte(_loc7_));
               }
               else
               {
                  _loc6_ = _loc12_.decodeNormal(this._rangeDecoder);
               }
               this._outWindow.putByte(_loc6_);
               _loc4_ = Base.stateUpdateChar(_loc4_);
               _loc5_++;
            }
            else
            {
               if(this._rangeDecoder.decodeBit(this._isRepDecoders,_loc4_) == 1)
               {
                  _loc13_ = 0;
                  if(this._rangeDecoder.decodeBit(this._isRepG0Decoders,_loc4_) == 0)
                  {
                     if(this._rangeDecoder.decodeBit(this._isRep0LongDecoders,(_loc4_ << Base.kNumPosStatesBitsMax) + _loc11_) == 0)
                     {
                        _loc4_ = Base.stateUpdateShortRep(_loc4_);
                        _loc13_ = 1;
                     }
                  }
                  else
                  {
                     if(this._rangeDecoder.decodeBit(this._isRepG1Decoders,_loc4_) == 0)
                     {
                        _loc14_ = _loc8_;
                     }
                     else
                     {
                        if(this._rangeDecoder.decodeBit(this._isRepG2Decoders,_loc4_) == 0)
                        {
                           _loc14_ = _loc9_;
                        }
                        else
                        {
                           _loc14_ = _loc10_;
                           _loc10_ = _loc9_;
                        }
                        _loc9_ = _loc8_;
                     }
                     _loc8_ = _loc7_;
                     _loc7_ = _loc14_;
                  }
                  if(_loc13_ == 0)
                  {
                     _loc13_ = this._repLenDecoder.decode(this._rangeDecoder,_loc11_) + Base.kMatchMinLen;
                     _loc4_ = Base.stateUpdateRep(_loc4_);
                  }
               }
               else
               {
                  _loc10_ = _loc9_;
                  _loc9_ = _loc8_;
                  _loc8_ = _loc7_;
                  _loc13_ = Base.kMatchMinLen + this._lenDecoder.decode(this._rangeDecoder,_loc11_);
                  _loc4_ = Base.stateUpdateMatch(_loc4_);
                  _loc15_ = this._posSlotDecoder[Base.getLenToPosState(_loc13_)].decode(this._rangeDecoder);
                  if(_loc15_ >= Base.kStartPosModelIndex)
                  {
                     _loc16_ = (_loc15_ >> 1) - 1;
                     _loc7_ = (2 | _loc15_ & 1) << _loc16_;
                     if(_loc15_ < Base.kEndPosModelIndex)
                     {
                        _loc7_ += BitTreeDecoder.reverseDecode(this._posDecoders,_loc7_ - _loc15_ - 1,this._rangeDecoder,_loc16_);
                     }
                     else
                     {
                        _loc7_ += this._rangeDecoder.decodeDirectBits(_loc16_ - Base.kNumAlignBits) << Base.kNumAlignBits;
                        if((_loc7_ = _loc7_ += this._rangeDecoder.decodeDirectBits(_loc16_ - Base.kNumAlignBits) << Base.kNumAlignBits + this._posAlignDecoder.reverseDecode(this._rangeDecoder)) < 0)
                        {
                           if(_loc7_ == -1)
                           {
                              break;
                           }
                           return false;
                        }
                     }
                  }
                  else
                  {
                     _loc7_ = _loc15_;
                  }
               }
               if(_loc7_ >= _loc5_ || _loc7_ >= this._dictionarySizeCheck)
               {
                  return false;
               }
               this._outWindow.copyBlock(_loc7_,_loc13_);
               _loc5_ += _loc13_;
               _loc6_ = this._outWindow.getByte(0);
            }
         }
         this._outWindow.flush();
         this._outWindow.releaseStream();
         this._rangeDecoder.releaseStream();
         return true;
      }
      
      public function setDecoderProperties(param1:Vector.<int>) : Boolean
      {
         if(param1.length < 5)
         {
            return false;
         }
         var _loc2_:* = param1[0] & 0xFF;
         var _loc3_:int = _loc2_ % 9;
         var _loc4_:int = _loc2_ / 9;
         var _loc5_:int = _loc4_ % 5;
         var _loc6_:int = _loc4_ / 5;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         while(_loc8_ < 4)
         {
            _loc7_ += (param1[int(1 + _loc8_)] & 0xFF) << _loc8_ * 8;
            _loc8_++;
         }
         if(!this.setLcLpPb(_loc3_,_loc5_,_loc6_))
         {
            return false;
         }
         return this.setDictionarySize(_loc7_);
      }
   }
}
