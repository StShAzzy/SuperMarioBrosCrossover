package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN9Gb_Square11clock_sweepEv() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc9_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc9_ = li32(_loc1_ + 24);
      var _loc8_:*;
      if((_loc7_ = (_loc8_ = (_loc8_ = li8(_loc9_)) >>> 4) & 7) != 0)
      {
         _loc6_ = li32(_loc1_ + 56);
         if(_loc6_ != 0)
         {
            _loc8_ = _loc6_ + -1;
            si32(_loc8_,_loc1_ + 56);
            if(_loc8_ == 0)
            {
               si32(_loc7_,_loc1_ + 56);
               _loc8_ = li32(_loc1_ + 60);
               si8(_loc8_,_loc9_ + 3);
               _loc8_ = li8(_loc1_ + 61);
               var _loc5_:*;
               var _loc4_:*;
               si8(_loc5_ = _loc8_ & 7 | (_loc4_ = li8((_loc8_ = li32(_loc1_ + 24)) + 4)) & 0xF8,_loc8_ + 4);
               _loc7_ = li32(_loc1_ + 60);
               _loc8_ = li32(_loc1_ + 24);
               _loc9_ = _loc7_ >> ((_loc8_ = li8(_loc8_)) & 7);
               _loc8_ &= 8;
               if(_loc8_ &= 8 != 0)
               {
                  _loc9_ = 0 - _loc9_;
               }
               _loc9_ += _loc7_;
               si32(_loc9_ += _loc7_,_loc1_ + 60);
               if(_loc9_ <= -1)
               {
                  si32(0,_loc1_ + 60);
               }
               else if(_loc9_ >= 2048)
               {
                  si32(0,_loc1_ + 56);
                  si32(2048,_loc1_ + 60);
               }
            }
         }
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
