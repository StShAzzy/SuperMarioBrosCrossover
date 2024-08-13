package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN9Gb_Square3runEiiiE5table;
   
   public function F__ZN9Gb_Square3runEiii() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc14_:* = 0;
      var _loc10_:* = 0;
      var _loc1_:* = 0;
      var _loc13_:* = 0;
      var _loc11_:* = 0;
      var _loc15_:* = 0;
      var _loc7_:* = 0;
      var _loc12_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc4_ = _loc2_;
      _loc3_ = li32(_loc4_);
      _loc15_ = li32(_loc3_ + 60);
      _loc14_ = 0;
      if(_loc15_ != 2048)
      {
         _loc14_ = li32(_loc4_ + 12);
      }
      _loc13_ = li32(_loc3_ + 36);
      _loc12_ = _loc13_ & _loc14_;
      _loc11_ = li32(_loc3_ + 24);
      _loc15_ = (_loc15_ = li8(_loc11_ + 1)) >>> 6;
      _loc15_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN9Gb_Square3runEiiiE5table + _loc15_;
      _loc10_ = li8(_loc15_);
      _loc15_ = li32(_loc3_ + 64);
      if(_loc15_ >= _loc10_)
      {
         _loc12_ = 0 - _loc12_;
      }
      _loc15_ = li8(_loc11_ + 3);
      var _loc9_:* = li8(_loc11_ + 4);
      _loc8_ = (_loc11_ = (_loc9_ = (_loc9_ = _loc9_ << 8) & 0x0700) | _loc15_) + -1;
      _loc13_ >>= 1;
      if(uint(_loc8_) <= 2040)
      {
         _loc13_ = _loc12_;
      }
      _loc1_ = li32(_loc3_ + 32);
      _loc12_ = li32(_loc4_ + 4);
      if(_loc13_ != _loc1_)
      {
         si32(_loc13_,_loc3_ + 32);
         _loc2_ -= 16;
         si32(_loc5_,_loc2_ + 12);
         var _loc5_:*;
         si32(_loc5_ = _loc13_ - _loc1_,_loc2_ + 8);
         var _loc6_:*;
         si32(_loc9_ = (_loc6_ = li32(_loc5_) * _loc12_) + li32((_loc5_ = li32(_loc3_ + 16)) + 4),_loc2_ + 4);
         si32(li32(_loc3_ + 52),_loc2_);
         ESP = _loc2_;
         F__ZNK10Blip_SynthILi12ELi1EE16offset_resampledEjiP11Blip_Buffer();
         _loc2_ += 16;
      }
      _loc1_ = 1;
      _loc7_ = _loc1_;
      if(uint(_loc8_) <= 2040)
      {
         _loc7_ = 0;
      }
      if(_loc14_ != 0)
      {
         _loc1_ = 0;
      }
      _loc14_ = li32(_loc4_ + 8);
      _loc15_ = _loc7_ | _loc1_;
      _loc8_ = _loc14_;
      if(_loc15_ == 0)
      {
         _loc15_ = li32(_loc3_ + 28);
         _loc8_ = _loc15_ + _loc12_;
      }
      if(_loc8_ < _loc14_)
      {
         _loc12_ = _loc13_ << 1;
         _loc13_ = li32(_loc3_ + 64);
         _loc1_ = li32(_loc3_ + 16);
         _loc11_ = 8192 - (_loc11_ << 2);
         do
         {
            _loc15_ = _loc13_ + 1;
            if((_loc13_ = _loc15_ & 7) != 0)
            {
               if(_loc13_ != _loc10_)
               {
                  continue;
               }
            }
            _loc15_ = li32(_loc3_ + 52);
            _loc9_ = li32(_loc1_ + 4);
            _loc6_ = li32(_loc1_);
            _loc2_ -= 16;
            si32(_loc1_,_loc2_ + 12);
            _loc12_ = 0 - _loc12_;
            si32(_loc12_,_loc2_ + 8);
            _loc6_ *= _loc8_;
            si32(_loc9_ = _loc6_ *= _loc8_ + _loc9_,_loc2_ + 4);
            si32(_loc15_,_loc2_);
            ESP = _loc2_;
            F__ZNK10Blip_SynthILi12ELi1EE16offset_resampledEjiP11Blip_Buffer();
            _loc2_ += 16;
         }
         while(_loc8_ += _loc11_, _loc8_ += _loc11_ < _loc14_);
         
         si32(_loc13_,_loc3_ + 64);
         _loc15_ = _loc12_ >> 1;
         si32(_loc15_,_loc3_ + 32);
      }
      _loc15_ = _loc8_ - _loc14_;
      si32(_loc15_,_loc3_ + 28);
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
