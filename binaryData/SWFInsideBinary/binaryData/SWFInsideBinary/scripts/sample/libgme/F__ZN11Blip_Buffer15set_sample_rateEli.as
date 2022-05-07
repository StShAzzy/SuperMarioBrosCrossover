package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str10112;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str104;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str1105;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str11113;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str6108;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str9111;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN11Blip_Buffer15set_sample_rateEliE8__func__;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK11Blip_Buffer17clock_rate_factorElE8__func__;
   
   public function F__ZN11Blip_Buffer15set_sample_rateEli() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc10_:* = 0;
      var _loc11_:* = 0;
      var _loc9_:int = 0;
      var _loc4_:int = 0;
      var _loc12_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      if((_loc12_ = li32(_loc1_ + 12)) == 1)
      {
         _loc2_ -= 16;
         si32(L__2E_str1105,_loc2_ + 12);
         si32(83,_loc2_ + 8);
         si32(L__2E_str104,_loc2_ + 4);
         si32(__ZZN11Blip_Buffer15set_sample_rateEliE8__func__,_loc2_);
         ESP = _loc2_;
         F___assert();
         _loc2_ += 16;
      }
      _loc11_ = li32(_loc3_ + 8);
      _loc10_ = li32(_loc3_ + 4);
      _loc9_ = 65453;
      if(_loc11_ != 0)
      {
         var _loc8_:*;
         if((_loc9_ = (_loc8_ = int((_loc8_ = int(_loc11_ + 1)) * _loc10_)) + 999) <= 65452999)
         {
            _loc9_ /= 1000;
         }
         else
         {
            _loc2_ -= 16;
            si32(L__2E_str1105,_loc2_ + 12);
            si32(95,_loc2_ + 8);
            si32(L__2E_str104,_loc2_ + 4);
            si32(__ZZN11Blip_Buffer15set_sample_rateEliE8__func__,_loc2_);
            ESP = _loc2_;
            F___assert();
            _loc2_ += 16;
         }
      }
      if(_loc12_ != _loc9_)
      {
         _loc2_ -= 16;
         var _loc6_:*;
         si32(_loc6_ = int((_loc6_ = _loc9_ << 2) + 72),_loc2_ + 4);
         si32(li32(_loc1_ + 8),_loc2_);
         ESP = _loc2_;
         F_realloc();
         _loc12_ = int(L__2E_str9111);
         _loc2_ += 16;
         if((_loc4_ = eax) != 0)
         {
            si32(_loc4_,_loc1_ + 8);
            addr202:
            si32(_loc9_,_loc1_ + 12);
            if(_loc9_ == 1)
            {
               _loc2_ -= 16;
               si32(L__2E_str10112,_loc2_ + 12);
               si32(107,_loc2_ + 8);
               si32(L__2E_str104,_loc2_ + 4);
               si32(__ZZN11Blip_Buffer15set_sample_rateEliE8__func__,_loc2_);
               ESP = _loc2_;
               F___assert();
               _loc2_ += 16;
            }
            si32(_loc10_,_loc1_ + 24);
            si32(_loc12_ = int((_loc8_ = int((_loc8_ = int(_loc9_ * 1000)) / _loc10_)) + -1),_loc1_ + 36);
            if(_loc11_ != 0)
            {
               if(_loc12_ != _loc11_)
               {
                  _loc2_ -= 16;
                  si32(L__2E_str11113,_loc2_ + 12);
                  si32(113,_loc2_ + 8);
                  si32(L__2E_str104,_loc2_ + 4);
                  si32(__ZZN11Blip_Buffer15set_sample_rateEliE8__func__,_loc2_);
                  ESP = _loc2_;
                  F___assert();
                  _loc2_ += 16;
               }
            }
            if((_loc11_ = li32(_loc1_ + 28)) != 0)
            {
               si32(_loc11_,_loc1_ + 28);
               _loc2_ -= 16;
               var _loc5_:Number;
               sf64(Number((_loc5_ = (_loc5_ = (_loc5_ = _loc10_) / _loc11_) * 65536) + 0.5),_loc2_);
               ESP = _loc2_;
               F_floor();
               _loc2_ += 16;
               if((_loc11_ = int(_loc5_ = st0)) <= 0)
               {
                  if(_loc10_ != 0)
                  {
                     _loc2_ -= 16;
                     si32(L__2E_str6108,_loc2_ + 12);
                     si32(127,_loc2_ + 8);
                     si32(L__2E_str104,_loc2_ + 4);
                     si32(__ZZNK11Blip_Buffer17clock_rate_factorElE8__func__,_loc2_);
                     ESP = _loc2_;
                     F___assert();
                     _loc2_ += 16;
                  }
               }
               si32(_loc11_,_loc1_);
            }
            _loc12_ = li32(_loc1_ + 32);
            _loc11_ = 31;
            if(_loc12_ >= 1)
            {
               _loc10_ = int((_loc8_ = _loc12_ << 16) / _loc10_);
               _loc12_ = 13;
               do
               {
                  _loc10_ >>= 1;
                  _loc11_ = _loc12_;
                  if(_loc10_ == 0)
                  {
                     break;
                  }
                  _loc12_ += -1;
                  _loc11_ = 0;
               }
               while(_loc12_ != 0);
               
            }
            si32(_loc11_,_loc1_ + 20);
            si32(_loc12_ = 0,_loc1_ + 4);
            si32(_loc12_,_loc1_ + 16);
            si32(_loc12_,_loc1_ + 40);
            _loc1_ = li32(_loc1_ + 8);
            if(_loc1_ != 0)
            {
               _loc2_ -= 16;
               si32(_loc12_ = 0,_loc2_ + 4);
               si32(_loc1_,_loc2_);
               si32(_loc8_ = int((_loc8_ = _loc9_ << 2) + 72),_loc2_ + 8);
               ESP = _loc2_;
               Fmemset();
               _loc2_ += 16;
            }
         }
         eax = _loc12_;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      §§goto(addr202);
   }
}
