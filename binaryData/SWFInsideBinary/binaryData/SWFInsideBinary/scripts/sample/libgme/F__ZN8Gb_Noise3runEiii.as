package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN8Gb_Noise3runEiiiE5table;
   
   public function F__ZN8Gb_Noise3runEiii() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc10_:* = 0;
      var _loc5_:* = 0;
      var _loc13_:* = 0;
      var _loc15_:int = 0;
      var _loc11_:* = 0;
      var _loc7_:int = 0;
      var _loc16_:* = 0;
      var _loc14_:* = 0;
      var _loc12_:* = 0;
      var _loc6_:int = 0;
      var _loc8_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = li32(_loc4_ = _loc2_);
      _loc16_ = (_loc16_ = li8((_loc16_ = li32(_loc3_ + 24)) + 3)) & 8;
      _loc15_ = 13 - _loc16_;
      _loc14_ = 2 << _loc15_;
      _loc16_ = li32(_loc3_ + 56);
      _loc14_ &= _loc16_;
      _loc16_ = li32(_loc3_ + 36);
      _loc13_ = li32(_loc4_ + 12);
      _loc12_ = _loc16_ & _loc13_;
      if(_loc14_ != 0)
      {
         _loc12_ = int(0 - _loc12_);
      }
      _loc11_ = li32(_loc3_ + 32);
      _loc10_ = li32(_loc4_ + 4);
      if(_loc12_ != _loc11_)
      {
         si32(_loc12_,_loc3_ + 32);
         _loc2_ -= 16;
         si32(_loc9_,_loc2_ + 12);
         var _loc9_:*;
         si32(_loc9_ = int(_loc12_ - _loc11_),_loc2_ + 8);
         si32(_loc14_ = int(int(li32(_loc9_) * _loc10_) + li32((_loc9_ = li32(_loc3_ + 16)) + 4)),_loc2_ + 4);
         si32(li32(_loc3_ + 52),_loc2_);
         ESP = _loc2_;
         F__ZNK10Blip_SynthILi8ELi1EE16offset_resampledEjiP11Blip_Buffer();
         _loc2_ += 16;
      }
      _loc11_ = _loc5_ = li32(_loc4_ + 8);
      if(_loc13_ != 0)
      {
         _loc11_ = int((_loc16_ = li32(_loc3_ + 28)) + _loc10_);
      }
      if(_loc11_ < _loc5_)
      {
         _loc16_ = li32(_loc10_ = li32(_loc3_ + 16));
         _loc6_ = (_loc14_ = li32(_loc10_ + 4)) + int(_loc11_ * _loc16_);
         _loc13_ = li8(int(__ZZN8Gb_Noise3runEiiiE5table + ((_loc14_ = li8((_loc14_ = li32(_loc3_ + 24)) + 3)) & 7))) << (int(_loc14_ >>> 4));
         _loc7_ = _loc16_ * _loc13_;
         _loc12_ <<= 1;
         _loc8_ = li32(_loc3_ + 56);
         do
         {
            _loc16_ = (_loc16_ = int((_loc16_ = int(_loc8_ >>> _loc15_)) + 1)) & 2;
            _loc8_ <<= 1;
            if(_loc16_ != 0)
            {
               _loc2_ -= 16;
               si32(_loc10_,_loc2_ + 12);
               si32(_loc12_ = int(0 - _loc12_),_loc2_ + 8);
               si32(_loc6_,_loc2_ + 4);
               si32(li32(_loc3_ + 52),_loc2_);
               ESP = _loc2_;
               F__ZNK10Blip_SynthILi8ELi1EE16offset_resampledEjiP11Blip_Buffer();
               _loc2_ += 16;
               _loc8_ |= 1;
            }
            _loc11_ += _loc13_;
            _loc6_ += _loc7_;
         }
         while(_loc11_ < _loc5_);
         
         si32(_loc8_,_loc3_ + 56);
         si32(_loc16_ = _loc12_ >> 1,_loc3_ + 32);
      }
      si32(_loc16_ = int(_loc11_ - _loc5_),_loc3_ + 28);
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
