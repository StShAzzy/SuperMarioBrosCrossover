package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme.ESP;
   import sample.libgme.F___assert;
   import sample.libgme.F_realloc;
   import sample.libgme.eax;
   import sample.libgme.ptr2fun;
   
   public function F__ZL9read_strsR11Data_ReaderlR13blargg_vectorIcERS1_IPKcE() : void
   {
      var _loc10_:* = 0;
      var _loc22_:* = 0;
      var _loc6_:* = 0;
      var _loc11_:* = 0;
      var _loc21_:int = 0;
      var _loc19_:int = 0;
      var _loc12_:int = 0;
      var _loc9_:int = 0;
      var _loc3_:int = 0;
      var _loc15_:int = 0;
      var _loc13_:* = 0;
      var _loc14_:* = 0;
      var _loc4_:* = 0;
      var _loc7_:* = 0;
      var _loc16_:int = 0;
      var _loc23_:* = 0;
      var _loc20_:int = 0;
      var _loc8_:* = 0;
      var _loc18_:int = 0;
      var _loc5_:*;
      _loc23_ = li32(_loc6_ = li32((_loc10_ = _loc5_ = int(ESP)) + 8));
      _loc5_ -= 16;
      si32(_loc21_ = (_loc22_ = li32(_loc10_ + 4)) + 1,_loc5_ + 4);
      si32(_loc23_,_loc5_);
      _loc20_ = 1;
      if(uint(_loc21_) >= uint(_loc22_))
      {
         _loc20_ = 0;
      }
      ESP = _loc5_;
      F_realloc();
      _loc5_ += 16;
      if((_loc19_ = eax) == 0)
      {
         _loc18_ = L__2E_str6408;
         if(_loc21_ == 0)
         {
            addr112:
            si32(_loc19_,_loc6_);
            si32(_loc21_,_loc6_ + 4);
            if((_loc23_ = _loc20_ & 1) != 0)
            {
               _loc5_ -= 16;
               si32(L__2E_str3403,_loc5_ + 12);
               si32(51,_loc5_ + 8);
               si32(L__2E_str2402,_loc5_ + 4);
               si32(__ZZNK13blargg_vectorIhEixEjE8__func__404,_loc5_);
               ESP = _loc5_;
               F___assert();
               _loc5_ += 16;
            }
            _loc23_ = li32(_loc10_);
            var _loc17_:* = int(_loc19_ + _loc22_);
            si8(_loc15_ = 0,_loc17_);
            var _loc1_:* = li32((_loc17_ = li32(_loc23_)) + 12);
            _loc17_ = li32(_loc6_);
            _loc5_ -= 16;
            si32(_loc22_,_loc5_ + 8);
            si32(_loc17_,_loc5_ + 4);
            si32(_loc23_,_loc5_);
            ESP = _loc5_;
            ptr2fun[_loc1_]();
            _loc5_ += 16;
            if((_loc18_ = eax) == 0)
            {
               _loc5_ -= 16;
               si32(512,_loc5_ + 4);
               si32(li32(_loc11_ = li32(_loc10_ + 12)),_loc5_);
               ESP = _loc5_;
               F_realloc();
               _loc18_ = L__2E_str6408;
               _loc5_ += 16;
               if((_loc12_ = eax) != 0)
               {
                  si32(_loc12_,_loc11_);
                  si32(128,_loc11_ + 4);
                  _loc13_ = _loc15_;
                  _loc14_ = _loc15_;
                  _loc4_ = _loc15_;
                  _loc7_ = _loc15_;
                  while(true)
                  {
                     if(_loc7_ >= _loc22_)
                     {
                        _loc5_ -= 16;
                        si32(_loc14_,_loc5_ + 4);
                        si32(li32(_loc11_),_loc5_);
                        ESP = _loc5_;
                        F_realloc();
                        _loc5_ += 16;
                        if((_loc16_ = eax) == 0)
                        {
                           _loc18_ = L__2E_str6408;
                           if(_loc4_ == 0)
                           {
                           }
                           break;
                        }
                        si32(_loc16_,_loc11_);
                        si32(_loc4_,_loc11_ + 4);
                        _loc18_ = 0;
                        break;
                     }
                     if((_loc8_ = li32(_loc11_ + 4)) <= _loc4_)
                     {
                        _loc5_ -= 16;
                        si32(_loc13_,_loc5_ + 4);
                        si32(li32(_loc11_),_loc5_);
                        ESP = _loc5_;
                        F_realloc();
                        _loc5_ += 16;
                        if((_loc9_ = eax) == 0)
                        {
                           _loc18_ = L__2E_str6408;
                           if(_loc15_ != 0)
                           {
                              break;
                           }
                        }
                        si32(_loc9_,_loc11_);
                        si32(_loc15_,_loc11_ + 4);
                        _loc8_ = _loc15_;
                     }
                     if(uint(_loc8_) < uint(_loc4_))
                     {
                        _loc5_ -= 16;
                        si32(L__2E_str3403,_loc5_ + 12);
                        si32(51,_loc5_ + 8);
                        si32(L__2E_str2402,_loc5_ + 4);
                        si32(__ZZNK13blargg_vectorIhEixEjE8__func__404,_loc5_);
                        ESP = _loc5_;
                        F___assert();
                        _loc5_ += 16;
                     }
                     if((uint(_loc23_ = li32(_loc6_ + 4))) < uint(_loc7_))
                     {
                        _loc5_ -= 16;
                        si32(L__2E_str3403,_loc5_ + 12);
                        si32(51,_loc5_ + 8);
                        si32(L__2E_str2402,_loc5_ + 4);
                        si32(__ZZNK13blargg_vectorIhEixEjE8__func__404,_loc5_);
                        ESP = _loc5_;
                        F___assert();
                        _loc5_ += 16;
                     }
                     _loc3_ = _loc4_ + 1;
                     _loc23_ = int((_loc23_ = li32(_loc6_)) + _loc7_);
                     _loc17_ = _loc4_ << 2;
                     var _loc2_:* = li32(_loc11_);
                     _loc17_ = int(_loc2_ + _loc17_);
                     si32(_loc23_,_loc17_);
                     while(_loc7_ < _loc22_)
                     {
                        if((uint(_loc23_ = li32(_loc6_ + 4))) < uint(_loc7_))
                        {
                           _loc5_ -= 16;
                           si32(L__2E_str3403,_loc5_ + 12);
                           si32(51,_loc5_ + 8);
                           si32(L__2E_str2402,_loc5_ + 4);
                           si32(__ZZNK13blargg_vectorIhEixEjE8__func__404,_loc5_);
                           ESP = _loc5_;
                           F___assert();
                           _loc5_ += 16;
                        }
                        if((_loc23_ = li8(_loc23_ = int((_loc23_ = li32(_loc6_)) + _loc7_))) == 0)
                        {
                           break;
                        }
                        _loc7_ += 1;
                     }
                     _loc15_ += 2;
                     _loc13_ += 8;
                     _loc14_ += 4;
                     _loc7_ += 1;
                     _loc4_ = _loc3_;
                  }
               }
            }
         }
         eax = _loc18_;
         ESP = _loc5_ = _loc10_;
         return;
      }
      §§goto(addr112);
   }
}
