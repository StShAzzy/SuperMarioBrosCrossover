package sample.libgme
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str1135;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str134;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2136;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIsEixEjE8__func__;
   
   public function F__ZN7Spc_Emu16set_sample_rate_El() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc9_:* = 0;
      var _loc6_:int = 0;
      var _loc5_:int = 0;
      var _loc4_:* = 0;
      var _loc10_:int = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      var _loc7_:* = lf64(_loc1_ + 184);
      var _loc11_:int;
      si32(_loc11_ = _loc7_ = _loc7_ * 256,_loc1_ + 2160);
      _loc10_ = 0;
      _loc9_ = li32(_loc3_ + 4);
      if(_loc9_ != 32000)
      {
         _loc2_ -= 16;
         var _loc8_:*;
         si32(_loc8_ = (_loc6_ = li32(_loc1_ + 288) + 3200) << 1,_loc2_ + 4);
         si32(li32(_loc1_ + 264),_loc2_);
         ESP = _loc2_;
         F_realloc();
         _loc2_ += 16;
         _loc5_ = sample.libgme.eax;
         if(_loc5_ == 0)
         {
            _loc10_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2136;
            if(_loc6_ == 0)
            {
            }
            §§goto(addr276);
         }
         si32(_loc5_,_loc1_ + 264);
         si32(_loc6_,_loc1_ + 268);
         _loc10_ = 0;
         si32(_loc10_,_loc1_ + 280);
         if(_loc6_ != 0)
         {
            _loc4_ = li32(_loc1_ + 288);
            if(uint(_loc6_) < uint(_loc4_))
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
            _loc8_ = _loc4_ << 1;
            _loc11_ = _loc5_ + _loc8_;
            si32(_loc11_,_loc1_ + 272);
            _loc2_ -= 16;
            si32(_loc8_,_loc2_ + 8);
            si32(_loc10_,_loc2_ + 4);
            si32(_loc5_,_loc2_);
            ESP = _loc2_;
            Fmemset();
            _loc2_ += 16;
         }
         _loc11_ = _loc1_ + 264;
         _loc2_ -= 32;
         si32(1072685907,_loc2_ + 16);
         si32(-137438953,_loc2_ + 12);
         si32(1072693248,_loc2_ + 24);
         si32(_loc10_,_loc2_ + 20);
         si32(_loc11_,_loc2_);
         _loc7_ = _loc9_;
         _loc7_ = 32000 / _loc7_;
         sf64(_loc7_,_loc2_ + 4);
         ESP = _loc2_;
         F__ZN14Fir_Resampler_10time_ratioEddd();
         _loc2_ += 32;
      }
      addr276:
      eax = _loc10_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
