package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.F_idalloc;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__EUC_mbrtowc;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__EUC_mbsinit;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__EUC_wcrtomb;
   
   public function F__EUC_init() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc10_:* = 0;
      var _loc4_:int = 0;
      var _loc9_:* = 0;
      var _loc7_:int = 0;
      var _loc11_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc12_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ -= 16;
      _loc1_ = li32(_loc3_);
      _loc12_ = li32(_loc1_ + 3148);
      _loc11_ = 79;
      if(_loc12_ != 0)
      {
         while(true)
         {
            if((_loc10_ = li8(_loc12_)) != 9)
            {
               if(_loc10_ != 32)
               {
                  break;
               }
            }
            _loc12_ += 1;
         }
         _loc2_ -= 16;
         si32(36,_loc2_);
         ESP = _loc2_;
         F_malloc();
         _loc2_ += 16;
         _loc10_ = int(eax);
         _loc9_ = 0;
         _loc11_ = 0;
         if(_loc10_ == 0)
         {
            ESP = _loc2_;
            F___error();
            _loc11_ = 12;
            var _loc8_:int;
            if(li32(_loc8_ = eax) != 0)
            {
               ESP = _loc2_;
               F___error();
               _loc11_ = li32(_loc8_ = eax);
            }
         }
         else
         {
            while(true)
            {
               _loc2_ -= 16;
               si32(0,_loc2_ + 8);
               si32(_loc4_ = _loc3_ - 4,_loc2_ + 4);
               si32(_loc12_,_loc2_);
               ESP = _loc2_;
               F_strtol();
               _loc2_ += 16;
               _loc6_ = int(eax);
               if(_loc9_ >= 4)
               {
                  si32(_loc6_,_loc10_ + 32);
                  _loc9_ = li32(_loc3_ - 4);
                  if(_loc12_ != _loc9_)
                  {
                     if(_loc9_ != 0)
                     {
                        si32(_loc10_,_loc1_ + 3148);
                        si32(36,_loc1_ + 3152);
                        si32(_loc1_,__CurrentRuneLocale);
                        si32(_loc11_,___mb_cur_max);
                        si32(__EUC_mbrtowc,___mbrtowc);
                        si32(__EUC_wcrtomb,___wcrtomb);
                        si32(__EUC_mbsinit,___mbsinit);
                        si32(256,___mb_sb_limit);
                        _loc11_ = 0;
                        break;
                     }
                  }
                  _loc2_ -= 16;
                  si32(_loc10_,_loc2_);
                  ESP = _loc2_;
                  F_idalloc();
                  _loc2_ += 16;
                  _loc11_ = 79;
                  break;
               }
               _loc7_ = _loc10_ + (_loc9_ << 2);
               si32(_loc6_,_loc7_);
               _loc5_ = li32(_loc3_ - 4);
               if(_loc12_ != _loc5_)
               {
                  if(_loc5_ != 0)
                  {
                     while(true)
                     {
                        if((_loc12_ = li8(_loc5_)) != 9)
                        {
                           if(_loc12_ != 32)
                           {
                              break;
                           }
                        }
                        _loc5_ += 1;
                     }
                     _loc2_ -= 16;
                     si32(0,_loc2_ + 8);
                     si32(_loc4_,_loc2_ + 4);
                     si32(_loc5_,_loc2_);
                     ESP = _loc2_;
                     F_strtol();
                     _loc2_ += 16;
                     si32(_loc8_ = eax,_loc7_ + 16);
                     if(_loc6_ <= _loc11_)
                     {
                        _loc6_ = _loc11_;
                     }
                     if((_loc12_ = li32(_loc3_ - 4)) != _loc5_)
                     {
                        if(_loc12_ != 0)
                        {
                           while(true)
                           {
                              if((_loc11_ = li8(_loc12_)) != 9)
                              {
                                 if(_loc11_ != 32)
                                 {
                                    break;
                                 }
                              }
                              _loc12_ += 1;
                           }
                           continue;
                        }
                     }
                     _loc11_ = 79;
                     if(_loc10_ != 0)
                     {
                        _loc2_ -= 16;
                        si32(_loc10_,_loc2_);
                        ESP = _loc2_;
                        F_idalloc();
                        _loc2_ += 16;
                        _loc11_ = 79;
                        break;
                     }
                     break;
                  }
               }
               _loc11_ = 79;
               if(_loc10_ != 0)
               {
                  _loc2_ -= 16;
                  si32(_loc10_,_loc2_);
                  ESP = _loc2_;
                  F_idalloc();
                  _loc2_ += 16;
                  _loc11_ = 79;
                  break;
               }
               break;
            }
         }
      }
      eax = _loc11_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
