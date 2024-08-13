package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str10479;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str1135;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str11480;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str134;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIsEixEjE8__func__;
   
   public function F__ZN7Spc_Emu12start_track_Ei() : void
   {
      var _loc3_:* = 0;
      var _loc12_:* = 0;
      var _loc11_:* = 0;
      var _loc10_:* = 0;
      var _loc6_:int = 0;
      var _loc4_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:int = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc2_ -= 16;
      _loc1_ = 0;
      _loc12_ = li32(_loc3_);
      si32(_loc1_,_loc12_ + 280);
      _loc11_ = li32(_loc12_ + 268);
      if(_loc11_ != 0)
      {
         _loc10_ = li32(_loc12_ + 288);
         if(uint(_loc11_) < uint(_loc10_))
         {
            _loc2_ -= 16;
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str1135,_loc2_ + 12);
            si32(51,_loc2_ + 8);
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str134,_loc2_ + 4);
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIsEixEjE8__func__,_loc2_);
            ESP = _loc2_;
            F___assert();
            _loc2_ += 16;
         }
         var _loc9_:* = _loc10_ << 1;
         var _loc8_:* = li32(_loc12_ + 264);
         var _loc7_:*;
         si32(_loc7_ = _loc8_ + _loc9_,_loc12_ + 272);
         _loc2_ -= 16;
         si32(_loc9_,_loc2_ + 8);
         si32(_loc1_,_loc2_ + 4);
         si32(_loc8_,_loc2_);
         ESP = _loc2_;
         Fmemset();
         _loc2_ += 16;
      }
      _loc10_ = li32(_loc12_ + 256);
      _loc11_ = li32(_loc12_ + 252);
      _loc6_ = _loc12_ + 1856;
      _loc5_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str10479;
      if(_loc10_ >= 65920)
      {
         while(true)
         {
            _loc7_ = _loc11_ - _loc1_;
            _loc4_ = li8(_loc7_);
            _loc7_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str11480 - _loc1_;
            _loc7_ = li8(_loc7_);
            _loc5_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str10479;
            if(_loc4_ == _loc7_)
            {
               if(_loc4_ != 0)
               {
                  _loc1_ += -1;
                  if(_loc1_ != -27)
                  {
                     continue;
                  }
               }
               _loc7_ = li8(_loc11_ + 37);
               _loc8_ = li8(_loc11_ + 38);
               si32(_loc7_ = (_loc8_ = _loc8_ << 8) | _loc7_,_loc3_ - 16);
               _loc1_ = _loc3_ - 16;
               _loc8_ = _loc1_ | 4;
               _loc7_ = li8(_loc11_ + 39);
               si8(_loc7_,_loc8_);
               _loc7_ = _loc1_ | 5;
               _loc8_ = li8(_loc11_ + 40);
               si8(_loc8_,_loc7_);
               _loc7_ = _loc1_ | 6;
               _loc8_ = li8(_loc11_ + 41);
               si8(_loc8_,_loc7_);
               _loc7_ = _loc1_ | 7;
               _loc8_ = li8(_loc11_ + 42);
               si8(_loc8_,_loc7_);
               _loc7_ = li8(_loc11_ + 43);
               si8(_loc7_,_loc3_ - 8);
               if(uint(_loc10_) >= 66048)
               {
                  _loc2_ -= 16;
                  si32(64,_loc2_ + 8);
                  _loc7_ = _loc11_ + 65920;
                  si32(_loc7_,_loc2_ + 4);
                  _loc7_ = _loc12_ + 68596;
                  si32(_loc7_,_loc2_);
                  ESP = _loc2_;
                  Fmemcpy();
                  _loc2_ += 16;
               }
               _loc2_ -= 16;
               si32(_loc1_,_loc2_ + 4);
               si32(_loc6_,_loc2_);
               _loc7_ = _loc11_ + 65792;
               si32(_loc7_,_loc2_ + 12);
               _loc7_ = _loc11_ + 256;
               si32(_loc7_,_loc2_ + 8);
               ESP = _loc2_;
               F__ZN8Snes_Spc10load_stateERKN7Spc_Cpu11registers_tEPKvS5_();
               _loc2_ += 16;
               _loc5_ = 0;
               si8(_loc5_,_loc12_ + 2458);
               _loc7_ = li8(_loc12_ + 2052);
               if((_loc7_ = _loc7_ & 0x20) == 0)
               {
                  _loc2_ -= 16;
                  si32(255,_loc2_ + 4);
                  _loc1_ = li8(_loc12_ + 2069) << 11;
                  _loc11_ = li8(_loc12_ + 2053) << 8;
                  _loc10_ = 65536 - _loc11_;
                  if(uint(_loc1_) >= uint(_loc10_))
                  {
                     _loc1_ = _loc10_;
                  }
                  si32(_loc1_,_loc2_ + 8);
                  _loc7_ = _loc12_ + _loc11_;
                  si32(_loc7_ = _loc7_ + 2804,_loc2_);
                  ESP = _loc2_;
                  Fmemset();
                  _loc2_ += 16;
                  _loc5_ = 0;
               }
            }
            break;
         }
      }
      eax = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
