package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.sxi8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2472;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str3473;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str4474;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN8Snes_Spc5Timer10run_until_EiE8__func__;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN8Snes_Spc8run_dsp_EiE8__func__;
   
   public function F__ZN8Snes_Spc5writeEji() : void
   {
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc10_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:int = ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 8);
      _loc10_ = li32(_loc3_ + 4);
      _loc9_ = li32(_loc3_);
      if(uint(_loc10_) <= 239)
      {
         si8(_loc1_,int(_loc9_ + _loc10_) + 948);
      }
      else
      {
         if(_loc10_ <= 243)
         {
            if(_loc10_ != 240)
            {
               if(_loc10_ != 241)
               {
                  if(_loc10_ == 243)
                  {
                     _loc7_ = li32(_loc9_ + 84);
                     _loc10_ = int(0 - li32(_loc9_ + 620));
                     if(_loc7_ <= _loc10_)
                     {
                        var _loc8_:*;
                        _loc10_ = int((_loc8_ = (_loc8_ = int(_loc10_ - _loc7_)) >> 5) + 1);
                        if((_loc6_ = li32(_loc9_ + 76)) != 0)
                        {
                           si32(_loc8_ = int(_loc6_ + (_loc10_ << 2)),_loc9_ + 76);
                           if(uint(_loc8_) > uint(li32(_loc9_ + 80)))
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
                        si32(_loc8_ = int((_loc8_ = _loc10_ << 5) + _loc7_),_loc9_ + 84);
                        _loc2_ -= 16;
                        si32(_loc6_,_loc2_ + 8);
                        si32(_loc10_,_loc2_ + 4);
                        si32(_loc8_ = int(_loc9_ + 88),_loc2_);
                        ESP = _loc2_;
                        F__ZN7Spc_Dsp3runElPs();
                        _loc2_ += 16;
                        _loc7_ = li32(_loc9_ + 84);
                     }
                     _loc10_ = li8(_loc9_ + 1190);
                     if(_loc7_ >= 1)
                     {
                        if(_loc10_ != 92)
                        {
                           if(_loc10_ == 76)
                           {
                              si32(_loc8_ = (_loc8_ = (_loc8_ = li8(_loc9_ + 180)) ^ -1) & _loc1_ | li32(_loc9_ + 592),_loc9_ + 592);
                           }
                           else
                           {
                              addr386:
                              if((_loc8_ = (_loc8_ = _loc10_ << 24) >> 24) >= 0)
                              {
                              }
                              §§goto(addr899);
                           }
                           §§goto(addr899);
                        }
                        else
                        {
                           si32(_loc8_ = (_loc8_ = li32(_loc9_ + 596)) | _loc1_,_loc9_ + 596);
                           var _loc5_:*;
                           si32(_loc8_ = (_loc5_ = li32(_loc9_ + 592)) & (_loc1_ ^ -1),_loc9_ + 592);
                        }
                        _loc8_ = int((_loc7_ = int(_loc9_ + 88)) + _loc10_);
                        si8(_loc1_,_loc8_);
                        _loc4_ = _loc10_ & 15;
                        _loc6_ = int(_loc10_ >>> 4);
                        if(_loc4_ != 15)
                        {
                           if(uint(_loc4_) <= 1)
                           {
                              _loc1_ = si8(li8(_loc8_ = int(_loc7_ + (_loc10_ | 1))));
                              _loc6_ = int(_loc9_ + (_loc6_ << 5));
                              si16(_loc10_ = si8(li8(_loc8_ = int(_loc7_ + (_loc10_ & 254)))),_loc6_ + 336);
                              si16(_loc1_,_loc6_ + 338);
                              if(int(_loc1_ * _loc10_) < li32(_loc9_ + 332))
                              {
                                 if(_loc10_ <= -1)
                                 {
                                    si16(_loc8_ = int(0 - _loc10_),_loc6_ + 336);
                                 }
                                 else
                                 {
                                    si16(_loc8_ = int(0 - _loc1_),_loc6_ + 338);
                                 }
                              }
                           }
                        }
                        else
                        {
                           si16(_loc5_ = (_loc5_ = _loc1_ << 24) >> 24,int(_loc9_ + (_loc6_ << 1)) + 220);
                        }
                        §§goto(addr899);
                        ESP = _loc2_;
                        return;
                     }
                  }
               }
               else
               {
                  if((_loc8_ = _loc1_ & 1) != 0)
                  {
                     if((_loc8_ = li32(_loc9_ + 16)) == 0)
                     {
                        si32(1,_loc9_ + 16);
                        si32(0,_loc9_ + 20);
                        si32(0,_loc9_ + 8);
                        si32(_loc8_ = int(0 - li32(_loc9_ + 620)),_loc9_);
                     }
                  }
                  else
                  {
                     si32(0,_loc9_ + 16);
                     si32(127,_loc9_);
                  }
                  if((_loc8_ = _loc1_ & 2) != 0)
                  {
                     if((_loc8_ = li32(_loc9_ + 40)) == 0)
                     {
                        si32(1,_loc9_ + 40);
                        si32(0,_loc9_ + 44);
                        si32(0,_loc9_ + 32);
                        si32(_loc8_ = int(0 - li32(_loc9_ + 620)),_loc9_ + 24);
                     }
                  }
                  else
                  {
                     si32(0,_loc9_ + 40);
                     si32(127,_loc9_ + 24);
                  }
                  if((_loc8_ = _loc1_ & 4) != 0)
                  {
                     if((_loc8_ = li32(_loc9_ + 64)) == 0)
                     {
                        si32(1,_loc9_ + 64);
                        si32(0,_loc9_ + 68);
                        si32(0,_loc9_ + 56);
                        si32(_loc8_ = int(0 - li32(_loc9_ + 620)),_loc9_ + 48);
                     }
                  }
                  else
                  {
                     si32(0,_loc9_ + 64);
                     si32(127,_loc9_ + 48);
                  }
                  if((_loc8_ = _loc1_ & 16) != 0)
                  {
                     si8(0,_loc9_ + 1192);
                     si8(0,_loc9_ + 1193);
                  }
                  if((_loc8_ = _loc1_ & 32) != 0)
                  {
                     si8(0,_loc9_ + 1194);
                     si8(0,_loc9_ + 1195);
                  }
                  _loc5_ = li8(_loc9_ + 603);
                  _loc10_ = int((_loc8_ = _loc1_ & 128) >>> 7);
                  if(_loc5_ != _loc10_)
                  {
                     si8(_loc10_,_loc9_ + 603);
                     _loc2_ -= 16;
                     si32(64,_loc2_ + 8);
                     _loc1_ = int(_loc9_ + 628);
                     if(_loc10_ != 0)
                     {
                        _loc1_ = int(_loc9_ + 66740);
                     }
                     si32(_loc1_,_loc2_ + 4);
                     si32(_loc8_ = int(_loc9_ + 66420),_loc2_);
                     ESP = _loc2_;
                     Fmemcpy();
                     _loc2_ += 16;
                  }
               }
            }
            §§goto(addr386);
         }
         else if((uint(_loc7_ = int(_loc10_ + -244))) <= 11)
         {
            if((_loc8_ = (_loc7_ = 1 << _loc7_) & 15) == 0)
            {
               if((_loc8_ = _loc7_ & 448) == 0)
               {
                  if((_loc8_ = _loc7_ & 3584) != 0)
                  {
                     si32(0,int((_loc8_ = int(_loc10_ * 24)) + _loc9_) - 6052);
                  }
               }
               else if((_loc8_ = (_loc7_ = li32((_loc8_ = int((_loc10_ *= 24) + _loc9_)) - 5996)) & 255) != _loc1_)
               {
                  _loc6_ = li32((_loc10_ = int(_loc9_ + _loc10_)) - 6000);
                  _loc9_ = int(0 - li32(_loc9_ + 620));
                  if(_loc6_ <= _loc9_)
                  {
                     if((_loc8_ = li32(_loc10_ - 5984)) == 0)
                     {
                        _loc2_ -= 16;
                        si32(L__2E_str3473,_loc2_ + 12);
                        si32(183,_loc2_ + 8);
                        si32(L__2E_str2472,_loc2_ + 4);
                        si32(__ZZN8Snes_Spc5Timer10run_until_EiE8__func__,_loc2_);
                        ESP = _loc2_;
                        F___assert();
                        _loc2_ += 16;
                     }
                     _loc8_ = int(_loc9_ - _loc6_);
                     _loc5_ = li32(_loc10_ - 5988);
                     si32(_loc5_ = int((_loc5_ = int((_loc8_ = int((_loc8_ /= _loc5_) + 1)) * _loc5_)) + _loc6_),_loc10_ - 6000);
                     _loc9_ = int((_loc5_ = li32(_loc10_ - 5992)) + _loc8_);
                     if(_loc7_ <= _loc9_)
                     {
                        _loc8_ = int(_loc9_ / _loc7_);
                        si32(_loc5_ = (_loc5_ = int((_loc5_ = li32(_loc10_ - 5980)) + _loc8_)) & 15,_loc10_ - 5980);
                        _loc9_ -= int(_loc8_ * _loc7_);
                     }
                     si32(_loc9_,_loc10_ - 5992);
                  }
                  _loc9_ = 256;
                  if(_loc1_ != 0)
                  {
                     _loc9_ = _loc1_;
                  }
                  si32(_loc9_,_loc10_ - 5996);
               }
            }
            §§goto(addr386);
         }
         if(uint(_loc10_) <= 65471)
         {
            si8(_loc1_,int(_loc9_ + _loc10_) + 948);
         }
         else
         {
            si8(_loc1_,int(_loc10_ + _loc9_) - 64844);
            if((_loc8_ = li8(_loc9_ + 603)) == 0)
            {
               si8(_loc1_,int(_loc9_ + _loc10_) + 948);
            }
         }
      }
      §§goto(addr386);
   }
}
