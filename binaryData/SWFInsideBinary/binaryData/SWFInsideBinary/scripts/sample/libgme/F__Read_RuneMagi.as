package sample.libgme
{
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.sxi16;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.F_idalloc;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str1303;
   
   public function F__Read_RuneMagi() : void
   {
      var _loc8_:* = 0;
      var _loc4_:* = 0;
      var _loc19_:* = 0;
      var _loc18_:int = 0;
      var _loc16_:* = 0;
      var _loc9_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc13_:* = 0;
      var _loc11_:* = 0;
      var _loc10_:* = 0;
      var _loc1_:int = 0;
      var _loc7_:* = 0;
      var _loc12_:* = 0;
      var _loc3_:* = int(ESP);
      _loc8_ = _loc3_;
      _loc3_ -= 96;
      _loc4_ = li32(_loc8_);
      var _loc20_:*;
      if((_loc20_ = li32(___isthreaded)) == 0)
      {
         _loc19_ = si16(li16(_loc4_ + 14));
      }
      else
      {
         _loc3_ -= 16;
         si32(_loc4_,_loc3_);
         ESP = _loc3_;
         F_fileno();
         _loc3_ += 16;
         _loc19_ = int(eax);
      }
      _loc3_ -= 16;
      si32(_loc20_ = int(_loc8_ - 96),_loc3_ + 4);
      si32(_loc19_,_loc3_);
      ESP = _loc3_;
      F__fstat();
      _loc18_ = 0;
      _loc3_ += 16;
      if((_loc20_ = int(eax)) >= 0)
      {
         if((uint(_loc19_ = li32(_loc8_ - 48))) <= 3127)
         {
            ESP = _loc3_;
            F___error();
            si32(79,int(eax));
            _loc18_ = 0;
         }
         else
         {
            _loc3_ -= 16;
            si32(_loc19_,_loc3_);
            ESP = _loc3_;
            F_malloc();
            _loc18_ = 0;
            _loc3_ += 16;
            if((_loc19_ = int(eax)) != 0)
            {
               ESP = _loc3_;
               F___error();
               _loc18_ = 0;
               si32(_loc18_,int(eax));
               _loc3_ -= 16;
               si32(_loc4_,_loc3_);
               ESP = _loc3_;
               F_rewind();
               _loc3_ += 16;
               ESP = _loc3_;
               F___error();
               if((_loc20_ = li32(_loc20_ = int(eax))) != 0)
               {
                  ESP = _loc3_;
                  F___error();
                  _loc3_ -= 16;
                  si32(_loc19_,_loc3_);
                  ESP = _loc3_;
                  F_idalloc();
                  _loc3_ += 16;
                  ESP = _loc3_;
                  F___error();
                  si32(li32(_loc20_ = int(eax)),int(eax));
               }
               else
               {
                  _loc3_ -= 16;
                  si32(_loc4_,_loc3_ + 12);
                  si32(1,_loc3_ + 8);
                  si32(li32(_loc8_ - 48),_loc3_ + 4);
                  si32(_loc19_,_loc3_);
                  ESP = _loc3_;
                  F_fread();
                  _loc3_ += 16;
                  if((_loc20_ = int(eax)) != 1)
                  {
                     ESP = _loc3_;
                     F___error();
                     _loc3_ -= 16;
                     si32(_loc19_,_loc3_);
                     ESP = _loc3_;
                     F_idalloc();
                     _loc3_ += 16;
                     ESP = _loc3_;
                     F___error();
                     si32(li32(_loc20_ = int(eax)),int(eax));
                     _loc18_ = 0;
                  }
                  else
                  {
                     _loc18_ = _loc19_ + li32(_loc8_ - 48);
                     _loc16_ = int(_loc19_ + 3128);
                     _loc4_ = 0;
                     loop0:
                     while(true)
                     {
                        _loc20_ = li8(_loc20_ = int(L__2E_str1303 - _loc4_));
                        var _loc17_:*;
                        if((_loc17_ = li8(_loc17_ = int(_loc19_ - _loc4_))) != _loc20_)
                        {
                           if(_loc19_ != 0)
                           {
                              _loc3_ -= 16;
                              si32(_loc19_,_loc3_);
                              ESP = _loc3_;
                              F_idalloc();
                              _loc3_ += 16;
                           }
                           ESP = _loc3_;
                           F___error();
                           _loc20_ = int(eax);
                           si32(79,_loc20_);
                           _loc18_ = 0;
                           break;
                        }
                        if((_loc4_ += -1) != -8)
                        {
                           continue;
                        }
                        var _loc15_:*;
                        si32(_loc20_ = (_loc17_ = _loc17_ << 24 | (_loc17_ <<= 8) & 16711680) | ((_loc15_ = (_loc15_ = int(_loc17_ >>> 8)) & 65280) | int((_loc17_ = li32(_loc19_ + 3124)) >>> 24)),_loc19_ + 3124);
                        si32(_loc20_ = (_loc17_ = _loc17_ << 24 | (_loc17_ <<= 8) & 16711680) | ((_loc15_ = (_loc15_ = int(_loc17_ >>> 8)) & 65280) | int((_loc17_ = li32(_loc19_ + 3112)) >>> 24)),_loc19_ + 3112);
                        si32(_loc20_ = (_loc17_ = _loc17_ << 24 | (_loc17_ <<= 8) & 16711680) | ((_loc15_ = (_loc15_ = int(_loc17_ >>> 8)) & 65280) | int((_loc17_ = li32(_loc19_ + 3116)) >>> 24)),_loc19_ + 3116);
                        si32(_loc20_ = (_loc20_ = _loc20_ << 24 | (_loc20_ <<= 8) & 16711680) | ((_loc15_ = (_loc15_ = int(_loc20_ >>> 8)) & 65280) | int((_loc20_ = li32(_loc19_ + 3120)) >>> 24)),_loc19_ + 3120);
                        _loc4_ = -522;
                        do
                        {
                           _loc20_ = _loc4_ << 2;
                           _loc15_ = int((_loc17_ = li32((_loc20_ = int(_loc19_ - _loc20_)) - 2048)) >>> 24);
                           var _loc14_:*;
                           _loc15_ = (_loc14_ = (_loc14_ = int(_loc17_ >>> 8)) & 65280) | _loc15_;
                           _loc14_ = _loc17_ << 24;
                           _loc17_ = (_loc17_ <<= 8) & 16711680;
                           si32(_loc17_ = (_loc17_ = _loc14_ | _loc17_) | _loc15_,_loc20_ - 2048);
                           _loc17_ = int((_loc15_ = li32(_loc20_ - 1024)) >>> 24);
                           _loc17_ = (_loc14_ = (_loc14_ = int(_loc15_ >>> 8)) & 65280) | _loc17_;
                           _loc14_ = _loc15_ << 24;
                           _loc15_ = (_loc15_ <<= 8) & 16711680;
                           si32(_loc17_ = (_loc15_ = _loc14_ | _loc15_) | _loc17_,_loc20_ - 1024);
                           _loc17_ = int((_loc15_ = li32(_loc20_)) >>> 24);
                           _loc17_ = (_loc14_ = (_loc14_ = int(_loc15_ >>> 8)) & 65280) | _loc17_;
                           _loc14_ = _loc15_ << 24;
                           _loc15_ = (_loc15_ <<= 8) & 16711680;
                           si32(_loc17_ = (_loc15_ = _loc14_ | _loc15_) | _loc17_,_loc20_);
                        }
                        while((_loc4_ += -1) != -778);
                        
                        _loc1_ = (_loc13_ = li32(_loc19_ + 3112)) * 12;
                        if((uint(_loc20_ = int(_loc16_ + _loc1_))) > uint(_loc18_))
                        {
                           if(_loc19_ != 0)
                           {
                              _loc3_ -= 16;
                              si32(_loc19_,_loc3_);
                              ESP = _loc3_;
                              F_idalloc();
                              _loc3_ += 16;
                           }
                           ESP = _loc3_;
                           F___error();
                           _loc20_ = int(eax);
                           si32(79,_loc20_);
                           _loc18_ = 0;
                           break;
                        }
                        if((uint(_loc20_ = int(_loc16_ + int((_loc9_ = int((_loc4_ = li32(_loc19_ + 3116)) + _loc13_)) * 12)))) > uint(_loc18_))
                        {
                           _loc3_ -= 16;
                           si32(_loc19_,_loc3_);
                           ESP = _loc3_;
                           F_idalloc();
                           _loc3_ += 16;
                           ESP = _loc3_;
                           F___error();
                           si32(79,int(eax));
                           _loc18_ = 0;
                           break;
                        }
                        _loc10_ = int(_loc16_ + int((_loc20_ = int((_loc20_ = li32(_loc19_ + 3120)) + _loc9_)) * 12));
                        _loc12_ = _loc11_ = 0;
                        if(uint(_loc10_) > uint(_loc18_))
                        {
                           _loc3_ -= 16;
                           si32(_loc19_,_loc3_);
                           ESP = _loc3_;
                           F_idalloc();
                           _loc3_ += 16;
                           ESP = _loc3_;
                           F___error();
                           si32(79,int(eax));
                           _loc18_ = 0;
                           break;
                        }
                        while(true)
                        {
                           _loc7_ = _loc10_;
                           if(_loc13_ <= _loc11_)
                           {
                              if((_loc20_ = li32(_loc19_ + 3116)) >= 1)
                              {
                                 _loc10_ = int(_loc19_ + _loc1_);
                                 _loc11_ = 0;
                                 do
                                 {
                                    _loc20_ = (_loc20_ = int(_loc11_ * 3)) << 2;
                                    _loc17_ = int((_loc15_ = li32((_loc20_ = int(_loc10_ + _loc20_)) + 3128)) >>> 24);
                                    _loc17_ = (_loc14_ = (_loc14_ = int(_loc15_ >>> 8)) & 65280) | _loc17_;
                                    _loc14_ = _loc15_ << 24;
                                    _loc15_ = (_loc15_ <<= 8) & 16711680;
                                    si32(_loc17_ = (_loc15_ = _loc14_ | _loc15_) | _loc17_,_loc20_ + 3128);
                                    _loc15_ = int((_loc17_ = li32(_loc20_ + 3132)) >>> 24);
                                    _loc15_ = (_loc14_ = (_loc14_ = int(_loc17_ >>> 8)) & 65280) | _loc15_;
                                    _loc14_ = _loc17_ << 24;
                                    _loc17_ = (_loc17_ <<= 8) & 16711680;
                                    si32(_loc17_ = (_loc17_ = _loc14_ | _loc17_) | _loc15_,_loc20_ + 3132);
                                    _loc15_ = int((_loc17_ = li32(_loc20_ + 3136)) >>> 24);
                                    _loc15_ = (_loc14_ = (_loc14_ = int(_loc17_ >>> 8)) & 65280) | _loc15_;
                                    _loc14_ = _loc17_ << 24;
                                    _loc17_ = (_loc17_ <<= 8) & 16711680;
                                    si32(_loc17_ = (_loc17_ = _loc14_ | _loc17_) | _loc15_,_loc20_ + 3136);
                                    _loc11_ += 1;
                                 }
                                 while((_loc20_ = li32(_loc19_ + 3116)) > _loc11_);
                                 
                              }
                              if((_loc10_ = li32(_loc19_ + 3120)) >= 1)
                              {
                                 _loc11_ = int((_loc20_ = int((_loc20_ = int(_loc1_ + int(_loc4_ * 12))) + _loc19_)) + 3128);
                                 _loc13_ = 0;
                                 do
                                 {
                                    _loc20_ = (_loc20_ = int(_loc13_ * 3)) << 2;
                                    _loc15_ = int((_loc17_ = li32(_loc20_ = int(_loc11_ + _loc20_))) >>> 24);
                                    _loc15_ = (_loc14_ = (_loc14_ = int(_loc17_ >>> 8)) & 65280) | _loc15_;
                                    _loc14_ = _loc17_ << 24;
                                    _loc17_ = (_loc17_ <<= 8) & 16711680;
                                    si32(_loc17_ = (_loc17_ = _loc14_ | _loc17_) | _loc15_,_loc20_);
                                    _loc15_ = int((_loc17_ = li32(_loc20_ + 4)) >>> 24);
                                    _loc15_ = (_loc14_ = (_loc14_ = int(_loc17_ >>> 8)) & 65280) | _loc15_;
                                    _loc14_ = _loc17_ << 24;
                                    _loc17_ = (_loc17_ <<= 8) & 16711680;
                                    si32(_loc17_ = (_loc17_ = _loc14_ | _loc17_) | _loc15_,_loc20_ + 4);
                                    _loc17_ = int((_loc15_ = li32(_loc20_ + 8)) >>> 24);
                                    _loc17_ = (_loc14_ = (_loc14_ = int(_loc15_ >>> 8)) & 65280) | _loc17_;
                                    _loc14_ = _loc15_ << 24;
                                    _loc15_ = (_loc15_ <<= 8) & 16711680;
                                    si32(_loc17_ = (_loc15_ = _loc14_ | _loc15_) | _loc17_,_loc20_ + 8);
                                    _loc13_ += 1;
                                 }
                                 while((_loc10_ = li32(_loc19_ + 3120)) > _loc13_);
                                 
                              }
                              _loc13_ = li32(_loc19_ + 3124);
                              if((uint(_loc20_ = int(_loc7_ + _loc13_))) > uint(_loc18_))
                              {
                                 if(_loc19_ != 0)
                                 {
                                    _loc3_ -= 16;
                                    si32(_loc19_,_loc3_);
                                    ESP = _loc3_;
                                    F_idalloc();
                                    _loc3_ += 16;
                                 }
                                 ESP = _loc3_;
                                 F___error();
                                 _loc20_ = int(eax);
                                 si32(79,_loc20_);
                                 _loc18_ = 0;
                                 break loop0;
                              }
                              _loc3_ -= 16;
                              si32(int((_loc20_ = int(_loc13_ + ((_loc20_ = int((_loc20_ = (_loc20_ = int(int((_loc11_ = li32(_loc19_ + 3112)) + _loc10_) + (_loc7_ = li32(_loc19_ + 3116)))) << 2) + _loc12_)) << 2))) + 3156),_loc3_);
                              ESP = _loc3_;
                              F_malloc();
                              _loc3_ += 16;
                              if((_loc18_ = eax) == 0)
                              {
                                 ESP = _loc3_;
                                 F___error();
                                 _loc3_ -= 16;
                                 si32(_loc19_,_loc3_);
                                 ESP = _loc3_;
                                 F_idalloc();
                                 _loc3_ += 16;
                                 ESP = _loc3_;
                                 F___error();
                                 si32(li32(_loc20_ = int(eax)),int(eax));
                                 _loc18_ = 0;
                                 break loop0;
                              }
                              si32(1768382797,_loc18_ + 4);
                              si32(1701737810,_loc18_);
                              si32(_loc20_ = li32(_loc19_ + 36),_loc18_ + 36);
                              si32(_loc20_ = li32(_loc19_ + 32),_loc18_ + 32);
                              si32(_loc20_ = li32(_loc19_ + 28),_loc18_ + 28);
                              si32(_loc20_ = li32(_loc19_ + 24),_loc18_ + 24);
                              si32(_loc20_ = li32(_loc19_ + 20),_loc18_ + 20);
                              si32(_loc20_ = li32(_loc19_ + 16),_loc18_ + 16);
                              si32(_loc20_ = li32(_loc19_ + 12),_loc18_ + 12);
                              si32(_loc20_ = li32(_loc19_ + 8),_loc18_ + 8);
                              si32(0,_loc18_ + 48);
                              si32(_loc13_,_loc18_ + 3152);
                              si32(_loc11_,_loc18_ + 3124);
                              si32(_loc7_,_loc18_ + 3132);
                              si32(_loc10_,_loc18_ + 3140);
                              _loc3_ -= 16;
                              si32(1024,_loc3_ + 8);
                              si32(_loc20_ = int(_loc19_ + 40),_loc3_ + 4);
                              si32(_loc20_ = int(_loc18_ + 52),_loc3_);
                              ESP = _loc3_;
                              Fmemcpy();
                              _loc3_ += 16;
                              _loc3_ -= 16;
                              si32(1024,_loc3_ + 8);
                              si32(_loc20_ = int(_loc19_ + 1064),_loc3_ + 4);
                              si32(_loc20_ = int(_loc18_ + 1076),_loc3_);
                              ESP = _loc3_;
                              Fmemcpy();
                              _loc3_ += 16;
                              _loc3_ -= 16;
                              si32(1024,_loc3_ + 8);
                              si32(_loc20_ = int(_loc19_ + 2088),_loc3_ + 4);
                              si32(_loc20_ = int(_loc18_ + 2100),_loc3_);
                              ESP = _loc3_;
                              Fmemcpy();
                              _loc3_ += 16;
                              si32(_loc20_ = int(_loc18_ + 3156),_loc18_ + 3128);
                              si32(_loc12_ = int(_loc20_ + (_loc11_ << 4)),_loc18_ + 3136);
                              si32(_loc15_ = int(_loc20_ + ((_loc17_ = int(_loc7_ + _loc11_)) << 4)),_loc18_ + 3144);
                              si32(_loc20_ += (_loc17_ += _loc10_) << 4,_loc18_ + 3148);
                              _loc16_ += int((_loc20_ = int(_loc10_ + _loc9_)) * 12);
                              if(_loc11_ >= 1)
                              {
                                 _loc12_ = 0;
                                 do
                                 {
                                    _loc9_ = _loc16_;
                                    _loc20_ = _loc12_ << 4;
                                    _loc20_ = int(_loc18_ + _loc20_);
                                    _loc17_ = (_loc17_ = int(_loc12_ * 3)) << 2;
                                    si32(_loc10_ = li32((_loc17_ = int(_loc19_ + _loc17_)) + 3128),_loc20_ + 3156);
                                    si32(_loc11_ = li32(_loc17_ + 3132),_loc20_ + 3160);
                                    si32(_loc17_ = li32(_loc17_ + 3136),_loc20_ + 3164);
                                    _loc16_ = _loc12_ << 2;
                                    _loc12_ += 1;
                                    if(_loc17_ == 0)
                                    {
                                       _loc7_ = int(_loc18_ + (_loc16_ << 2));
                                       si32(_loc6_ = li32(_loc18_ + 3148),_loc7_ + 3168);
                                       _loc17_ = (_loc20_ = int((_loc13_ = int(_loc11_ - _loc10_)) + 1)) << 2;
                                       si32(_loc15_ = int(_loc6_ + _loc17_),_loc18_ + 3148);
                                       _loc16_ = int(_loc9_ + _loc17_);
                                       if(_loc20_ >= 1)
                                       {
                                          _loc17_ = _loc13_ << 2;
                                          si32(_loc17_ = li32(_loc17_ = int(_loc9_ + _loc17_)),int(_loc6_ + _loc17_));
                                          if((_loc20_ = int((_loc20_ = int(1 - _loc10_)) + _loc11_)) != 1)
                                          {
                                             _loc10_ = int((_loc20_ = int(_loc10_ + 1)) - _loc11_);
                                             do
                                             {
                                                _loc20_ = _loc10_;
                                                _loc17_ = li32(_loc7_ + 3168);
                                                _loc15_ = _loc20_ << 2;
                                                _loc17_ -= _loc15_;
                                                si32(_loc15_ = li32(_loc15_ = int(_loc9_ - _loc15_)),_loc17_);
                                                _loc10_ = int(_loc20_ + 1);
                                             }
                                             while(_loc20_ != 0);
                                             
                                          }
                                       }
                                    }
                                    else
                                    {
                                       si32(0,int(_loc18_ + (_loc16_ << 2)) + 3168);
                                       _loc16_ = _loc9_;
                                    }
                                 }
                                 while((_loc20_ = li32(_loc18_ + 3124)) > _loc12_);
                                 
                                 _loc7_ = li32(_loc18_ + 3132);
                                 _loc12_ = li32(_loc18_ + 3136);
                              }
                              if(_loc7_ >= 1)
                              {
                                 _loc9_ = int((_loc20_ = int(_loc1_ + _loc19_)) + 3136);
                                 _loc7_ = 0;
                                 do
                                 {
                                    _loc20_ = _loc7_ << 4;
                                    _loc20_ = int(_loc12_ + _loc20_);
                                    _loc17_ = (_loc17_ = int(_loc7_ * 3)) << 2;
                                    si32(_loc15_ = li32((_loc17_ = int(_loc9_ + _loc17_)) - 8),_loc20_);
                                    si32(_loc15_ = li32(_loc17_ - 4),_loc20_ + 4);
                                    si32(_loc17_ = li32(_loc17_),_loc20_ + 8);
                                    _loc7_ += 1;
                                 }
                                 while((_loc20_ = li32(_loc18_ + 3132)) > _loc7_);
                                 
                              }
                              if((_loc20_ = li32(_loc18_ + 3140)) >= 1)
                              {
                                 _loc9_ = li32(_loc18_ + 3144);
                                 _loc1_ = (_loc20_ = int((_loc20_ = int(_loc1_ + int(_loc4_ * 12))) + _loc19_)) + 3136;
                                 _loc4_ = 0;
                                 do
                                 {
                                    _loc20_ = _loc4_ << 4;
                                    _loc20_ = int(_loc9_ + _loc20_);
                                    _loc17_ = (_loc17_ = int(_loc4_ * 3)) << 2;
                                    si32(_loc15_ = li32((_loc17_ = int(_loc1_ + _loc17_)) - 8),_loc20_);
                                    si32(_loc15_ = li32(_loc17_ - 4),_loc20_ + 4);
                                    si32(_loc17_ = li32(_loc17_),_loc20_ + 8);
                                    _loc4_ += 1;
                                 }
                                 while((_loc20_ = li32(_loc18_ + 3140)) > _loc4_);
                                 
                              }
                              _loc20_ = li32(_loc18_ + 3148);
                              _loc17_ = li32(_loc18_ + 3152);
                              _loc3_ -= 16;
                              si32(_loc17_,_loc3_ + 8);
                              si32(_loc16_,_loc3_ + 4);
                              si32(_loc20_,_loc3_);
                              ESP = _loc3_;
                              Fmemcpy();
                              _loc3_ += 16;
                              if(_loc19_ != 0)
                              {
                                 _loc3_ -= 16;
                                 si32(_loc19_,_loc3_);
                                 ESP = _loc3_;
                                 F_idalloc();
                                 _loc3_ += 16;
                              }
                              if((_loc20_ = li32(_loc18_ + 3152)) == 0)
                              {
                                 si32(0,_loc18_ + 3148);
                              }
                              if((_loc20_ = li32(_loc18_ + 3124)) == 0)
                              {
                                 si32(0,_loc18_ + 3128);
                              }
                              if((_loc20_ = li32(_loc18_ + 3132)) == 0)
                              {
                                 si32(0,_loc18_ + 3136);
                              }
                              if((_loc20_ = li32(_loc18_ + 3140)) == 0)
                              {
                                 si32(0,_loc18_ + 3144);
                                 break loop0;
                              }
                              break loop0;
                           }
                           si32(_loc5_ = (_loc15_ = _loc15_ << 24 | (_loc15_ <<= 8) & 16711680) | (int(_loc15_ >>> 8) & 65280 | int((_loc15_ = li32((_loc17_ = int(_loc19_ + ((_loc20_ = int(_loc11_ * 3)) << 2))) + 3128)) >>> 24)),_loc17_ + 3128);
                           si32(_loc6_ = (_loc15_ = _loc15_ << 24 | (_loc15_ <<= 8) & 16711680) | (int(_loc15_ >>> 8) & 65280 | int((_loc15_ = li32((_loc17_ = int(_loc19_ + (_loc20_ << 2))) + 3132)) >>> 24)),_loc17_ + 3132);
                           si32(_loc15_ = (_loc14_ = _loc17_ << 24 | _loc17_ << 8 & 16711680) | ((_loc14_ = (_loc14_ = int(_loc17_ >>> 8)) & 65280) | int((_loc17_ = li32((_loc20_ = int(_loc19_ + (_loc20_ << 2))) + 3136)) >>> 24)),_loc20_ + 3136);
                           _loc10_ = _loc7_;
                           if(_loc17_ == 0)
                           {
                              if((uint(_loc10_ = int(_loc7_ + ((_loc13_ = int((_loc20_ = int(_loc6_ - _loc5_)) + 1)) << 2)))) > uint(_loc18_))
                              {
                                 if(_loc19_ != 0)
                                 {
                                    _loc3_ -= 16;
                                    si32(_loc19_,_loc3_);
                                    ESP = _loc3_;
                                    F_idalloc();
                                    _loc3_ += 16;
                                 }
                                 ESP = _loc3_;
                                 F___error();
                                 _loc20_ = int(eax);
                              }
                              _loc12_ = int(_loc13_ + _loc12_);
                              if(_loc13_ >= 1)
                              {
                                 _loc13_ = int(_loc5_ - _loc6_);
                                 do
                                 {
                                    _loc17_ = (_loc20_ = _loc13_) << 2;
                                    _loc14_ = int((_loc15_ = li32(_loc17_ = int(_loc7_ - _loc17_))) >>> 24);
                                    var _loc2_:* = int(_loc15_ >>> 8);
                                    _loc2_ &= 65280;
                                    _loc14_ = _loc2_ | _loc14_;
                                    _loc2_ = _loc15_ << 24;
                                    _loc15_ = (_loc15_ <<= 8) & 16711680;
                                    si32(_loc15_ = (_loc15_ = _loc2_ | _loc15_) | _loc14_,_loc17_);
                                    _loc13_ = int(_loc20_ + 1);
                                 }
                                 while(_loc20_ != 0);
                                 
                              }
                              continue;
                              si32(79,_loc20_);
                              _loc18_ = 0;
                              break loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      eax = _loc18_;
      _loc3_ = _loc8_;
      ESP = _loc3_;
   }
}
