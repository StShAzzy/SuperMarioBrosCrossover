package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.F_idalloc;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str31274;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str41275;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str71277;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str81278;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str91279;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2._collate_encoding_2E_2929;
   
   public function F___collate_load_tables() : void
   {
      var _loc4_:* = 0;
      var _loc7_:* = 0;
      var _loc10_:* = 0;
      var _loc13_:* = 0;
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc12_:* = 0;
      var _loc14_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ -= 1040;
      _loc3_ = 0;
      _loc14_ = li32(_loc4_);
      _loc13_ = _loc3_;
      loop0:
      do
      {
         var _loc11_:*;
         _loc12_ = li8(_loc11_ = int(_loc14_ + _loc13_));
         _loc11_ = li8(_loc11_ = int(L__2E_str31274 + _loc13_));
         _loc10_ = _loc3_;
         if(_loc12_ != _loc11_)
         {
            loop1:
            while(true)
            {
               _loc12_ = li8(_loc11_ = int(_loc14_ + _loc10_));
               _loc11_ = li8(_loc11_ = int(L__2E_str41275 + _loc10_));
               if(_loc12_ == _loc11_)
               {
                  _loc10_ += 1;
                  if(_loc12_ == 0)
                  {
                     break loop0;
                  }
                  continue;
               }
               while(true)
               {
                  _loc10_ = li8(_loc11_ = int(_loc14_ + _loc3_));
                  _loc11_ = li8(_loc11_ = int(_collate_encoding_2E_2929 + _loc3_));
                  if(_loc10_ == _loc11_)
                  {
                     _loc3_ += 1;
                     if(_loc10_ == 0)
                     {
                        si32(0,___collate_load_error);
                        _loc3_ = 1;
                     }
                     continue;
                     break loop1;
                  }
                  si8(_loc11_ = li8(_loc10_ = li32(__PathLocale)),_loc4_ - 1038);
                  if(_loc11_ != 0)
                  {
                     _loc3_ = int((_loc11_ = int(_loc4_ - 1038)) + 1);
                     _loc10_ += 1;
                     do
                     {
                        si8(_loc11_ = li8(_loc10_),_loc3_);
                        _loc3_ += 1;
                        _loc10_ += 1;
                     }
                     while(_loc11_ != 0);
                     
                  }
                  _loc3_ = (_loc10_ = int(_loc4_ - 1038)) & -4;
                  var _loc9_:*;
                  _loc11_ = int((_loc9_ = li32(_loc3_)) + -16843009);
                  if((_loc11_ = (_loc9_ = (_loc9_ &= -2139062144) ^ -2139062144) & _loc11_) != 0)
                  {
                     _loc13_ = int(_loc3_ + 4);
                     _loc8_ = 0;
                     while(true)
                     {
                        if((uint(_loc12_ = int(_loc10_ + _loc8_))) < uint(_loc13_))
                        {
                           continue;
                        }
                     }
                     addr392:
                     _loc11_ = int(_loc10_ + _loc8_);
                     si16(47,_loc11_);
                     _loc11_ = li8(_loc4_ - 1038);
                     _loc12_ = _loc10_;
                     if(_loc11_ != 0)
                     {
                        do
                        {
                           _loc12_ = int(_loc10_ + 1);
                           _loc11_ = li8(_loc10_ + 1);
                           _loc10_ = _loc12_;
                        }
                        while(_loc11_ != 0);
                        
                     }
                     _loc10_ = 0;
                     do
                     {
                        _loc11_ = int(_loc12_ + _loc10_);
                        si8(_loc9_ = li8(_loc9_ = int(_loc14_ + _loc10_)),_loc11_);
                        _loc10_ += 1;
                     }
                     while(_loc9_ != 0);
                     
                     if((_loc11_ = (_loc9_ = (_loc9_ &= -2139062144) ^ -2139062144) & int((_loc9_ = li32(_loc3_)) + -16843009)) != 0)
                     {
                        _loc12_ = int(_loc3_ + 4);
                        _loc10_ = 0;
                        while(true)
                        {
                           if((uint(_loc13_ = int((_loc11_ = int(_loc4_ - 1038)) + _loc10_))) < uint(_loc12_))
                           {
                              continue;
                           }
                        }
                        addr647:
                        _loc9_ = int((_loc11_ = int(_loc4_ - 1038)) + _loc10_);
                        si32(4543553,_loc9_ + 8);
                        si32(1280069443,_loc9_ + 4);
                        si32(1598245935,_loc9_);
                        _loc2_ -= 16;
                        si32(L__2E_str71277,_loc2_ + 4);
                        si32(_loc11_,_loc2_);
                        ESP = _loc2_;
                        F_fopen();
                        _loc3_ = -1;
                        _loc2_ += 16;
                        if((_loc12_ = int(eax)) != 0)
                        {
                           _loc2_ -= 16;
                           si32(_loc12_,_loc2_ + 12);
                           si32(1,_loc2_ + 8);
                           si32(10,_loc2_ + 4);
                           si32(_loc10_ = int(_loc4_ - 14),_loc2_);
                           ESP = _loc2_;
                           F_fread();
                           _loc13_ = int(L__2E_str81278);
                           _loc2_ += 16;
                           _loc8_ = _loc10_;
                           if(int(eax) != 1)
                           {
                              ESP = _loc2_;
                              F___error();
                              _loc2_ -= 16;
                              si32(_loc12_,_loc2_);
                              ESP = _loc2_;
                              F_fclose();
                              _loc2_ += 16;
                              ESP = _loc2_;
                              F___error();
                              si32(li32(_loc11_ = int(eax)),int(eax));
                              _loc3_ = -1;
                              break loop1;
                           }
                           loop8:
                           do
                           {
                              _loc7_ = li8(_loc8_);
                              _loc11_ = li8(_loc13_);
                              _loc3_ = int(L__2E_str91279);
                              if(_loc7_ == _loc11_)
                              {
                                 continue;
                              }
                              while(true)
                              {
                                 _loc13_ = li8(_loc10_);
                                 _loc11_ = li8(_loc3_);
                                 if(_loc13_ != _loc11_)
                                 {
                                    _loc2_ -= 16;
                                    si32(_loc12_,_loc2_);
                                    ESP = _loc2_;
                                    F_fclose();
                                    _loc2_ += 16;
                                    ESP = _loc2_;
                                    F___error();
                                    si32(79,int(eax));
                                    _loc3_ = -1;
                                    break loop1;
                                 }
                                 _loc3_ += 1;
                                 _loc10_ += 1;
                                 if(_loc13_ == 0)
                                 {
                                    _loc2_ -= 16;
                                    si32(_loc12_,_loc2_ + 12);
                                    si32(1,_loc2_ + 8);
                                    si32(4,_loc2_ + 4);
                                    si32(_loc11_ = int(_loc4_ - 4),_loc2_);
                                    ESP = _loc2_;
                                    F_fread();
                                 }
                                 continue;
                                 _loc2_ += 16;
                                 if((_loc11_ = int(eax)) != 1)
                                 {
                                    ESP = _loc2_;
                                    F___error();
                                    _loc2_ -= 16;
                                    si32(_loc12_,_loc2_);
                                    ESP = _loc2_;
                                    F_fclose();
                                    _loc2_ += 16;
                                    ESP = _loc2_;
                                    F___error();
                                    si32(li32(_loc11_ = int(eax)),int(eax));
                                    _loc3_ = -1;
                                    break loop1;
                                 }
                                 _loc3_ = (_loc11_ = _loc11_ << 24 | (_loc11_ <<= 8) & 16711680) | (int(_loc11_ >>> 8) & 65280 | int((_loc11_ = li32(_loc4_ - 4)) >>> 24));
                                 if(_loc3_ <= 0)
                                 {
                                    _loc2_ -= 16;
                                    si32(_loc12_,_loc2_);
                                    ESP = _loc2_;
                                    F_fclose();
                                    _loc2_ += 16;
                                    ESP = _loc2_;
                                    F___error();
                                    si32(79,int(eax));
                                    _loc3_ = -1;
                                    break loop1;
                                 }
                                 break loop8;
                              }
                           }
                           while(_loc13_ += 1, _loc8_ += 1, _loc3_ = 100, _loc7_ != 0);
                           
                           _loc2_ -= 16;
                           si32(2560,_loc2_);
                           ESP = _loc2_;
                           F_malloc();
                           _loc2_ += 16;
                           if((_loc8_ = int(eax)) == 0)
                           {
                              ESP = _loc2_;
                              F___error();
                              _loc2_ -= 16;
                              si32(_loc12_,_loc2_);
                              ESP = _loc2_;
                              F_fclose();
                              _loc2_ += 16;
                              ESP = _loc2_;
                              F___error();
                              si32(li32(_loc11_ = int(eax)),int(eax));
                              _loc3_ = -1;
                              break loop1;
                           }
                           _loc2_ -= 16;
                           si32(2048,_loc2_);
                           ESP = _loc2_;
                           F_malloc();
                           _loc2_ += 16;
                           if((_loc13_ = int(eax)) == 0)
                           {
                              ESP = _loc2_;
                              F___error();
                              _loc2_ -= 16;
                              si32(_loc8_,_loc2_);
                              ESP = _loc2_;
                              F_idalloc();
                              _loc2_ += 16;
                              _loc2_ -= 16;
                              si32(_loc12_,_loc2_);
                              ESP = _loc2_;
                              F_fclose();
                              _loc2_ += 16;
                              ESP = _loc2_;
                              F___error();
                              si32(li32(_loc11_ = int(eax)),int(eax));
                              _loc3_ = -1;
                              break loop1;
                           }
                           _loc2_ -= 16;
                           si32(_loc11_ = int(_loc3_ * 20),_loc2_);
                           ESP = _loc2_;
                           F_malloc();
                           _loc2_ += 16;
                           if((_loc10_ = int(eax)) == 0)
                           {
                              ESP = _loc2_;
                              F___error();
                              _loc2_ -= 16;
                              si32(_loc8_,_loc2_);
                              ESP = _loc2_;
                              F_idalloc();
                              _loc2_ += 16;
                              _loc2_ -= 16;
                              si32(_loc13_,_loc2_);
                              ESP = _loc2_;
                              F_idalloc();
                              _loc2_ += 16;
                              _loc2_ -= 16;
                              si32(_loc12_,_loc2_);
                              ESP = _loc2_;
                              F_fclose();
                              _loc2_ += 16;
                              ESP = _loc2_;
                              F___error();
                              si32(li32(_loc11_ = int(eax)),int(eax));
                              _loc3_ = -1;
                              break loop1;
                           }
                           _loc2_ -= 16;
                           si32(_loc12_,_loc2_ + 12);
                           si32(1,_loc2_ + 8);
                           si32(2560,_loc2_ + 4);
                           si32(_loc8_,_loc2_);
                           ESP = _loc2_;
                           F_fread();
                           _loc2_ += 16;
                           if((_loc11_ = int(eax)) != 1)
                           {
                              ESP = _loc2_;
                              F___error();
                              _loc2_ -= 16;
                              si32(_loc8_,_loc2_);
                              ESP = _loc2_;
                              F_idalloc();
                              _loc2_ += 16;
                              _loc2_ -= 16;
                              si32(_loc13_,_loc2_);
                              ESP = _loc2_;
                              F_idalloc();
                              _loc2_ += 16;
                              _loc2_ -= 16;
                              si32(_loc10_,_loc2_);
                              ESP = _loc2_;
                              F_idalloc();
                              _loc2_ += 16;
                              _loc2_ -= 16;
                              si32(_loc12_,_loc2_);
                              ESP = _loc2_;
                              F_fclose();
                              _loc2_ += 16;
                              ESP = _loc2_;
                              F___error();
                              si32(li32(_loc11_ = int(eax)),int(eax));
                              _loc3_ = -1;
                              break loop1;
                           }
                           _loc2_ -= 16;
                           si32(_loc12_,_loc2_ + 12);
                           si32(1,_loc2_ + 8);
                           si32(2048,_loc2_ + 4);
                           si32(_loc13_,_loc2_);
                           ESP = _loc2_;
                           F_fread();
                           _loc2_ += 16;
                           if((_loc11_ = int(eax)) != 1)
                           {
                              ESP = _loc2_;
                              F___error();
                              _loc2_ -= 16;
                              si32(_loc8_,_loc2_);
                              ESP = _loc2_;
                              F_idalloc();
                              _loc2_ += 16;
                              _loc2_ -= 16;
                              si32(_loc13_,_loc2_);
                              ESP = _loc2_;
                              F_idalloc();
                              _loc2_ += 16;
                              _loc2_ -= 16;
                              si32(_loc10_,_loc2_);
                              ESP = _loc2_;
                              F_idalloc();
                              _loc2_ += 16;
                              _loc2_ -= 16;
                              si32(_loc12_,_loc2_);
                              ESP = _loc2_;
                              F_fclose();
                              _loc2_ += 16;
                              ESP = _loc2_;
                              F___error();
                              si32(li32(_loc11_ = int(eax)),int(eax));
                              _loc3_ = -1;
                              break loop1;
                           }
                           _loc2_ -= 16;
                           si32(_loc12_,_loc2_ + 12);
                           si32(_loc3_,_loc2_ + 8);
                           si32(20,_loc2_ + 4);
                           si32(_loc10_,_loc2_);
                           ESP = _loc2_;
                           F_fread();
                           _loc2_ += 16;
                           if((_loc11_ = int(eax)) != _loc3_)
                           {
                              ESP = _loc2_;
                              F___error();
                              _loc2_ -= 16;
                              si32(_loc8_,_loc2_);
                              ESP = _loc2_;
                              F_idalloc();
                              _loc2_ += 16;
                              _loc2_ -= 16;
                              si32(_loc13_,_loc2_);
                              ESP = _loc2_;
                              F_idalloc();
                              _loc2_ += 16;
                              _loc2_ -= 16;
                              si32(_loc10_,_loc2_);
                              ESP = _loc2_;
                              F_idalloc();
                              _loc2_ += 16;
                              _loc2_ -= 16;
                              si32(_loc12_,_loc2_);
                              ESP = _loc2_;
                              F_fclose();
                              _loc2_ += 16;
                              ESP = _loc2_;
                              F___error();
                              si32(li32(_loc11_ = int(eax)),int(eax));
                              _loc3_ = -1;
                              break loop1;
                           }
                           _loc2_ -= 16;
                           si32(_loc12_,_loc2_);
                           ESP = _loc2_;
                           F_fclose();
                           _loc2_ += 16;
                           si8(_loc11_ = li8(_loc14_),_collate_encoding_2E_2929);
                           if(_loc11_ != 0)
                           {
                              _loc12_ = int(_collate_encoding_2E_2929 + 1);
                              _loc14_ += 1;
                              do
                              {
                                 si8(_loc11_ = li8(_loc14_),_loc12_);
                                 _loc12_ += 1;
                                 _loc14_ += 1;
                              }
                              while(_loc11_ != 0);
                              
                           }
                           if((_loc14_ = li32(___collate_substitute_table_ptr)) != 0)
                           {
                              _loc2_ -= 16;
                              si32(_loc14_,_loc2_);
                              ESP = _loc2_;
                              F_idalloc();
                              _loc2_ += 16;
                           }
                           si32(_loc8_,___collate_substitute_table_ptr);
                           if((_loc14_ = li32(___collate_char_pri_table_ptr)) != 0)
                           {
                              _loc2_ -= 16;
                              si32(_loc14_,_loc2_);
                              ESP = _loc2_;
                              F_idalloc();
                              _loc2_ += 16;
                           }
                           si32(_loc13_,___collate_char_pri_table_ptr);
                           _loc11_ = int((_loc9_ = li32(_loc13_)) >>> 24);
                           var _loc1_:* = int(_loc9_ >>> 8);
                           _loc1_ &= 65280;
                           _loc11_ = _loc1_ | _loc11_;
                           _loc1_ = _loc9_ << 24;
                           _loc9_ = (_loc9_ <<= 8) & 16711680;
                           si32(_loc11_ = (_loc9_ = _loc1_ | _loc9_) | _loc11_,_loc13_);
                           _loc9_ = int((_loc11_ = li32(_loc13_ + 4)) >>> 24);
                           _loc1_ = int(_loc11_ >>> 8);
                           _loc1_ &= 65280;
                           _loc9_ = _loc1_ | _loc9_;
                           _loc1_ = _loc11_ << 24;
                           _loc11_ = (_loc11_ <<= 8) & 16711680;
                           si32(_loc11_ = (_loc11_ = _loc1_ | _loc11_) | _loc9_,_loc13_ + 4);
                           _loc14_ = -1;
                           while(true)
                           {
                              _loc11_ = (_loc11_ = _loc14_ << 1) << 2;
                              var _loc5_:*;
                              _loc1_ = int((_loc5_ = li32(_loc9_ = int(_loc13_ - _loc11_))) >>> 24);
                              var _loc6_:*;
                              _loc1_ = (_loc6_ = (_loc6_ = int(_loc5_ >>> 8)) & 65280) | _loc1_;
                              _loc6_ = _loc5_ << 24;
                              _loc5_ = (_loc5_ <<= 8) & 16711680;
                              _loc1_ = (_loc5_ = _loc6_ | _loc5_) | _loc1_;
                              si32(_loc1_,_loc9_);
                              _loc1_ = int((_loc9_ = li32((_loc11_ = int((_loc9_ = li32(___collate_char_pri_table_ptr)) - _loc11_)) + 4)) >>> 24);
                              _loc1_ = (_loc5_ = (_loc5_ = int(_loc9_ >>> 8)) & 65280) | _loc1_;
                              _loc5_ = _loc9_ << 24;
                              _loc9_ = (_loc9_ <<= 8) & 16711680;
                              si32(_loc9_ = (_loc9_ = _loc5_ | _loc9_) | _loc1_,_loc11_ + 4);
                              if(_loc14_ == -255)
                              {
                                 break;
                              }
                              _loc14_ += -1;
                              _loc13_ = li32(___collate_char_pri_table_ptr);
                           }
                           if((_loc14_ = li32(___collate_chain_pri_table)) != 0)
                           {
                              _loc2_ -= 16;
                              si32(_loc14_,_loc2_);
                              ESP = _loc2_;
                              F_idalloc();
                              _loc2_ += 16;
                           }
                           si32(_loc10_,___collate_chain_pri_table);
                           if(_loc3_ >= 1)
                           {
                              si32(_loc11_ = (_loc11_ = _loc11_ << 24 | (_loc11_ <<= 8) & 16711680) | (int(_loc11_ >>> 8) & 65280 | int((_loc11_ = li32(_loc10_ + 12)) >>> 24)),_loc10_ + 12);
                              si32(_loc11_ = (_loc9_ = _loc9_ << 24 | (_loc9_ <<= 8) & 16711680) | (int(_loc9_ >>> 8) & 65280 | int((_loc9_ = li32(_loc10_ + 16)) >>> 24)),_loc10_ + 16);
                              _loc14_ = 2;
                              if(_loc3_ != 1)
                              {
                                 while(true)
                                 {
                                    _loc11_ = (_loc11_ = int(_loc14_ * 5)) << 2;
                                    _loc1_ = li32((_loc9_ = int(_loc10_ + _loc11_)) - 8);
                                    _loc5_ = int(_loc1_ >>> 24);
                                    _loc5_ = (_loc6_ = (_loc6_ = int(_loc1_ >>> 8)) & 65280) | _loc5_;
                                    _loc6_ = _loc1_ << 24;
                                    _loc1_ <<= 8;
                                    _loc1_ &= 16711680;
                                    _loc1_ = _loc6_ | _loc1_;
                                    _loc1_ |= _loc5_;
                                    si32(_loc1_,_loc9_ - 8);
                                    _loc1_ = li32((_loc11_ = int((_loc9_ = li32(___collate_chain_pri_table)) + _loc11_)) - 4);
                                    _loc9_ = int(_loc1_ >>> 24);
                                    _loc9_ = (_loc5_ = (_loc5_ = int(_loc1_ >>> 8)) & 65280) | _loc9_;
                                    _loc5_ = _loc1_ << 24;
                                    _loc1_ <<= 8;
                                    _loc1_ &= 16711680;
                                    _loc1_ = _loc5_ | _loc1_;
                                    si32(_loc9_ = _loc1_ | _loc9_,_loc11_ - 4);
                                    if(_loc3_ == _loc14_)
                                    {
                                       break;
                                    }
                                    _loc14_ += 1;
                                    _loc10_ = li32(___collate_chain_pri_table);
                                 }
                              }
                           }
                           _loc3_ = 0;
                           si32(_loc3_,___collate_substitute_nontrivial);
                           _loc14_ = li32(___collate_substitute_table_ptr);
                           while(_loc3_ < 256)
                           {
                              if(_loc3_ == li8(_loc10_ = int(_loc14_ + int(_loc3_ * 10))))
                              {
                                 if((_loc11_ = li8(_loc10_ + 1)) == 0)
                                 {
                                    _loc3_ += 1;
                                    continue;
                                 }
                              }
                              si32(1,___collate_substitute_nontrivial);
                              break;
                           }
                           _loc3_ = 0;
                           si32(_loc3_,___collate_load_error);
                           break loop1;
                        }
                        break loop1;
                     }
                     _loc3_ += 4;
                     while(true)
                     {
                        _loc11_ = int((_loc10_ = li32(_loc3_)) + -16843009);
                        if((_loc11_ = (_loc9_ = (_loc9_ = _loc10_ & -2139062144) ^ -2139062144) & _loc11_) == 0)
                        {
                           continue;
                        }
                        if((_loc11_ = _loc10_ & 255) == 0)
                        {
                           _loc10_ = int(_loc3_ - (int(_loc4_ - 1038)));
                        }
                        else if((_loc11_ = li8(_loc3_ + 1)) == 0)
                        {
                           _loc10_ = int((_loc11_ = int(1 - (int(_loc4_ - 1038)))) + _loc3_);
                        }
                        else if((_loc11_ = li8(_loc3_ + 2)) == 0)
                        {
                           _loc10_ = int((_loc11_ = int(2 - (int(_loc4_ - 1038)))) + _loc3_);
                        }
                        else
                        {
                           if((_loc11_ = li8(_loc3_ + 3)) != 0)
                           {
                              continue;
                           }
                           _loc10_ = int((_loc11_ = int(3 - (int(_loc4_ - 1038)))) + _loc3_);
                        }
                        §§goto(addr647);
                     }
                  }
                  _loc12_ = int(_loc3_ + 4);
                  while(true)
                  {
                     _loc11_ = int((_loc13_ = li32(_loc12_)) + -16843009);
                     if((_loc11_ = (_loc9_ = (_loc9_ = _loc13_ & -2139062144) ^ -2139062144) & _loc11_) == 0)
                     {
                        continue;
                     }
                     if((_loc11_ = _loc13_ & 255) == 0)
                     {
                        _loc8_ = int(_loc12_ - (int(_loc4_ - 1038)));
                     }
                     else if((_loc11_ = li8(_loc12_ + 1)) == 0)
                     {
                        _loc8_ = int((_loc11_ = int(1 - (int(_loc4_ - 1038)))) + _loc12_);
                     }
                     else if((_loc11_ = li8(_loc12_ + 2)) == 0)
                     {
                        _loc8_ = int((_loc11_ = int(2 - (int(_loc4_ - 1038)))) + _loc12_);
                     }
                     else
                     {
                        if((_loc11_ = li8(_loc12_ + 3)) != 0)
                        {
                           continue;
                        }
                        _loc8_ = int((_loc11_ = int(3 - (int(_loc4_ - 1038)))) + _loc12_);
                     }
                     §§goto(addr392);
                  }
               }
            }
            §§goto(addr2416);
         }
         _loc13_ += 1;
      }
      while(_loc12_ != 0);
      
      _loc3_ = 1;
      si32(_loc3_,___collate_load_error);
      addr2416:
      eax = _loc3_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
