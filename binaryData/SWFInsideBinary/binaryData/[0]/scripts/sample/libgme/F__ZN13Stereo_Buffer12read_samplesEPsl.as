package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str104;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str1263;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2106;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str262;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN11Blip_Buffer14remove_silenceElE8__func__;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN13Stereo_Buffer12read_samplesEPslE8__func__;
   
   public function F__ZN13Stereo_Buffer12read_samplesEPsl() : void
   {
      var _loc5_:* = 0;
      var _loc16_:* = 0;
      var _loc15_:* = 0;
      var _loc4_:* = 0;
      var _loc14_:* = 0;
      var _loc13_:* = 0;
      var _loc11_:* = 0;
      var _loc10_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc2_:* = 0;
      var _loc3_:* = sample.libgme.ESP;
      _loc5_ = _loc3_;
      var _loc17_:*;
      if((_loc17_ = (_loc4_ = li32(_loc5_ + 8)) & 1) != 0)
      {
         _loc3_ -= 16;
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str1263,_loc3_ + 12);
         si32(108,_loc3_ + 8);
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str262,_loc3_ + 4);
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN13Stereo_Buffer12read_samplesEPslE8__func__,_loc3_);
         ESP = _loc3_;
         F___assert();
         _loc3_ += 16;
      }
      _loc16_ = li32(_loc5_);
      _loc15_ = _loc4_ >>> 1;
      _loc14_ = li32(_loc16_ + 24);
      _loc13_ = _loc14_ >>> 16;
      if(uint(_loc15_) <= uint(_loc13_))
      {
         _loc13_ = _loc15_;
      }
      if(_loc13_ != 0)
      {
         _loc15_ = li32(_loc5_ + 4);
         _loc11_ = (_loc17_ = li32(_loc16_ + 168)) | li32(_loc16_ + 164);
         if(_loc11_ <= 1)
         {
            _loc17_ = _loc4_ >>> 1;
            _loc4_ = _loc17_ ^ -1;
            _loc17_ = _loc14_ >>> 16;
            if((uint(_loc14_ = _loc17_ ^ -1)) <= uint(_loc4_))
            {
               _loc14_ = _loc4_;
            }
            _loc14_ ^= -1;
            _loc11_ = _loc15_ + 2;
            _loc10_ = li32(_loc16_ + 28);
            _loc1_ = li32(_loc16_ + 36);
            _loc15_ = li32(_loc16_ + 40);
            do
            {
               _loc4_ = _loc1_ >> 14;
               _loc17_ = _loc1_ << 2;
               if((_loc17_ = _loc17_ >> 16) != _loc4_)
               {
                  _loc4_ = 32767 - (_loc1_ >> 31);
               }
               _loc17_ = li32(_loc10_);
               si16(_loc4_,_loc11_ - 2);
               si16(_loc4_,_loc11_);
               var _loc12_:* = _loc1_ >> _loc15_;
               _loc12_ = _loc1_ - _loc12_;
               _loc1_ = _loc17_ + _loc12_;
               _loc11_ += 4;
               _loc10_ += 4;
            }
            while(_loc14_ += -1, _loc14_ += -1 != 0);
            
            si32(_loc1_,_loc16_ + 36);
            if(_loc13_ != 0)
            {
               _loc14_ = li32(_loc16_ + 24);
               if((uint(_loc17_ = _loc14_ >>> 16)) < uint(_loc13_))
               {
                  _loc3_ -= 16;
                  si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2106,_loc3_ + 12);
                  si32(152,_loc3_ + 8);
                  si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str104,_loc3_ + 4);
                  si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN11Blip_Buffer14remove_silenceElE8__func__,_loc3_);
                  ESP = _loc3_;
                  F___assert();
                  _loc3_ += 16;
               }
               _loc17_ = _loc13_ << 16;
               _loc12_ = _loc14_ - _loc17_;
               si32(_loc12_,_loc16_ + 24);
               _loc17_ = _loc13_ << 2;
               var _loc6_:* = li32(_loc16_ + 28);
               var _loc7_:int = _loc6_ + _loc17_;
               _loc3_ -= 16;
               si32(_loc7_,_loc3_ + 4);
               si32(_loc6_,_loc3_);
               _loc12_ &= -65536;
               si32(_loc12_ = (_loc12_ = _loc12_ &= -65536 >>> 14) + 72,_loc3_ + 8);
               ESP = _loc3_;
               Fmemmove();
               _loc3_ += 16;
               _loc6_ = li32(_loc16_ + 28);
               _loc3_ -= 16;
               si32(_loc17_,_loc3_ + 8);
               si32(0,_loc3_ + 4);
               _loc17_ = _loc6_ + _loc12_;
               si32(_loc17_,_loc3_);
               ESP = _loc3_;
               Fmemset();
               _loc3_ += 16;
            }
            _loc15_ = li32(_loc16_ + 68);
            if((uint(_loc17_ = _loc15_ >>> 16)) < uint(_loc13_))
            {
               _loc3_ -= 16;
               si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2106,_loc3_ + 12);
               si32(152,_loc3_ + 8);
               si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str104,_loc3_ + 4);
               si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN11Blip_Buffer14remove_silenceElE8__func__,_loc3_);
               ESP = _loc3_;
               F___assert();
               _loc3_ += 16;
            }
            _loc14_ = _loc13_ << 16;
            _loc17_ = _loc15_ - _loc14_;
            si32(_loc17_,_loc16_ + 68);
            _loc15_ = li32(_loc16_ + 112);
            if((uint(_loc17_ = _loc15_ >>> 16)) < uint(_loc13_))
            {
               _loc3_ -= 16;
               si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2106,_loc3_ + 12);
               si32(152,_loc3_ + 8);
               si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str104,_loc3_ + 4);
               si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN11Blip_Buffer14remove_silenceElE8__func__,_loc3_);
               ESP = _loc3_;
               F___assert();
               _loc3_ += 16;
            }
            _loc17_ = _loc15_ - _loc14_;
            si32(_loc17_,_loc16_ + 112);
            addr1628:
            _loc15_ = li32(_loc16_ + 24);
         }
         else
         {
            _loc17_ = _loc11_ & 1;
            if(_loc17_ != 0)
            {
               _loc3_ -= 16;
               si32(_loc13_,_loc3_ + 8);
               si32(_loc15_,_loc3_ + 4);
               si32(_loc16_,_loc3_);
               ESP = _loc3_;
               F__ZN13Stereo_Buffer10mix_stereoEPsi();
               _loc3_ += 16;
               if(_loc13_ != 0)
               {
                  _loc15_ = li32(_loc16_ + 24);
                  if((uint(_loc17_ = _loc15_ >>> 16)) < uint(_loc13_))
                  {
                     _loc3_ -= 16;
                     si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2106,_loc3_ + 12);
                     si32(152,_loc3_ + 8);
                     si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str104,_loc3_ + 4);
                     si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN11Blip_Buffer14remove_silenceElE8__func__,_loc3_);
                     ESP = _loc3_;
                     F___assert();
                     _loc3_ += 16;
                  }
                  _loc14_ = _loc13_ << 16;
                  _loc6_ = _loc15_ - _loc14_;
                  si32(_loc6_,_loc16_ + 24);
                  _loc15_ = _loc13_ << 2;
                  _loc12_ = li32(_loc16_ + 28);
                  _loc17_ = _loc12_ + _loc15_;
                  _loc3_ -= 16;
                  si32(_loc17_,_loc3_ + 4);
                  si32(_loc12_,_loc3_);
                  _loc17_ = _loc6_ & -65536;
                  si32(_loc12_ = (_loc17_ = _loc17_ >>> 14) + 72,_loc3_ + 8);
                  ESP = _loc3_;
                  Fmemmove();
                  _loc3_ += 16;
                  _loc17_ = li32(_loc16_ + 28);
                  _loc3_ -= 16;
                  si32(_loc15_,_loc3_ + 8);
                  si32(0,_loc3_ + 4);
                  _loc17_ += _loc12_;
                  si32(_loc17_ += _loc12_,_loc3_);
                  ESP = _loc3_;
                  Fmemset();
                  _loc3_ += 16;
                  _loc4_ = li32(_loc16_ + 68);
                  if((uint(_loc17_ = _loc4_ >>> 16)) < uint(_loc13_))
                  {
                     _loc3_ -= 16;
                     si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2106,_loc3_ + 12);
                     si32(152,_loc3_ + 8);
                     si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str104,_loc3_ + 4);
                     si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN11Blip_Buffer14remove_silenceElE8__func__,_loc3_);
                     ESP = _loc3_;
                     F___assert();
                     _loc3_ += 16;
                  }
                  _loc6_ = _loc4_ - _loc14_;
                  si32(_loc6_,_loc16_ + 68);
                  _loc12_ = li32(_loc16_ + 72);
                  _loc17_ = _loc12_ + _loc15_;
                  _loc3_ -= 16;
                  si32(_loc17_,_loc3_ + 4);
                  si32(_loc12_,_loc3_);
                  _loc17_ = _loc6_ & -65536;
                  si32(_loc12_ = (_loc17_ = _loc17_ >>> 14) + 72,_loc3_ + 8);
                  ESP = _loc3_;
                  Fmemmove();
                  _loc3_ += 16;
                  _loc17_ = li32(_loc16_ + 72);
                  _loc3_ -= 16;
                  si32(_loc15_,_loc3_ + 8);
                  si32(0,_loc3_ + 4);
                  _loc17_ += _loc12_;
                  si32(_loc17_ += _loc12_,_loc3_);
                  ESP = _loc3_;
                  Fmemset();
                  _loc3_ += 16;
                  _loc4_ = li32(_loc16_ + 112);
                  if((uint(_loc17_ = _loc4_ >>> 16)) < uint(_loc13_))
                  {
                     _loc3_ -= 16;
                     si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2106,_loc3_ + 12);
                     si32(152,_loc3_ + 8);
                     si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str104,_loc3_ + 4);
                     si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN11Blip_Buffer14remove_silenceElE8__func__,_loc3_);
                     ESP = _loc3_;
                     F___assert();
                     _loc3_ += 16;
                  }
                  _loc17_ = _loc4_ - _loc14_;
                  si32(_loc17_,_loc16_ + 112);
                  _loc12_ = li32(_loc16_ + 116);
                  _loc6_ = _loc12_ + _loc15_;
                  _loc3_ -= 16;
                  si32(_loc6_,_loc3_ + 4);
                  si32(_loc12_,_loc3_);
                  _loc17_ &= -65536;
                  si32(_loc17_ = (_loc17_ = _loc17_ &= -65536 >>> 14) + 72,_loc3_ + 8);
                  ESP = _loc3_;
                  Fmemmove();
                  _loc3_ += 16;
                  _loc12_ = li32(_loc16_ + 116);
                  _loc3_ -= 16;
                  si32(_loc15_,_loc3_ + 8);
                  si32(0,_loc3_ + 4);
                  _loc17_ = _loc12_ + _loc17_;
                  si32(_loc17_,_loc3_);
                  ESP = _loc3_;
                  Fmemset();
                  _loc3_ += 16;
               }
               §§goto(addr1628);
            }
            else
            {
               _loc17_ = _loc4_ >>> 1;
               _loc4_ = _loc17_ ^ -1;
               _loc17_ = _loc14_ >>> 16;
               if((uint(_loc14_ = _loc17_ ^ -1)) <= uint(_loc4_))
               {
                  _loc14_ = _loc4_;
               }
               _loc14_ ^= -1;
               _loc15_ += 2;
               _loc4_ = li32(_loc16_ + 72);
               _loc11_ = li32(_loc16_ + 116);
               _loc8_ = li32(_loc16_ + 124);
               _loc9_ = li32(_loc16_ + 80);
               _loc10_ = li32(_loc16_ + 84);
               do
               {
                  _loc2_ = _loc9_ >> 14;
                  _loc17_ = _loc9_ << 2;
                  if((_loc17_ = _loc17_ >> 16) != _loc2_)
                  {
                     _loc2_ = 32767 - (_loc9_ >> 31);
                  }
                  _loc1_ = _loc8_ >> 14;
                  _loc17_ = _loc8_ << 2;
                  if((_loc17_ = _loc17_ >> 16) != _loc1_)
                  {
                     _loc1_ = 32767 - (_loc8_ >> 31);
                  }
                  _loc17_ = li32(_loc4_);
                  _loc12_ = li32(_loc11_);
                  si16(_loc2_,_loc15_ - 2);
                  si16(_loc1_,_loc15_);
                  _loc6_ = _loc8_ >> _loc10_;
                  _loc6_ = _loc8_ - _loc6_;
                  _loc8_ = _loc12_ + _loc6_;
                  _loc12_ = _loc9_ >> _loc10_;
                  _loc12_ = _loc9_ - _loc12_;
                  _loc9_ = _loc17_ + _loc12_;
                  _loc15_ += 4;
                  _loc4_ += 4;
                  _loc11_ += 4;
               }
               while(_loc14_ += -1, _loc14_ += -1 != 0);
               
               si32(_loc8_,_loc16_ + 124);
               si32(_loc9_,_loc16_ + 80);
               _loc15_ = li32(_loc16_ + 24);
               if((uint(_loc17_ = _loc15_ >>> 16)) < uint(_loc13_))
               {
                  _loc3_ -= 16;
                  si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2106,_loc3_ + 12);
                  si32(152,_loc3_ + 8);
                  si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str104,_loc3_ + 4);
                  si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN11Blip_Buffer14remove_silenceElE8__func__,_loc3_);
                  ESP = _loc3_;
                  F___assert();
                  _loc3_ += 16;
               }
               _loc14_ = _loc13_ << 16;
               _loc15_ -= _loc14_;
               si32(_loc15_ -= _loc14_,_loc16_ + 24);
               if(_loc13_ != 0)
               {
                  _loc15_ = li32(_loc16_ + 68);
                  if((uint(_loc17_ = _loc15_ >>> 16)) < uint(_loc13_))
                  {
                     _loc3_ -= 16;
                     si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2106,_loc3_ + 12);
                     si32(152,_loc3_ + 8);
                     si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str104,_loc3_ + 4);
                     si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN11Blip_Buffer14remove_silenceElE8__func__,_loc3_);
                     ESP = _loc3_;
                     F___assert();
                     _loc3_ += 16;
                  }
                  _loc6_ = _loc15_ - _loc14_;
                  si32(_loc6_,_loc16_ + 68);
                  _loc15_ = _loc13_ << 2;
                  _loc17_ = li32(_loc16_ + 72);
                  _loc12_ = _loc17_ + _loc15_;
                  _loc3_ -= 16;
                  si32(_loc12_,_loc3_ + 4);
                  si32(_loc17_,_loc3_);
                  _loc17_ = _loc6_ & -65536;
                  si32(_loc17_ = (_loc17_ = _loc17_ >>> 14) + 72,_loc3_ + 8);
                  ESP = _loc3_;
                  Fmemmove();
                  _loc3_ += 16;
                  _loc12_ = li32(_loc16_ + 72);
                  _loc3_ -= 16;
                  si32(_loc15_,_loc3_ + 8);
                  si32(0,_loc3_ + 4);
                  _loc17_ = _loc12_ + _loc17_;
                  si32(_loc17_,_loc3_);
                  ESP = _loc3_;
                  Fmemset();
                  _loc3_ += 16;
                  _loc4_ = li32(_loc16_ + 112);
                  if((uint(_loc17_ = _loc4_ >>> 16)) < uint(_loc13_))
                  {
                     _loc3_ -= 16;
                     si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2106,_loc3_ + 12);
                     si32(152,_loc3_ + 8);
                     si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str104,_loc3_ + 4);
                     si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN11Blip_Buffer14remove_silenceElE8__func__,_loc3_);
                     ESP = _loc3_;
                     F___assert();
                     _loc3_ += 16;
                  }
                  _loc17_ = _loc4_ - _loc14_;
                  si32(_loc17_,_loc16_ + 112);
                  _loc12_ = li32(_loc16_ + 116);
                  _loc6_ = _loc12_ + _loc15_;
                  _loc3_ -= 16;
                  si32(_loc6_,_loc3_ + 4);
                  si32(_loc12_,_loc3_);
                  _loc17_ &= -65536;
                  si32(_loc12_ = (_loc17_ = _loc17_ &= -65536 >>> 14) + 72,_loc3_ + 8);
                  ESP = _loc3_;
                  Fmemmove();
                  _loc3_ += 16;
                  _loc17_ = li32(_loc16_ + 116);
                  _loc3_ -= 16;
                  si32(_loc15_,_loc3_ + 8);
                  si32(0,_loc3_ + 4);
                  _loc17_ += _loc12_;
                  si32(_loc17_ += _loc12_,_loc3_);
                  ESP = _loc3_;
                  Fmemset();
                  _loc3_ += 16;
                  §§goto(addr1628);
               }
            }
         }
         if(uint(_loc15_) <= 65535)
         {
            _loc17_ = li32(_loc16_ + 164);
            si32(_loc17_,_loc16_ + 168);
            si32(0,_loc16_ + 164);
         }
      }
      eax = _loc17_ = _loc13_ << 1;
      _loc3_ = _loc5_;
      ESP = _loc3_;
   }
}
