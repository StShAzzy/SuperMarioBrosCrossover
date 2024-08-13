package sample.libgme
{
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.sxi16;
   import avm2.intrinsics.memory.sxi8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL9env_rates;
   
   public function F__ZN7Spc_Dsp14clock_envelopeEi() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:int = 0;
      var _loc10_:* = 0;
      var _loc4_:int = 0;
      var _loc11_:* = 0;
      var _loc5_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc11_ = _loc1_ << 5;
      _loc10_ = li32(_loc3_);
      _loc8_ = li16((_loc9_ = _loc10_ + _loc11_) + 276);
      _loc7_ = si16(li16(_loc9_ + 270));
      if(_loc8_ == 3)
      {
         _loc7_ += -8;
         if(_loc7_ += -8 <= 0)
         {
            _loc11_ = 1 << _loc1_;
            si32(_loc11_ = (_loc11_ = li32(_loc10_ + 224)) & (_loc11_ ^ -1),_loc10_ + 224);
            _loc7_ = -1;
         }
         else
         {
            si16(_loc7_,_loc9_ + 270);
            si8(_loc11_ = _loc7_ >>> 8,_loc10_ + (_loc1_ << 4) + 8);
         }
      }
      else
      {
         _loc5_ = si16(li16(_loc9_ + 268));
         _loc10_ += _loc1_ << 4;
         _loc1_ = li8(_loc10_ += _loc1_ << 4 + 5);
         _loc11_ = _loc1_ & 0x80;
         if(_loc11_ != 0)
         {
            if(_loc8_ != 2)
            {
               if(_loc8_ != 1)
               {
                  if(_loc8_ == 0)
                  {
                     _loc8_ = _loc1_ & 0x0F;
                     if(_loc8_ == 15)
                     {
                        _loc7_ += 1024;
                        addr202:
                        if(_loc7_ >= 2048)
                        {
                           si16(1,_loc9_ + 276);
                           _loc7_ = 2047;
                        }
                        si16(_loc7_,_loc9_ + 270);
                     }
                     else
                     {
                        _loc11_ = _loc8_ << 2;
                        if((_loc5_ -= si16(li16(_loc11_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL9env_rates + (_loc11_ | 2)))) <= 0)
                        {
                           _loc7_ += 32;
                           _loc5_ = 30720;
                           §§goto(addr202);
                        }
                     }
                  }
               }
               else
               {
                  _loc11_ = _loc1_ >>> 3;
                  if((_loc5_ -= si16(li16(_loc11_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL9env_rates + ((_loc11_ = (_loc11_ = _loc11_ & 0x0E) | 0x10) << 1)))) <= 0)
                  {
                     var _loc6_:int = _loc7_ + -1;
                     si16(_loc7_ = _loc6_ - (_loc6_ >> 8),_loc9_ + 270);
                     _loc5_ = 30720;
                  }
                  _loc11_ = li8(_loc10_ + 6);
                  if((_loc11_ = (_loc11_ = (_loc11_ = _loc11_ & 0xE0) << 3) + 256) >= _loc7_)
                  {
                     si16(2,_loc9_ + 276);
                  }
               }
            }
            else
            {
               _loc11_ = li8(_loc10_ + 6);
               if((_loc5_ -= si16(li16(_loc11_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL9env_rates + ((_loc11_ = _loc11_ & 0x1F) << 1)))) <= 0)
               {
                  _loc6_ = _loc7_ + -1;
                  si16(_loc7_ = _loc6_ - (_loc6_ >> 8),_loc9_ + 270);
                  _loc5_ = 30720;
               }
            }
         }
         else
         {
            _loc11_ = si8(li8(_loc10_ + 7));
            _loc1_ = _loc11_ & 0xFF;
            if(_loc11_ >= 0)
            {
               _loc7_ = _loc1_ << 4;
               si16(_loc7_,_loc9_ + 270);
            }
            else
            {
               _loc4_ = _loc1_ >>> 5;
               if(_loc4_ <= 5)
               {
                  if(_loc4_ != 4)
                  {
                     if(_loc4_ == 5)
                     {
                        _loc11_ = _loc1_ & 0x1F;
                        if((_loc5_ -= si16(li16(_loc11_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL9env_rates + (_loc11_ << 1)))) <= 0)
                        {
                           _loc6_ = _loc7_ + -1;
                           if((_loc7_ = _loc6_ - (_loc6_ >> 8)) <= -1)
                           {
                              _loc7_ = 0;
                              if(_loc8_ == 0)
                              {
                                 si16(1,_loc9_ + 276);
                                 _loc7_ = 0;
                              }
                           }
                           si16(_loc7_,_loc9_ + 270);
                           _loc5_ = 30720;
                        }
                     }
                  }
                  else
                  {
                     _loc11_ = _loc1_ & 0x1F;
                     if((_loc5_ -= si16(li16(_loc11_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL9env_rates + (_loc11_ << 1)))) <= 0)
                     {
                        _loc7_ += -32;
                        if(_loc7_ += -32 <= -1)
                        {
                           _loc7_ = 0;
                           if(_loc8_ == 0)
                           {
                              si16(1,_loc9_ + 276);
                              _loc7_ = 0;
                           }
                        }
                        si16(_loc7_,_loc9_ + 270);
                        _loc5_ = 30720;
                     }
                  }
               }
               else if(_loc4_ != 6)
               {
                  if(_loc4_ == 7)
                  {
                     _loc11_ = _loc1_ & 0x1F;
                     if((_loc5_ -= si16(li16(_loc11_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL9env_rates + (_loc11_ << 1)))) <= 0)
                     {
                        _loc5_ = 32;
                        if(_loc7_ >= 1536)
                        {
                           _loc5_ = 8;
                        }
                        _loc5_ += _loc7_;
                        _loc7_ = 2047;
                        if(_loc5_ <= _loc7_)
                        {
                           _loc7_ = _loc5_;
                        }
                        si16(_loc7_,_loc9_ + 270);
                        _loc5_ = 30720;
                     }
                  }
               }
               else
               {
                  _loc11_ = _loc1_ & 0x1F;
                  if((_loc5_ -= si16(li16(_loc11_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL9env_rates + (_loc11_ << 1)))) <= 0)
                  {
                     _loc5_ = _loc7_ + 32;
                     _loc7_ = 2047;
                     if(_loc5_ <= _loc7_)
                     {
                        _loc7_ = _loc5_;
                     }
                     si16(_loc7_,_loc9_ + 270);
                     _loc5_ = 30720;
                  }
               }
            }
         }
         si16(_loc5_,_loc9_ + 268);
         _loc11_ = _loc7_ >>> 4;
         si8(_loc11_,_loc10_ + 8);
      }
      eax = _loc7_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
