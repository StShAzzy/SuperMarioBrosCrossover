package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str1135;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str134;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2136;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIsEixEjE8__func__;
   
   public function F__ZN14Fir_Resampler_11buffer_sizeEi() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:int = 0;
      var _loc5_:int = 0;
      var _loc4_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc8_ = li32(_loc1_ + 24);
      _loc7_ = li32(_loc3_ + 4);
      _loc6_ = _loc8_ + _loc7_;
      _loc7_ = _loc6_ << 1;
      _loc8_ = li32(_loc1_);
      _loc2_ -= 16;
      si32(_loc7_,_loc2_ + 4);
      si32(_loc8_,_loc2_);
      ESP = _loc2_;
      F_realloc();
      _loc2_ += 16;
      _loc5_ = sample.libgme.eax;
      if(_loc5_ == 0)
      {
         _loc4_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2136;
         if(_loc6_ == 0)
         {
            addr85:
            si32(_loc5_,_loc1_);
            si32(_loc6_,_loc1_ + 4);
            _loc4_ = 0;
            si32(_loc4_,_loc1_ + 16);
            if(_loc6_ != 0)
            {
               _loc4_ = li32(_loc1_ + 24);
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
               _loc7_ = _loc5_ + _loc8_;
               si32(_loc7_,_loc1_ + 8);
               _loc2_ -= 16;
               si32(_loc8_,_loc2_ + 8);
               _loc4_ = 0;
               si32(_loc4_,_loc2_ + 4);
               si32(_loc5_,_loc2_);
               ESP = _loc2_;
               Fmemset();
               _loc2_ += 16;
            }
         }
         eax = _loc4_;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      §§goto(addr85);
   }
}
