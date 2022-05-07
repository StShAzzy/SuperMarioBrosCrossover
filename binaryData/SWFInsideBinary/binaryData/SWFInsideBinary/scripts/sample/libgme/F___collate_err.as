package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str11272;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str1271;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2._ebuf_2E_1915;
   
   public function F___collate_err() : void
   {
      var _loc4_:* = 0;
      var _loc7_:* = 0;
      var _loc12_:* = 0;
      var _loc6_:int = 0;
      var _loc5_:* = 0;
      var _loc13_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc3_:* = 0;
      var _loc11_:* = 0;
      var _loc10_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:int = ESP;
      _loc4_ = _loc2_;
      ESP = _loc2_;
      F___error();
      _loc3_ = int(eax);
      _loc10_ = int((_loc11_ = li32(_loc12_ = (_loc13_ = li32(___progname)) & -4)) + -16843009);
      _loc10_ = (_loc11_ = (_loc11_ &= -2139062144) ^ -2139062144) & _loc10_;
      _loc9_ = li32(_loc3_);
      _loc8_ = li32(_loc4_ + 4);
      _loc7_ = li32(_loc4_);
      if(_loc10_ != 0)
      {
         _loc6_ = _loc12_ + 4;
         _loc1_ = 0;
         while(true)
         {
            if((uint(_loc5_ = int(_loc13_ + _loc1_))) < uint(_loc6_))
            {
               continue;
            }
         }
         addr217:
         _loc2_ -= 16;
         si32(_loc1_,_loc2_ + 8);
         si32(_loc13_,_loc2_ + 4);
         si32(2,_loc2_);
         ESP = _loc2_;
         F__write();
         _loc2_ += 16;
         _loc2_ -= 16;
         si32(2,_loc2_ + 8);
         si32(L__2E_str1271,_loc2_ + 4);
         si32(2,_loc2_);
         ESP = _loc2_;
         F__write();
         _loc2_ += 16;
         _loc3_ = int((_loc10_ = li32(_loc5_ = _loc8_ & -4)) + -16843009);
         _loc3_ = (_loc10_ = (_loc10_ &= -2139062144) ^ -2139062144) & _loc3_;
         if(_loc3_ != 0)
         {
            _loc12_ = int(_loc5_ + 4);
            _loc13_ = 0;
            while(true)
            {
               _loc1_ = int(_loc8_ + _loc13_);
               if(uint(_loc1_) < uint(_loc12_))
               {
                  continue;
               }
            }
            addr439:
            _loc2_ -= 16;
            si32(_loc13_,_loc2_ + 8);
            si32(_loc8_,_loc2_ + 4);
            si32(2,_loc2_);
            ESP = _loc2_;
            F__write();
            _loc2_ += 16;
            _loc2_ -= 16;
            si32(2,_loc2_ + 8);
            si32(L__2E_str1271,_loc2_ + 4);
            si32(2,_loc2_);
            ESP = _loc2_;
            F__write();
            _loc2_ += 16;
            _loc2_ -= 16;
            si32(2048,_loc2_ + 8);
            si32(_ebuf_2E_1915,_loc2_ + 4);
            si32(_loc9_,_loc2_);
            ESP = _loc2_;
            F_strerror_r();
            _loc2_ += 16;
            _loc3_ = int(eax);
            if(_loc3_ != 0)
            {
               ESP = _loc2_;
               F___error();
               si32(22,int(eax));
            }
            _loc3_ = int((_loc10_ = li32(_loc9_ = _ebuf_2E_1915 & -4)) + -16843009);
            _loc3_ = (_loc10_ = (_loc10_ &= -2139062144) ^ -2139062144) & _loc3_;
            _loc8_ = int(_loc9_ + 4);
            _loc1_ = 0;
            if(_loc3_ != 0)
            {
               while(true)
               {
                  _loc13_ = int(_ebuf_2E_1915 + _loc1_);
                  _loc8_ = int(_loc9_ + 4);
                  if(uint(_loc13_) < uint(_loc8_))
                  {
                     continue;
                  }
               }
               §§goto(addr712);
            }
            while(true)
            {
               _loc3_ = int((_loc9_ = li32(_loc8_)) + -16843009);
               _loc3_ = (_loc10_ = (_loc10_ = _loc9_ & -2139062144) ^ -2139062144) & _loc3_;
               if(_loc3_ != 0)
               {
                  if((_loc9_ & 255) == 0)
                  {
                     _loc1_ = int(_loc8_ - _ebuf_2E_1915);
                  }
                  else if(li8(_loc8_ + 1) == 0)
                  {
                     _loc1_ = int(_loc8_ + (int(1 - _ebuf_2E_1915)));
                  }
                  else if(li8(_loc8_ + 2) == 0)
                  {
                     _loc1_ = int(_loc8_ + (int(2 - _ebuf_2E_1915)));
                  }
                  else
                  {
                     if(li8(_loc8_ + 3) != 0)
                     {
                        continue;
                     }
                     _loc1_ = int(_loc8_ + (int(3 - _ebuf_2E_1915)));
                  }
                  addr712:
                  _loc2_ -= 16;
                  si32(_loc1_,_loc2_ + 8);
                  si32(_ebuf_2E_1915,_loc2_ + 4);
                  si32(2,_loc2_);
                  ESP = _loc2_;
                  F__write();
                  _loc2_ += 16;
                  _loc2_ -= 16;
                  si32(1,_loc2_ + 8);
                  si32(L__2E_str11272,_loc2_ + 4);
               }
               continue;
               si32(2,_loc2_);
               ESP = _loc2_;
               F__write();
               _loc2_ += 16;
               _loc2_ -= 16;
               si32(_loc7_,_loc2_);
               ESP = _loc2_;
               F_exit();
               _loc2_ += 16;
               return;
            }
         }
         _loc13_ = int(_loc5_ + 4);
         while(true)
         {
            _loc1_ = li32(_loc13_);
            _loc3_ = int(_loc1_ + -16843009);
            _loc3_ = (_loc10_ = (_loc10_ = _loc1_ & -2139062144) ^ -2139062144) & _loc3_;
            if(_loc3_ == 0)
            {
               continue;
            }
            if((_loc1_ & 255) == 0)
            {
               _loc13_ -= _loc8_;
            }
            else if(li8(_loc13_ + 1) == 0)
            {
               _loc13_ = int(int(1 - _loc8_) + _loc13_);
            }
            else if(li8(_loc13_ + 2) == 0)
            {
               _loc13_ = int(int(2 - _loc8_) + _loc13_);
            }
            else
            {
               if(li8(_loc13_ + 3) != 0)
               {
                  continue;
               }
               _loc13_ = int(int(3 - _loc8_) + _loc13_);
            }
            §§goto(addr439);
         }
      }
      _loc1_ = int(_loc12_ + 4);
      while(true)
      {
         _loc3_ = int((_loc12_ = li32(_loc1_)) + -16843009);
         _loc3_ = (_loc10_ = (_loc10_ = _loc12_ & -2139062144) ^ -2139062144) & _loc3_;
         if(_loc3_ == 0)
         {
            continue;
         }
         if((_loc12_ & 255) == 0)
         {
            _loc1_ -= _loc13_;
         }
         else if(li8(_loc1_ + 1) == 0)
         {
            _loc1_ = int(int(1 - _loc13_) + _loc1_);
         }
         else if(li8(_loc1_ + 2) == 0)
         {
            _loc1_ = int(int(2 - _loc13_) + _loc1_);
         }
         else
         {
            if(li8(_loc1_ + 3) != 0)
            {
               continue;
            }
            _loc1_ = int(int(3 - _loc13_) + _loc1_);
         }
         §§goto(addr217);
      }
   }
}
