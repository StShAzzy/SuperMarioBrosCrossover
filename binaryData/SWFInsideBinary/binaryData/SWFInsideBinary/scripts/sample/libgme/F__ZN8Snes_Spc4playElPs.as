package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2472;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str4474;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str5475;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str6476;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str7477;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str8478;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN8Snes_Spc4playElPsE8__func__;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN8Snes_Spc8run_dsp_EiE8__func__;
   
   public function F__ZN8Snes_Spc4playElPs() : void
   {
      var _loc3_:* = 0;
      var _loc10_:* = 0;
      var _loc1_:* = 0;
      var _loc11_:* = 0;
      var _loc9_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      var _loc12_:*;
      if((_loc12_ = _loc1_ & 1) != 0)
      {
         _loc2_ -= 16;
         si32(L__2E_str5475,_loc2_ + 12);
         si32(448,_loc2_ + 8);
         si32(L__2E_str2472,_loc2_ + 4);
         si32(__ZZN8Snes_Spc4playElPsE8__func__,_loc2_);
         ESP = _loc2_;
         F___assert();
         _loc2_ += 16;
      }
      _loc11_ = li32(_loc3_ + 8);
      _loc10_ = li32(_loc3_);
      si32(_loc11_,_loc10_ + 76);
      _loc12_ = int(_loc1_ >>> 31);
      _loc9_ = (_loc12_ = (_loc12_ = int(_loc1_ + _loc12_)) & 268435454) << 4;
      _loc8_ = int(_loc10_ + 600);
      if(_loc11_ != 0)
      {
         _loc7_ = 0;
         _loc6_ = _loc1_;
         if(_loc8_ == _loc11_)
         {
            addr122:
            _loc6_ = 0;
            _loc5_ = _loc7_ = 1;
            if(_loc8_ != _loc11_)
            {
               _loc5_ = _loc6_;
            }
            if(_loc11_ == _loc6_)
            {
               _loc7_ = _loc6_;
            }
            _loc7_ = _loc5_ | _loc7_;
         }
         _loc12_ = _loc6_ << 1;
         si32(_loc12_ = int(_loc11_ + _loc12_),_loc10_ + 80);
         _loc6_ = 32;
         if(_loc7_ == 0)
         {
            _loc6_ = int(32 - _loc9_);
         }
         si32(_loc6_,_loc10_ + 84);
         _loc6_ = int(0 - _loc9_);
         if((_loc12_ = li32(_loc10_ + 16)) != 0)
         {
            si32(_loc8_ = int((_loc12_ = li32(_loc10_)) - _loc9_),_loc10_);
            if(_loc8_ <= _loc6_)
            {
               var _loc4_:*;
               si32(_loc4_ = int((_loc4_ = int((_loc12_ = int((_loc12_ = int((int(_loc6_ - _loc8_)) / (_loc4_ = li32(_loc10_ + 12)))) + 1)) * _loc4_)) + _loc8_),_loc10_);
               _loc8_ = int((_loc4_ = li32(_loc10_ + 8)) + _loc12_);
               if((_loc5_ = li32(_loc10_ + 4)) <= _loc8_)
               {
                  _loc12_ = int(_loc8_ / _loc5_);
                  si32(_loc4_ = (_loc4_ = int((_loc4_ = li32(_loc10_ + 20)) + _loc12_)) & 15,_loc10_ + 20);
                  _loc8_ -= int(_loc12_ * _loc5_);
               }
               si32(_loc8_,_loc10_ + 8);
            }
         }
         if((_loc12_ = li32(_loc10_ + 40)) != 0)
         {
            si32(_loc8_ = int((_loc12_ = li32(_loc10_ + 24)) - _loc9_),_loc10_ + 24);
            if(_loc8_ <= _loc6_)
            {
               si32(_loc4_ = int((_loc4_ = int((_loc12_ = int((_loc12_ = int((int(_loc6_ - _loc8_)) / (_loc4_ = li32(_loc10_ + 36)))) + 1)) * _loc4_)) + _loc8_),_loc10_ + 24);
               _loc8_ = int((_loc4_ = li32(_loc10_ + 32)) + _loc12_);
               if((_loc5_ = li32(_loc10_ + 28)) <= _loc8_)
               {
                  _loc12_ = int(_loc8_ / _loc5_);
                  si32(_loc4_ = (_loc4_ = int((_loc4_ = li32(_loc10_ + 44)) + _loc12_)) & 15,_loc10_ + 44);
                  _loc8_ -= int(_loc12_ * _loc5_);
               }
               si32(_loc8_,_loc10_ + 32);
            }
         }
         if((_loc12_ = li32(_loc10_ + 64)) != 0)
         {
            si32(_loc8_ = int((_loc12_ = li32(_loc10_ + 48)) - _loc9_),_loc10_ + 48);
            if(_loc8_ <= _loc6_)
            {
               si32(_loc4_ = int((_loc4_ = int((_loc12_ = int((_loc12_ = int((int(_loc6_ - _loc8_)) / (_loc4_ = li32(_loc10_ + 60)))) + 1)) * _loc4_)) + _loc8_),_loc10_ + 48);
               _loc8_ = int((_loc4_ = li32(_loc10_ + 56)) + _loc12_);
               if((_loc6_ = li32(_loc10_ + 52)) <= _loc8_)
               {
                  _loc12_ = int(_loc8_ / _loc6_);
                  si32(_loc4_ = (_loc4_ = int((_loc4_ = li32(_loc10_ + 68)) + _loc12_)) & 15,_loc10_ + 68);
                  _loc8_ -= int(_loc12_ * _loc6_);
               }
               si32(_loc8_,_loc10_ + 56);
            }
         }
         _loc12_ = li32(_loc10_ + 72);
         _loc12_ = int(_loc9_ - _loc12_);
         _loc2_ -= 16;
         si32(_loc12_,_loc2_ + 4);
         si32(_loc12_ = int(_loc10_ + 604),_loc2_);
         ESP = _loc2_;
         F__ZN7Spc_Cpu3runEi();
         _loc9_ = int(L__2E_str6476);
         _loc2_ += 16;
         if((_loc6_ = int(eax)) <= 0)
         {
            si32(_loc12_ = int(0 - _loc6_),_loc10_ + 72);
            if((_loc9_ = li32(_loc10_ + 84)) <= 0)
            {
               _loc8_ = li32(_loc10_ + 76);
               _loc6_ = int((_loc12_ = (_loc12_ = int(0 - _loc9_)) >> 5) + 1);
               if(_loc8_ != 0)
               {
                  si32(_loc12_ = int(_loc8_ + (_loc6_ << 2)),_loc10_ + 76);
                  if(uint(_loc12_) > uint(li32(_loc10_ + 80)))
                  {
                     _loc2_ -= 16;
                     si32(L__2E_str4474,_loc2_ + 12);
                     si32(208,_loc2_ + 8);
                     si32(L__2E_str2472,_loc2_ + 4);
                     si32(__ZZN8Snes_Spc8run_dsp_EiE8__func__,_loc2_);
                     ESP = _loc2_;
                     F___assert();
                     _loc2_ += 16;
                  }
               }
               si32(_loc12_ = int((_loc12_ = _loc6_ << 5) + _loc9_),_loc10_ + 84);
               _loc2_ -= 16;
               si32(_loc8_,_loc2_ + 8);
               si32(_loc6_,_loc2_ + 4);
               si32(_loc12_ = int(_loc10_ + 88),_loc2_);
               ESP = _loc2_;
               F__ZN7Spc_Dsp3runElPs();
               _loc2_ += 16;
            }
            if(_loc11_ != 0)
            {
               if((_loc12_ = li32(_loc10_ + 84)) != 32)
               {
                  _loc2_ -= 16;
                  si32(L__2E_str7477,_loc2_ + 12);
                  si32(483,_loc2_ + 8);
                  si32(L__2E_str2472,_loc2_ + 4);
                  si32(__ZZN8Snes_Spc4playElPsE8__func__,_loc2_);
                  ESP = _loc2_;
                  F___assert();
                  _loc2_ += 16;
               }
               if(_loc7_ == 0)
               {
                  if((_loc12_ = (_loc12_ = int((_loc12_ = li32(_loc10_ + 76)) - _loc11_)) >> 1) != _loc1_)
                  {
                     _loc2_ -= 16;
                     si32(L__2E_str8478,_loc2_ + 12);
                     si32(484,_loc2_ + 8);
                     si32(L__2E_str2472,_loc2_ + 4);
                     si32(__ZZN8Snes_Spc4playElPsE8__func__,_loc2_);
                     ESP = _loc2_;
                     F___assert();
                     _loc2_ += 16;
                  }
               }
            }
            si32(_loc9_ = 0,_loc10_ + 80);
         }
         eax = _loc9_;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      §§goto(addr122);
   }
}
