package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str101189;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str91188;
   
   public function F___detect_path_locale() : void
   {
      var _loc3_:* = 0;
      var _loc8_:int = 0;
      var _loc1_:* = 0;
      var _loc6_:int = 0;
      var _loc4_:int = 0;
      var _loc5_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = 0;
      var _loc9_:*;
      if((_loc9_ = li32(__PathLocale)) == 0)
      {
         _loc2_ -= 16;
         si32(L__2E_str91188,_loc2_);
         ESP = _loc2_;
         F_getenv();
         _loc2_ += 16;
         if((_loc8_ = eax) != 0)
         {
            _loc1_ = _loc8_ & -4;
            var _loc7_:*;
            if((_loc9_ = (_loc7_ = (_loc7_ &= -2139062144) ^ -2139062144) & int((_loc7_ = li32(_loc1_)) + -16843009)) != 0)
            {
               _loc6_ = _loc1_ + 4;
               _loc5_ = 0;
               while(true)
               {
                  if((uint(_loc4_ = _loc8_ + _loc5_)) < uint(_loc6_))
                  {
                     continue;
                  }
               }
               §§goto(addr230);
            }
            _loc4_ = _loc1_ + 4;
            while(true)
            {
               _loc1_ = li32(_loc4_);
               _loc9_ = int(_loc1_ + -16843009);
               if((_loc9_ = (_loc7_ = (_loc7_ = _loc1_ & -2139062144) ^ -2139062144) & _loc9_) == 0)
               {
                  continue;
               }
               if((_loc9_ = _loc1_ & 255) == 0)
               {
                  _loc5_ = _loc4_ - _loc8_;
               }
               else if((_loc9_ = li8(_loc4_ + 1)) == 0)
               {
                  _loc5_ = (_loc9_ = int(1 - _loc8_)) + _loc4_;
               }
               else if((_loc9_ = li8(_loc4_ + 2)) == 0)
               {
                  _loc5_ = (_loc9_ = int(2 - _loc8_)) + _loc4_;
               }
               else
               {
                  if((_loc9_ = li8(_loc4_ + 3)) != 0)
                  {
                     continue;
                  }
                  _loc5_ = (_loc9_ = int(3 - _loc8_)) + _loc4_;
               }
               addr230:
               _loc9_ = int(_loc5_ + 44);
               _loc1_ = 63;
               if(uint(_loc9_) <= 1023)
               {
                  _loc2_ -= 16;
                  si32(_loc8_,_loc2_);
                  ESP = _loc2_;
                  F_strdup();
                  _loc2_ += 16;
                  si32(_loc9_ = int(eax),__PathLocale);
                  _loc1_ = 0;
                  if(_loc9_ == 0)
                  {
                     ESP = _loc2_;
                     F___error();
                     _loc1_ = 12;
                     if(li32(_loc9_ = int(eax)) != 0)
                     {
                        ESP = _loc2_;
                        F___error();
                        _loc1_ = li32(_loc9_ = int(eax));
                     }
                  }
               }
               §§goto(addr313);
            }
         }
         else
         {
            si32(L__2E_str101189,__PathLocale);
            _loc1_ = 0;
         }
      }
      addr313:
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
