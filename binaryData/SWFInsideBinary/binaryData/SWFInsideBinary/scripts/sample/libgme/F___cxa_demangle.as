package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.F_d_demangle;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.F_idalloc;
   
   public function F___cxa_demangle() : void
   {
      var _loc3_:* = 0;
      var _loc12_:* = 0;
      var _loc10_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc6_:int = 0;
      var _loc4_:int = 0;
      var _loc5_:* = 0;
      var _loc11_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ -= 16;
      _loc1_ = li32(_loc3_ + 12);
      if((_loc12_ = li32(_loc3_)) == 0)
      {
         _loc11_ = 0;
         if(_loc1_ != 0)
         {
            si32(-3,_loc1_);
            _loc11_ = 0;
         }
      }
      else
      {
         _loc10_ = li32(_loc3_ + 8);
         if((_loc11_ = li32(_loc3_ + 4)) != 0)
         {
            if(_loc10_ == 0)
            {
               _loc11_ = 0;
               if(_loc1_ != 0)
               {
                  si32(-3,_loc1_);
                  _loc11_ = 0;
               }
            }
            §§goto(addr467);
         }
         _loc2_ -= 16;
         var _loc9_:*;
         si32(_loc9_ = int(_loc3_ - 4),_loc2_ + 4);
         si32(_loc12_,_loc2_);
         ESP = _loc2_;
         F_d_demangle();
         _loc2_ += 16;
         if((_loc12_ = int(eax)) == 0)
         {
            _loc11_ = 0;
            if(_loc1_ != 0)
            {
               if((_loc9_ = li32(_loc3_ - 4)) == 1)
               {
                  si32(-1,_loc1_);
                  _loc11_ = 0;
               }
               else
               {
                  si32(-2,_loc1_);
                  _loc11_ = 0;
               }
            }
         }
         else
         {
            if(_loc11_ == 0)
            {
               _loc11_ = _loc12_;
               if(_loc10_ != 0)
               {
                  si32(_loc9_ = li32(_loc3_ - 4),_loc10_);
                  _loc11_ = _loc12_;
               }
            }
            else
            {
               var _loc7_:*;
               if((_loc9_ = (_loc7_ = (_loc7_ &= -2139062144) ^ -2139062144) & int((_loc7_ = li32(_loc8_ = _loc12_ & -4)) + -16843009)) != 0)
               {
                  _loc6_ = _loc8_ + 4;
                  _loc5_ = 0;
                  while(true)
                  {
                     if((uint(_loc4_ = _loc12_ + _loc5_)) < uint(_loc6_))
                     {
                        continue;
                     }
                  }
                  §§goto(addr349);
               }
               _loc4_ = _loc8_ + 4;
               while(true)
               {
                  _loc9_ = int((_loc5_ = li32(_loc4_)) + -16843009);
                  if((_loc9_ = (_loc7_ = (_loc7_ = _loc5_ & -2139062144) ^ -2139062144) & _loc9_) == 0)
                  {
                     continue;
                  }
                  if((_loc9_ = _loc5_ & 255) == 0)
                  {
                     _loc5_ = int(_loc4_ - _loc12_);
                  }
                  else if((_loc9_ = li8(_loc4_ + 1)) == 0)
                  {
                     _loc5_ = int((_loc9_ = int(1 - _loc12_)) + _loc4_);
                  }
                  else if((_loc9_ = li8(_loc4_ + 2)) == 0)
                  {
                     _loc5_ = int((_loc9_ = int(2 - _loc12_)) + _loc4_);
                  }
                  else
                  {
                     if((_loc9_ = li8(_loc4_ + 3)) != 0)
                     {
                        continue;
                     }
                     _loc5_ = int((_loc9_ = int(3 - _loc12_)) + _loc4_);
                  }
                  addr349:
                  _loc9_ = li32(_loc10_);
                  if(uint(_loc5_) < uint(_loc9_))
                  {
                     si8(_loc9_ = li8(_loc12_),_loc11_);
                     if(_loc9_ != 0)
                     {
                        _loc5_ = int(_loc11_ + 1);
                        _loc10_ = int(_loc12_ + 1);
                        do
                        {
                           si8(_loc9_ = li8(_loc10_),_loc5_);
                           _loc5_ += 1;
                           _loc10_ += 1;
                        }
                        while(_loc9_ != 0);
                        
                     }
                     if(_loc12_ != 0)
                     {
                        _loc2_ -= 16;
                        si32(_loc12_,_loc2_);
                        ESP = _loc2_;
                        F_idalloc();
                        _loc2_ += 16;
                     }
                  }
                  else
                  {
                     if(_loc11_ != 0)
                     {
                        _loc2_ -= 16;
                        si32(_loc11_,_loc2_);
                        ESP = _loc2_;
                        F_idalloc();
                        _loc2_ += 16;
                     }
                     si32(_loc9_ = li32(_loc3_ - 4),_loc10_);
                     _loc11_ = _loc12_;
                  }
                  §§goto(addr459);
               }
            }
            addr459:
            if(_loc1_ != 0)
            {
               si32(0,_loc1_);
            }
            §§goto(addr467);
         }
      }
      addr467:
      eax = _loc11_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
