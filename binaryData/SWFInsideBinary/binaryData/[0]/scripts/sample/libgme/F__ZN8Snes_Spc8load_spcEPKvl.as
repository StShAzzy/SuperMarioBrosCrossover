package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str10479;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str11480;
   
   public function F__ZN8Snes_Spc8load_spcEPKvl() : void
   {
      var _loc3_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:int = 0;
      var _loc10_:int = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc2_ -= 16;
      _loc1_ = 0;
      _loc10_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str10479;
      _loc9_ = li32(_loc3_ + 8);
      _loc8_ = li32(_loc3_ + 4);
      _loc7_ = li32(_loc3_);
      if(_loc9_ >= 65920)
      {
         while(true)
         {
            var _loc6_:* = _loc8_ - _loc1_;
            _loc5_ = li8(_loc6_);
            _loc6_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str11480 - _loc1_;
            _loc6_ = li8(_loc6_);
            _loc10_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str10479;
            if(_loc5_ == _loc6_)
            {
               if(_loc5_ != 0)
               {
                  _loc1_ += -1;
                  if(_loc1_ != -27)
                  {
                     continue;
                  }
               }
               _loc6_ = li8(_loc8_ + 37);
               var _loc4_:* = li8(_loc8_ + 38);
               si32(_loc6_ = (_loc4_ = _loc4_ << 8) | _loc6_,_loc3_ - 16);
               _loc1_ = _loc3_ - 16;
               _loc4_ = _loc1_ | 4;
               _loc6_ = li8(_loc8_ + 39);
               si8(_loc6_,_loc4_);
               _loc4_ = _loc1_ | 5;
               _loc6_ = li8(_loc8_ + 40);
               si8(_loc6_,_loc4_);
               _loc4_ = _loc1_ | 6;
               _loc6_ = li8(_loc8_ + 41);
               si8(_loc6_,_loc4_);
               _loc6_ = _loc1_ | 7;
               _loc4_ = li8(_loc8_ + 42);
               si8(_loc4_,_loc6_);
               _loc6_ = li8(_loc8_ + 43);
               si8(_loc6_,_loc3_ - 8);
               if(uint(_loc9_) >= 66048)
               {
                  _loc2_ -= 16;
                  si32(64,_loc2_ + 8);
                  _loc6_ = _loc8_ + 65920;
                  si32(_loc6_,_loc2_ + 4);
                  _loc6_ = _loc7_ + 66740;
                  si32(_loc6_,_loc2_);
                  ESP = _loc2_;
                  Fmemcpy();
                  _loc2_ += 16;
               }
               _loc2_ -= 16;
               si32(_loc1_,_loc2_ + 4);
               si32(_loc7_,_loc2_);
               _loc6_ = _loc8_ + 65792;
               si32(_loc6_,_loc2_ + 12);
               _loc6_ = _loc8_ + 256;
               si32(_loc6_,_loc2_ + 8);
               ESP = _loc2_;
               F__ZN8Snes_Spc10load_stateERKN7Spc_Cpu11registers_tEPKvS5_();
               _loc2_ += 16;
               _loc10_ = 0;
               si8(_loc10_,_loc7_ + 602);
            }
            break;
         }
      }
      eax = _loc10_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
