package apparat.lzma
{
   final class BitTreeDecoder
   {
       
      
      private var _models:Vector.<int>;
      
      private var _numBitLevels:int;
      
      function BitTreeDecoder(param1:int)
      {
         super();
         this._numBitLevels = param1;
         this._models = new Vector.<int>(1 << param1,true);
      }
      
      public static function reverseDecode(param1:Vector.<int>, param2:int, param3:Decoder, param4:int) : int
      {
         var _loc7_:int = 0;
         var _loc5_:* = 1;
         var _loc6_:* = 0;
         var _loc8_:int = 0;
         while(_loc8_ < param4)
         {
            _loc7_ = param3.decodeBit(param1,param2 + _loc5_);
            _loc5_ = int((_loc5_ <<= 1) + _loc7_);
            _loc6_ |= _loc7_ << _loc8_;
            _loc8_++;
         }
         return _loc6_;
      }
      
      public function init() : void
      {
         Decoder.initBitModels(this._models);
      }
      
      public function decode(param1:Decoder) : int
      {
         var _loc2_:int = 1;
         var _loc3_:int = this._numBitLevels;
         while(_loc3_ != 0)
         {
            _loc2_ = (_loc2_ << 1) + param1.decodeBit(this._models,_loc2_);
            _loc3_--;
         }
         return _loc2_ - (1 << this._numBitLevels);
      }
      
      public function reverseDecode(param1:Decoder) : int
      {
         var _loc4_:int = 0;
         var _loc2_:* = 1;
         var _loc3_:* = 0;
         var _loc5_:int = 0;
         while(_loc5_ < this._numBitLevels)
         {
            _loc4_ = param1.decodeBit(this._models,_loc2_);
            _loc2_ <<= 1;
            _loc2_ += _loc4_;
            _loc3_ |= _loc4_ << _loc5_;
            _loc5_++;
         }
         return _loc3_;
      }
   }
}
