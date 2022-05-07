package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme.ESP;
   import sample.libgme.F___error;
   import sample.libgme.Fmemcpy;
   import sample.libgme.___mb_cur_max;
   import sample.libgme.eax;
   
   public function F__UTF8_wcsnrtombs() : void
   {
      var _loc5_:* = 0;
      var _loc10_:* = 0;
      var _loc1_:* = 0;
      var _loc11_:* = 0;
      var _loc14_:* = 0;
      var _loc8_:int = 0;
      var _loc12_:* = 0;
      var _loc15_:* = 0;
      var _loc4_:* = 0;
      var _loc13_:* = 0;
      var _loc7_:int = 0;
      var _loc9_:* = 0;
      var _loc2_:int = 0;
      var _loc16_:int = 0;
      var _loc3_:* = int(ESP);
      _loc5_ = _loc3_;
      _loc3_ -= 16;
      var _loc17_:*;
      if((_loc17_ = li32((_loc4_ = li32(_loc5_ + 16)) + 4)) != 0)
      {
         ESP = _loc3_;
         F___error();
         si32(22,int(eax));
         _loc16_ = -1;
      }
      else
      {
         _loc15_ = li32(_loc5_ + 12);
         _loc14_ = li32(_loc5_ + 8);
         _loc13_ = li32(_loc5_ + 4);
         _loc12_ = li32(_loc5_);
         _loc11_ = li32(_loc13_);
         _loc16_ = 0;
         if(_loc12_ != 0)
         {
            while(_loc15_ != 0)
            {
               if(_loc14_ != 0)
               {
                  if((uint(_loc10_ = li32(_loc11_))) <= 127)
                  {
                     si8(_loc10_,_loc12_);
                     _loc1_ = 1;
                  }
                  else
                  {
                     _loc1_ = li32(_loc4_ + 4);
                     if((uint(_loc17_ = li32(___mb_cur_max))) < uint(_loc15_))
                     {
                        if(_loc1_ != 0)
                        {
                           ESP = _loc3_;
                           F___error();
                           si32(22,int(eax));
                           §§goto(addr437);
                        }
                        _loc1_ = 1;
                        if(_loc12_ != 0)
                        {
                           if(uint(_loc10_) <= 127)
                           {
                              si8(_loc10_,_loc12_);
                              _loc1_ = 1;
                           }
                           else
                           {
                              _loc1_ = 2;
                              _loc7_ = 192;
                              if(uint(_loc10_) >= 2048)
                              {
                                 _loc1_ = 3;
                                 _loc7_ = 224;
                                 if(uint(_loc10_) >= 65536)
                                 {
                                    _loc1_ = 4;
                                    _loc7_ = 240;
                                    if(uint(_loc10_) >= 2097152)
                                    {
                                       _loc1_ = 5;
                                       _loc7_ = 248;
                                       if(uint(_loc10_) >= 67108864)
                                       {
                                          _loc1_ = 6;
                                          _loc7_ = 252;
                                          if(_loc10_ <= -1)
                                          {
                                             ESP = _loc3_;
                                             F___error();
                                             si32(86,int(eax));
                                          }
                                          §§goto(addr437);
                                       }
                                    }
                                 }
                              }
                              _loc8_ = 1 - _loc1_;
                              _loc9_ = _loc10_;
                              do
                              {
                                 _loc17_ = int(_loc12_ - _loc8_);
                                 var _loc6_:*;
                                 si8(_loc6_ = (_loc6_ = _loc10_ & 63) | 128,_loc17_);
                                 _loc8_ += 1;
                                 _loc9_ = _loc10_ = _loc9_ >> 6;
                              }
                              while(_loc8_ != 0);
                              
                              si8(_loc17_ = _loc10_ | _loc7_,_loc12_);
                           }
                        }
                     }
                     else if(_loc1_ != 0)
                     {
                        ESP = _loc3_;
                        F___error();
                        si32(22,int(eax));
                        §§goto(addr567);
                     }
                     else
                     {
                        _loc1_ = 2;
                        _loc2_ = 192;
                        if(uint(_loc10_) >= 2048)
                        {
                           _loc1_ = 3;
                           _loc2_ = 224;
                           if(uint(_loc10_) >= 65536)
                           {
                              _loc1_ = 4;
                              _loc2_ = 240;
                              if(uint(_loc10_) >= 2097152)
                              {
                                 _loc1_ = 5;
                                 _loc2_ = 248;
                                 if(uint(_loc10_) >= 67108864)
                                 {
                                    _loc1_ = 6;
                                    _loc2_ = 252;
                                    if(_loc10_ <= -1)
                                    {
                                       ESP = _loc3_;
                                       F___error();
                                       si32(86,int(eax));
                                       addr567:
                                       si32(_loc11_,_loc13_);
                                       _loc16_ = -1;
                                    }
                                    §§goto(addr437);
                                 }
                              }
                           }
                        }
                        _loc7_ = 1 - _loc1_;
                        _loc9_ = _loc10_;
                        do
                        {
                           _loc17_ = int((_loc8_ = _loc5_ - 6) - _loc7_);
                           si8(_loc6_ = (_loc6_ = _loc10_ & 63) | 128,_loc17_);
                           _loc7_ += 1;
                           _loc9_ = _loc10_ = _loc9_ >> 6;
                        }
                        while(_loc7_ != 0);
                        
                        si8(_loc17_ = _loc10_ | _loc2_,_loc5_ - 6);
                        if(uint(_loc1_) > uint(_loc15_))
                        {
                           break;
                        }
                        _loc3_ -= 16;
                        si32(_loc1_,_loc3_ + 8);
                        si32(_loc8_,_loc3_ + 4);
                        si32(_loc12_,_loc3_);
                        ESP = _loc3_;
                        Fmemcpy();
                        _loc3_ += 16;
                     }
                     §§goto(addr437);
                  }
                  if((_loc17_ = li32(_loc11_)) != 0)
                  {
                     _loc16_ = _loc1_ + _loc16_;
                     _loc15_ -= _loc1_;
                     _loc12_ += _loc1_;
                     _loc11_ += 4;
                     _loc14_ += -1;
                     continue;
                  }
                  si32(0,_loc13_);
                  _loc16_ = (_loc17_ = int(_loc16_ + _loc1_)) + -1;
                  §§goto(addr437);
               }
               break;
            }
            si32(_loc11_,_loc13_);
         }
         else
         {
            while(_loc14_ != 0)
            {
               _loc10_ = li32(_loc11_);
               _loc15_ = 1;
               if(uint(_loc10_) >= 128)
               {
                  _loc15_ = 2;
                  _loc12_ = 192;
                  if(uint(_loc10_) >= 2048)
                  {
                     _loc15_ = 3;
                     _loc12_ = 224;
                     if(uint(_loc10_) >= 65536)
                     {
                        _loc15_ = 4;
                        _loc12_ = 240;
                        if(uint(_loc10_) >= 2097152)
                        {
                           _loc15_ = 5;
                           _loc12_ = 248;
                           if(uint(_loc10_) >= 67108864)
                           {
                              _loc15_ = 6;
                              _loc12_ = 252;
                              if(_loc10_ <= -1)
                              {
                                 ESP = _loc3_;
                                 F___error();
                                 si32(86,int(eax));
                                 _loc16_ = -1;
                                 break;
                              }
                           }
                        }
                     }
                  }
                  _loc4_ = int(1 - _loc15_);
                  _loc1_ = _loc10_;
                  _loc13_ = _loc10_;
                  do
                  {
                     _loc17_ = int((_loc17_ = int(_loc5_ - 6)) - _loc4_);
                     si8(_loc6_ = (_loc6_ = _loc1_ & 63) | 128,_loc17_);
                     _loc4_ += 1;
                     _loc1_ = _loc13_ >> 6;
                     _loc13_ = _loc1_;
                  }
                  while(_loc4_ != 0);
                  
                  si8(_loc17_ = _loc1_ | _loc12_,_loc5_ - 6);
               }
               if(_loc10_ == 0)
               {
                  _loc16_ = (_loc17_ = int(_loc16_ + _loc15_)) + -1;
                  break;
               }
               _loc16_ = _loc15_ + _loc16_;
               _loc11_ += 4;
               _loc14_ += -1;
            }
         }
      }
      addr437:
      si32(_loc11_,_loc13_);
      _loc16_ = -1;
      eax = _loc16_;
      _loc3_ = _loc5_;
      ESP = _loc3_;
   }
}
