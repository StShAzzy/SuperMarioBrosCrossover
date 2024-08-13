package sample.libgme
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN14Effects_Buffer6configERKNS_8config_tE() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:Number = NaN;
      var _loc5_:int = 0;
      var _loc4_:int = 0;
      var _loc12_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc11_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc12_ = li32(_loc1_ + 4);
      si32(_loc12_ = _loc12_ + 1,_loc1_ + 4);
      _loc12_ = li8(_loc1_ + 424);
      _loc11_ = li32(_loc3_ + 4);
      if(_loc12_ == 0)
      {
         _loc12_ = li8(_loc11_ + 56);
         if(_loc12_ != 0)
         {
            _loc12_ = li32(_loc1_ + 460);
            if(_loc12_ != 0)
            {
               _loc2_ -= 16;
               si32(8192,_loc2_ + 8);
               si32(0,_loc2_ + 4);
               si32(li32(_loc1_ + 456),_loc2_);
               ESP = _loc2_;
               Fmemset();
               _loc2_ += 16;
               _loc2_ -= 16;
               si32(32768,_loc2_ + 8);
               si32(0,_loc2_ + 4);
               si32(li32(_loc1_ + 448),_loc2_);
               ESP = _loc2_;
               Fmemset();
               _loc2_ += 16;
            }
         }
      }
      _loc2_ -= 16;
      si32(57,_loc2_ + 8);
      si32(_loc11_,_loc2_ + 4);
      _loc12_ = _loc1_ + 368;
      si32(_loc12_,_loc2_);
      ESP = _loc2_;
      Fmemcpy();
      _loc2_ += 16;
      _loc12_ = li8(_loc1_ + 424);
      if(_loc12_ == 0)
      {
         _loc11_ = _loc1_ + 20;
         si32(_loc11_,_loc1_ + 328);
         var _loc10_:int = _loc1_ + 64;
         si32(_loc10_,_loc1_ + 332);
         _loc12_ = _loc1_ + 108;
         si32(_loc12_,_loc1_ + 336);
         si32(_loc11_,_loc1_ + 340);
         si32(_loc10_,_loc1_ + 344);
         si32(_loc12_,_loc1_ + 348);
         si32(_loc11_,_loc1_ + 352);
         si32(_loc10_,_loc1_ + 356);
         si32(_loc12_,_loc1_ + 360);
         _loc9_ = _loc11_;
         _loc8_ = _loc11_;
      }
      else
      {
         var _loc7_:* = lf64(_loc1_ + 368);
         si32(_loc12_ = 32768 - (int(_loc7_ = (_loc7_ = _loc7_ * 32768) + 0.5)),_loc1_ + 472);
         _loc12_ = 65536 - _loc12_;
         si32(_loc12_,_loc1_ + 476);
         _loc7_ = lf64(_loc1_ + 376);
         si32(_loc12_ = 32768 - (int(_loc7_ = (_loc7_ = _loc7_ * 32768) + 0.5)),_loc1_ + 480);
         _loc12_ = 65536 - _loc12_;
         si32(_loc12_,_loc1_ + 484);
         _loc7_ = lf64(_loc1_ + 416);
         si32(_loc12_ = _loc7_ = (_loc7_ = _loc7_ * 32768) + 0.5,_loc1_ + 508);
         _loc7_ = lf64(_loc1_ + 392);
         si32(_loc12_ = _loc7_ = (_loc7_ = _loc7_ * 32768) + 0.5,_loc1_ + 496);
         _loc6_ = _loc12_ = li32(_loc1_ + 8);
         _loc7_ = lf64(_loc1_ + 408);
         _loc11_ = _loc7_ = (_loc7_ = _loc7_ * 0.0005) * _loc6_;
         _loc7_ = lf64(_loc1_ + 400);
         _loc4_ = 16384 - ((_loc12_ = (_loc5_ = _loc7_ = (_loc7_ = _loc7_ * 0.001) * _loc6_) - _loc11_) << 1);
         _loc8_ = 0;
         if(_loc4_ >= 0)
         {
            _loc8_ = 16382;
            if(_loc4_ <= _loc8_)
            {
               _loc8_ = _loc4_;
            }
         }
         si32(_loc8_,_loc1_ + 500);
         _loc12_ = _loc5_ + _loc11_;
         _loc12_ = _loc12_ << 1;
         _loc4_ = 16385 - _loc12_;
         _loc8_ = 1;
         if(_loc4_ >= 1)
         {
            _loc8_ = 16383;
            if(_loc4_ <= _loc8_)
            {
               _loc8_ = _loc4_;
            }
         }
         si32(_loc8_,_loc1_ + 504);
         _loc7_ = lf64(_loc1_ + 384);
         _loc5_ = _loc7_ = (_loc7_ = _loc7_ * 0.001) * _loc6_;
         _loc12_ = _loc11_ - _loc5_;
         _loc4_ = _loc12_ + 4095;
         _loc8_ = _loc9_ = 0;
         if(_loc4_ >= 0)
         {
            _loc8_ = 4095;
            if(_loc4_ <= _loc8_)
            {
               _loc8_ = _loc4_;
            }
         }
         si32(_loc8_,_loc1_ + 488);
         _loc12_ = 4095 - _loc11_;
         if((_loc11_ = _loc12_ - _loc5_) >= 0)
         {
            _loc9_ = 4095;
            if(_loc11_ <= _loc9_)
            {
               _loc9_ = _loc11_;
            }
         }
         si32(_loc9_,_loc1_ + 492);
         _loc8_ = _loc1_ + 20;
         si32(_loc8_,_loc1_ + 328);
         _loc10_ = _loc1_ + 152;
         si32(_loc10_,_loc1_ + 332);
         _loc12_ = _loc1_ + 196;
         si32(_loc12_,_loc1_ + 336);
         _loc9_ = _loc1_ + 64;
         si32(_loc9_,_loc1_ + 340);
         si32(_loc10_,_loc1_ + 344);
         si32(_loc12_,_loc1_ + 348);
         _loc11_ = _loc1_ + 108;
         si32(_loc11_,_loc1_ + 352);
         _loc12_ = _loc1_ + 240;
         si32(_loc12_,_loc1_ + 356);
         _loc12_ = _loc1_ + 284;
         si32(_loc12_,_loc1_ + 360);
      }
      _loc12_ = li32(_loc1_ + 440);
      if(_loc12_ <= 6)
      {
         si32(_loc8_,_loc1_ + 332);
         si32(_loc8_,_loc1_ + 336);
         si32(_loc9_,_loc1_ + 344);
         si32(_loc9_,_loc1_ + 348);
         si32(_loc11_,_loc1_ + 356);
         si32(_loc11_,_loc1_ + 360);
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
