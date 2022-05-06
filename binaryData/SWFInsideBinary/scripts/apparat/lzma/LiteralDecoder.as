package apparat.lzma
{
   final class LiteralDecoder
   {
       
      
      private var _coders:Vector.<Decoder2>;
      
      private var _numPrevBits:int;
      
      private var _numPosBits:int;
      
      private var _posMask:int;
      
      function LiteralDecoder()
      {
         super();
      }
      
      public function create(param1:int, param2:int) : void
      {
         if(this._coders != null && this._numPrevBits == param2 && this._numPosBits == param1)
         {
            return;
         }
         this._numPosBits = param1;
         this._posMask = (1 << param1) - 1;
         this._numPrevBits = param2;
         var _loc3_:* = 1 << this._numPrevBits + this._numPosBits;
         this._coders = new Vector.<Decoder2>(_loc3_,true);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            this._coders[_loc4_] = new Decoder2();
            _loc4_++;
         }
      }
      
      public function init() : void
      {
         var _loc1_:* = 1 << this._numPrevBits + this._numPosBits;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this._coders[_loc2_].init();
            _loc2_++;
         }
      }
      
      public function getDecoder(param1:int, param2:int) : Decoder2
      {
         return this._coders[int(((param1 & this._posMask) << this._numPrevBits) + ((param2 & 255) >>> 8 - this._numPrevBits))];
      }
   }
}
