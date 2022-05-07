package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme.ESP;
   import sample.libgme.eax;
   
   public function F_d_expr_primary() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc12_:int = 0;
      var _loc5_:* = 0;
      var _loc13_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:int = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc14_:* = 0;
      var _loc11_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = li32(_loc4_ = _loc2_);
      _loc13_ = li8(_loc14_ = li32(_loc3_ + 12));
      si32(_loc12_ = _loc14_ + 1,_loc3_ + 12);
      _loc11_ = 0;
      if(_loc13_ == 76)
      {
         if((_loc13_ = li8(_loc12_)) == 95)
         {
            si32(_loc13_ = int(_loc14_ + 2),_loc3_ + 12);
            var _loc10_:*;
            si32(_loc10_ = int(_loc14_ + 3),_loc3_ + 12);
            _loc11_ = 0;
            if(li8(_loc14_ + 2) == 90)
            {
               _loc2_ -= 16;
               si32(0,_loc2_ + 4);
               si32(_loc3_,_loc2_);
               ESP = _loc2_;
               F_d_encoding();
               _loc2_ += 16;
               _loc11_ = int(eax);
            }
            addr512:
            _loc13_ = li8(_loc10_ = li32(_loc3_ + 12));
            si32(_loc10_ += 1,_loc3_ + 12);
            if(_loc13_ != 69)
            {
               _loc11_ = 0;
            }
         }
         else
         {
            _loc2_ -= 16;
            si32(_loc3_,_loc2_);
            ESP = _loc2_;
            F_d_type();
            _loc11_ = 0;
            _loc2_ += 16;
            if((_loc12_ = eax) != 0)
            {
               if((_loc13_ = li32(_loc12_)) == 33)
               {
                  if((_loc13_ = li32((_loc11_ = li32(_loc12_ + 4)) + 16)) != 0)
                  {
                     si32(_loc13_ = int((_loc10_ = li32(_loc3_ + 48)) - li32(_loc11_ + 4)),_loc3_ + 48);
                  }
               }
               _loc13_ = li8(_loc9_ = li32(_loc3_ + 12));
               _loc14_ = 49;
               if(_loc13_ == 110)
               {
                  si32(_loc9_ += 1,_loc3_ + 12);
                  _loc14_ = 50;
               }
               _loc8_ = 1;
               while(true)
               {
                  _loc1_ = li8((_loc7_ = int(_loc9_ + _loc8_)) - 1);
                  _loc11_ = 0;
                  if(_loc1_ != 0)
                  {
                     if(_loc1_ != 69)
                     {
                        continue;
                     }
                     _loc5_ = li32(_loc3_ + 20);
                     _loc7_ = _loc11_ = 0;
                     if(_loc5_ < li32(_loc3_ + 24))
                     {
                        _loc1_ = li32(_loc3_ + 16);
                        si32(_loc13_ = int(_loc5_ + 1),_loc3_ + 20);
                        _loc6_ = _loc5_ * 12;
                        _loc5_ = int(_loc1_ + _loc6_);
                        _loc7_ = 0;
                        if(_loc5_ != 0)
                        {
                           if(_loc9_ != 0)
                           {
                              if(_loc8_ != 1)
                              {
                                 _loc10_ = int(_loc1_ + _loc6_);
                                 si32(0,_loc10_);
                                 si32(_loc9_,_loc10_ + 4);
                                 si32(int(_loc8_ + -1),_loc10_ + 8);
                                 _loc7_ = _loc5_;
                              }
                           }
                        }
                     }
                     if(_loc14_ <= 33)
                     {
                        if((uint(_loc8_ = int(_loc14_ + -1))) <= 31)
                        {
                           if((_loc13_ = (_loc8_ = 1 << _loc8_) & -267387520) == 0)
                           {
                              if((_loc13_ = _loc8_ & 134218255) == 0)
                              {
                                 if((_loc13_ = _loc8_ & 132120576) != 0)
                                 {
                                    addr444:
                                    _loc9_ = li32(_loc3_ + 20);
                                    _loc13_ = li32(_loc3_ + 24);
                                    _loc11_ = 0;
                                    if(_loc9_ < _loc13_)
                                    {
                                       _loc8_ = li32(_loc3_ + 16);
                                       si32(_loc13_ = int(_loc9_ + 1),_loc3_ + 20);
                                       _loc9_ *= 12;
                                       _loc1_ = int(_loc8_ + _loc9_);
                                       _loc11_ = 0;
                                       if(_loc1_ != 0)
                                       {
                                          _loc13_ = int(_loc8_ + _loc9_);
                                          si32(_loc14_,_loc13_);
                                          si32(_loc12_,_loc13_ + 4);
                                          si32(_loc7_,_loc13_ + 8);
                                          _loc11_ = _loc1_;
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 addr420:
                                 _loc11_ = 0;
                                 if(_loc12_ != 0)
                                 {
                                    if(_loc7_ != 0)
                                    {
                                       §§goto(addr444);
                                    }
                                 }
                              }
                           }
                           else
                           {
                              addr431:
                              _loc11_ = 0;
                              if(_loc12_ != 0)
                              {
                                 §§goto(addr444);
                              }
                           }
                        }
                     }
                     else if(_loc14_ <= 36)
                     {
                        if(_loc14_ != 34)
                        {
                           if(_loc14_ != 35)
                           {
                              if(_loc14_ == 36)
                              {
                                 _loc11_ = 0;
                                 if(_loc7_ != 0)
                                 {
                                 }
                              }
                              §§goto(addr512);
                           }
                           §§goto(addr444);
                        }
                        else
                        {
                           §§goto(addr431);
                        }
                     }
                     else if((uint(_loc8_ = int(_loc14_ + -37))) <= 13)
                     {
                        if((_loc13_ = (_loc8_ = 1 << _loc8_) & 16321) == 0)
                        {
                           if((_loc13_ = _loc8_ & 38) != 0)
                           {
                              §§goto(addr431);
                           }
                        }
                        else
                        {
                           §§goto(addr420);
                        }
                     }
                     §§goto(addr512);
                  }
                  break;
               }
            }
         }
      }
      eax = _loc11_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
