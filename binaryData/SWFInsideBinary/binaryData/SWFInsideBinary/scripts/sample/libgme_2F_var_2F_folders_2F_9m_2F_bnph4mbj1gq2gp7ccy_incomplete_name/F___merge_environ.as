package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme.ESP;
   import sample.libgme.F___error;
   import sample.libgme.F__write;
   import sample.libgme.___progname;
   import sample.libgme._environ;
   import sample.libgme.eax;
   
   public function F___merge_environ() : void
   {
      var _loc3_:* = 0;
      var _loc4_:int = 0;
      var _loc7_:* = 0;
      var _loc1_:* = 0;
      var _loc9_:* = 0;
      var _loc10_:* = 0;
      var _loc11_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = 0;
      if((_loc11_ = li32(_intEnviron)) != 0)
      {
         _loc10_ = li32(_envActive);
         if((_loc9_ = li32(_environ)) == _loc11_)
         {
            _loc1_ = 0;
            if(_loc10_ >= 1)
            {
               _loc1_ = 0;
               if(li32(_loc9_) != 0)
               {
                  §§goto(addr918);
               }
               else
               {
                  addr61:
                  si32(0,_origEnviron);
                  _loc2_ -= 16;
                  si32(0,_loc2_);
                  ESP = _loc2_;
                  F___clean_env();
                  _loc2_ += 16;
                  _loc9_ = li32(_environ);
               }
            }
            §§goto(addr918);
         }
         else if(_loc10_ >= 1)
         {
            §§goto(addr61);
         }
         si32(_loc9_,_origEnviron);
         _loc1_ = 0;
         if(_loc9_ != 0)
         {
            loop0:
            while(true)
            {
               _loc10_ = li32(_loc9_);
               _loc1_ = 0;
               if(_loc10_ != 0)
               {
                  while((_loc11_ = li8(_loc7_ = int(_loc10_ + _loc1_))) != 0)
                  {
                     if(_loc11_ != 61)
                     {
                        _loc1_ += 1;
                        continue;
                     }
                     if(_loc7_ == 0)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  _loc1_ = _loc10_ & -4;
                  var _loc6_:*;
                  var _loc8_:* = int((_loc6_ = li32(_loc1_)) + -16843009);
                  if((_loc8_ = (_loc6_ = (_loc6_ &= -2139062144) ^ -2139062144) & _loc8_) != 0)
                  {
                     _loc11_ = int(_loc1_ + 4);
                     _loc9_ = 0;
                     while(true)
                     {
                        if((uint(_loc7_ = int(_loc10_ + _loc9_))) < uint(_loc11_))
                        {
                           continue;
                        }
                     }
                     addr300:
                     _loc1_ = li32(___progname);
                     _loc8_ = int((_loc6_ = li32(_loc7_ = _loc1_ & -4)) + -16843009);
                     if((_loc8_ = (_loc6_ = (_loc6_ &= -2139062144) ^ -2139062144) & _loc8_) != 0)
                     {
                        _loc5_ = int(_loc7_ + 4);
                        _loc11_ = 0;
                        while(true)
                        {
                           if((uint(_loc4_ = _loc1_ + _loc11_)) < uint(_loc5_))
                           {
                              continue;
                           }
                        }
                        addr479:
                        _loc2_ -= 16;
                        si32(_loc11_,_loc2_ + 8);
                        si32(_loc1_,_loc2_ + 4);
                        si32(2,_loc2_);
                        ESP = _loc2_;
                        F__write();
                        _loc2_ += 16;
                        _loc2_ -= 16;
                        si32(2,_loc2_ + 8);
                        si32(_progSep_2E_2358,_loc2_ + 4);
                        si32(2,_loc2_);
                        ESP = _loc2_;
                        F__write();
                        _loc2_ += 16;
                        _loc8_ = int((_loc6_ = li32(_loc11_ = _CorruptEnvValueMsg & -4)) + -16843009);
                        _loc8_ = (_loc6_ = (_loc6_ &= -2139062144) ^ -2139062144) & _loc8_;
                        _loc7_ = int(_loc11_ + 4);
                        _loc1_ = 0;
                        if(_loc8_ != 0)
                        {
                           do
                           {
                              _loc8_ = int(_CorruptEnvValueMsg + _loc1_);
                              _loc7_ = int(_loc11_ + 4);
                              if(uint(_loc8_) < uint(_loc7_))
                              {
                                 continue;
                              }
                           }
                           while(_loc7_ = int(_loc11_ + 4), _loc5_ = int(_CorruptEnvValueMsg), if(uint(_CorruptEnvValueMsg) <= uint(_loc7_))
                           {
                              _loc5_ = _loc7_;
                           }, _loc8_ = _loc5_ ^ -1, if((uint(_loc7_ = int(_CorruptEnvValueMsg + _loc8_))) <= 4294967256)
                           {
                              _loc7_ = -40;
                           }, _loc7_ ^= -1, _loc1_ += 1, _loc1_ != 40);
                           
                           addr744:
                           _loc2_ -= 16;
                           si32(_loc7_,_loc2_ + 8);
                           si32(_CorruptEnvValueMsg,_loc2_ + 4);
                           si32(2,_loc2_);
                           ESP = _loc2_;
                           F__write();
                           _loc2_ += 16;
                           _loc2_ -= 16;
                           si32(_loc9_,_loc2_ + 8);
                           si32(_loc10_,_loc2_ + 4);
                           si32(2,_loc2_);
                           ESP = _loc2_;
                           F__write();
                           _loc2_ += 16;
                           _loc2_ -= 16;
                           si32(1,_loc2_ + 8);
                           si32(_nl_2E_2357,_loc2_ + 4);
                           si32(2,_loc2_);
                           ESP = _loc2_;
                           F__write();
                           _loc2_ += 16;
                           ESP = _loc2_;
                           F___error();
                           _loc8_ = int(eax);
                           si32(14,_loc8_);
                           _loc1_ = -1;
                           break;
                        }
                        while(true)
                        {
                           _loc1_ = li32(_loc7_);
                           _loc8_ = int(_loc1_ + -16843009);
                           if((_loc8_ = (_loc6_ = (_loc6_ = _loc1_ & -2139062144) ^ -2139062144) & _loc8_) == 0)
                           {
                              continue;
                           }
                           if((_loc8_ = _loc1_ & 255) == 0)
                           {
                              _loc7_ -= _CorruptEnvValueMsg;
                           }
                           else if((_loc8_ = li8(_loc7_ + 1)) == 0)
                           {
                              _loc7_ += int(1 - _CorruptEnvValueMsg);
                           }
                           else if((_loc8_ = li8(_loc7_ + 2)) == 0)
                           {
                              _loc7_ += int(2 - _CorruptEnvValueMsg);
                           }
                           else
                           {
                              if((_loc8_ = li8(_loc7_ + 3)) != 0)
                              {
                                 continue;
                              }
                              _loc7_ += int(3 - _CorruptEnvValueMsg);
                           }
                           §§goto(addr744);
                        }
                     }
                     _loc11_ = int(_loc7_ + 4);
                     while(true)
                     {
                        _loc8_ = int((_loc7_ = li32(_loc11_)) + -16843009);
                        if((_loc8_ = (_loc6_ = (_loc6_ = _loc7_ & -2139062144) ^ -2139062144) & _loc8_) == 0)
                        {
                           continue;
                        }
                        if((_loc8_ = _loc7_ & 255) == 0)
                        {
                           _loc11_ -= _loc1_;
                        }
                        else if((_loc8_ = li8(_loc11_ + 1)) == 0)
                        {
                           _loc11_ = int((_loc8_ = int(1 - _loc1_)) + _loc11_);
                        }
                        else if((_loc8_ = li8(_loc11_ + 2)) == 0)
                        {
                           _loc11_ = int((_loc8_ = int(2 - _loc1_)) + _loc11_);
                        }
                        else
                        {
                           if((_loc8_ = li8(_loc11_ + 3)) != 0)
                           {
                              continue;
                           }
                           _loc11_ = int((_loc8_ = int(3 - _loc1_)) + _loc11_);
                        }
                        §§goto(addr479);
                     }
                  }
                  _loc9_ = int(_loc1_ + 4);
                  while(true)
                  {
                     _loc1_ = li32(_loc9_);
                     _loc8_ = int(_loc1_ + -16843009);
                     if((_loc8_ = (_loc6_ = (_loc6_ = _loc1_ & -2139062144) ^ -2139062144) & _loc8_) == 0)
                     {
                        continue;
                     }
                     if((_loc8_ = _loc1_ & 255) == 0)
                     {
                        _loc9_ -= _loc10_;
                     }
                     else if((_loc8_ = li8(_loc9_ + 1)) == 0)
                     {
                        _loc9_ = int((_loc8_ = int(1 - _loc10_)) + _loc9_);
                     }
                     else if((_loc8_ = li8(_loc9_ + 2)) == 0)
                     {
                        _loc9_ = int((_loc8_ = int(2 - _loc10_)) + _loc9_);
                     }
                     else
                     {
                        if((_loc8_ = li8(_loc9_ + 3)) != 0)
                        {
                           continue;
                        }
                        _loc9_ = int((_loc8_ = int(3 - _loc10_)) + _loc9_);
                     }
                     §§goto(addr300);
                  }
               }
               break;
            }
         }
      }
      addr918:
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
