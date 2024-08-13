package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN7Nsf_Emu8cpu_readEj() : void
   {
      var _loc3_:* = 0;
      var _loc10_:* = 0;
      var _loc1_:* = 0;
      var _loc11_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc11_ = _loc1_ & 0x07FF;
      _loc10_ = li32(_loc3_);
      var _loc9_:*;
      _loc8_ = li8((_loc9_ = _loc10_ + _loc11_) + 272);
      _loc9_ = _loc1_ & 0xE000;
      if(_loc9_ != 0)
      {
         _loc7_ = li32(_loc10_ + 2328);
         _loc9_ = _loc1_ & -2048;
         _loc8_ = li8(_loc9_ = (_loc9_ = li32(_loc9_ = _loc7_ + (_loc9_ >>> 9))) + _loc11_);
         if(uint(_loc1_) <= 32767)
         {
            _loc9_ = _loc10_ + (_loc1_ & 0x1FFF);
            _loc8_ = li8(_loc9_ + 5512);
            if(uint(_loc1_) <= 24575)
            {
               if(_loc1_ != 18432)
               {
                  if(_loc1_ == 16405)
                  {
                     _loc2_ -= 16;
                     si32((_loc9_ = li32(_loc7_ + 132)) + li32(_loc7_ + 136),_loc2_ + 4);
                     _loc9_ = _loc10_ + 2576;
                     si32(_loc9_,_loc2_);
                     ESP = _loc2_;
                     F__ZN7Nes_Apu11read_statusEi();
                     _loc2_ += 16;
                     _loc8_ = sample.libgme.eax;
                  }
               }
               else
               {
                  _loc5_ = li32(_loc10_ + 2564);
                  if(_loc5_ != 0)
                  {
                     _loc9_ = li32(_loc5_ + 100);
                     _loc4_ = _loc9_ & 0x7F;
                     _loc9_ &= 128;
                     if(_loc9_ &= 128 != 0)
                     {
                        _loc9_ = _loc4_ + 1;
                        si32(_loc9_ = _loc9_ | 0x80,_loc5_ + 100);
                     }
                     _loc9_ = _loc5_ + _loc4_;
                     _loc8_ = li8(_loc9_ + 104);
                  }
               }
               §§goto(addr219);
            }
         }
      }
      addr219:
      eax = _loc8_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
