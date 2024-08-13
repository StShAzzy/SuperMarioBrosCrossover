package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN8Snes_Spc4skipEl() : void
   {
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:int = 0;
      var _loc5_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc9_ = li32(_loc3_);
      if(_loc1_ >= 128001)
      {
         si32(0,_loc9_ + 592);
         si32(0,_loc9_ + 596);
         _loc2_ -= 16;
         var _loc8_:* = _loc9_ + 600;
         si32(_loc8_,_loc2_ + 8);
         _loc8_ = _loc1_ + -64000;
         si32(_loc8_,_loc2_ + 4);
         si32(_loc9_,_loc2_);
         ESP = _loc2_;
         F__ZN8Snes_Spc4playElPs();
         _loc2_ += 16;
         _loc1_ = sample.libgme.eax;
         if(_loc1_ == 0)
         {
            var _loc6_:* = (_loc6_ = (_loc8_ = li32(_loc9_ + 592)) ^ -1) & li32(_loc9_ + 596);
            si8(_loc6_,_loc9_ + 180);
            si8(_loc8_,_loc9_ + 164);
            _loc1_ = 64000;
            _loc8_ = li8(_loc9_ + 196);
            if((_loc8_ & 0x20) == 0)
            {
               _loc2_ -= 16;
               si32(255,_loc2_ + 4);
               _loc5_ = li8(_loc9_ + 213) << 11;
               _loc1_ = li8(_loc9_ + 197) << 8;
               _loc4_ = 65536 - _loc1_;
               if(uint(_loc5_) >= uint(_loc4_))
               {
                  _loc5_ = _loc4_;
               }
               si32(_loc5_,_loc2_ + 8);
               _loc8_ = _loc9_ + _loc1_;
               si32(_loc8_ = _loc8_ + 948,_loc2_);
               ESP = _loc2_;
               Fmemset();
               _loc2_ += 16;
               _loc1_ = 64000;
               addr195:
               _loc2_ -= 16;
               si32(0,_loc2_ + 8);
               si32(_loc1_,_loc2_ + 4);
               si32(_loc9_,_loc2_);
               ESP = _loc2_;
               F__ZN8Snes_Spc4playElPs();
               _loc2_ += 16;
               _loc1_ = sample.libgme.eax;
            }
            §§goto(addr195);
         }
         eax = _loc1_;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      §§goto(addr195);
   }
}
