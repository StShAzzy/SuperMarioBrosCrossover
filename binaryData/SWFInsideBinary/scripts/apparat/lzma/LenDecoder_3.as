package apparat.lzma
{
   internal final class LenDecoder
   {
       
      
      private var _choice:Vector.<int>;
      
      private var _lowCoder:Vector.<BitTreeDecoder>;
      
      private var _midCoder:Vector.<BitTreeDecoder>;
      
      private var _highCoder:BitTreeDecoder;
      
      private var _numPosStates:int = 0;
      
      public function LenDecoder()
      {
         this._choice = new Vector.<int>(2,true);
         this._lowCoder = new Vector.<BitTreeDecoder>(Base.kNumPosStatesMax,true);
         this._midCoder = new Vector.<BitTreeDecoder>(Base.kNumPosStatesMax,true);
         this._highCoder = new BitTreeDecoder(Base.kNumHighLenBits);
         super();
      }
      
      public function create(param1:int) : void
      {
         while(this._numPosStates < param1)
         {
            this._lowCoder[this._numPosStates] = new BitTreeDecoder(Base.kNumLowLenBits);
            this._midCoder[this._numPosStates] = new BitTreeDecoder(Base.kNumMidLenBits);
            ++this._numPosStates;
         }
      }
      
      public function init() : void
      {
         Decoder.initBitModels(this._choice);
         var _loc1_:int = 0;
         while(_loc1_ < this._numPosStates)
         {
            this._lowCoder[_loc1_].init();
            this._midCoder[_loc1_].init();
            _loc1_++;
         }
         this._highCoder.init();
      }
      
      public function decode(param1:Decoder, param2:int) : int
      {
         if(param1.decodeBit(this._choice,0) == 0)
         {
            return this._lowCoder[param2].decode(param1);
         }
         var _loc3_:int = Base.kNumLowLenSymbols;
         if(param1.decodeBit(this._choice,1) == 0)
         {
            _loc3_ += this._midCoder[param2].decode(param1);
         }
         else
         {
            _loc3_ += Base.kNumMidLenSymbols + this._highCoder.decode(param1);
         }
         return _loc3_;
      }
   }
}
