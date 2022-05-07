package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import flash.utils.ByteArray;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.F_build_arg_table;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.F_idalloc;
   
   public function F___find_warguments() : void
   {
      var _loc8_:int = 0;
      var _loc18_:* = 0;
      var _loc19_:* = 0;
      var _loc20_:* = 0;
      var _loc5_:int = 0;
      var _loc16_:* = 0;
      var _loc13_:* = 0;
      var _loc15_:* = 0;
      var _loc9_:* = 0;
      var _loc2_:* = 0;
      var _loc3_:int = 0;
      var _loc17_:* = 0;
      var _loc11_:* = 0;
      var _loc12_:* = 0;
      var _loc14_:* = 0;
      var _loc4_:* = int((_loc8_ = ESP) - 48);
      si32(_loc20_ = (_loc5_ = _loc8_ - 48) | 4,_loc8_ - 48);
      si32(8,_loc8_ - 12);
      si32(0,_loc8_ - 8);
      si32(1,_loc8_ - 4);
      si32(0,_loc20_ + 24);
      si32(0,_loc20_ + 20);
      si32(0,_loc20_ + 16);
      si32(0,_loc20_ + 12);
      si32(0,_loc20_ + 8);
      si32(0,_loc20_ + 4);
      si32(0,_loc20_);
      si32(0,_loc8_ - 16);
      _loc19_ = li32(_loc8_ + 8);
      _loc18_ = li32(_loc8_ + 4);
      _loc17_ = li32(_loc8_);
      _loc16_ = 1;
      loop0:
      while((_loc15_ = li32(_loc17_)) != 0)
      {
         if(_loc15_ != 37)
         {
            _loc17_ += 4;
            continue;
         }
         _loc17_ += 4;
         _loc14_ = 0;
         loop1:
         while(true)
         {
            _loc13_ = int(_loc17_ + 4);
            _loc15_ = li32(_loc17_);
            while(true)
            {
               _loc17_ = _loc13_;
               if(_loc15_ <= 87)
               {
                  if(_loc15_ <= 64)
                  {
                     if(_loc15_ <= 42)
                     {
                        if(_loc15_ <= 38)
                        {
                           if(_loc15_ != 32)
                           {
                              if(_loc15_ != 35)
                              {
                                 addr5754:
                                 if(_loc15_ == 0)
                                 {
                                    break loop0;
                                 }
                                 continue loop0;
                              }
                           }
                           continue loop1;
                        }
                        if(_loc15_ == 39)
                        {
                           continue loop1;
                        }
                        if(_loc15_ == 42)
                        {
                           _loc2_ = li32(_loc17_);
                           _loc9_ = int(_loc2_ + -48);
                           _loc15_ = 0;
                           _loc13_ = _loc17_;
                           if(uint(_loc9_) <= 9)
                           {
                              do
                              {
                                 var _loc10_:*;
                                 _loc15_ = int((_loc10_ = int(_loc15_ * 10)) + _loc9_);
                                 _loc10_ = int(_loc13_ + 4);
                                 _loc2_ = li32(_loc13_ + 4);
                                 _loc9_ = int(_loc2_ + -48);
                                 _loc13_ = _loc10_;
                              }
                              while(uint(_loc9_) < 10);
                              
                           }
                           if(_loc2_ == 36)
                           {
                              si32(_loc15_,_loc8_ - 4);
                              _loc9_ = li32(_loc8_ - 12);
                              if(_loc15_ >= _loc9_)
                              {
                                 _loc17_ = _loc9_ << 1;
                                 if((_loc2_ = int(_loc15_ + 1)) <= _loc17_)
                                 {
                                    _loc2_ = _loc17_;
                                 }
                                 _loc15_ = _loc2_ << 2;
                                 _loc12_ = li32(_loc8_ - 48);
                                 if(_loc9_ == 8)
                                 {
                                    _loc4_ -= 16;
                                    si32(_loc15_,_loc4_);
                                    ESP = _loc4_;
                                    F_malloc();
                                    _loc15_ = -1;
                                    _loc4_ += 16;
                                    _loc3_ = eax;
                                    if(_loc3_ != 0)
                                    {
                                       _loc10_ = _loc9_ << 2;
                                       var _loc1_:ByteArray = ram;
                                       _loc1_.position = _loc3_;
                                       _loc1_.writeBytes(_loc1_,_loc12_,_loc10_);
                                       addr572:
                                       if(_loc9_ < _loc2_)
                                       {
                                          _loc4_ -= 16;
                                          si32(0,_loc4_ + 4);
                                          si32(_loc10_ = int(_loc3_ + (_loc9_ << 2)),_loc4_);
                                          if(_loc17_ <= _loc11_)
                                          {
                                             _loc17_ = _loc11_;
                                          }
                                          si32(_loc10_ = (_loc10_ = int(_loc17_ - _loc9_)) << 2,_loc4_ + 8);
                                          ESP = _loc4_;
                                          Fmemset();
                                          _loc4_ += 16;
                                       }
                                       si32(_loc3_,_loc8_ - 48);
                                       si32(_loc2_,_loc8_ - 12);
                                       _loc15_ = li32(_loc8_ - 4);
                                    }
                                    else
                                    {
                                       §§goto(addr5790);
                                    }
                                 }
                                 else
                                 {
                                    _loc4_ -= 16;
                                    si32(_loc15_,_loc4_ + 4);
                                    si32(_loc12_,_loc4_);
                                    ESP = _loc4_;
                                    F_realloc();
                                    _loc15_ = -1;
                                    _loc4_ += 16;
                                    _loc3_ = eax;
                                    if(_loc3_ != 0)
                                    {
                                       §§goto(addr572);
                                    }
                                    else
                                    {
                                       §§goto(addr5790);
                                    }
                                 }
                                 §§goto(addr5790);
                              }
                              _loc10_ = li32(_loc8_ - 8);
                              if(_loc15_ > _loc10_)
                              {
                                 si32(_loc15_,_loc8_ - 8);
                              }
                              var _loc6_:* = _loc15_ << 2;
                              _loc10_ = int((_loc10_ = li32(_loc8_ - 48)) + _loc6_);
                              si32(2,_loc10_);
                              si32(_loc16_,_loc8_ - 4);
                              _loc17_ = int(_loc13_ + 4);
                           }
                           else
                           {
                              _loc13_ = li32(_loc8_ - 12);
                              if(_loc16_ >= _loc13_)
                              {
                                 _loc9_ = _loc13_ << 1;
                                 if((_loc11_ = int(_loc16_ + 1)) <= _loc9_)
                                 {
                                    _loc11_ = _loc9_;
                                 }
                                 _loc15_ = _loc11_ << 2;
                                 _loc2_ = li32(_loc8_ - 48);
                                 if(_loc13_ == 8)
                                 {
                                    _loc4_ -= 16;
                                    si32(_loc15_,_loc4_);
                                    ESP = _loc4_;
                                    F_malloc();
                                    _loc15_ = -1;
                                    _loc4_ += 16;
                                    if((_loc12_ = int(eax)) != 0)
                                    {
                                       _loc10_ = _loc13_ << 2;
                                       _loc1_ = ram;
                                       _loc1_.position = _loc12_;
                                       _loc1_.writeBytes(_loc1_,_loc2_,_loc10_);
                                       addr806:
                                       if(_loc13_ < _loc11_)
                                       {
                                          _loc4_ -= 16;
                                          si32(0,_loc4_ + 4);
                                          si32(_loc10_ = int(_loc12_ + (_loc13_ << 2)),_loc4_);
                                          if(_loc9_ <= _loc16_)
                                          {
                                             _loc9_ = _loc16_;
                                          }
                                          si32(_loc10_ = (_loc10_ = int(_loc9_ - _loc13_)) << 2,_loc4_ + 8);
                                          ESP = _loc4_;
                                          Fmemset();
                                          _loc4_ += 16;
                                       }
                                       si32(_loc12_,_loc8_ - 48);
                                       si32(_loc11_,_loc8_ - 12);
                                       _loc16_ = li32(_loc8_ - 4);
                                    }
                                    else
                                    {
                                       §§goto(addr5790);
                                    }
                                 }
                                 else
                                 {
                                    _loc4_ -= 16;
                                    si32(_loc15_,_loc4_ + 4);
                                    si32(_loc2_,_loc4_);
                                    ESP = _loc4_;
                                    F_realloc();
                                    _loc15_ = -1;
                                    _loc4_ += 16;
                                    if((_loc12_ = int(eax)) != 0)
                                    {
                                       §§goto(addr806);
                                    }
                                    else
                                    {
                                       §§goto(addr5790);
                                    }
                                 }
                                 §§goto(addr5790);
                              }
                              _loc10_ = li32(_loc8_ - 8);
                              if(_loc16_ > _loc10_)
                              {
                                 si32(_loc16_,_loc8_ - 8);
                              }
                              _loc6_ = _loc16_ << 2;
                              _loc10_ = int((_loc10_ = li32(_loc8_ - 48)) + _loc6_);
                              si32(2,_loc10_);
                              si32(_loc16_ += 1,_loc8_ - 4);
                           }
                           continue loop1;
                        }
                        §§goto(addr5754);
                     }
                     else
                     {
                        _loc2_ = int(_loc15_ + -43);
                        if(uint(_loc2_) <= 14)
                        {
                           _loc9_ = 0;
                           if((_loc10_ = (_loc13_ = 1 << _loc2_) & 32704) != 0)
                           {
                              do
                              {
                                 _loc10_ = int(_loc9_ * 10);
                                 _loc9_ = int((_loc10_ = int(_loc15_ + _loc10_)) + -48);
                                 _loc13_ = int(_loc17_ + 4);
                                 _loc10_ = int((_loc15_ = li32(_loc17_)) + -48);
                                 _loc17_ = _loc13_;
                              }
                              while(uint(_loc10_) < 10);
                              
                              if(_loc15_ == 36)
                              {
                                 si32(_loc9_,_loc8_ - 4);
                                 _loc16_ = _loc9_;
                                 _loc17_ = _loc13_;
                                 continue loop1;
                              }
                              continue;
                           }
                           if((_loc10_ = _loc13_ & 37) != 0)
                           {
                              continue loop1;
                           }
                           if(_loc2_ == 3)
                           {
                              _loc13_ = int(_loc17_ + 4);
                              if((_loc15_ = li32(_loc17_)) != 42)
                              {
                                 if((uint(_loc10_ = int(_loc15_ + -48))) <= 9)
                                 {
                                    _loc17_ += 4;
                                    do
                                    {
                                       _loc13_ = int(_loc17_ + 4);
                                       _loc10_ = int((_loc15_ = li32(_loc17_)) + -48);
                                       _loc17_ = _loc13_;
                                    }
                                    while(uint(_loc10_) < 10);
                                    
                                 }
                                 continue;
                              }
                              _loc2_ = li32(_loc13_);
                              _loc11_ = int(_loc2_ + -48);
                              _loc15_ = 0;
                              _loc9_ = _loc13_;
                              if(uint(_loc11_) <= 9)
                              {
                                 do
                                 {
                                    _loc15_ = int((_loc10_ = int(_loc15_ * 10)) + _loc11_);
                                    _loc9_ = int(_loc17_ + 4);
                                    _loc2_ = li32(_loc17_ + 8);
                                    _loc11_ = int(_loc2_ + -48);
                                    _loc17_ = _loc9_;
                                 }
                                 while(uint(_loc11_) < 10);
                                 
                                 _loc9_ += 4;
                              }
                              if(_loc2_ == 36)
                              {
                                 si32(_loc15_,_loc8_ - 4);
                                 _loc13_ = li32(_loc8_ - 12);
                                 if(_loc15_ >= _loc13_)
                                 {
                                    _loc17_ = _loc13_ << 1;
                                    if((_loc2_ = int(_loc15_ + 1)) <= _loc17_)
                                    {
                                       _loc2_ = _loc17_;
                                    }
                                    _loc15_ = _loc2_ << 2;
                                    _loc12_ = li32(_loc8_ - 48);
                                    if(_loc13_ == 8)
                                    {
                                       _loc4_ -= 16;
                                       si32(_loc15_,_loc4_);
                                       ESP = _loc4_;
                                       F_malloc();
                                       _loc15_ = -1;
                                       _loc4_ += 16;
                                       _loc3_ = eax;
                                       if(_loc3_ != 0)
                                       {
                                          _loc10_ = _loc13_ << 2;
                                          _loc1_ = ram;
                                          _loc1_.position = _loc3_;
                                          _loc1_.writeBytes(_loc1_,_loc12_,_loc10_);
                                          addr1133:
                                          if(_loc13_ < _loc2_)
                                          {
                                             _loc4_ -= 16;
                                             si32(0,_loc4_ + 4);
                                             si32(_loc10_ = int(_loc3_ + (_loc13_ << 2)),_loc4_);
                                             if(_loc17_ <= _loc11_)
                                             {
                                                _loc17_ = _loc11_;
                                             }
                                             si32(_loc10_ = (_loc10_ = int(_loc17_ - _loc13_)) << 2,_loc4_ + 8);
                                             ESP = _loc4_;
                                             Fmemset();
                                             _loc4_ += 16;
                                          }
                                          si32(_loc3_,_loc8_ - 48);
                                          si32(_loc2_,_loc8_ - 12);
                                          _loc15_ = li32(_loc8_ - 4);
                                       }
                                       else
                                       {
                                          §§goto(addr5790);
                                       }
                                    }
                                    else
                                    {
                                       _loc4_ -= 16;
                                       si32(_loc15_,_loc4_ + 4);
                                       si32(_loc12_,_loc4_);
                                       ESP = _loc4_;
                                       F_realloc();
                                       _loc15_ = -1;
                                       _loc4_ += 16;
                                       _loc3_ = eax;
                                       if(_loc3_ != 0)
                                       {
                                          §§goto(addr1133);
                                       }
                                       else
                                       {
                                          §§goto(addr5790);
                                       }
                                    }
                                    §§goto(addr5790);
                                 }
                                 _loc10_ = li32(_loc8_ - 8);
                                 if(_loc15_ > _loc10_)
                                 {
                                    si32(_loc15_,_loc8_ - 8);
                                 }
                                 _loc6_ = _loc15_ << 2;
                                 _loc10_ = int((_loc10_ = li32(_loc8_ - 48)) + _loc6_);
                                 si32(2,_loc10_);
                                 si32(_loc16_,_loc8_ - 4);
                                 _loc17_ = int(_loc9_ + 4);
                              }
                              else
                              {
                                 _loc9_ = li32(_loc8_ - 12);
                                 if(_loc16_ >= _loc9_)
                                 {
                                    _loc17_ = _loc9_ << 1;
                                    _loc2_ = int(_loc16_ + 1);
                                    _loc11_ = _loc2_;
                                    if(_loc2_ <= _loc17_)
                                    {
                                       _loc11_ = _loc17_;
                                    }
                                    _loc15_ = _loc11_ << 2;
                                    _loc16_ = li32(_loc8_ - 48);
                                    if(_loc9_ == 8)
                                    {
                                       _loc4_ -= 16;
                                       si32(_loc15_,_loc4_);
                                       ESP = _loc4_;
                                       F_malloc();
                                       _loc15_ = -1;
                                       _loc4_ += 16;
                                       if((_loc12_ = int(eax)) != 0)
                                       {
                                          _loc10_ = _loc9_ << 2;
                                          _loc1_ = ram;
                                          _loc1_.position = _loc12_;
                                          _loc1_.writeBytes(_loc1_,_loc16_,_loc10_);
                                          addr1367:
                                          if(_loc9_ < _loc11_)
                                          {
                                             _loc4_ -= 16;
                                             si32(0,_loc4_ + 4);
                                             si32(_loc10_ = int(_loc12_ + (_loc9_ << 2)),_loc4_);
                                             if(_loc17_ <= _loc2_)
                                             {
                                                _loc17_ = _loc2_;
                                             }
                                             si32(_loc10_ = (_loc10_ = int(_loc17_ - _loc9_)) << 2,_loc4_ + 8);
                                             ESP = _loc4_;
                                             Fmemset();
                                             _loc4_ += 16;
                                          }
                                          si32(_loc12_,_loc8_ - 48);
                                          si32(_loc11_,_loc8_ - 12);
                                          _loc16_ = li32(_loc8_ - 4);
                                       }
                                       else
                                       {
                                          §§goto(addr5790);
                                       }
                                    }
                                    else
                                    {
                                       _loc4_ -= 16;
                                       si32(_loc15_,_loc4_ + 4);
                                       si32(_loc16_,_loc4_);
                                       ESP = _loc4_;
                                       F_realloc();
                                       _loc15_ = -1;
                                       _loc4_ += 16;
                                       if((_loc12_ = int(eax)) != 0)
                                       {
                                          §§goto(addr1367);
                                       }
                                       else
                                       {
                                          §§goto(addr5790);
                                       }
                                    }
                                    §§goto(addr5790);
                                 }
                                 _loc10_ = li32(_loc8_ - 8);
                                 if(_loc16_ > _loc10_)
                                 {
                                    si32(_loc16_,_loc8_ - 8);
                                 }
                                 _loc6_ = _loc16_ << 2;
                                 _loc10_ = int((_loc10_ = li32(_loc8_ - 48)) + _loc6_);
                                 si32(2,_loc10_);
                                 si32(_loc16_ += 1,_loc8_ - 4);
                                 _loc17_ = _loc13_;
                              }
                              continue loop1;
                           }
                        }
                     }
                     §§goto(addr5754);
                  }
                  else
                  {
                     if(_loc15_ <= 70)
                     {
                        if(_loc15_ <= 67)
                        {
                           if(_loc15_ != 65)
                           {
                              if(_loc15_ == 67)
                              {
                                 _loc14_ |= 16;
                                 addr1640:
                                 _loc10_ = _loc14_ & 16;
                                 _loc14_ = 2;
                                 if(_loc10_ != 0)
                                 {
                                    _loc14_ = 24;
                                 }
                                 _loc9_ = li32(_loc8_ - 12);
                                 if(_loc16_ >= _loc9_)
                                 {
                                    _loc13_ = _loc9_ << 1;
                                    _loc2_ = int(_loc16_ + 1);
                                    _loc11_ = _loc2_;
                                    if(_loc2_ <= _loc13_)
                                    {
                                       _loc11_ = _loc13_;
                                    }
                                    _loc15_ = _loc11_ << 2;
                                    _loc16_ = li32(_loc8_ - 48);
                                    if(_loc9_ == 8)
                                    {
                                       _loc4_ -= 16;
                                       si32(_loc15_,_loc4_);
                                       ESP = _loc4_;
                                       F_malloc();
                                       _loc15_ = -1;
                                       _loc4_ += 16;
                                       if((_loc12_ = int(eax)) != 0)
                                       {
                                          _loc10_ = _loc9_ << 2;
                                          _loc1_ = ram;
                                          _loc1_.position = _loc12_;
                                          _loc1_.writeBytes(_loc1_,_loc16_,_loc10_);
                                          addr1769:
                                          if(_loc9_ < _loc11_)
                                          {
                                             _loc4_ -= 16;
                                             si32(0,_loc4_ + 4);
                                             si32(_loc10_ = int(_loc12_ + (_loc9_ << 2)),_loc4_);
                                             if(_loc13_ <= _loc2_)
                                             {
                                                _loc13_ = _loc2_;
                                             }
                                             si32(_loc10_ = (_loc10_ = int(_loc13_ - _loc9_)) << 2,_loc4_ + 8);
                                             ESP = _loc4_;
                                             Fmemset();
                                             _loc4_ += 16;
                                          }
                                          si32(_loc12_,_loc8_ - 48);
                                          si32(_loc11_,_loc8_ - 12);
                                          _loc16_ = li32(_loc8_ - 4);
                                       }
                                       else
                                       {
                                          §§goto(addr5790);
                                       }
                                    }
                                    else
                                    {
                                       _loc4_ -= 16;
                                       si32(_loc15_,_loc4_ + 4);
                                       si32(_loc16_,_loc4_);
                                       ESP = _loc4_;
                                       F_realloc();
                                       _loc15_ = -1;
                                       _loc4_ += 16;
                                       if((_loc12_ = int(eax)) != 0)
                                       {
                                          §§goto(addr1769);
                                       }
                                       else
                                       {
                                          §§goto(addr5790);
                                       }
                                    }
                                    §§goto(addr5790);
                                 }
                                 _loc10_ = li32(_loc8_ - 8);
                                 if(_loc16_ > _loc10_)
                                 {
                                    si32(_loc16_,_loc8_ - 8);
                                 }
                                 _loc10_ = _loc16_ << 2;
                                 _loc10_ = int((_loc6_ = li32(_loc8_ - 48)) + _loc10_);
                                 si32(_loc14_,_loc10_);
                                 si32(_loc16_ += 1,_loc8_ - 4);
                                 continue loop0;
                              }
                              §§goto(addr5754);
                           }
                           §§goto(addr5790);
                        }
                        else
                        {
                           if(_loc15_ == 68)
                           {
                              _loc14_ |= 16;
                              break loop1;
                           }
                           if(_loc15_ != 69)
                           {
                              §§goto(addr5754);
                           }
                        }
                        addr2291:
                        _loc9_ = li32(_loc8_ - 12);
                        if(_loc16_ >= _loc9_)
                        {
                           _loc13_ = _loc9_ << 1;
                           _loc2_ = int(_loc16_ + 1);
                           _loc16_ = _loc2_;
                           if(_loc2_ <= _loc13_)
                           {
                              _loc16_ = _loc13_;
                           }
                           _loc15_ = _loc16_ << 2;
                           _loc11_ = li32(_loc8_ - 48);
                           if(_loc9_ == 8)
                           {
                              _loc4_ -= 16;
                              si32(_loc15_,_loc4_);
                              ESP = _loc4_;
                              F_malloc();
                              _loc15_ = -1;
                              _loc4_ += 16;
                              if((_loc12_ = int(eax)) != 0)
                              {
                                 _loc10_ = _loc9_ << 2;
                                 _loc1_ = ram;
                                 _loc1_.position = _loc12_;
                                 _loc1_.writeBytes(_loc1_,_loc11_,_loc10_);
                                 addr2408:
                                 if(_loc9_ < _loc16_)
                                 {
                                    _loc4_ -= 16;
                                    si32(0,_loc4_ + 4);
                                    si32(_loc10_ = int(_loc12_ + (_loc9_ << 2)),_loc4_);
                                    if(_loc13_ <= _loc2_)
                                    {
                                       _loc13_ = _loc2_;
                                    }
                                    si32(_loc10_ = (_loc10_ = int(_loc13_ - _loc9_)) << 2,_loc4_ + 8);
                                    ESP = _loc4_;
                                    Fmemset();
                                    _loc4_ += 16;
                                 }
                                 si32(_loc12_,_loc8_ - 48);
                                 si32(_loc16_,_loc8_ - 12);
                                 _loc16_ = li32(_loc8_ - 4);
                              }
                              else
                              {
                                 §§goto(addr5790);
                              }
                           }
                           else
                           {
                              _loc4_ -= 16;
                              si32(_loc15_,_loc4_ + 4);
                              si32(_loc11_,_loc4_);
                              ESP = _loc4_;
                              F_realloc();
                              _loc15_ = -1;
                              _loc4_ += 16;
                              if((_loc12_ = int(eax)) != 0)
                              {
                                 §§goto(addr2408);
                              }
                              else
                              {
                                 §§goto(addr5790);
                              }
                           }
                           §§goto(addr5790);
                        }
                        _loc10_ = li32(_loc8_ - 8);
                        if(_loc16_ > _loc10_)
                        {
                           si32(_loc16_,_loc8_ - 8);
                        }
                        _loc10_ = (_loc10_ = (_loc10_ = int(_loc14_ >>> 3)) & 1) | 22;
                        var _loc7_:* = _loc16_ << 2;
                        _loc6_ = int((_loc6_ = li32(_loc8_ - 48)) + _loc7_);
                        si32(_loc10_,_loc6_);
                        si32(_loc16_ += 1,_loc8_ - 4);
                        continue loop0;
                     }
                     if(_loc15_ <= 78)
                     {
                        if(_loc15_ != 71)
                        {
                           if(_loc15_ == 76)
                           {
                              _loc14_ |= 8;
                              continue loop1;
                           }
                           §§goto(addr5754);
                        }
                        else
                        {
                           §§goto(addr2291);
                        }
                     }
                     else
                     {
                        if(_loc15_ == 79)
                        {
                           _loc14_ |= 16;
                           addr4464:
                           _loc9_ = li32(_loc8_ - 12);
                           if(_loc16_ >= _loc9_)
                           {
                              _loc13_ = _loc9_ << 1;
                              if((_loc11_ = int(_loc16_ + 1)) <= _loc13_)
                              {
                                 _loc11_ = _loc13_;
                              }
                              _loc15_ = _loc11_ << 2;
                              _loc2_ = li32(_loc8_ - 48);
                              if(_loc9_ == 8)
                              {
                                 _loc4_ -= 16;
                                 si32(_loc15_,_loc4_);
                                 ESP = _loc4_;
                                 F_malloc();
                                 _loc15_ = -1;
                                 _loc4_ += 16;
                                 if((_loc12_ = int(eax)) != 0)
                                 {
                                    _loc10_ = _loc9_ << 2;
                                    _loc1_ = ram;
                                    _loc1_.position = _loc12_;
                                    _loc1_.writeBytes(_loc1_,_loc2_,_loc10_);
                                    addr4581:
                                    if(_loc9_ < _loc11_)
                                    {
                                       _loc4_ -= 16;
                                       si32(0,_loc4_ + 4);
                                       si32(_loc10_ = int(_loc12_ + (_loc9_ << 2)),_loc4_);
                                       if(_loc13_ <= _loc16_)
                                       {
                                          _loc13_ = _loc16_;
                                       }
                                       si32(_loc10_ = (_loc10_ = int(_loc13_ - _loc9_)) << 2,_loc4_ + 8);
                                       ESP = _loc4_;
                                       Fmemset();
                                       _loc4_ += 16;
                                    }
                                    si32(_loc12_,_loc8_ - 48);
                                    si32(_loc11_,_loc8_ - 12);
                                    _loc16_ = li32(_loc8_ - 4);
                                 }
                                 else
                                 {
                                    §§goto(addr5790);
                                 }
                              }
                              else
                              {
                                 _loc4_ -= 16;
                                 si32(_loc15_,_loc4_ + 4);
                                 si32(_loc2_,_loc4_);
                                 ESP = _loc4_;
                                 F_realloc();
                                 _loc15_ = -1;
                                 _loc4_ += 16;
                                 if((_loc12_ = int(eax)) != 0)
                                 {
                                    §§goto(addr4581);
                                 }
                                 else
                                 {
                                    §§goto(addr5790);
                                 }
                              }
                              §§goto(addr5790);
                           }
                           _loc10_ = li32(_loc8_ - 8);
                           if(_loc16_ > _loc10_)
                           {
                              si32(_loc16_,_loc8_ - 8);
                           }
                           if((_loc10_ = _loc14_ & 4096) != 0)
                           {
                              si32(17,int((_loc6_ = li32(_loc8_ - 48)) + (_loc16_ << 2)));
                              si32(_loc16_ += 1,_loc8_ - 4);
                           }
                           else if((_loc10_ = _loc14_ & 1024) != 0)
                           {
                              si32(14,int((_loc10_ = li32(_loc8_ - 48)) + (_loc16_ << 2)));
                              si32(_loc16_ += 1,_loc8_ - 4);
                           }
                           else if((_loc10_ = _loc14_ & 2048) != 0)
                           {
                              si32(14,int((_loc10_ = li32(_loc8_ - 48)) + (_loc16_ << 2)));
                              si32(_loc16_ += 1,_loc8_ - 4);
                           }
                           else if((_loc10_ = _loc14_ & 32) != 0)
                           {
                              si32(9,int((_loc10_ = li32(_loc8_ - 48)) + (_loc16_ << 2)));
                              si32(_loc16_ += 1,_loc8_ - 4);
                           }
                           else
                           {
                              _loc15_ = li32(_loc8_ - 48);
                              if((_loc14_ & 16) != 0)
                              {
                                 si32(6,int(_loc15_ + (_loc16_ << 2)));
                                 si32(_loc16_ += 1,_loc8_ - 4);
                              }
                              else
                              {
                                 si32(3,int(_loc15_ + (_loc16_ << 2)));
                                 si32(_loc16_ += 1,_loc8_ - 4);
                              }
                           }
                           continue loop0;
                        }
                        if(_loc15_ == 83)
                        {
                           _loc14_ |= 16;
                           addr5103:
                           _loc10_ = _loc14_ & 16;
                           _loc13_ = 20;
                           if(_loc10_ != 0)
                           {
                              _loc13_ = 25;
                           }
                           _loc14_ = li32(_loc8_ - 12);
                           if(_loc16_ >= _loc14_)
                           {
                              _loc9_ = _loc14_ << 1;
                              _loc2_ = int(_loc16_ + 1);
                              _loc16_ = _loc2_;
                              if(_loc2_ <= _loc9_)
                              {
                                 _loc16_ = _loc9_;
                              }
                              _loc15_ = _loc16_ << 2;
                              _loc11_ = li32(_loc8_ - 48);
                              if(_loc14_ == 8)
                              {
                                 _loc4_ -= 16;
                                 si32(_loc15_,_loc4_);
                                 ESP = _loc4_;
                                 F_malloc();
                                 _loc15_ = -1;
                                 _loc4_ += 16;
                                 if((_loc12_ = int(eax)) != 0)
                                 {
                                    _loc10_ = _loc14_ << 2;
                                    _loc1_ = ram;
                                    _loc1_.position = _loc12_;
                                    _loc1_.writeBytes(_loc1_,_loc11_,_loc10_);
                                    addr5232:
                                    if(_loc14_ < _loc16_)
                                    {
                                       _loc4_ -= 16;
                                       si32(0,_loc4_ + 4);
                                       si32(_loc10_ = int(_loc12_ + (_loc14_ << 2)),_loc4_);
                                       if(_loc9_ <= _loc2_)
                                       {
                                          _loc9_ = _loc2_;
                                       }
                                       si32(_loc10_ = (_loc10_ = int(_loc9_ - _loc14_)) << 2,_loc4_ + 8);
                                       ESP = _loc4_;
                                       Fmemset();
                                       _loc4_ += 16;
                                    }
                                    si32(_loc12_,_loc8_ - 48);
                                    si32(_loc16_,_loc8_ - 12);
                                    _loc16_ = li32(_loc8_ - 4);
                                 }
                                 else
                                 {
                                    §§goto(addr5790);
                                 }
                              }
                              else
                              {
                                 _loc4_ -= 16;
                                 si32(_loc15_,_loc4_ + 4);
                                 si32(_loc11_,_loc4_);
                                 ESP = _loc4_;
                                 F_realloc();
                                 _loc15_ = -1;
                                 _loc4_ += 16;
                                 if((_loc12_ = int(eax)) != 0)
                                 {
                                    §§goto(addr5232);
                                 }
                                 else
                                 {
                                    §§goto(addr5790);
                                 }
                              }
                              §§goto(addr5790);
                           }
                           _loc10_ = li32(_loc8_ - 8);
                           if(_loc16_ > _loc10_)
                           {
                              si32(_loc16_,_loc8_ - 8);
                           }
                           _loc6_ = _loc16_ << 2;
                           _loc10_ = int((_loc10_ = li32(_loc8_ - 48)) + _loc6_);
                           si32(_loc13_,_loc10_);
                           si32(_loc16_ += 1,_loc8_ - 4);
                           continue loop0;
                        }
                        if(_loc15_ == 85)
                        {
                           _loc14_ |= 16;
                           break;
                        }
                        §§goto(addr5754);
                     }
                  }
                  §§goto(addr5790);
               }
               else if(_loc15_ <= 109)
               {
                  if(_loc15_ <= 100)
                  {
                     if(_loc15_ <= 98)
                     {
                        if(_loc15_ == 88)
                        {
                           break;
                        }
                        if(_loc15_ != 97)
                        {
                           §§goto(addr5754);
                        }
                        else
                        {
                           §§goto(addr2291);
                        }
                     }
                     else if(_loc15_ != 99)
                     {
                        if(_loc15_ == 100)
                        {
                           break loop1;
                        }
                        §§goto(addr5754);
                     }
                     else
                     {
                        §§goto(addr1640);
                     }
                     §§goto(addr5790);
                  }
                  else if(_loc15_ <= 104)
                  {
                     if((uint(_loc10_ = int(_loc15_ + -101))) >= 3)
                     {
                        if(_loc15_ == 104)
                        {
                           if((_loc10_ = _loc14_ & 64) != 0)
                           {
                              _loc14_ = (_loc10_ = _loc14_ & -8257) | 8192;
                           }
                           else
                           {
                              _loc14_ |= 64;
                           }
                           continue loop1;
                        }
                     }
                     else
                     {
                        §§goto(addr2291);
                     }
                  }
                  else
                  {
                     if(_loc15_ == 105)
                     {
                        break loop1;
                     }
                     if(_loc15_ == 106)
                     {
                        _loc14_ |= 4096;
                        continue loop1;
                     }
                     if(_loc15_ == 108)
                     {
                        if((_loc10_ = _loc14_ & 16) != 0)
                        {
                           _loc14_ = (_loc10_ = _loc14_ & -49) | 32;
                        }
                        else
                        {
                           _loc14_ |= 16;
                        }
                        continue loop1;
                     }
                  }
               }
               else if(_loc15_ <= 114)
               {
                  if(_loc15_ <= 111)
                  {
                     if(_loc15_ == 110)
                     {
                        if((_loc10_ = _loc14_ & 4096) != 0)
                        {
                           _loc13_ = li32(_loc8_ - 12);
                           if(_loc16_ >= _loc13_)
                           {
                              _loc14_ = _loc13_ << 1;
                              if((_loc2_ = int(_loc16_ + 1)) <= _loc14_)
                              {
                                 _loc2_ = _loc14_;
                              }
                              _loc15_ = _loc2_ << 2;
                              _loc9_ = li32(_loc8_ - 48);
                              if(_loc13_ == 8)
                              {
                                 _loc4_ -= 16;
                                 si32(_loc15_,_loc4_);
                                 ESP = _loc4_;
                                 F_malloc();
                                 _loc15_ = -1;
                                 _loc4_ += 16;
                                 if((_loc11_ = int(eax)) != 0)
                                 {
                                    _loc10_ = _loc13_ << 2;
                                    _loc1_ = ram;
                                    _loc1_.position = _loc11_;
                                    _loc1_.writeBytes(_loc1_,_loc9_,_loc10_);
                                    addr2663:
                                    if(_loc13_ < _loc2_)
                                    {
                                       _loc4_ -= 16;
                                       si32(0,_loc4_ + 4);
                                       si32(_loc10_ = int(_loc11_ + (_loc13_ << 2)),_loc4_);
                                       if(_loc14_ <= _loc16_)
                                       {
                                          _loc14_ = _loc16_;
                                       }
                                       si32(_loc10_ = (_loc10_ = int(_loc14_ - _loc13_)) << 2,_loc4_ + 8);
                                       ESP = _loc4_;
                                       Fmemset();
                                       _loc4_ += 16;
                                    }
                                    si32(_loc11_,_loc8_ - 48);
                                    si32(_loc2_,_loc8_ - 12);
                                    _loc16_ = li32(_loc8_ - 4);
                                 }
                                 else
                                 {
                                    §§goto(addr5790);
                                 }
                              }
                              else
                              {
                                 _loc4_ -= 16;
                                 si32(_loc15_,_loc4_ + 4);
                                 si32(_loc9_,_loc4_);
                                 ESP = _loc4_;
                                 F_realloc();
                                 _loc15_ = -1;
                                 _loc4_ += 16;
                                 if((_loc11_ = int(eax)) != 0)
                                 {
                                    §§goto(addr2663);
                                 }
                                 else
                                 {
                                    §§goto(addr5790);
                                 }
                              }
                              §§goto(addr5790);
                           }
                           _loc10_ = li32(_loc8_ - 8);
                           if(_loc16_ > _loc10_)
                           {
                              si32(_loc16_,_loc8_ - 8);
                           }
                           _loc6_ = _loc16_ << 2;
                           _loc10_ = int((_loc10_ = li32(_loc8_ - 48)) + _loc6_);
                           si32(18,_loc10_);
                           si32(_loc16_ += 1,_loc8_ - 4);
                        }
                        else if((_loc10_ = _loc14_ & 2048) != 0)
                        {
                           _loc14_ = li32(_loc8_ - 12);
                           if(_loc16_ >= _loc14_)
                           {
                              _loc13_ = _loc14_ << 1;
                              if((_loc2_ = int(_loc16_ + 1)) <= _loc13_)
                              {
                                 _loc2_ = _loc13_;
                              }
                              _loc15_ = _loc2_ << 2;
                              _loc9_ = li32(_loc8_ - 48);
                              if(_loc14_ == 8)
                              {
                                 _loc4_ -= 16;
                                 si32(_loc15_,_loc4_);
                                 ESP = _loc4_;
                                 F_malloc();
                                 _loc15_ = -1;
                                 _loc4_ += 16;
                                 if((_loc11_ = int(eax)) != 0)
                                 {
                                    _loc10_ = _loc14_ << 2;
                                    _loc1_ = ram;
                                    _loc1_.position = _loc11_;
                                    _loc1_.writeBytes(_loc1_,_loc9_,_loc10_);
                                    addr2905:
                                    if(_loc14_ < _loc2_)
                                    {
                                       _loc4_ -= 16;
                                       si32(0,_loc4_ + 4);
                                       si32(_loc10_ = int(_loc11_ + (_loc14_ << 2)),_loc4_);
                                       if(_loc13_ <= _loc16_)
                                       {
                                          _loc13_ = _loc16_;
                                       }
                                       si32(_loc10_ = (_loc10_ = int(_loc13_ - _loc14_)) << 2,_loc4_ + 8);
                                       ESP = _loc4_;
                                       Fmemset();
                                       _loc4_ += 16;
                                    }
                                    si32(_loc11_,_loc8_ - 48);
                                    si32(_loc2_,_loc8_ - 12);
                                    _loc16_ = li32(_loc8_ - 4);
                                 }
                                 else
                                 {
                                    §§goto(addr5790);
                                 }
                              }
                              else
                              {
                                 _loc4_ -= 16;
                                 si32(_loc15_,_loc4_ + 4);
                                 si32(_loc9_,_loc4_);
                                 ESP = _loc4_;
                                 F_realloc();
                                 _loc15_ = -1;
                                 _loc4_ += 16;
                                 if((_loc11_ = int(eax)) != 0)
                                 {
                                    §§goto(addr2905);
                                 }
                                 else
                                 {
                                    §§goto(addr5790);
                                 }
                              }
                              §§goto(addr5790);
                           }
                           _loc10_ = li32(_loc8_ - 8);
                           if(_loc16_ > _loc10_)
                           {
                              si32(_loc16_,_loc8_ - 8);
                           }
                           _loc10_ = _loc16_ << 2;
                           _loc10_ = int((_loc6_ = li32(_loc8_ - 48)) + _loc10_);
                           si32(12,_loc10_);
                           si32(_loc16_ += 1,_loc8_ - 4);
                        }
                        else if((_loc10_ = _loc14_ & 1024) != 0)
                        {
                           _loc14_ = li32(_loc8_ - 12);
                           if(_loc16_ >= _loc14_)
                           {
                              _loc13_ = _loc14_ << 1;
                              if((_loc2_ = int(_loc16_ + 1)) <= _loc13_)
                              {
                                 _loc2_ = _loc13_;
                              }
                              _loc15_ = _loc2_ << 2;
                              _loc9_ = li32(_loc8_ - 48);
                              if(_loc14_ == 8)
                              {
                                 _loc4_ -= 16;
                                 si32(_loc15_,_loc4_);
                                 ESP = _loc4_;
                                 F_malloc();
                                 _loc15_ = -1;
                                 _loc4_ += 16;
                                 if((_loc11_ = int(eax)) != 0)
                                 {
                                    _loc10_ = _loc14_ << 2;
                                    _loc1_ = ram;
                                    _loc1_.position = _loc11_;
                                    _loc1_.writeBytes(_loc1_,_loc9_,_loc10_);
                                    addr3147:
                                    if(_loc14_ < _loc2_)
                                    {
                                       _loc4_ -= 16;
                                       si32(0,_loc4_ + 4);
                                       si32(_loc10_ = int(_loc11_ + (_loc14_ << 2)),_loc4_);
                                       if(_loc13_ <= _loc16_)
                                       {
                                          _loc13_ = _loc16_;
                                       }
                                       si32(_loc10_ = (_loc10_ = int(_loc13_ - _loc14_)) << 2,_loc4_ + 8);
                                       ESP = _loc4_;
                                       Fmemset();
                                       _loc4_ += 16;
                                    }
                                    si32(_loc11_,_loc8_ - 48);
                                    si32(_loc2_,_loc8_ - 12);
                                    _loc16_ = li32(_loc8_ - 4);
                                 }
                                 else
                                 {
                                    §§goto(addr5790);
                                 }
                              }
                              else
                              {
                                 _loc4_ -= 16;
                                 si32(_loc15_,_loc4_ + 4);
                                 si32(_loc9_,_loc4_);
                                 ESP = _loc4_;
                                 F_realloc();
                                 _loc15_ = -1;
                                 _loc4_ += 16;
                                 if((_loc11_ = int(eax)) != 0)
                                 {
                                    §§goto(addr3147);
                                 }
                                 else
                                 {
                                    §§goto(addr5790);
                                 }
                              }
                              §§goto(addr5790);
                           }
                           _loc10_ = li32(_loc8_ - 8);
                           if(_loc16_ > _loc10_)
                           {
                              si32(_loc16_,_loc8_ - 8);
                           }
                           _loc10_ = _loc16_ << 2;
                           _loc10_ = int((_loc6_ = li32(_loc8_ - 48)) + _loc10_);
                           si32(15,_loc10_);
                           si32(_loc16_ += 1,_loc8_ - 4);
                        }
                        else if((_loc10_ = _loc14_ & 32) != 0)
                        {
                           _loc14_ = li32(_loc8_ - 12);
                           if(_loc16_ >= _loc14_)
                           {
                              _loc13_ = _loc14_ << 1;
                              if((_loc2_ = int(_loc16_ + 1)) <= _loc13_)
                              {
                                 _loc2_ = _loc13_;
                              }
                              _loc15_ = _loc2_ << 2;
                              _loc9_ = li32(_loc8_ - 48);
                              if(_loc14_ == 8)
                              {
                                 _loc4_ -= 16;
                                 si32(_loc15_,_loc4_);
                                 ESP = _loc4_;
                                 F_malloc();
                                 _loc15_ = -1;
                                 _loc4_ += 16;
                                 if((_loc11_ = int(eax)) != 0)
                                 {
                                    _loc10_ = _loc14_ << 2;
                                    _loc1_ = ram;
                                    _loc1_.position = _loc11_;
                                    _loc1_.writeBytes(_loc1_,_loc9_,_loc10_);
                                    addr3389:
                                    if(_loc14_ < _loc2_)
                                    {
                                       _loc4_ -= 16;
                                       si32(0,_loc4_ + 4);
                                       si32(_loc10_ = int(_loc11_ + (_loc14_ << 2)),_loc4_);
                                       if(_loc13_ <= _loc16_)
                                       {
                                          _loc13_ = _loc16_;
                                       }
                                       si32(_loc10_ = (_loc10_ = int(_loc13_ - _loc14_)) << 2,_loc4_ + 8);
                                       ESP = _loc4_;
                                       Fmemset();
                                       _loc4_ += 16;
                                    }
                                    si32(_loc11_,_loc8_ - 48);
                                    si32(_loc2_,_loc8_ - 12);
                                    _loc16_ = li32(_loc8_ - 4);
                                 }
                                 else
                                 {
                                    §§goto(addr5790);
                                 }
                              }
                              else
                              {
                                 _loc4_ -= 16;
                                 si32(_loc15_,_loc4_ + 4);
                                 si32(_loc9_,_loc4_);
                                 ESP = _loc4_;
                                 F_realloc();
                                 _loc15_ = -1;
                                 _loc4_ += 16;
                                 if((_loc11_ = int(eax)) != 0)
                                 {
                                    §§goto(addr3389);
                                 }
                                 else
                                 {
                                    §§goto(addr5790);
                                 }
                              }
                              §§goto(addr5790);
                           }
                           _loc10_ = li32(_loc8_ - 8);
                           if(_loc16_ > _loc10_)
                           {
                              si32(_loc16_,_loc8_ - 8);
                           }
                           _loc6_ = _loc16_ << 2;
                           _loc10_ = int((_loc10_ = li32(_loc8_ - 48)) + _loc6_);
                           si32(10,_loc10_);
                           si32(_loc16_ += 1,_loc8_ - 4);
                        }
                        else if((_loc10_ = _loc14_ & 16) != 0)
                        {
                           _loc14_ = li32(_loc8_ - 12);
                           if(_loc16_ >= _loc14_)
                           {
                              _loc13_ = _loc14_ << 1;
                              if((_loc2_ = int(_loc16_ + 1)) <= _loc13_)
                              {
                                 _loc2_ = _loc13_;
                              }
                              _loc15_ = _loc2_ << 2;
                              _loc9_ = li32(_loc8_ - 48);
                              if(_loc14_ == 8)
                              {
                                 _loc4_ -= 16;
                                 si32(_loc15_,_loc4_);
                                 ESP = _loc4_;
                                 F_malloc();
                                 _loc15_ = -1;
                                 _loc4_ += 16;
                                 if((_loc11_ = int(eax)) != 0)
                                 {
                                    _loc10_ = _loc14_ << 2;
                                    _loc1_ = ram;
                                    _loc1_.position = _loc11_;
                                    _loc1_.writeBytes(_loc1_,_loc9_,_loc10_);
                                    addr3631:
                                    if(_loc14_ < _loc2_)
                                    {
                                       _loc4_ -= 16;
                                       si32(0,_loc4_ + 4);
                                       si32(_loc10_ = int(_loc11_ + (_loc14_ << 2)),_loc4_);
                                       if(_loc13_ <= _loc16_)
                                       {
                                          _loc13_ = _loc16_;
                                       }
                                       si32(_loc10_ = (_loc10_ = int(_loc13_ - _loc14_)) << 2,_loc4_ + 8);
                                       ESP = _loc4_;
                                       Fmemset();
                                       _loc4_ += 16;
                                    }
                                    si32(_loc11_,_loc8_ - 48);
                                    si32(_loc2_,_loc8_ - 12);
                                    _loc16_ = li32(_loc8_ - 4);
                                 }
                                 else
                                 {
                                    §§goto(addr5790);
                                 }
                              }
                              else
                              {
                                 _loc4_ -= 16;
                                 si32(_loc15_,_loc4_ + 4);
                                 si32(_loc9_,_loc4_);
                                 ESP = _loc4_;
                                 F_realloc();
                                 _loc15_ = -1;
                                 _loc4_ += 16;
                                 if((_loc11_ = int(eax)) != 0)
                                 {
                                    §§goto(addr3631);
                                 }
                                 else
                                 {
                                    §§goto(addr5790);
                                 }
                              }
                              §§goto(addr5790);
                           }
                           _loc10_ = li32(_loc8_ - 8);
                           if(_loc16_ > _loc10_)
                           {
                              si32(_loc16_,_loc8_ - 8);
                           }
                           _loc10_ = _loc16_ << 2;
                           _loc10_ = int((_loc6_ = li32(_loc8_ - 48)) + _loc10_);
                           si32(7,_loc10_);
                           si32(_loc16_ += 1,_loc8_ - 4);
                        }
                        else if((_loc10_ = _loc14_ & 64) != 0)
                        {
                           _loc14_ = li32(_loc8_ - 12);
                           if(_loc16_ >= _loc14_)
                           {
                              _loc13_ = _loc14_ << 1;
                              if((_loc2_ = int(_loc16_ + 1)) <= _loc13_)
                              {
                                 _loc2_ = _loc13_;
                              }
                              _loc15_ = _loc2_ << 2;
                              _loc9_ = li32(_loc8_ - 48);
                              if(_loc14_ == 8)
                              {
                                 _loc4_ -= 16;
                                 si32(_loc15_,_loc4_);
                                 ESP = _loc4_;
                                 F_malloc();
                                 _loc15_ = -1;
                                 _loc4_ += 16;
                                 if((_loc11_ = int(eax)) != 0)
                                 {
                                    _loc10_ = _loc14_ << 2;
                                    _loc1_ = ram;
                                    _loc1_.position = _loc11_;
                                    _loc1_.writeBytes(_loc1_,_loc9_,_loc10_);
                                    addr3873:
                                    if(_loc14_ < _loc2_)
                                    {
                                       _loc4_ -= 16;
                                       si32(0,_loc4_ + 4);
                                       si32(_loc10_ = int(_loc11_ + (_loc14_ << 2)),_loc4_);
                                       if(_loc13_ <= _loc16_)
                                       {
                                          _loc13_ = _loc16_;
                                       }
                                       si32(_loc10_ = (_loc10_ = int(_loc13_ - _loc14_)) << 2,_loc4_ + 8);
                                       ESP = _loc4_;
                                       Fmemset();
                                       _loc4_ += 16;
                                    }
                                    si32(_loc11_,_loc8_ - 48);
                                    si32(_loc2_,_loc8_ - 12);
                                    _loc16_ = li32(_loc8_ - 4);
                                 }
                                 else
                                 {
                                    §§goto(addr5790);
                                 }
                              }
                              else
                              {
                                 _loc4_ -= 16;
                                 si32(_loc15_,_loc4_ + 4);
                                 si32(_loc9_,_loc4_);
                                 ESP = _loc4_;
                                 F_realloc();
                                 _loc15_ = -1;
                                 _loc4_ += 16;
                                 if((_loc11_ = int(eax)) != 0)
                                 {
                                    §§goto(addr3873);
                                 }
                                 else
                                 {
                                    §§goto(addr5790);
                                 }
                              }
                              §§goto(addr5790);
                           }
                           _loc10_ = li32(_loc8_ - 8);
                           if(_loc16_ > _loc10_)
                           {
                              si32(_loc16_,_loc8_ - 8);
                           }
                           _loc6_ = _loc16_ << 2;
                           _loc10_ = int((_loc10_ = li32(_loc8_ - 48)) + _loc6_);
                           si32(1,_loc10_);
                           si32(_loc16_ += 1,_loc8_ - 4);
                        }
                        else
                        {
                           _loc14_ = li32(_loc8_ - 12);
                           if((_loc14_ & 8192) != 0)
                           {
                              if(_loc16_ >= _loc14_)
                              {
                                 _loc13_ = _loc14_ << 1;
                                 if((_loc2_ = int(_loc16_ + 1)) <= _loc13_)
                                 {
                                    _loc2_ = _loc13_;
                                 }
                                 _loc15_ = _loc2_ << 2;
                                 _loc9_ = li32(_loc8_ - 48);
                                 if(_loc14_ == 8)
                                 {
                                    _loc4_ -= 16;
                                    si32(_loc15_,_loc4_);
                                    ESP = _loc4_;
                                    F_malloc();
                                    _loc15_ = -1;
                                    _loc4_ += 16;
                                    if((_loc11_ = int(eax)) != 0)
                                    {
                                       _loc10_ = _loc14_ << 2;
                                       _loc1_ = ram;
                                       _loc1_.position = _loc11_;
                                       _loc1_.writeBytes(_loc1_,_loc9_,_loc10_);
                                       addr4113:
                                       if(_loc14_ < _loc2_)
                                       {
                                          _loc4_ -= 16;
                                          si32(0,_loc4_ + 4);
                                          si32(_loc10_ = int(_loc11_ + (_loc14_ << 2)),_loc4_);
                                          if(_loc13_ <= _loc16_)
                                          {
                                             _loc13_ = _loc16_;
                                          }
                                          si32(_loc10_ = (_loc10_ = int(_loc13_ - _loc14_)) << 2,_loc4_ + 8);
                                          ESP = _loc4_;
                                          Fmemset();
                                          _loc4_ += 16;
                                       }
                                       si32(_loc11_,_loc8_ - 48);
                                       si32(_loc2_,_loc8_ - 12);
                                       _loc16_ = li32(_loc8_ - 4);
                                    }
                                    else
                                    {
                                       §§goto(addr5790);
                                    }
                                 }
                                 else
                                 {
                                    _loc4_ -= 16;
                                    si32(_loc15_,_loc4_ + 4);
                                    si32(_loc9_,_loc4_);
                                    ESP = _loc4_;
                                    F_realloc();
                                    _loc15_ = -1;
                                    _loc4_ += 16;
                                    if((_loc11_ = int(eax)) != 0)
                                    {
                                       §§goto(addr4113);
                                    }
                                    else
                                    {
                                       §§goto(addr5790);
                                    }
                                 }
                                 §§goto(addr5790);
                              }
                              _loc10_ = li32(_loc8_ - 8);
                              if(_loc16_ > _loc10_)
                              {
                                 si32(_loc16_,_loc8_ - 8);
                              }
                              _loc10_ = _loc16_ << 2;
                              _loc10_ = int((_loc6_ = li32(_loc8_ - 48)) + _loc10_);
                              si32(21,_loc10_);
                              si32(_loc16_ += 1,_loc8_ - 4);
                           }
                           else
                           {
                              if(_loc16_ >= _loc14_)
                              {
                                 _loc13_ = _loc14_ << 1;
                                 if((_loc2_ = int(_loc16_ + 1)) <= _loc13_)
                                 {
                                    _loc2_ = _loc13_;
                                 }
                                 _loc15_ = _loc2_ << 2;
                                 _loc16_ = li32(_loc8_ - 48);
                                 if(_loc14_ == 8)
                                 {
                                    _loc4_ -= 16;
                                    si32(_loc15_,_loc4_);
                                    ESP = _loc4_;
                                    F_malloc();
                                    _loc15_ = -1;
                                    _loc4_ += 16;
                                    if((_loc11_ = int(eax)) != 0)
                                    {
                                       _loc10_ = _loc14_ << 2;
                                       _loc1_ = ram;
                                       _loc1_.position = _loc11_;
                                       _loc1_.writeBytes(_loc1_,_loc16_,_loc10_);
                                       addr4342:
                                       if(_loc14_ < _loc2_)
                                       {
                                          _loc4_ -= 16;
                                          si32(0,_loc4_ + 4);
                                          si32(_loc10_ = int(_loc11_ + (_loc14_ << 2)),_loc4_);
                                          if(_loc13_ <= _loc9_)
                                          {
                                             _loc13_ = _loc9_;
                                          }
                                          si32(_loc10_ = (_loc10_ = int(_loc13_ - _loc14_)) << 2,_loc4_ + 8);
                                          ESP = _loc4_;
                                          Fmemset();
                                          _loc4_ += 16;
                                       }
                                       si32(_loc11_,_loc8_ - 48);
                                       si32(_loc2_,_loc8_ - 12);
                                       _loc16_ = li32(_loc8_ - 4);
                                    }
                                    else
                                    {
                                       §§goto(addr5790);
                                    }
                                 }
                                 else
                                 {
                                    _loc4_ -= 16;
                                    si32(_loc15_,_loc4_ + 4);
                                    si32(_loc16_,_loc4_);
                                    ESP = _loc4_;
                                    F_realloc();
                                    _loc15_ = -1;
                                    _loc4_ += 16;
                                    if((_loc11_ = int(eax)) != 0)
                                    {
                                       §§goto(addr4342);
                                    }
                                    else
                                    {
                                       §§goto(addr5790);
                                    }
                                 }
                                 §§goto(addr5790);
                              }
                              _loc10_ = li32(_loc8_ - 8);
                              if(_loc16_ > _loc10_)
                              {
                                 si32(_loc16_,_loc8_ - 8);
                              }
                              _loc10_ = _loc16_ << 2;
                              _loc10_ = int((_loc6_ = li32(_loc8_ - 48)) + _loc10_);
                              si32(4,_loc10_);
                              si32(_loc16_ += 1,_loc8_ - 4);
                           }
                        }
                        continue loop0;
                     }
                     if(_loc15_ != 111)
                     {
                        §§goto(addr5754);
                     }
                     else
                     {
                        §§goto(addr4464);
                     }
                  }
                  else
                  {
                     if(_loc15_ == 112)
                     {
                        _loc14_ = li32(_loc8_ - 12);
                        if(_loc16_ >= _loc14_)
                        {
                           _loc13_ = _loc14_ << 1;
                           if((_loc16_ = int(_loc16_ + 1)) <= _loc13_)
                           {
                              _loc16_ = _loc13_;
                           }
                           _loc15_ = _loc16_ << 2;
                           _loc2_ = li32(_loc8_ - 48);
                           if(_loc14_ == 8)
                           {
                              _loc4_ -= 16;
                              si32(_loc15_,_loc4_);
                              ESP = _loc4_;
                              F_malloc();
                              _loc15_ = -1;
                              _loc4_ += 16;
                              if((_loc11_ = int(eax)) != 0)
                              {
                                 _loc10_ = _loc14_ << 2;
                                 _loc1_ = ram;
                                 _loc1_.position = _loc11_;
                                 _loc1_.writeBytes(_loc1_,_loc2_,_loc10_);
                                 addr4981:
                                 if(_loc14_ < _loc16_)
                                 {
                                    _loc4_ -= 16;
                                    si32(0,_loc4_ + 4);
                                    si32(_loc10_ = int(_loc11_ + (_loc14_ << 2)),_loc4_);
                                    if(_loc13_ <= _loc9_)
                                    {
                                       _loc13_ = _loc9_;
                                    }
                                    si32(_loc10_ = (_loc10_ = int(_loc13_ - _loc14_)) << 2,_loc4_ + 8);
                                    ESP = _loc4_;
                                    Fmemset();
                                    _loc4_ += 16;
                                 }
                                 si32(_loc11_,_loc8_ - 48);
                                 si32(_loc16_,_loc8_ - 12);
                                 _loc16_ = li32(_loc8_ - 4);
                              }
                              else
                              {
                                 §§goto(addr5790);
                              }
                           }
                           else
                           {
                              _loc4_ -= 16;
                              si32(_loc15_,_loc4_ + 4);
                              si32(_loc2_,_loc4_);
                              ESP = _loc4_;
                              F_realloc();
                              _loc15_ = -1;
                              _loc4_ += 16;
                              if((_loc11_ = int(eax)) != 0)
                              {
                                 §§goto(addr4981);
                              }
                              else
                              {
                                 §§goto(addr5790);
                              }
                           }
                           §§goto(addr5790);
                        }
                        _loc10_ = li32(_loc8_ - 8);
                        if(_loc16_ > _loc10_)
                        {
                           si32(_loc16_,_loc8_ - 8);
                        }
                        _loc10_ = _loc16_ << 2;
                        _loc10_ = int((_loc6_ = li32(_loc8_ - 48)) + _loc10_);
                        si32(19,_loc10_);
                        si32(_loc16_ += 1,_loc8_ - 4);
                        continue loop0;
                     }
                     if(_loc15_ == 113)
                     {
                        _loc14_ |= 32;
                        continue loop1;
                     }
                     §§goto(addr5754);
                  }
                  §§goto(addr5790);
               }
               else
               {
                  if(_loc15_ > 116)
                  {
                     if(_loc15_ != 117)
                     {
                        if(_loc15_ == 120)
                        {
                           break;
                        }
                        if(_loc15_ == 122)
                        {
                           _loc14_ |= 1024;
                           continue loop1;
                        }
                        §§goto(addr5754);
                     }
                     break;
                  }
                  if(_loc15_ != 115)
                  {
                     if(_loc15_ == 116)
                     {
                        _loc14_ |= 2048;
                        continue loop1;
                     }
                  }
                  else
                  {
                     §§goto(addr5103);
                  }
               }
               §§goto(addr5754);
            }
            _loc13_ = li32(_loc8_ - 12);
            if(_loc16_ >= _loc13_)
            {
               _loc9_ = _loc13_ << 1;
               _loc2_ = int(_loc16_ + 1);
               _loc16_ = _loc2_;
               if(_loc2_ <= _loc9_)
               {
                  _loc16_ = _loc9_;
               }
               _loc15_ = _loc16_ << 2;
               _loc11_ = li32(_loc8_ - 48);
               if(_loc13_ == 8)
               {
                  _loc4_ -= 16;
                  si32(_loc15_,_loc4_);
                  ESP = _loc4_;
                  F_malloc();
                  _loc15_ = -1;
                  _loc4_ += 16;
                  if((_loc12_ = int(eax)) != 0)
                  {
                     _loc10_ = _loc13_ << 2;
                     _loc1_ = ram;
                     _loc1_.position = _loc12_;
                     _loc1_.writeBytes(_loc1_,_loc11_,_loc10_);
                     addr5471:
                     if(_loc13_ < _loc16_)
                     {
                        _loc4_ -= 16;
                        si32(0,_loc4_ + 4);
                        si32(_loc10_ = int(_loc12_ + (_loc13_ << 2)),_loc4_);
                        if(_loc9_ <= _loc2_)
                        {
                           _loc9_ = _loc2_;
                        }
                        si32(_loc10_ = (_loc10_ = int(_loc9_ - _loc13_)) << 2,_loc4_ + 8);
                        ESP = _loc4_;
                        Fmemset();
                        _loc4_ += 16;
                     }
                     si32(_loc12_,_loc8_ - 48);
                     si32(_loc16_,_loc8_ - 12);
                     _loc16_ = li32(_loc8_ - 4);
                     addr5544:
                     _loc10_ = li32(_loc8_ - 8);
                     if(_loc16_ > _loc10_)
                     {
                        si32(_loc16_,_loc8_ - 8);
                     }
                     if((_loc10_ = _loc14_ & 4096) != 0)
                     {
                        si32(17,int((_loc6_ = li32(_loc8_ - 48)) + (_loc16_ << 2)));
                        si32(_loc16_ += 1,_loc8_ - 4);
                     }
                     else if((_loc10_ = _loc14_ & 1024) != 0)
                     {
                        si32(14,int((_loc10_ = li32(_loc8_ - 48)) + (_loc16_ << 2)));
                        si32(_loc16_ += 1,_loc8_ - 4);
                     }
                     else if((_loc10_ = _loc14_ & 2048) != 0)
                     {
                        si32(14,int((_loc10_ = li32(_loc8_ - 48)) + (_loc16_ << 2)));
                        si32(_loc16_ += 1,_loc8_ - 4);
                     }
                     else if((_loc10_ = _loc14_ & 32) != 0)
                     {
                        si32(9,int((_loc10_ = li32(_loc8_ - 48)) + (_loc16_ << 2)));
                        si32(_loc16_ += 1,_loc8_ - 4);
                     }
                     else
                     {
                        _loc15_ = li32(_loc8_ - 48);
                        if((_loc14_ & 16) != 0)
                        {
                           si32(6,int(_loc15_ + (_loc16_ << 2)));
                           si32(_loc16_ += 1,_loc8_ - 4);
                        }
                        else
                        {
                           si32(3,int(_loc15_ + (_loc16_ << 2)));
                           si32(_loc16_ += 1,_loc8_ - 4);
                        }
                     }
                     continue loop0;
                  }
               }
               else
               {
                  _loc4_ -= 16;
                  si32(_loc15_,_loc4_ + 4);
                  si32(_loc11_,_loc4_);
                  ESP = _loc4_;
                  F_realloc();
                  _loc15_ = -1;
                  _loc4_ += 16;
                  if((_loc12_ = int(eax)) != 0)
                  {
                     §§goto(addr5471);
                  }
               }
               §§goto(addr5790);
            }
            §§goto(addr5544);
         }
         _loc9_ = li32(_loc8_ - 12);
         if(_loc16_ >= _loc9_)
         {
            _loc13_ = _loc9_ << 1;
            _loc2_ = int(_loc16_ + 1);
            _loc11_ = _loc2_;
            if(_loc2_ <= _loc13_)
            {
               _loc11_ = _loc13_;
            }
            _loc15_ = _loc11_ << 2;
            _loc16_ = li32(_loc8_ - 48);
            if(_loc9_ == 8)
            {
               _loc4_ -= 16;
               si32(_loc15_,_loc4_);
               ESP = _loc4_;
               F_malloc();
               _loc15_ = -1;
               _loc4_ += 16;
               if((_loc12_ = int(eax)) != 0)
               {
                  _loc10_ = _loc9_ << 2;
                  _loc1_ = ram;
                  _loc1_.position = _loc12_;
                  _loc1_.writeBytes(_loc1_,_loc16_,_loc10_);
                  addr2008:
                  if(_loc9_ < _loc11_)
                  {
                     _loc4_ -= 16;
                     si32(0,_loc4_ + 4);
                     si32(_loc10_ = int(_loc12_ + (_loc9_ << 2)),_loc4_);
                     if(_loc13_ <= _loc2_)
                     {
                        _loc13_ = _loc2_;
                     }
                     si32(_loc10_ = (_loc10_ = int(_loc13_ - _loc9_)) << 2,_loc4_ + 8);
                     ESP = _loc4_;
                     Fmemset();
                     _loc4_ += 16;
                  }
                  si32(_loc12_,_loc8_ - 48);
                  si32(_loc11_,_loc8_ - 12);
                  _loc16_ = li32(_loc8_ - 4);
                  addr2081:
                  _loc10_ = li32(_loc8_ - 8);
                  if(_loc16_ > _loc10_)
                  {
                     si32(_loc16_,_loc8_ - 8);
                  }
                  if((_loc10_ = _loc14_ & 4096) != 0)
                  {
                     si32(16,int((_loc6_ = li32(_loc8_ - 48)) + (_loc16_ << 2)));
                     si32(_loc16_ += 1,_loc8_ - 4);
                  }
                  else if((_loc10_ = _loc14_ & 1024) != 0)
                  {
                     si32(13,int((_loc10_ = li32(_loc8_ - 48)) + (_loc16_ << 2)));
                     si32(_loc16_ += 1,_loc8_ - 4);
                  }
                  else if((_loc10_ = _loc14_ & 2048) != 0)
                  {
                     si32(11,int((_loc10_ = li32(_loc8_ - 48)) + (_loc16_ << 2)));
                     si32(_loc16_ += 1,_loc8_ - 4);
                  }
                  else if((_loc10_ = _loc14_ & 32) != 0)
                  {
                     si32(8,int((_loc10_ = li32(_loc8_ - 48)) + (_loc16_ << 2)));
                     si32(_loc16_ += 1,_loc8_ - 4);
                  }
                  else
                  {
                     _loc15_ = li32(_loc8_ - 48);
                     if((_loc14_ & 16) != 0)
                     {
                        si32(5,int(_loc15_ + (_loc16_ << 2)));
                        si32(_loc16_ += 1,_loc8_ - 4);
                     }
                     else
                     {
                        si32(2,int(_loc15_ + (_loc16_ << 2)));
                        si32(_loc16_ += 1,_loc8_ - 4);
                     }
                  }
                  continue;
               }
            }
            else
            {
               _loc4_ -= 16;
               si32(_loc15_,_loc4_ + 4);
               si32(_loc16_,_loc4_);
               ESP = _loc4_;
               F_realloc();
               _loc15_ = -1;
               _loc4_ += 16;
               if((_loc12_ = int(eax)) != 0)
               {
                  §§goto(addr2008);
               }
            }
            §§goto(addr5790);
         }
         §§goto(addr2081);
      }
      _loc4_ -= 16;
      si32(_loc19_,_loc4_ + 8);
      si32(_loc18_,_loc4_ + 4);
      si32(_loc5_,_loc4_);
      ESP = _loc4_;
      F_build_arg_table();
      _loc4_ += 16;
      _loc15_ = 0;
      addr5790:
      if((_loc18_ = li32(_loc8_ - 48)) != _loc20_)
      {
         if(_loc18_ != 0)
         {
            _loc4_ -= 16;
            si32(_loc18_,_loc4_);
            ESP = _loc4_;
            F_idalloc();
            _loc4_ += 16;
         }
      }
      _loc20_ = 1;
      if(_loc15_ == 0)
      {
         _loc20_ = 1;
         if(li32(_loc19_) != 0)
         {
            _loc20_ = 0;
         }
      }
      eax = _loc20_;
      ESP = _loc4_ = _loc8_;
   }
}
