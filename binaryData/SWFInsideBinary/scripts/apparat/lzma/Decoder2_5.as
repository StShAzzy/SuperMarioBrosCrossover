package apparat.lzma
{
   internal final class Decoder2
   {
       
      
      private var _decoders:Vector.<int>;
      
      public function Decoder2()
      {
         this._decoders = new Vector.<int>(768,true);
         super();
      }
      
      public function init() : void
      {
         Decoder.initBitModels(this._decoders);
      }
      
      public function decodeNormal(param1:Decoder) : int
      {
         var _loc2_:* = 1;
         do
         {
            _loc2_ = _loc2_ << 1 | param1.decodeBit(this._decoders,_loc2_);
         }
         while(_loc2_ < 256);
         
         return _loc2_;
      }
      
      public function decodeWithMatchByte(param1:Decoder, param2:int) : int
      {
         var _loc4_:* = 0;
         var _loc5_:int = 0;
         var _loc3_:* = 1;
         do
         {
            _loc4_ = param2 >> 7 & 1;
            param2 <<= 1;
            _loc5_ = param1.decodeBit(this._decoders,(1 + _loc4_ << 8) + _loc3_);
            _loc3_ = _loc3_ << 1 | _loc5_;
            if(_loc4_ != _loc5_)
            {
               while(_loc3_ < 256)
               {
                  _loc3_ = _loc3_ << 1 | param1.decodeBit(this._decoders,_loc3_);
               }
               break;
            }
         }
         while(_loc3_ < 256);
         
         return _loc3_;
      }
   }
}
