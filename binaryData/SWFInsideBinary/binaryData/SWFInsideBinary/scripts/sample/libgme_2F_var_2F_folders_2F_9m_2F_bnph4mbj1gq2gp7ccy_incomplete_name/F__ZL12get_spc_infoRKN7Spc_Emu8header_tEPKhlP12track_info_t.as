package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.sxi8;
   import sample.libgme.ESP;
   import sample.libgme.F__ZN8Gme_File11copy_field_EPcPKci;
   import sample.libgme.Fmemcpy;
   
   public function F__ZL12get_spc_infoRKN7Spc_Emu8header_tEPKhlP12track_info_t() : void
   {
      var _loc10_:int = 0;
      var _loc6_:* = 0;
      var _loc19_:* = 0;
      var _loc20_:* = 0;
      var _loc21_:* = 0;
      var _loc23_:int = 0;
      var _loc15_:int = 0;
      var _loc18_:* = 0;
      var _loc11_:int = 0;
      var _loc9_:int = 0;
      var _loc8_:* = 0;
      var _loc16_:* = 0;
      var _loc12_:* = 0;
      var _loc3_:* = 0;
      var _loc22_:* = 0;
      var _loc2_:* = 0;
      var _loc7_:* = 0;
      var _loc4_:* = 0;
      var _loc14_:* = 0;
      var _loc5_:* = int((_loc10_ = ESP) - 272);
      _loc23_ = (_loc6_ = li32(_loc10_)) + 169;
      _loc22_ = 0;
      _loc21_ = li32(_loc10_ + 12);
      _loc20_ = li32(_loc10_ + 8);
      _loc19_ = li32(_loc10_ + 4);
      _loc18_ = _loc22_;
      while(_loc18_ < 3)
      {
         var _loc17_:*;
         if((uint(_loc15_ = (_loc17_ = li8(_loc17_ = int(_loc23_ + _loc18_))) + -48)) >= 10)
         {
            if(_loc18_ == 1)
            {
               if((_loc17_ = li8(_loc6_ + 176)) == 0)
               {
                  if((_loc17_ = li8(_loc6_ + 177)) != 0)
                  {
                     break;
                  }
               }
               §§goto(addr148);
            }
            break;
         }
         _loc22_ = int(_loc15_ + int(_loc22_ * 10));
         _loc18_ += 1;
      }
      if(_loc22_ != 0)
      {
         if(_loc22_ >= 8192)
         {
            addr148:
            _loc17_ = li8(_loc6_ + 169);
            var _loc1_:* = li8(_loc6_ + 170);
            _loc1_ <<= 8;
            _loc22_ = _loc1_ | _loc17_;
            §§goto(addr167);
         }
         addr167:
         if(_loc22_ <= 8190)
         {
            si32(_loc17_ = int(_loc22_ * 1000),_loc21_ + 4);
         }
         _loc18_ = si8(li8(_loc6_ + 176));
         _loc15_ = 1;
         if(_loc18_ >= 32)
         {
            _loc15_ = 1;
            if(uint(int(_loc18_ + -48)) >= 10)
            {
               _loc15_ = 0;
            }
         }
         _loc5_ -= 16;
         si32(_loc17_ = int(32 - _loc15_),_loc5_ + 8);
         si32(_loc18_ = int(_loc21_ + 784),_loc5_);
         si32(_loc17_ = int((_loc17_ = int(_loc6_ + _loc15_)) + 176),_loc5_ + 4);
         ESP = _loc5_;
         F__ZN8Gme_File11copy_field_EPcPKci();
         _loc5_ = int((_loc5_ += 16) - 16);
         si32(32,_loc5_ + 8);
         si32(_loc17_ = int(_loc6_ + 46),_loc5_ + 4);
         si32(_loc15_ = _loc21_ + 528,_loc5_);
         ESP = _loc5_;
         F__ZN8Gme_File11copy_field_EPcPKci();
         _loc5_ = int((_loc5_ += 16) - 16);
         si32(32,_loc5_ + 8);
         si32(_loc17_ = int(_loc6_ + 78),_loc5_ + 4);
         si32(_loc23_ = _loc21_ + 272,_loc5_);
         ESP = _loc5_;
         F__ZN8Gme_File11copy_field_EPcPKci();
         _loc5_ = int((_loc5_ += 16) - 16);
         si32(16,_loc5_ + 8);
         si32(_loc17_ = int(_loc6_ + 110),_loc5_ + 4);
         si32(_loc22_ = int(_loc21_ + 1552),_loc5_);
         ESP = _loc5_;
         F__ZN8Gme_File11copy_field_EPcPKci();
         _loc5_ = int((_loc5_ += 16) - 16);
         si32(32,_loc5_ + 8);
         si32(_loc17_ = int(_loc6_ + 126),_loc5_ + 4);
         si32(_loc11_ = _loc21_ + 1296,_loc5_);
         ESP = _loc5_;
         F__ZN8Gme_File11copy_field_EPcPKci();
         _loc5_ += 16;
         if(_loc20_ != 0)
         {
            _loc6_ = int(_loc19_ + _loc20_);
            _loc12_ = 0;
            if(_loc20_ >= 8)
            {
               while(true)
               {
                  _loc17_ = li8(_loc17_ = int(L__2E_str1496 - _loc12_));
                  _loc1_ = int(_loc19_ - _loc12_);
                  _loc1_ = li8(_loc1_);
                  if(_loc1_ != _loc17_)
                  {
                     break;
                  }
                  if((_loc12_ += -1) == -4)
                  {
                     _loc20_ = int(_loc19_ + 8);
                     var _loc13_:*;
                     if(int(_loc6_ - _loc20_) > (_loc12_ = (((_loc13_ = (_loc13_ = li8(_loc19_ + 7)) << 8) | li8(_loc19_ + 6)) << 8 | li8(_loc19_ + 5)) << 8 | li8(_loc19_ + 4)))
                     {
                        _loc6_ = int((_loc17_ = int(_loc12_ + _loc19_)) + 8);
                     }
                     _loc14_ = int((_loc12_ = int(_loc10_ - 261)) + 5);
                     _loc7_ = _loc4_ = 0;
                     while(true)
                     {
                        _loc16_ = _loc4_;
                        if((_loc17_ = int(_loc6_ - _loc20_)) > 3)
                        {
                           _loc4_ = li8(_loc20_ + 3) << 8 | li8(_loc20_ + 2);
                           if(li8(_loc20_ + 1) != (_loc8_ = 0))
                           {
                              _loc8_ = _loc4_;
                           }
                           _loc9_ = _loc20_ + 4;
                           if((_loc17_ = int(_loc6_ - _loc9_)) < _loc8_)
                           {
                              break;
                           }
                           _loc3_ = li8(_loc20_);
                           if(_loc3_ <= 3)
                           {
                              _loc2_ = _loc15_;
                              if(_loc3_ != 1)
                              {
                                 if(_loc3_ != 2)
                                 {
                                    if(_loc3_ != 3)
                                    {
                                       addr666:
                                       _loc4_ = _loc16_;
                                       addr708:
                                       _loc2_ = _loc8_ = int((_loc17_ = int(_loc20_ + _loc8_)) + 4);
                                       while(true)
                                       {
                                          _loc17_ = (_loc17_ = int(_loc2_ - _loc19_)) & 3;
                                          _loc20_ = _loc2_;
                                          if(_loc17_ == 0)
                                          {
                                             break;
                                          }
                                          _loc20_ = _loc2_;
                                          if(uint(_loc2_) >= uint(_loc6_))
                                          {
                                             break;
                                          }
                                          _loc17_ = li8(_loc2_);
                                          _loc2_ += 1;
                                          _loc20_ = _loc8_;
                                          if(_loc17_ != 0)
                                          {
                                             break;
                                          }
                                       }
                                       continue;
                                    }
                                    _loc2_ = _loc18_;
                                    §§goto(addr708);
                                 }
                                 else
                                 {
                                    _loc2_ = _loc23_;
                                 }
                              }
                              addr670:
                              _loc4_ = _loc16_;
                              if(_loc2_ != 0)
                              {
                                 _loc5_ -= 16;
                                 si32(_loc8_,_loc5_ + 8);
                                 si32(_loc9_,_loc5_ + 4);
                                 si32(_loc2_,_loc5_);
                                 ESP = _loc5_;
                                 F__ZN8Gme_File11copy_field_EPcPKci();
                                 _loc5_ += 16;
                                 _loc4_ = _loc16_;
                              }
                           }
                           else if(_loc3_ <= 18)
                           {
                              if(_loc3_ != 4)
                              {
                                 if(_loc3_ != 7)
                                 {
                                    §§goto(addr666);
                                 }
                                 else
                                 {
                                    _loc2_ = _loc11_;
                                 }
                                 §§goto(addr666);
                              }
                              else
                              {
                                 _loc2_ = _loc22_;
                              }
                              §§goto(addr670);
                           }
                           else if(_loc3_ != 19)
                           {
                              if(_loc3_ != 20)
                              {
                                 §§goto(addr666);
                              }
                           }
                           else
                           {
                              _loc5_ -= 16;
                              si32(_loc9_,_loc5_ + 4);
                              si32(_loc14_,_loc5_);
                              _loc7_ = _loc8_;
                              if(uint(_loc8_) >= 256)
                              {
                                 _loc7_ = 256;
                              }
                              si32(_loc7_,_loc5_ + 8);
                              ESP = _loc5_;
                              Fmemcpy();
                              _loc5_ += 16;
                              _loc4_ = _loc16_;
                           }
                           §§goto(addr666);
                        }
                        break;
                     }
                     if(_loc16_ != 0)
                     {
                        si8(32,_loc10_ - 257);
                        si8(_loc17_ = int((_loc17_ = int(_loc16_ % 10)) + 48),_loc10_ - 258);
                        si8(_loc17_ = int((_loc17_ = int((_loc17_ = int(_loc16_ / 10)) % 10)) + 48),_loc10_ - 259);
                        si8(_loc17_ = int((_loc17_ = int((_loc17_ = int(_loc16_ / 100)) % 10)) + 48),_loc10_ - 260);
                        si8(_loc17_ = int((_loc17_ = int((_loc17_ = int(_loc16_ / 1000)) % 10)) + 48),_loc10_ - 261);
                        _loc7_ += 5;
                        _loc14_ = _loc12_;
                     }
                     if(_loc7_ != 0)
                     {
                        _loc5_ -= 16;
                        si32(_loc7_,_loc5_ + 8);
                        si32(_loc14_,_loc5_ + 4);
                        si32(_loc17_ = int(_loc21_ + 1040),_loc5_);
                        ESP = _loc5_;
                        F__ZN8Gme_File11copy_field_EPcPKci();
                        _loc5_ += 16;
                        break;
                     }
                     break;
                  }
               }
            }
         }
         ESP = _loc5_ = _loc10_;
         return;
      }
      §§goto(addr148);
   }
}
