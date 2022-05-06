package apparat.lzma
{
   import flash.utils.IDataInput;
   
   final class Decoder
   {
      
      public static const kTopMask:int = ~((1 << 24) - 1);
      
      public static const kNumBitModelTotalBits:int = 11;
      
      public static const kBitModelTotal:int = 1 << kNumBitModelTotalBits;
      
      public static const kNumMoveBits:int = 5;
       
      
      private var _range:int;
      
      private var _code:int;
      
      private var _stream:IDataInput;
      
      function Decoder()
      {
         super();
      }
      
      public static function initBitModels(param1:Vector.<int>) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            param1[_loc2_] = kBitModelTotal >>> 1;
            _loc2_++;
         }
      }
      
      public function setStream(param1:IDataInput) : void
      {
         this._stream = param1;
      }
      
      public function releaseStream() : void
      {
         this._stream = null;
      }
      
      public function init() : void
      {
         this._code = 0;
         this._range = -1;
         var _loc1_:int = 0;
         while(_loc1_ < 5)
         {
            this._code = this._code << 8 | this._stream.readUnsignedByte();
            _loc1_++;
         }
      }
      
      public function decodeDirectBits(param1:int) : int
      {
         var _loc3_:int = 0;
         var _loc2_:* = 0;
         var _loc4_:int = param1;
         while(_loc4_ != 0)
         {
            this._range >>>= 1;
            _loc3_ = this._code - this._range >>> 31;
            this._code -= this._range & _loc3_ - 1;
            _loc2_ = _loc2_ << 1 | 1 - _loc3_;
            if((this._range & kTopMask) == 0)
            {
               this._code = this._code << 8 | this._stream.readUnsignedByte();
               this._range <<= 8;
            }
            _loc4_--;
         }
         return _loc2_;
      }
      
      public function decodeBit(param1:Vector.<int>, param2:int) : int
      {
         var _loc3_:int = param1[param2];
         var _loc4_:int = (this._range >>> kNumBitModelTotalBits) * _loc3_;
         if((this._code ^ 2147483648) < (_loc4_ ^ 2147483648))
         {
            this._range = _loc4_;
            param1[param2] = _loc3_ + (kBitModelTotal - _loc3_ >>> kNumMoveBits);
            if((this._range & kTopMask) == 0)
            {
               this._code = this._code << 8 | this._stream.readUnsignedByte();
               this._range <<= 8;
            }
            return 0;
         }
         this._range -= _loc4_;
         this._code -= _loc4_;
         param1[param2] = _loc3_ - (_loc3_ >>> kNumMoveBits);
         if((this._range & kTopMask) == 0)
         {
            this._code = this._code << 8 | this._stream.readUnsignedByte();
            this._range <<= 8;
         }
         return 1;
      }
   }
}
