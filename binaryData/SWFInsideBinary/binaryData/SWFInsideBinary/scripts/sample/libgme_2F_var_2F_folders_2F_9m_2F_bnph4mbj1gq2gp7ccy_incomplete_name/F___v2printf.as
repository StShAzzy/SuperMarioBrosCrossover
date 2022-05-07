package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.sxi16;
   import avm2.intrinsics.memory.sxi8;
   import sample.libgme.ESP;
   import sample.libgme.F___sfvwrite;
   import sample.libgme.F_errx;
   import sample.libgme.Fmemset;
   import sample.libgme.eax;
   import sample.libgme.ptr2fun;
   
   public function F___v2printf() : void
   {
      var _loc9_:int = 0;
      var _loc10_:* = 0;
      var _loc12_:* = 0;
      var _loc18_:* = 0;
      var _loc16_:* = 0;
      var _loc14_:int = 0;
      var _loc13_:* = 0;
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:* = 0;
      var _loc19_:* = 0;
      var _loc20_:* = 0;
      var _loc15_:int = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = 0;
      var _loc6_:* = 0;
      var _loc22_:* = 0;
      var _loc11_:* = 0;
      var _loc4_:* = int((_loc9_ = ESP) - 96);
      var _loc21_:*;
      _loc20_ = (_loc21_ = int((_loc21_ = int((_loc22_ = int((_loc5_ = li32(_loc9_ + 8)) + 10)) * 104)) + 15)) & -16;
      _loc19_ = (_loc21_ = int((_loc21_ = _loc4_) - _loc20_)) & -16;
      _loc20_ = (_loc21_ = int((_loc22_ <<= 2) + 15)) & -16;
      _loc18_ = (_loc21_ = int((_loc21_ = _loc4_ = _loc19_) - _loc20_)) & -16;
      _loc5_ = (_loc5_ = int((_loc5_ <<= 3) + 95)) & -16;
      _loc16_ = (_loc5_ = int((_loc21_ = _loc4_ = _loc18_) - _loc5_)) & -16;
      _loc14_ = (_loc15_ = _loc9_ - 88) + 16;
      _loc4_ = _loc16_;
      si32(_loc14_,_loc9_ - 8);
      _loc1_ = _loc15_ | 4;
      si32(_loc14_,_loc1_);
      si32(0,_loc1_ + 8);
      si32(0,_loc9_ - 80);
      si32(_loc10_ = li32(_loc9_),_loc9_ - 88);
      _loc4_ -= 16;
      si32(_loc22_,_loc4_ + 8);
      si32(0,_loc4_ + 4);
      si32(_loc18_,_loc4_);
      ESP = _loc4_;
      Fmemset();
      _loc4_ += 16;
      _loc11_ = li32(_loc9_ + 12);
      _loc12_ = li32(_loc9_ + 4);
      _loc13_ = _loc19_;
      _loc3_ = _loc12_;
      _loc6_ = 1;
      _loc7_ = 0;
      loop0:
      while(true)
      {
         _loc4_ -= 16;
         si32(104,_loc4_ + 8);
         si32(0,_loc4_ + 4);
         si32(_loc13_,_loc4_);
         ESP = _loc4_;
         Fmemset();
         _loc4_ += 16;
         if((_loc5_ = li8(_loc3_)) != 0)
         {
            si32(-1,_loc13_);
            si32(32,_loc13_ + 56);
            si32(_loc3_,_loc13_ + 92);
            si32(_loc3_,_loc13_ + 88);
            while((_loc8_ = li8(_loc3_)) != 0)
            {
               if(_loc8_ == 37)
               {
                  _loc8_ = int(_loc3_ + 1);
                  while(true)
                  {
                     _loc3_ = _loc8_;
                     _loc2_ = si8(li8(_loc3_));
                     si32(_loc2_,_loc13_ + 8);
                     if(_loc2_ <= 67)
                     {
                        if(_loc2_ <= 42)
                        {
                           if(_loc2_ <= 38)
                           {
                              if(_loc2_ != 32)
                              {
                                 if(_loc2_ != 35)
                                 {
                                    break;
                                 }
                                 si32(1,_loc13_ + 28);
                                 _loc8_ = int(_loc3_ + 1);
                              }
                              else
                              {
                                 if((_loc5_ = li32(_loc13_ + 40)) == 0)
                                 {
                                    si32(32,_loc13_ + 40);
                                 }
                                 _loc8_ = int(_loc3_ + 1);
                              }
                           }
                           else if(_loc2_ != 39)
                           {
                              if(_loc2_ != 42)
                              {
                                 break;
                              }
                              si32(_loc6_,_loc13_ + 80);
                              si32(1,int(_loc18_ + (_loc6_ << 2)));
                              _loc6_ += 1;
                              _loc8_ = int(_loc3_ + 1);
                           }
                           else
                           {
                              si32(1,_loc13_ + 44);
                              _loc8_ = int(_loc3_ + 1);
                           }
                        }
                        else if(_loc2_ <= 45)
                        {
                           if(_loc2_ != 43)
                           {
                              if(_loc2_ != 45)
                              {
                                 break;
                              }
                              si32(1,_loc13_ + 36);
                              _loc8_ = int(_loc3_ + 1);
                           }
                           else
                           {
                              si32(43,_loc13_ + 40);
                              _loc8_ = int(_loc3_ + 1);
                           }
                        }
                        else if(_loc2_ != 46)
                        {
                           if(_loc2_ != 48)
                           {
                              if((uint(_loc5_ = int(_loc2_ + -49))) >= 9)
                              {
                                 break;
                              }
                              _loc2_ = 0;
                              if((uint((_loc5_ = int((_loc8_ = li8(_loc3_)) + -48)) & 255)) < 10)
                              {
                                 do
                                 {
                                    _loc5_ = int(_loc2_ * 10);
                                    _loc2_ = int((_loc5_ = int((_loc22_ = (_loc22_ = _loc8_ << 24) >> 24) + _loc5_)) + -48);
                                    _loc5_ = int(_loc3_ + 1);
                                    _loc22_ = (_loc22_ = int((_loc8_ = li8(_loc3_ + 1)) + -48)) & 255;
                                    _loc3_ = _loc5_;
                                 }
                                 while(uint(_loc22_) < 10);
                                 
                              }
                              if((_loc5_ = _loc8_ & 255) == 36)
                              {
                                 if(_loc6_ <= _loc7_)
                                 {
                                    _loc6_ = _loc7_;
                                 }
                                 _loc7_ = _loc6_;
                                 _loc8_ = int(_loc3_ + 1);
                                 _loc6_ = _loc2_;
                              }
                              else
                              {
                                 si32(_loc2_,_loc13_ + 4);
                                 _loc8_ = _loc3_;
                              }
                           }
                           else
                           {
                              si32(48,_loc13_ + 56);
                              _loc8_ = int(_loc3_ + 1);
                           }
                        }
                        else
                        {
                           si32(0,_loc13_);
                           _loc2_ = li8(_loc3_ + 1);
                           if(_loc2_ != 42)
                           {
                              _loc8_ = int(_loc3_ + 1);
                              _loc2_ = 0;
                              if((uint((_loc5_ = int(_loc2_ + -48)) & 255)) < 10)
                              {
                                 do
                                 {
                                    si32(_loc5_ = int(_loc2_ * 10),_loc13_);
                                    _loc22_ = si8(li8(_loc3_ + 1));
                                    _loc2_ = int((_loc5_ += _loc22_) + -48);
                                    si32(_loc2_,_loc13_);
                                    _loc8_ = int(_loc3_ + 1);
                                    _loc5_ = (_loc5_ = int((_loc5_ = li8(_loc3_ + 2)) + -48)) & 255;
                                    _loc3_ = _loc8_;
                                 }
                                 while(uint(_loc5_) < 10);
                                 
                                 _loc8_ += 1;
                              }
                           }
                           else
                           {
                              si32(_loc6_,_loc13_ + 84);
                              si32(1,int(_loc18_ + (_loc6_ << 2)));
                              _loc6_ += 1;
                              _loc8_ = int(_loc3_ + 2);
                           }
                        }
                     }
                     else
                     {
                        if(_loc2_ <= 105)
                        {
                           if(_loc2_ <= 78)
                           {
                              if(_loc2_ != 68)
                              {
                                 if(_loc2_ != 76)
                                 {
                                    break;
                                 }
                                 si32(1,_loc13_ + 12);
                                 _loc8_ = int(_loc3_ + 1);
                                 continue;
                              }
                           }
                           else if(_loc2_ != 79)
                           {
                              if(_loc2_ != 85)
                              {
                                 if(_loc2_ != 104)
                                 {
                                    break;
                                 }
                                 if((_loc5_ = li8(_loc3_ + 1)) == 104)
                                 {
                                    si32(1,_loc13_ + 16);
                                    _loc8_ = int(_loc3_ + 2);
                                 }
                                 else
                                 {
                                    _loc8_ = int(_loc3_ + 1);
                                    si32(1,_loc13_ + 20);
                                 }
                                 continue;
                              }
                           }
                           _loc2_ += 32;
                           si32(_loc2_,_loc13_ + 8);
                           si32(0,_loc13_ + 64);
                           if((_loc5_ = li32(_loc13_ + 12)) == 0)
                           {
                              if((_loc5_ = li32(_loc13_ + 60)) == 0)
                              {
                                 si32(1,_loc13_ + 24);
                                 si32(0,_loc13_ + 12);
                                 break;
                              }
                           }
                           si32(0,_loc13_ + 24);
                           si32(1,_loc13_ + 12);
                           break;
                        }
                        if(_loc2_ <= 112)
                        {
                           if(_loc2_ != 106)
                           {
                              if(_loc2_ != 108)
                              {
                                 break;
                              }
                              if((_loc5_ = li8(_loc3_ + 1)) == 108)
                              {
                                 si32(1,_loc13_ + 12);
                                 si32(0,_loc13_ + 60);
                                 _loc8_ = int(_loc3_ + 2);
                              }
                              else
                              {
                                 _loc8_ = int(_loc3_ + 1);
                                 si32(0,_loc13_ + 60);
                                 si32(1,_loc13_ + 24);
                              }
                           }
                           else
                           {
                              si32(1,_loc13_ + 64);
                              _loc8_ = int(_loc3_ + 1);
                           }
                        }
                        else if(_loc2_ != 113)
                        {
                           if(_loc2_ != 116)
                           {
                              if(_loc2_ != 122)
                              {
                                 break;
                              }
                              si32(1,_loc13_ + 72);
                              _loc8_ = int(_loc3_ + 1);
                           }
                           else
                           {
                              si32(1,_loc13_ + 68);
                              _loc8_ = int(_loc3_ + 1);
                           }
                        }
                        else
                        {
                           si32(0,_loc13_ + 24);
                           si32(1,_loc13_ + 60);
                           _loc8_ = int(_loc3_ + 1);
                        }
                     }
                  }
                  continue loop0;
               }
               _loc3_ += 1;
               si32(_loc3_,_loc13_ + 92);
            }
            _loc13_ += 104;
            break;
         }
         break;
      }
      if(_loc6_ <= _loc7_)
      {
         _loc6_ = _loc7_;
      }
      _loc2_ = 1;
      while(_loc2_ < _loc6_)
      {
         _loc7_ = _loc2_ << 1;
         if((_loc8_ = li32(_loc5_ = int(_loc18_ + (_loc2_ << 2)))) <= 65536)
         {
            if(_loc8_ <= 7)
            {
               if(_loc8_ != 1)
               {
                  if(_loc8_ != 2)
                  {
                     if(_loc8_ != 4)
                     {
                        addr1588:
                        _loc4_ -= 16;
                        si32(_loc12_,_loc4_ + 12);
                        si32(_loc8_,_loc4_ + 8);
                        si32(L__2E_str4922,_loc4_ + 4);
                        si32(1,_loc4_);
                        ESP = _loc4_;
                        F_errx();
                        _loc4_ += 16;
                        continue;
                     }
                     si32(_loc22_ = li32(_loc11_),int(_loc16_ + (_loc7_ << 2)));
                     _loc11_ += 4;
                  }
                  else
                  {
                     si32(_loc5_ = si8(li8(_loc11_)),int(_loc16_ + (_loc7_ << 2)));
                     _loc11_ += 4;
                  }
               }
               else
               {
                  si32(_loc22_ = li32(_loc11_),int(_loc16_ + (_loc7_ << 2)));
                  _loc11_ += 4;
               }
            }
            else if(_loc8_ <= 31)
            {
               if(_loc8_ != 8)
               {
                  if(_loc8_ != 16)
                  {
                     §§goto(addr1588);
                  }
                  else
                  {
                     si32(_loc22_ = li32(_loc11_),int(_loc16_ + (_loc7_ << 2)));
                     _loc11_ += 4;
                  }
               }
               else
               {
                  si32(_loc22_ = li32(_loc11_),int(_loc16_ + (_loc7_ << 2)));
                  _loc11_ += 4;
               }
            }
            else if(_loc8_ != 32)
            {
               if(_loc8_ != 128)
               {
                  §§goto(addr1588);
               }
               else
               {
                  var _loc17_:*;
                  sf64(_loc17_ = lf64(_loc11_),int(_loc16_ + (_loc2_ << 3)));
                  _loc11_ += 8;
               }
            }
            else
            {
               si32(_loc22_ = li32(_loc11_),int(_loc16_ + (_loc7_ << 2)));
               _loc11_ += 4;
            }
         }
         else if(_loc8_ <= 1048576)
         {
            if(_loc8_ <= 131072)
            {
               if(_loc8_ != 65537)
               {
                  if(_loc8_ != 65664)
                  {
                     §§goto(addr1588);
                  }
                  else
                  {
                     sf64(_loc17_ = lf64(_loc11_),int(_loc16_ + (_loc2_ << 3)));
                     _loc11_ += 8;
                  }
               }
               else
               {
                  _loc5_ = int(_loc16_ + (_loc2_ << 3));
                  si32(_loc21_ = li32(_loc11_ + 4),_loc5_ + 4);
                  si32(li32(_loc11_),_loc5_);
                  _loc11_ += 8;
               }
            }
            else if(_loc8_ != 131073)
            {
               if(_loc8_ != 262145)
               {
                  §§goto(addr1588);
               }
               else
               {
                  si32(_loc22_ = si16(li16(_loc11_)),int(_loc16_ + (_loc7_ << 2)));
                  _loc11_ += 4;
               }
            }
            else
            {
               si32(_loc5_ = li32(_loc11_),int(_loc16_ + (_loc7_ << 2)));
               _loc11_ += 4;
            }
         }
         else if(_loc8_ <= 4194304)
         {
            if(_loc8_ != 1048577)
            {
               if(_loc8_ != 2097153)
               {
                  §§goto(addr1588);
               }
               else
               {
                  _loc5_ = int(_loc16_ + (_loc2_ << 3));
                  si32(_loc21_ = li32(_loc11_ + 4),_loc5_ + 4);
                  si32(li32(_loc11_),_loc5_);
                  _loc11_ += 8;
               }
            }
            else
            {
               _loc5_ = int(_loc16_ + (_loc2_ << 3));
               si32(_loc21_ = li32(_loc11_ + 4),_loc5_ + 4);
               si32(li32(_loc11_),_loc5_);
               _loc11_ += 8;
            }
         }
         else if(_loc8_ != 4194305)
         {
            if(_loc8_ != 8388609)
            {
               §§goto(addr1588);
            }
            else
            {
               _loc5_ = int(_loc16_ + (_loc2_ << 3));
               si32(_loc21_ = (_loc22_ = li32(_loc11_)) >> 31,_loc5_ + 4);
               si32(_loc22_,_loc5_);
               _loc11_ += 4;
            }
         }
         else
         {
            _loc5_ = int(_loc16_ + (_loc2_ << 3));
            si32(0,_loc5_ + 4);
            si32(li32(_loc11_),_loc5_);
            _loc11_ += 4;
         }
         _loc2_ += 1;
      }
      _loc11_ = 0;
      while(uint(_loc19_) < uint(_loc13_))
      {
         if((_loc6_ = li32(_loc19_ + 80)) != 0)
         {
            si32(_loc6_ = li32(_loc5_ = int(_loc16_ + (_loc6_ << 3))),_loc19_ + 4);
            if(_loc6_ <= -1)
            {
               si32(1,_loc19_ + 36);
               si32(_loc5_ = int(0 - _loc6_),_loc19_ + 4);
            }
         }
         if((_loc6_ = li32(_loc19_ + 84)) != 0)
         {
            si32(_loc5_ = li32(_loc5_ = int(_loc16_ + (_loc6_ << 3))),_loc19_);
         }
         _loc5_ = (_loc5_ = li16((_loc5_ = li32(_loc9_ - 88)) + 12)) & 64;
         _loc6_ = 0;
         if(_loc5_ == 0)
         {
            _loc12_ = li32(_loc19_ + 88);
            if((_loc18_ = li32(_loc19_ + 92)) != _loc12_)
            {
               _loc6_ = int(_loc18_ - _loc12_);
               si32(_loc12_,li32(_loc9_ - 8));
               si32(_loc6_,li32(_loc9_ - 8) + 4);
               si32(_loc5_ = int((_loc5_ = li32(_loc9_ - 76)) + _loc6_),_loc9_ - 76);
               si32(_loc5_ = int((_loc5_ = li32(_loc9_ - 8)) + 8),_loc9_ - 8);
               si32(_loc5_ = int((_loc5_ = li32(_loc9_ - 80)) + 1),_loc9_ - 80);
               if(_loc5_ >= 8)
               {
                  _loc4_ -= 16;
                  si32(_loc1_,_loc4_ + 4);
                  si32(li32(_loc9_ - 88),_loc4_);
                  ESP = _loc4_;
                  F___sfvwrite();
                  _loc4_ += 16;
                  si32(_loc14_,_loc9_ - 8);
                  si32(_loc14_,_loc1_);
                  si32(0,_loc9_ - 76);
                  si32(0,_loc9_ - 80);
               }
            }
         }
         _loc12_ = int(_loc19_ + 96);
         _loc11_ = int(_loc6_ + _loc11_);
         _loc5_ = int((_loc5_ = li32(_loc19_ + 8)) * 12);
         if((_loc5_ = li32((_loc6_ = int(_printf_tbl + _loc5_)) + 4)) != 0)
         {
            _loc4_ -= 16;
            si32(_loc1_,_loc4_ + 4);
            si32(li32(_loc9_ - 88),_loc4_);
            ESP = _loc4_;
            F___sfvwrite();
            _loc4_ += 16;
            si32(_loc14_,_loc9_ - 8);
            si32(_loc14_,_loc1_);
            si32(0,_loc9_ - 76);
            si32(0,_loc9_ - 80);
            si32(_loc11_,_loc19_ + 76);
            _loc5_ = li32((_loc5_ = int(_printf_tbl + int((_loc5_ = li32(_loc19_ + 8)) * 12))) + 4);
            _loc4_ -= 16;
            si32(_loc12_,_loc4_ + 8);
            si32(_loc19_,_loc4_ + 4);
            si32(_loc10_,_loc4_);
            ESP = _loc4_;
            ptr2fun[_loc5_]();
            _loc4_ += 16;
            _loc11_ = int((_loc5_ = int(eax)) + _loc11_);
         }
         else if((_loc6_ = li32(_loc6_ + 8)) != 0)
         {
            si32(_loc11_,_loc19_ + 76);
            _loc4_ -= 16;
            si32(_loc12_,_loc4_ + 8);
            si32(_loc19_,_loc4_ + 4);
            si32(_loc15_,_loc4_);
            ESP = _loc4_;
            ptr2fun[_loc6_]();
            _loc4_ += 16;
            if((_loc6_ = int(eax)) <= -1)
            {
               si16(_loc22_ = (_loc22_ = li16((_loc5_ = li32(_loc9_ - 88)) + 12)) | 64,_loc5_ + 12);
            }
            else
            {
               _loc11_ = int(_loc6_ + _loc11_);
            }
         }
         else if((_loc22_ = li32(_loc19_ + 88)) == li32(_loc19_ + 92))
         {
            si32(si8(li8(_loc3_)),(_loc4_ -= 16) + 8);
            si32(L__2E_str5923,_loc4_ + 4);
            si32(1,_loc4_);
            ESP = _loc4_;
            F_errx();
            _loc4_ += 16;
         }
         _loc19_ += 104;
      }
      _loc4_ -= 16;
      si32(_loc1_,_loc4_ + 4);
      si32(li32(_loc9_ - 88),_loc4_);
      ESP = _loc4_;
      F___sfvwrite();
      _loc4_ += 16;
      eax = _loc11_;
      ESP = _loc4_ = _loc9_;
   }
}
