package sample.libgme
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2169;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str3170;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN7Gbs_Emu12update_timerEvE5rates;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIhEixEjE8__func__168;
   
   public function F__ZN7Gbs_Emu9cpu_writeEji() : void
   {
      var _loc3_:* = 0;
      var _loc10_:* = 0;
      var _loc1_:* = 0;
      var _loc11_:* = 0;
      var _loc5_:* = NaN;
      var _loc12_:* = 0;
      var _loc6_:Number = NaN;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc12_ = _loc1_ + -40960;
      _loc11_ = li32(_loc3_ + 8);
      _loc10_ = li32(_loc3_);
      if(uint(_loc12_) <= 24575)
      {
         _loc12_ = _loc10_ + _loc12_;
         si8(_loc11_,_loc12_ + 484);
         var _loc8_:* = _loc1_ ^ 0xE000;
         if((uint(_loc8_)) <= 8063)
         {
            _loc8_ = _loc1_ + -65296;
            if((uint(_loc8_)) <= 47)
            {
               _loc2_ -= 16;
               si32(_loc11_,_loc2_ + 12);
               si32(_loc1_,_loc2_ + 8);
               var _loc7_:*;
               _loc8_ = li32(_loc10_ + 360) - (li32((_loc7_ = li32(_loc10_ + 292)) + 36) << 2);
               si32(_loc8_,_loc2_ + 4);
               _loc8_ = _loc10_ + 25072;
               si32(_loc8_,_loc2_);
               ESP = _loc2_;
               F__ZN6Gb_Apu14write_registerEiji();
               _loc2_ += 16;
            }
            else
            {
               _loc8_ = _loc1_ ^ 0xFF06;
               if((uint(_loc8_)) <= 1)
               {
                  _loc1_ = li8(_loc10_ + 387);
                  _loc8_ = _loc1_ & 4;
                  if(_loc8_ != 0)
                  {
                     _loc8_ = li8(_loc10_ + 24811);
                     si32(_loc8_ = (_loc7_ = 256 - li8(_loc10_ + 24810)) << li8(_loc8_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN7Gbs_Emu12update_timerEvE5rates + (_loc8_ & 3)) - (_loc1_ >>> 7),_loc10_ + 364);
                     _loc6_ = _loc8_;
                  }
                  else
                  {
                     si32(70224,_loc10_ + 364);
                     _loc6_ = 70224;
                  }
                  _loc5_ = lf64(_loc10_ + 176);
                  if(_loc5_ != 1)
                  {
                     var _loc9_:Number;
                     _loc8_ = _loc9_ = _loc6_ / _loc5_;
                     si32(_loc8_,_loc10_ + 364);
                  }
               }
               else
               {
                  _loc10_ = _loc12_ + 484;
                  if(_loc1_ == 65280)
                  {
                     si8(0,_loc10_);
                  }
                  else
                  {
                     si8(-1,_loc10_);
                  }
               }
            }
         }
      }
      else
      {
         _loc8_ = _loc1_ ^ 0x2000;
         if((uint(_loc8_)) <= 8191)
         {
            _loc1_ = (_loc7_ = li32(_loc10_ + 352)) & _loc11_ << 14;
            if(_loc1_ == 0)
            {
               _loc8_ = li32(_loc10_ + 356);
               if(_loc8_ <= 16384)
               {
               }
               §§goto(addr391);
            }
            _loc8_ = li32(_loc10_ + 348);
            _loc11_ = _loc1_ - _loc8_;
            _loc1_ = li32(_loc10_ + 340);
            _loc8_ = _loc1_ + -16392;
            _loc12_ = 0;
            if(uint(_loc8_) >= uint(_loc11_))
            {
               _loc12_ = _loc11_;
            }
            if(uint(_loc1_) < uint(_loc12_))
            {
               _loc2_ -= 16;
               si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str3170,_loc2_ + 12);
               si32(51,_loc2_ + 8);
               si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2169,_loc2_ + 4);
               si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIhEixEjE8__func__168,_loc2_);
               ESP = _loc2_;
               F___assert();
               _loc2_ += 16;
            }
            _loc8_ = li32(_loc10_ + 336);
            _loc7_ = (_loc8_ = _loc8_ + _loc12_) + 8192;
            var _loc4_:* = li32(_loc10_ + 292);
            si32(_loc7_,_loc4_ + 12);
            _loc7_ = li32(_loc10_ + 292);
            si32(_loc8_,_loc7_ + 8);
         }
      }
      addr391:
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
