package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str7504;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str8505;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN14Fir_Resampler_5writeElE8__func__;
   
   public function F__ZN7Spc_Emu5play_ElPs() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc11_:* = 0;
      var _loc12_:* = 0;
      var _loc9_:int = 0;
      var _loc10_:int = 0;
      var _loc5_:* = 0;
      var _loc13_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:int = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc4_ = _loc2_;
      _loc3_ = li32(_loc4_);
      _loc13_ = li32(_loc3_ + 192);
      _loc12_ = li32(_loc4_ + 8);
      _loc11_ = li32(_loc4_ + 4);
      if(_loc13_ != 32000)
      {
         _loc10_ = _loc3_ + 1856;
         _loc9_ = _loc3_ + 264;
         _loc8_ = _loc11_;
         while(true)
         {
            _loc7_ = 0;
            if(_loc8_ <= 0)
            {
               break;
            }
            _loc2_ -= 16;
            si32(_loc9_,_loc2_);
            si32(_loc8_,_loc2_ + 8);
            _loc13_ = _loc11_ - _loc8_;
            si32(_loc13_ = _loc12_ + (_loc13_ << 1),_loc2_ + 4);
            ESP = _loc2_;
            F__ZN13Fir_ResamplerILi24EE4readEPsi();
            _loc2_ += 16;
            _loc8_ -= sample.libgme.eax;
            if(_loc8_ -= sample.libgme.eax >= 1)
            {
               _loc13_ = li32(_loc3_ + 272);
               _loc2_ -= 16;
               si32(_loc13_,_loc2_ + 8);
               si32(_loc10_,_loc2_);
               var _loc6_:int = li32(_loc3_ + 264) + (li32(_loc3_ + 268) << 1);
               si32(_loc5_ = (_loc13_ = _loc6_ - _loc13_) >> 1,_loc2_ + 4);
               ESP = _loc2_;
               F__ZN8Snes_Spc4playElPs();
               _loc2_ += 16;
               _loc7_ = sample.libgme.eax;
               if(_loc7_ != 0)
               {
                  break;
               }
               _loc13_ = (_loc13_ = li32(_loc3_ + 272)) + (_loc5_ << 1);
               si32(_loc13_,_loc3_ + 272);
               if(uint(_loc13_) > uint(li32(_loc3_ + 264) + (li32(_loc3_ + 268) << 1)))
               {
                  _loc2_ -= 16;
                  si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str8505,_loc2_ + 12);
                  si32(96,_loc2_ + 8);
                  si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str7504,_loc2_ + 4);
                  si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN14Fir_Resampler_5writeElE8__func__,_loc2_);
                  ESP = _loc2_;
                  F___assert();
                  _loc2_ += 16;
               }
            }
         }
      }
      else
      {
         _loc2_ -= 16;
         si32(_loc12_,_loc2_ + 8);
         si32(_loc11_,_loc2_ + 4);
         _loc13_ = _loc3_ + 1856;
         si32(_loc13_,_loc2_);
         ESP = _loc2_;
         F__ZN8Snes_Spc4playElPs();
         _loc2_ += 16;
         _loc7_ = sample.libgme.eax;
      }
      eax = _loc7_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
