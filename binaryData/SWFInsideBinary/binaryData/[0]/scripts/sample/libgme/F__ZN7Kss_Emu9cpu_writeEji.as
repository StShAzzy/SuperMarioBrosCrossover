package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN7Kss_Emu9cpu_writeEji() : void
   {
      var _loc3_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 8);
      _loc8_ = _loc1_ & 0xFF;
      _loc7_ = li32(_loc3_ + 4);
      _loc6_ = li32(_loc3_);
      if(_loc7_ != 45056)
      {
         if(_loc7_ == 36864)
         {
            _loc2_ -= 16;
            si32(_loc8_,_loc2_ + 8);
            si32(0,_loc2_ + 4);
            si32(_loc6_,_loc2_);
            ESP = _loc2_;
            F__ZN7Kss_Emu8set_bankEii();
            _loc2_ += 16;
         }
         else
         {
            var _loc5_:* = _loc7_ & 0xDFFF;
            if((uint(_loc7_ = _loc5_ ^ 0x9800)) <= 143)
            {
               si8(1,_loc6_ + 960);
               _loc2_ -= 16;
               var _loc4_:* = li32(_loc6_ + 788);
               si32((_loc4_ = li32(_loc4_ + 72)) + li32(_loc4_ + 76),_loc2_ + 4);
               _loc5_ = _loc6_ + 68080;
               si32(_loc5_,_loc2_);
               ESP = _loc2_;
               F__ZN7Scc_Apu9run_untilEi();
               _loc2_ += 16;
               si8(_loc1_,_loc5_ + _loc7_ + 84);
            }
         }
      }
      else
      {
         _loc2_ -= 16;
         si32(_loc8_,_loc2_ + 8);
         si32(1,_loc2_ + 4);
         si32(_loc6_,_loc2_);
         ESP = _loc2_;
         F__ZN7Kss_Emu8set_bankEii();
         _loc2_ += 16;
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
