package sample.libgme
{
   import avm2.intrinsics.memory.*;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.*;
   
   public function F__ZN7Spc_Emu5skip_El() : void
   {
      var _loc8_:* = 0;
      var _loc4_:* = 0;
      var _loc16_:* = 0;
      var _loc20_:* = 0;
      var _loc17_:* = 0;
      var _loc14_:int = 0;
      var _loc13_:* = 0;
      var _loc9_:int = 0;
      var _loc19_:* = 0;
      var _loc1_:* = 0;
      var _loc22_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:int = 0;
      var _loc2_:* = 0;
      var _loc21_:* = 0;
      var _loc10_:int = 0;
      var _loc3_:* = ESP;
      _loc8_ = _loc3_;
      _loc3_ -= 128;
      _loc4_ = li32(_loc8_);
      _loc22_ = li32(_loc4_ + 192);
      _loc21_ = li32(_loc8_ + 4);
      if(_loc22_ != 32000)
      {
         _loc20_ = li32(_loc4_ + 264);
         _loc22_ = li32(_loc4_ + 272);
         _loc19_ = (_loc22_ = _loc22_ - _loc20_) >> 1;
         _loc22_ = li32(_loc4_ + 284);
         _loc17_ = _loc19_ - (_loc22_ << 1);
         var _loc15_:Number;
         _loc22_ = _loc15_ = (_loc15_ = _loc21_) * lf64(_loc4_ + 304);
         _loc16_ = _loc22_ & -2;
         if(_loc17_ >= _loc16_)
         {
            _loc17_ = _loc16_;
         }
         _loc14_ = _loc19_ - _loc17_;
         _loc13_ = li32(_loc4_ + 268);
         if((uint(_loc13_)) < uint(_loc14_))
         {
            _loc3_ -= 16;
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str1135,_loc3_ + 12);
            si32(51,_loc3_ + 8);
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str134,_loc3_ + 4);
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIsEixEjE8__func__,_loc3_);
            ESP = _loc3_;
            F___assert();
            _loc3_ += 16;
         }
         _loc1_ = _loc14_ << 1;
         _loc22_ = _loc20_ + _loc1_;
         si32(_loc22_,_loc4_ + 272);
         if(uint(_loc13_) < uint(_loc17_))
         {
            _loc3_ -= 16;
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str1135,_loc3_ + 12);
            si32(51,_loc3_ + 8);
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str134,_loc3_ + 4);
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIsEixEjE8__func__,_loc3_);
            ESP = _loc3_;
            F___assert();
            _loc3_ += 16;
         }
         _loc3_ -= 16;
         si32(_loc1_,_loc3_ + 8);
         si32(_loc20_,_loc3_);
         _loc22_ = _loc17_ << 1;
         _loc22_ = _loc20_ + _loc22_;
         si32(_loc22_,_loc3_ + 4);
         _loc21_ = _loc16_ - _loc17_;
         ESP = _loc3_;
         Fmemmove();
         _loc3_ += 16;
      }
      if(_loc21_ >= 1)
      {
         _loc9_ = _loc4_ + 1856;
         if(_loc21_ >= 128001)
         {
            si32(0,_loc4_ + 2448);
            si32(0,_loc4_ + 2452);
            _loc3_ -= 16;
            _loc22_ = _loc4_ + 2456;
            si32(_loc22_,_loc3_ + 8);
            _loc22_ = _loc21_ + -64000;
            si32(_loc22_,_loc3_ + 4);
            si32(_loc9_,_loc3_);
            ESP = _loc3_;
            F__ZN8Snes_Spc4playElPs();
            _loc3_ += 16;
            _loc10_ = eax;
            if(_loc10_ == 0)
            {
               var _loc12_:*;
               var _loc11_:* = (_loc12_ = (_loc22_ = li32(_loc4_ + 2448)) ^ -1) & li32(_loc4_ + 2452);
               si8(_loc11_,_loc4_ + 2036);
               si8(_loc22_,_loc4_ + 2020);
               _loc21_ = 64000;
               _loc22_ = li8(_loc4_ + 2052);
               if((_loc22_ & 0x20) == 0)
               {
                  _loc3_ -= 16;
                  si32(255,_loc3_ + 4);
                  _loc2_ = li8(_loc4_ + 2069) << 11;
                  _loc5_ = li8(_loc4_ + 2053) << 8;
                  _loc6_ = 65536 - _loc5_;
                  if(uint(_loc2_) >= uint(_loc6_))
                  {
                     _loc2_ = _loc6_;
                  }
                  si32(_loc2_,_loc3_ + 8);
                  _loc22_ = _loc4_ + _loc5_;
                  si32(_loc22_ = _loc22_ + 2804,_loc3_);
                  ESP = _loc3_;
                  Fmemset();
                  _loc3_ += 16;
                  _loc21_ = 64000;
                  addr447:
                  _loc3_ -= 16;
                  si32(0,_loc3_ + 8);
                  si32(_loc21_,_loc3_ + 4);
                  si32(_loc9_,_loc3_);
                  ESP = _loc3_;
                  F__ZN8Snes_Spc4playElPs();
                  _loc3_ += 16;
                  _loc10_ = eax;
                  if(_loc10_ == 0)
                  {
                     addr483:
                     _loc22_ = li32(_loc4_);
                     var _loc7_:* = li32(_loc22_ + 60);
                     _loc3_ -= 16;
                     _loc22_ = _loc8_ - 128;
                     si32(_loc22_,_loc3_ + 8);
                     si32(64,_loc3_ + 4);
                     si32(_loc4_,_loc3_);
                     ESP = _loc3_;
                     ptr2fun[_loc7_]();
                     _loc3_ += 16;
                     _loc10_ = eax;
                  }
               }
               §§goto(addr447);
            }
            eax = _loc10_;
            _loc3_ = _loc8_;
            ESP = _loc3_;
            return;
         }
         §§goto(addr447);
      }
      §§goto(addr483);
   }
}
