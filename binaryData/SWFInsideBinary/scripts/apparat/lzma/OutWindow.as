package apparat.lzma
{
   import flash.utils.IDataOutput;
   
   final class OutWindow
   {
       
      
      private var _buffer:Vector.<int>;
      
      private var _pos:int;
      
      private var _windowSize:int = 0;
      
      private var _streamPos:int;
      
      private var _stream:IDataOutput;
      
      function OutWindow()
      {
         super();
      }
      
      public function create(param1:int) : void
      {
         if(this._buffer == null || this._windowSize != param1)
         {
            this._buffer = new Vector.<int>(param1,true);
         }
         this._windowSize = param1;
         this._pos = 0;
         this._streamPos = 0;
      }
      
      public function setStream(param1:IDataOutput) : void
      {
         this.releaseStream();
         this._stream = param1;
      }
      
      public function releaseStream() : void
      {
         this.flush();
         this._stream = null;
      }
      
      public function init(param1:Boolean) : void
      {
         if(!param1)
         {
            this._streamPos = 0;
            this._pos = 0;
         }
      }
      
      public function flush() : void
      {
         var _loc1_:int = this._pos - this._streamPos;
         if(_loc1_ == 0)
         {
            return;
         }
         var _loc2_:int = this._streamPos;
         var _loc3_:int = this._streamPos + _loc1_;
         while(_loc2_ < _loc3_)
         {
            this._stream.writeByte(this._buffer[_loc2_]);
            _loc2_++;
         }
         if(this._pos >= this._windowSize)
         {
            this._pos = 0;
         }
         this._streamPos = this._pos;
      }
      
      public function copyBlock(param1:int, param2:int) : void
      {
         var _loc3_:int = this._pos - param1 - 1;
         if(_loc3_ < 0)
         {
            _loc3_ += this._windowSize;
         }
         while(param2 != 0)
         {
            if(_loc3_ >= this._windowSize)
            {
               _loc3_ = 0;
            }
            var _loc4_:*;
            this._buffer[_loc4_ = this._pos++] = this._buffer[_loc3_++];
            if(this._pos >= this._windowSize)
            {
               this.flush();
            }
            param2--;
         }
      }
      
      public function putByte(param1:int) : void
      {
         var _loc2_:* = this._pos++;
         this._buffer[_loc2_] = param1;
         if(this._pos >= this._windowSize)
         {
            this.flush();
         }
      }
      
      public function getByte(param1:int) : int
      {
         var _loc2_:int = this._pos - param1 - 1;
         if(_loc2_ < 0)
         {
            _loc2_ += this._windowSize;
         }
         return this._buffer[_loc2_];
      }
   }
}
