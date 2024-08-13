package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str104;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2106;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2131;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str3132;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN11Blip_Buffer14remove_silenceElE8__func__;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN14Effects_Buffer12read_samplesEPslE8__func__;
   
   public function F__ZN14Effects_Buffer12read_samplesEPsl() : void
   {
      var _loc9_:* = 0;
      var _loc20_:* = 0;
      var _loc5_:* = 0;
      var _loc18_:* = 0;
      var _loc1_:* = 0;
      var _loc11_:* = 0;
      var _loc3_:* = 0;
      var _loc6_:int = 0;
      var _loc19_:* = 0;
      var _loc17_:* = 0;
      var _loc13_:int = 0;
      var _loc12_:int = 0;
      var _loc16_:* = 0;
      var _loc15_:* = 0;
      var _loc14_:* = 0;
      var _loc10_:* = 0;
      var _loc4_:*;
      _loc9_ = _loc4_ = sample.libgme.ESP;
      var _loc21_:*;
      if((_loc21_ = (_loc5_ = li32(_loc9_ + 8)) & 1) != 0)
      {
         _loc4_ -= 16;
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str3132,_loc4_ + 12);
         si32(251,_loc4_ + 8);
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2131,_loc4_ + 4);
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN14Effects_Buffer12read_samplesEPslE8__func__,_loc4_);
         ESP = _loc4_;
         F___assert();
         _loc4_ += 16;
      }
      _loc20_ = li32(_loc9_);
      _loc5_ >>= 1;
      _loc21_ = li32(_loc20_ + 24);
      _loc19_ = _loc21_ >>> 16;
      if(_loc5_ >= _loc19_)
      {
         _loc5_ = _loc19_;
      }
      if(_loc5_ != 0)
      {
         _loc18_ = li32(_loc9_ + 4);
         _loc17_ = li32(_loc20_ + 440);
         _loc16_ = _loc5_;
         loop0:
         do
         {
            _loc19_ = _loc16_;
            _loc15_ = li32(_loc20_ + 436);
            if(_loc15_ != 0)
            {
               if(_loc15_ >= _loc19_)
               {
                  _loc15_ = _loc19_;
               }
               _loc21_ = li32(_loc20_ + 432);
               if(_loc21_ != 0)
               {
                  _loc4_ -= 16;
                  si32(_loc15_,_loc4_ + 8);
                  si32(_loc18_,_loc4_ + 4);
                  si32(_loc20_,_loc4_);
                  ESP = _loc4_;
                  F__ZN14Effects_Buffer12mix_enhancedEPsi();
                  _loc4_ += 16;
                  _loc16_ = _loc17_;
               }
               else
               {
                  _loc4_ -= 16;
                  si32(_loc15_,_loc4_ + 8);
                  si32(_loc18_,_loc4_ + 4);
                  si32(_loc20_,_loc4_);
                  ESP = _loc4_;
                  F__ZN14Effects_Buffer17mix_mono_enhancedEPsi();
                  _loc4_ += 16;
                  _loc16_ = 3;
               }
            }
            else
            {
               _loc21_ = li32(_loc20_ + 432);
               if(_loc21_ != 0)
               {
                  _loc4_ -= 16;
                  si32(_loc19_,_loc4_ + 8);
                  si32(_loc18_,_loc4_ + 4);
                  si32(_loc20_,_loc4_);
                  ESP = _loc4_;
                  F__ZN14Effects_Buffer10mix_stereoEPsi();
                  _loc4_ += 16;
                  _loc16_ = 3;
                  _loc15_ = _loc19_;
               }
               else
               {
                  _loc4_ -= 16;
                  si32(_loc19_,_loc4_ + 8);
                  si32(_loc18_,_loc4_ + 4);
                  si32(_loc20_,_loc4_);
                  ESP = _loc4_;
                  F__ZN14Effects_Buffer8mix_monoEPsi();
                  _loc4_ += 16;
                  _loc16_ = 1;
                  _loc15_ = _loc19_;
               }
            }
            _loc21_ = li32(_loc20_ + 432);
            _loc17_ = _loc21_ - _loc15_;
            _loc14_ = 0;
            if(_loc17_ >= 0)
            {
               _loc14_ = _loc17_;
            }
            si32(_loc14_,_loc20_ + 432);
            _loc21_ = li32(_loc20_ + 436);
            _loc17_ = _loc21_ - _loc15_;
            _loc14_ = 0;
            if(_loc17_ >= 0)
            {
               _loc14_ = _loc17_;
            }
            si32(_loc14_,_loc20_ + 436);
            _loc14_ = _loc15_ << 2;
            _loc17_ = li32(_loc20_ + 440);
            if(_loc17_ < 1)
            {
               continue;
            }
            _loc1_ = _loc15_ << 16;
            _loc10_ = 0;
            if(_loc15_ == 0)
            {
               do
               {
                  if(_loc10_ < _loc16_)
                  {
                     continue;
                  }
                  _loc21_ = _loc10_ * 11;
                  if((_loc21_ = (_loc11_ = li32((_loc12_ = _loc20_ + (_loc21_ << 2)) + 24)) >>> 16) >= _loc15_)
                  {
                     _loc21_ = _loc11_ - _loc1_;
                     si32(_loc21_,_loc12_ + 24);
                     continue;
                  }
                  addr615:
                  while(true)
                  {
                     _loc4_ -= 16;
                     si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2106,_loc4_ + 12);
                     si32(152,_loc4_ + 8);
                     si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str104,_loc4_ + 4);
                     si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN11Blip_Buffer14remove_silenceElE8__func__,_loc4_);
                     ESP = _loc4_;
                     F___assert();
                     _loc4_ += 16;
                     addr650:
                     while(true)
                     {
                        _loc21_ = _loc3_ - _loc1_;
                        si32(_loc21_,_loc13_ + 24);
                        addr661:
                        do
                        {
                           _loc10_ = _loc11_;
                        }
                        while(_loc17_ > _loc11_);
                        
                        continue loop0;
                     }
                  }
               }
               while(_loc10_ += 1, _loc17_ > _loc10_);
               
               continue;
            }
            while(true)
            {
               _loc12_ = _loc10_ * 11;
               _loc21_ = _loc12_ << 2;
               _loc13_ = _loc20_ + _loc21_;
               _loc3_ = li32(_loc13_ + 24);
               _loc6_ = _loc3_ >>> 16;
               _loc11_ = _loc10_ + 1;
               if(_loc10_ < _loc16_)
               {
                  if(_loc6_ < _loc15_)
                  {
                     _loc4_ -= 16;
                     si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2106,_loc4_ + 12);
                     si32(152,_loc4_ + 8);
                     si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str104,_loc4_ + 4);
                     si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN11Blip_Buffer14remove_silenceElE8__func__,_loc4_);
                     ESP = _loc4_;
                     F___assert();
                     _loc4_ += 16;
                  }
                  var _loc7_:* = _loc3_ - _loc1_;
                  si32(_loc7_,_loc13_ + 24);
                  _loc21_ = _loc12_ << 2;
                  _loc21_ = _loc20_ + _loc21_;
                  var _loc8_:*;
                  var _loc2_:int = (_loc8_ = li32(_loc21_ + 28)) + _loc14_;
                  _loc4_ -= 16;
                  si32(_loc2_,_loc4_ + 4);
                  si32(_loc8_,_loc4_);
                  _loc7_ &= -65536;
                  si32(_loc7_ = (_loc7_ = _loc7_ &= -65536 >>> 14) + 72,_loc4_ + 8);
                  ESP = _loc4_;
                  Fmemmove();
                  _loc4_ += 16;
                  _loc21_ = li32(_loc21_ + 28);
                  _loc4_ -= 16;
                  si32(_loc14_,_loc4_ + 8);
                  si32(0,_loc4_ + 4);
                  _loc21_ += _loc7_;
                  si32(_loc21_ += _loc7_,_loc4_);
                  ESP = _loc4_;
                  Fmemset();
                  _loc4_ += 16;
                  _loc17_ = li32(_loc20_ + 440);
               }
               else
               {
                  if(_loc6_ < _loc15_)
                  {
                     §§goto(addr615);
                  }
                  §§goto(addr650);
               }
               §§goto(addr661);
            }
         }
         while(_loc16_ = _loc19_ - _loc15_, _loc18_ += _loc14_, _loc19_ != _loc15_);
         
      }
      eax = _loc21_ = _loc5_ << 1;
      ESP = _loc4_ = _loc9_;
   }
}
