package sample.libgme
{
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.sxi16;
   import avm2.intrinsics.memory.sxi8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL18noise_period_table;
   
   public function F__ZN9Nes_Noise3runEii() : void
   {
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc14_:* = 0;
      var _loc16_:* = 0;
      var _loc10_:* = 0;
      var _loc9_:* = 0;
      var _loc2_:int = 0;
      var _loc17_:* = 0;
      var _loc15_:* = 0;
      var _loc7_:int = 0;
      var _loc6_:* = 0;
      var _loc13_:* = 0;
      var _loc8_:int = 0;
      var _loc1_:* = 0;
      var _loc3_:* = sample.libgme.ESP;
      _loc5_ = _loc3_;
      _loc17_ = (_loc17_ = (_loc17_ = li8((_loc4_ = li32(_loc5_)) + 2)) & 0x0F) << 1;
      _loc17_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL18noise_period_table + _loc17_;
      _loc16_ = si16(li16(_loc17_));
      _loc15_ = li32(_loc4_ + 8);
      _loc14_ = li32(_loc5_ + 8);
      _loc13_ = li32(_loc5_ + 4);
      if(_loc15_ == 0)
      {
         _loc17_ = li32(_loc4_ + 16);
         _loc17_ = _loc17_ + _loc13_;
         var _loc12_:* = _loc14_ + _loc16_;
         var _loc11_:*;
         si32(_loc17_ = (_loc17_ -= (_loc11_ = (_loc12_ = (_loc12_ = _loc12_ + -1) - _loc17_) % _loc16_) + _loc14_) + _loc12_,_loc4_ + 16);
      }
      else
      {
         si32(1,_loc15_ + 40);
         _loc15_ = 0;
         if(li32(_loc4_ + 12) != 0)
         {
            _loc15_ = li8(_loc4_);
            if((_loc17_ = _loc15_ & 0x10) != 0)
            {
               _loc15_ &= 15;
            }
            else
            {
               _loc15_ = li32(_loc4_ + 24);
            }
         }
         _loc17_ = li32(_loc4_ + 32);
         _loc10_ = (_loc17_ = (_loc17_ = _loc17_ << 31) >> 31) & _loc15_;
         _loc1_ = li32(_loc4_ + 20);
         si32(_loc10_,_loc4_ + 20);
         if(_loc10_ != _loc1_)
         {
            _loc3_ -= 16;
            si32(_loc11_,_loc3_ + 12);
            si32(_loc11_ = _loc10_ - _loc1_,_loc3_ + 8);
            _loc11_ = li32(_loc4_ + 8);
            si32(_loc17_ = (_loc12_ = li32(_loc11_) * _loc13_) + li32(_loc11_ + 4),_loc3_ + 4);
            _loc17_ = _loc4_ + 40;
            si32(_loc17_,_loc3_);
            ESP = _loc3_;
            F__ZNK10Blip_SynthILi8ELi1EE16offset_resampledEjiP11Blip_Buffer();
            _loc3_ += 16;
         }
         _loc6_ = li32(_loc4_ + 16);
         _loc1_ = _loc6_ + _loc13_;
         if(_loc1_ < _loc14_)
         {
            if(_loc15_ == 0)
            {
               _loc17_ = _loc14_ + _loc16_;
               _loc1_ = (_loc17_ = _loc12_ - int((_loc12_ = (_loc17_ = _loc17_ + -1) - _loc1_) % _loc16_)) + _loc1_;
               _loc17_ = si8(li8(_loc4_ + 2));
               if(_loc17_ >= 0)
               {
                  _loc17_ = li32(_loc4_ + 32);
                  si32(_loc17_ = (_loc12_ = (_loc12_ = _loc17_ << 13) ^ _loc17_ << 14) & 0x4000 | _loc17_ >> 1,_loc4_ + 32);
               }
            }
            else
            {
               _loc7_ = 8;
               if(si8(li8(_loc4_ + 2)) >= 0)
               {
                  _loc7_ = 13;
               }
               _loc17_ = _loc10_ << 1;
               _loc8_ = _loc17_ - _loc15_;
               _loc9_ = li32(_loc4_ + 8);
               _loc10_ = (_loc17_ = li32(_loc9_)) * _loc16_;
               _loc1_ = _loc6_ + _loc13_;
               _loc17_ *= _loc1_;
               _loc12_ = li32(_loc9_ + 4);
               _loc6_ = _loc12_ + _loc17_;
               _loc2_ = _loc4_ + 40;
               _loc13_ = li32(_loc4_ + 32);
               do
               {
                  _loc17_ = _loc13_ + 1;
                  if((_loc17_ = _loc17_ & 2) != 0)
                  {
                     _loc3_ -= 16;
                     si32(_loc9_,_loc3_ + 12);
                     si32(_loc6_,_loc3_ + 4);
                     si32(_loc2_,_loc3_);
                     _loc8_ = 0 - _loc8_;
                     si32(_loc8_,_loc3_ + 8);
                     ESP = _loc3_;
                     F__ZNK10Blip_SynthILi8ELi1EE16offset_resampledEjiP11Blip_Buffer();
                     _loc3_ += 16;
                  }
                  _loc17_ = _loc13_ << _loc7_;
                  _loc12_ = _loc13_ << 14;
                  _loc12_ = _loc17_ ^ _loc12_;
                  _loc1_ += _loc16_;
                  _loc6_ += _loc10_;
                  _loc17_ = _loc13_ >> 1;
                  _loc12_ &= 16384;
                  _loc13_ = _loc12_ &= 16384 | _loc17_;
               }
               while(_loc1_ < _loc14_);
               
               _loc17_ = _loc8_ + _loc15_;
               si32(_loc17_ = _loc17_ >> 1,_loc4_ + 20);
               si32(_loc13_,_loc4_ + 32);
            }
         }
         _loc17_ = _loc1_ - _loc14_;
         si32(_loc17_,_loc4_ + 16);
      }
      _loc3_ = _loc5_;
      ESP = _loc3_;
   }
}
