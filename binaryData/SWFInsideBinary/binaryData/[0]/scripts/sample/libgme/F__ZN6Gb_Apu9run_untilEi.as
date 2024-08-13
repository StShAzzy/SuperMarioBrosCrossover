package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2139;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str5142;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN6Gb_Apu9run_untilEiE8__func__;
   
   public function F__ZN6Gb_Apu9run_untilEi() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc15_:* = 0;
      var _loc16_:* = 0;
      var _loc12_:int = 0;
      var _loc13_:int = 0;
      var _loc14_:int = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc10_:* = 0;
      var _loc11_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc4_ = _loc2_;
      _loc3_ = li32(_loc4_);
      _loc16_ = li32(_loc3_ + 20);
      _loc15_ = li32(_loc4_ + 4);
      if(_loc16_ > _loc15_)
      {
         _loc2_ -= 16;
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str5142,_loc2_ + 12);
         si32(131,_loc2_ + 8);
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2139,_loc2_ + 4);
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN6Gb_Apu9run_untilEiE8__func__,_loc2_);
         ESP = _loc2_;
         F___assert();
         _loc2_ += 16;
      }
      if(_loc16_ != _loc15_)
      {
         _loc14_ = _loc3_ + 268;
         _loc13_ = _loc3_ + 180;
         _loc12_ = _loc3_ + 112;
         _loc16_ = _loc3_ + 44;
         while(true)
         {
            _loc11_ = li32(_loc3_ + 16);
            _loc10_ = _loc15_;
            if(_loc11_ <= _loc15_)
            {
               _loc10_ = _loc11_;
            }
            _loc11_ = 0;
            while(true)
            {
               var _loc9_:* = _loc11_ << 2;
               _loc9_ = _loc3_ + _loc9_;
               _loc1_ = li32(_loc9_);
               _loc5_ = li32(_loc1_ + 16);
               if(_loc5_ != 0)
               {
                  si32(1,_loc5_ + 40);
                  _loc5_ = 0;
                  if(li32(_loc1_ + 44) != 0)
                  {
                     _loc5_ = 0;
                     if(li32(_loc1_ + 36) != 0)
                     {
                        _loc9_ = li32(_loc1_ + 24);
                        if((_loc9_ = (_loc9_ = li8(_loc9_ + 4)) & 0x40) != 0)
                        {
                           _loc5_ = 0;
                           if(li32(_loc1_ + 40) != 0)
                           {
                           }
                           addr199:
                           if(_loc11_ <= 1)
                           {
                              if(_loc11_ != 0)
                              {
                                 if(_loc11_ != 1)
                                 {
                                    addr384:
                                    _loc11_ += 1;
                                    if(_loc11_ += 1 == 4)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 _loc2_ -= 16;
                                 si32(_loc5_,_loc2_ + 12);
                                 si32(_loc10_,_loc2_ + 8);
                                 si32(li32(_loc3_ + 20),_loc2_ + 4);
                                 si32(_loc12_,_loc2_);
                                 ESP = _loc2_;
                                 F__ZN9Gb_Square3runEiii();
                                 _loc2_ += 16;
                              }
                              else
                              {
                                 _loc2_ -= 16;
                                 si32(_loc5_,_loc2_ + 12);
                                 si32(_loc10_,_loc2_ + 8);
                                 si32(li32(_loc3_ + 20),_loc2_ + 4);
                                 si32(_loc16_,_loc2_);
                                 ESP = _loc2_;
                                 F__ZN9Gb_Square3runEiii();
                                 _loc2_ += 16;
                              }
                           }
                           else if(_loc11_ != 2)
                           {
                              if(_loc11_ == 3)
                              {
                                 _loc2_ -= 16;
                                 si32(_loc5_,_loc2_ + 12);
                                 si32(_loc10_,_loc2_ + 8);
                                 si32(li32(_loc3_ + 20),_loc2_ + 4);
                                 si32(_loc14_,_loc2_);
                                 ESP = _loc2_;
                                 F__ZN8Gb_Noise3runEiii();
                                 _loc2_ += 16;
                                 break;
                              }
                              §§goto(addr384);
                           }
                           else
                           {
                              _loc2_ -= 16;
                              si32(_loc5_,_loc2_ + 12);
                              si32(_loc10_,_loc2_ + 8);
                              si32(li32(_loc3_ + 20),_loc2_ + 4);
                              si32(_loc13_,_loc2_);
                              ESP = _loc2_;
                              F__ZN7Gb_Wave3runEiii();
                              _loc2_ += 16;
                           }
                           _loc11_ += 1;
                           continue;
                        }
                        _loc5_ = -1;
                     }
                  }
                  §§goto(addr199);
               }
               §§goto(addr384);
            }
            si32(_loc10_,_loc3_ + 20);
            if(_loc10_ == _loc15_)
            {
               break;
            }
            var _loc6_:*;
            _loc9_ = (_loc6_ = li32(_loc3_ + 24)) + li32(_loc3_ + 16);
            si32(_loc9_,_loc3_ + 16);
            _loc10_ = li32(_loc3_ + 68);
            if((_loc9_ = (_loc9_ = li8(_loc10_ + 4)) & 0x40) != 0)
            {
               _loc11_ = li32(_loc3_ + 84);
               if(_loc11_ != 0)
               {
                  _loc9_ = _loc11_ + -1;
                  si32(_loc9_,_loc3_ + 84);
               }
            }
            _loc5_ = li32(_loc3_ + 136);
            if((_loc9_ = (_loc9_ = li8(_loc5_ + 4)) & 0x40) != 0)
            {
               _loc11_ = li32(_loc3_ + 152);
               if(_loc11_ != 0)
               {
                  _loc9_ = _loc11_ + -1;
                  si32(_loc9_,_loc3_ + 152);
               }
            }
            _loc9_ = li32(_loc3_ + 204);
            if((_loc9_ = (_loc9_ = li8(_loc9_ + 4)) & 0x40) != 0)
            {
               _loc11_ = li32(_loc3_ + 220);
               if(_loc11_ != 0)
               {
                  _loc9_ = _loc11_ + -1;
                  si32(_loc9_,_loc3_ + 220);
               }
            }
            _loc1_ = li32(_loc3_ + 292);
            _loc9_ = li8(_loc1_ + 4);
            if((_loc9_ = _loc9_ & 0x40) != 0)
            {
               _loc11_ = li32(_loc3_ + 308);
               if(_loc11_ != 0)
               {
                  _loc9_ = _loc11_ + -1;
                  si32(_loc9_,_loc3_ + 308);
               }
            }
            _loc9_ = li32(_loc3_ + 40);
            si32(_loc9_ = (_loc11_ = _loc9_ + 1) & 3,_loc3_ + 40);
            if(_loc9_ == 0)
            {
               _loc7_ = li32(_loc3_ + 92);
               if(_loc7_ != 0)
               {
                  _loc9_ = _loc7_ + -1;
                  si32(_loc9_,_loc3_ + 92);
                  if(_loc9_ == 0)
                  {
                     _loc9_ = li8(_loc10_ + 2);
                     si32(_loc9_ = _loc9_ & 7,_loc3_ + 92);
                     _loc9_ = li32(_loc3_ + 80) + ((_loc6_ = (_loc6_ = li8(_loc10_ + 2)) >>> 2) & 2);
                     if((uint(_loc7_ = _loc9_ + -1)) <= 14)
                     {
                        si32(_loc7_,_loc3_ + 80);
                     }
                  }
               }
               _loc7_ = li32(_loc3_ + 160);
               if(_loc7_ != 0)
               {
                  _loc9_ = _loc7_ + -1;
                  si32(_loc9_,_loc3_ + 160);
                  if(_loc9_ == 0)
                  {
                     _loc9_ = li8(_loc5_ + 2);
                     si32(_loc9_ = _loc9_ & 7,_loc3_ + 160);
                     _loc9_ = li32(_loc3_ + 148) + ((_loc6_ = (_loc6_ = li8(_loc5_ + 2)) >>> 2) & 2);
                     if((uint(_loc5_ = _loc9_ + -1)) <= 14)
                     {
                        si32(_loc5_,_loc3_ + 148);
                     }
                  }
               }
               _loc5_ = li32(_loc3_ + 316);
               if(_loc5_ != 0)
               {
                  _loc9_ = _loc5_ + -1;
                  si32(_loc9_,_loc3_ + 316);
                  if(_loc9_ == 0)
                  {
                     _loc9_ = li8(_loc1_ + 2);
                     si32(_loc9_ = _loc9_ & 7,_loc3_ + 316);
                     _loc9_ = li32(_loc3_ + 304) + ((_loc6_ = (_loc6_ = li8(_loc1_ + 2)) >>> 2) & 2);
                     _loc1_ = _loc9_ + -1;
                     if(uint(_loc1_) <= 14)
                     {
                        si32(_loc1_,_loc3_ + 304);
                     }
                  }
               }
            }
            _loc9_ = _loc11_ & 1;
            if(_loc9_ != 0)
            {
               _loc9_ = li8(_loc10_);
               if((_loc11_ = (_loc9_ = _loc9_ >>> 4) & 7) != 0)
               {
                  _loc1_ = li32(_loc3_ + 100);
                  if(_loc1_ != 0)
                  {
                     _loc9_ = _loc1_ + -1;
                     si32(_loc9_,_loc3_ + 100);
                     if(_loc9_ == 0)
                     {
                        si32(_loc11_,_loc3_ + 100);
                        _loc9_ = li32(_loc3_ + 104);
                        si8(_loc9_,_loc10_ + 3);
                        _loc9_ = li8(_loc3_ + 105);
                        var _loc8_:*;
                        si8(_loc6_ = _loc9_ & 7 | (_loc8_ = li8((_loc9_ = li32(_loc3_ + 68)) + 4)) & 0xF8,_loc9_ + 4);
                        _loc11_ = li32(_loc3_ + 104);
                        _loc9_ = li32(_loc3_ + 68);
                        _loc10_ = _loc11_ >> ((_loc6_ = li8(_loc9_)) & 7);
                        _loc9_ = _loc6_ & 8;
                        if(_loc9_ != 0)
                        {
                           _loc10_ = 0 - _loc10_;
                        }
                        _loc10_ += _loc11_;
                        si32(_loc10_ += _loc11_,_loc3_ + 104);
                        if(_loc10_ <= -1)
                        {
                           si32(0,_loc3_ + 104);
                        }
                        else if(_loc10_ >= 2048)
                        {
                           si32(0,_loc3_ + 100);
                           si32(2048,_loc3_ + 104);
                        }
                     }
                  }
               }
            }
         }
      }
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
