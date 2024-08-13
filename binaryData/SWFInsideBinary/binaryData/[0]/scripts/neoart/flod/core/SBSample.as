package neoart.flod.core
{
   import flash.utils.*;
   
   public class SBSample
   {
       
      
      public var name:String = "";
      
      public var bits:int = 8;
      
      public var length:int;
      
      public var loopStart:int;
      
      public var loopLen:int;
      
      public var loopMode:int;
      
      public var volume:int;
      
      public var data:Vector.<Number>;
      
      public function SBSample()
      {
         super();
      }
      
      public function store(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc4_:* = this.length;
         this.data = new Vector.<Number>(_loc4_,true);
         if(this.bits == 8)
         {
            _loc5_ = param1.position + _loc4_;
            if(_loc5_ > param1.length)
            {
               _loc4_ = param1.length - param1.position;
            }
            _loc3_ = 0;
            while(_loc3_ < _loc4_)
            {
               _loc6_ = param1.readByte() + _loc2_;
               if(_loc6_ > 127)
               {
                  _loc6_ -= 256;
               }
               else if(_loc6_ < -128)
               {
                  _loc6_ += 256;
               }
               this.data[_loc3_] = _loc6_ * 0.0078125;
               _loc2_ = _loc6_;
               _loc3_++;
            }
         }
         else
         {
            _loc5_ = param1.position + (_loc4_ << 1);
            if(_loc5_ > param1.length)
            {
               _loc4_ = param1.length - param1.position >> 1;
            }
            _loc3_ = 0;
            while(_loc3_ < _loc4_)
            {
               _loc6_ = param1.readShort() + _loc2_;
               if(_loc6_ > 32767)
               {
                  _loc6_ -= 65536;
               }
               else if(_loc6_ < -32768)
               {
                  _loc6_ += 65536;
               }
               this.data[_loc3_] = _loc6_ * 0.00003051758;
               _loc2_ = _loc6_;
               _loc3_++;
            }
         }
      }
   }
}
