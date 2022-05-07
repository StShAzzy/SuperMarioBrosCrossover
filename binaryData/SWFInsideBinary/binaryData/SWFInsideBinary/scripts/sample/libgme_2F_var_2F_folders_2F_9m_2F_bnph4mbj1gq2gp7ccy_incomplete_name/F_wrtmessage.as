package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme.ESP;
   import sample.libgme.F__write;
   
   public function F_wrtmessage() : void
   {
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc6_:int = 0;
      var _loc5_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc11_:* = 0;
      var _loc10_:* = 0;
      var _loc4_:int = 0;
      var _loc12_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc10_ = int((_loc11_ = li32(_loc12_ = _loc1_ & -4)) + -16843009);
      _loc10_ = (_loc11_ = (_loc11_ &= -2139062144) ^ -2139062144) & _loc10_;
      _loc9_ = li32(_loc3_ + 12);
      _loc8_ = li32(_loc3_ + 8);
      _loc7_ = li32(_loc3_ + 4);
      if(_loc10_ != 0)
      {
         _loc6_ = _loc12_ + 4;
         _loc5_ = 0;
         while(true)
         {
            if((uint(_loc4_ = _loc1_ + _loc5_)) < uint(_loc6_))
            {
               continue;
            }
         }
         addr224:
         _loc2_ -= 16;
         si32(_loc5_,_loc2_ + 8);
         si32(_loc1_,_loc2_ + 4);
         si32(2,_loc2_);
         ESP = _loc2_;
         F__write();
         _loc2_ += 16;
         _loc10_ = int((_loc11_ = li32(_loc12_ = _loc7_ & -4)) + -16843009);
         if((_loc10_ = (_loc11_ = (_loc11_ &= -2139062144) ^ -2139062144) & _loc10_) != 0)
         {
            _loc5_ = int(_loc12_ + 4);
            _loc4_ = 0;
            while(true)
            {
               _loc1_ = int(_loc7_ + _loc4_);
               if(uint(_loc1_) < uint(_loc5_))
               {
                  continue;
               }
            }
            addr431:
            _loc2_ -= 16;
            si32(_loc4_,_loc2_ + 8);
            si32(_loc7_,_loc2_ + 4);
            si32(2,_loc2_);
            ESP = _loc2_;
            F__write();
            _loc2_ += 16;
            _loc10_ = int((_loc11_ = li32(_loc5_ = _loc8_ & -4)) + -16843009);
            if((_loc10_ = (_loc11_ = (_loc11_ &= -2139062144) ^ -2139062144) & _loc10_) != 0)
            {
               _loc1_ = int(_loc5_ + 4);
               _loc12_ = 0;
               while(true)
               {
                  if((uint(_loc7_ = int(_loc8_ + _loc12_))) < uint(_loc1_))
                  {
                     continue;
                  }
               }
               addr638:
               _loc2_ -= 16;
               si32(_loc12_,_loc2_ + 8);
               si32(_loc8_,_loc2_ + 4);
               si32(2,_loc2_);
               ESP = _loc2_;
               F__write();
               _loc2_ += 16;
               _loc10_ = int((_loc11_ = li32(_loc5_ = _loc9_ & -4)) + -16843009);
               if((_loc10_ = (_loc11_ = (_loc11_ &= -2139062144) ^ -2139062144) & _loc10_) != 0)
               {
                  _loc1_ = int(_loc5_ + 4);
                  _loc8_ = 0;
                  while(true)
                  {
                     if((uint(_loc7_ = int(_loc9_ + _loc8_))) < uint(_loc1_))
                     {
                        continue;
                     }
                  }
                  §§goto(addr845);
               }
               _loc8_ = int(_loc5_ + 4);
               while(true)
               {
                  _loc10_ = int((_loc7_ = li32(_loc8_)) + -16843009);
                  if((_loc10_ = (_loc11_ = (_loc11_ = _loc7_ & -2139062144) ^ -2139062144) & _loc10_) != 0)
                  {
                     if((_loc10_ = _loc7_ & 255) == 0)
                     {
                        _loc8_ -= _loc9_;
                     }
                     else if((_loc10_ = li8(_loc8_ + 1)) == 0)
                     {
                        _loc8_ = int((_loc10_ = int(1 - _loc9_)) + _loc8_);
                     }
                     else if((_loc10_ = li8(_loc8_ + 2)) == 0)
                     {
                        _loc8_ = int((_loc10_ = int(2 - _loc9_)) + _loc8_);
                     }
                     else
                     {
                        if((_loc10_ = li8(_loc8_ + 3)) != 0)
                        {
                           continue;
                        }
                        _loc8_ = int((_loc10_ = int(3 - _loc9_)) + _loc8_);
                     }
                     addr845:
                     _loc2_ -= 16;
                     si32(_loc8_,_loc2_ + 8);
                     si32(_loc9_,_loc2_ + 4);
                     si32(2,_loc2_);
                     ESP = _loc2_;
                  }
                  continue;
                  F__write();
                  _loc2_ += 16;
                  _loc2_ = _loc3_;
                  ESP = _loc2_;
                  return;
               }
            }
            _loc1_ = int(_loc5_ + 4);
            while(true)
            {
               _loc10_ = int((_loc7_ = li32(_loc1_)) + -16843009);
               if((_loc10_ = (_loc11_ = (_loc11_ = _loc7_ & -2139062144) ^ -2139062144) & _loc10_) == 0)
               {
                  continue;
               }
               if((_loc10_ = _loc7_ & 255) == 0)
               {
                  _loc12_ = int(_loc1_ - _loc8_);
               }
               else if((_loc10_ = li8(_loc1_ + 1)) == 0)
               {
                  _loc12_ = int((_loc10_ = int(1 - _loc8_)) + _loc1_);
               }
               else if((_loc10_ = li8(_loc1_ + 2)) == 0)
               {
                  _loc12_ = int((_loc10_ = int(2 - _loc8_)) + _loc1_);
               }
               else
               {
                  if((_loc10_ = li8(_loc1_ + 3)) != 0)
                  {
                     continue;
                  }
                  _loc12_ = int((_loc10_ = int(3 - _loc8_)) + _loc1_);
               }
               §§goto(addr638);
            }
         }
         _loc1_ = int(_loc12_ + 4);
         while(true)
         {
            _loc10_ = int((_loc5_ = li32(_loc1_)) + -16843009);
            if((_loc10_ = (_loc11_ = (_loc11_ = _loc5_ & -2139062144) ^ -2139062144) & _loc10_) == 0)
            {
               continue;
            }
            if((_loc10_ = _loc5_ & 255) == 0)
            {
               _loc4_ = _loc1_ - _loc7_;
            }
            else if((_loc10_ = li8(_loc1_ + 1)) == 0)
            {
               _loc4_ = (_loc10_ = int(1 - _loc7_)) + _loc1_;
            }
            else if((_loc10_ = li8(_loc1_ + 2)) == 0)
            {
               _loc4_ = (_loc10_ = int(2 - _loc7_)) + _loc1_;
            }
            else
            {
               if((_loc10_ = li8(_loc1_ + 3)) != 0)
               {
                  continue;
               }
               _loc4_ = (_loc10_ = int(3 - _loc7_)) + _loc1_;
            }
            §§goto(addr431);
         }
      }
      _loc5_ = int(_loc12_ + 4);
      while(true)
      {
         _loc10_ = int((_loc12_ = li32(_loc5_)) + -16843009);
         if((_loc10_ = (_loc11_ = (_loc11_ = _loc12_ & -2139062144) ^ -2139062144) & _loc10_) == 0)
         {
            continue;
         }
         if((_loc10_ = _loc12_ & 255) == 0)
         {
            _loc5_ -= _loc1_;
         }
         else if((_loc10_ = li8(_loc5_ + 1)) == 0)
         {
            _loc5_ = int((_loc10_ = int(1 - _loc1_)) + _loc5_);
         }
         else if((_loc10_ = li8(_loc5_ + 2)) == 0)
         {
            _loc5_ = int((_loc10_ = int(2 - _loc1_)) + _loc5_);
         }
         else
         {
            if((_loc10_ = li8(_loc5_ + 3)) != 0)
            {
               continue;
            }
            _loc5_ = int((_loc10_ = int(3 - _loc1_)) + _loc5_);
         }
         §§goto(addr224);
      }
   }
}
