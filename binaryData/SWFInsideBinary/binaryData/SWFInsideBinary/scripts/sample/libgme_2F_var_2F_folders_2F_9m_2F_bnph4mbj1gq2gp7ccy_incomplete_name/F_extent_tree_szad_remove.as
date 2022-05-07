package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme.ESP;
   
   public function F_extent_tree_szad_remove() : void
   {
      var _loc4_:* = 0;
      var _loc9_:* = 0;
      var _loc3_:* = 0;
      var _loc10_:* = 0;
      var _loc12_:* = 0;
      var _loc13_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc14_:* = 0;
      var _loc6_:int = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ -= 24;
      _loc3_ = li32(_dss_chunks_szad);
      si32(_loc3_,_loc4_ - 24);
      _loc13_ = (_loc14_ = int(_loc4_ - 24)) | 4;
      var _loc11_:*;
      si32(_loc11_ = (_loc12_ = int(_dss_chunks_szad + 4)) & -2,_loc13_);
      _loc10_ = li32(_loc3_ + 20);
      _loc8_ = li32((_loc9_ = li32(_loc4_)) + 20);
      _loc1_ = _loc7_ = 1;
      if(uint(_loc8_) >= uint(_loc10_))
      {
         _loc1_ = 0;
      }
      if(uint(_loc8_) <= uint(_loc10_))
      {
         _loc7_ = 0;
      }
      _loc13_ = _loc1_ & 1;
      _loc7_ = int((_loc11_ = _loc7_ & 1) - _loc13_);
      if(_loc8_ == _loc10_)
      {
         _loc10_ = li32(_loc3_ + 16);
         _loc1_ = li32(_loc9_ + 16);
         _loc8_ = _loc7_ = 1;
         if(uint(_loc1_) >= uint(_loc10_))
         {
            _loc8_ = 0;
         }
         if(uint(_loc1_) <= uint(_loc10_))
         {
            _loc7_ = 0;
         }
         _loc13_ = _loc8_ & 1;
         _loc7_ = int((_loc11_ = _loc7_ & 1) - _loc13_);
      }
      if(_loc7_ <= -1)
      {
         _loc12_ = int(_dss_chunks_szad + 4);
         _loc14_ = _loc3_;
         if(((_loc10_ = li32((_loc8_ = li32(_loc3_)) + 4)) & 1) == 0)
         {
            _loc14_ = _loc3_;
            if(((_loc11_ = li8((_loc11_ = li32(_loc8_)) + 4)) & 1) == 0)
            {
               si32(_loc11_ = _loc10_ | 1,_loc8_ + 4);
               if((_loc11_ = (_loc12_ = li32((_loc14_ = li32(_loc8_ = (_loc10_ = li32(_loc3_ + 4)) & -2)) + 4)) & 1) != 0)
               {
                  si32(_loc11_ = _loc12_ & -2,_loc8_);
                  si32(_loc11_ = (_loc11_ = (_loc11_ = li32(_loc14_ + 4)) & 1) | _loc8_,_loc14_ + 4);
                  si32(_loc11_ = (_loc11_ = (_loc11_ = li32(_loc3_ + 4)) & 1) | _loc14_,_loc3_ + 4);
                  si32(_loc11_ = _loc11_ & 1 | li32(_loc8_ = _loc14_ & -2),_loc3_ + 4);
                  si32(_loc3_,_loc8_);
                  if((_loc11_ = (_loc14_ = li32((_loc12_ = (_loc11_ = li32(_loc3_ + 4)) & -2) + 4)) & 1) != 0)
                  {
                     si32(_loc11_ = _loc14_ & -2,_loc12_ + 4);
                     si32(_loc13_ = (_loc11_ = li32(_loc3_ + 4)) | 1,_loc3_ + 4);
                     si32(_loc13_ = (_loc13_ = li32(_loc11_ &= -2)) | 1,_loc3_ + 4);
                     si32(_loc3_,_loc11_);
                     si32(_loc11_,_loc8_);
                  }
                  else
                  {
                     si32(_loc12_,_loc3_ + 4);
                  }
               }
               else
               {
                  si32(_loc11_ = _loc10_ | 1,_loc3_ + 4);
                  si32(_loc11_ = (_loc11_ = li32(_loc8_)) | 1,_loc3_ + 4);
                  si32(_loc3_,_loc8_);
               }
               si32(_loc11_ = (_loc11_ = li32(_loc8_ + 4)) & -2,_loc8_ + 4);
               si32(_loc8_,_loc4_ - 24);
               _loc14_ = int(_loc4_ - 24);
            }
            §§goto(addr1052);
         }
      }
      else
      {
         if(_loc7_ != 0)
         {
            _loc8_ = _loc3_;
            if(_loc7_ == 1)
            {
               _loc10_ = int(_loc3_ + 4);
               addr582:
               _loc11_ = (_loc11_ = li8((_loc11_ = li32(_loc8_ = (_loc7_ = li32(_loc10_)) & -2)) + 4)) & 1;
               _loc14_ = _loc3_;
               if(_loc11_ == 0)
               {
                  if((_loc11_ = (_loc8_ = li32((_loc14_ = li32(_loc3_)) + 4)) & 1) != 0)
                  {
                     _loc1_ = li32(_loc8_ &= -2);
                     if((_loc11_ = (_loc11_ = li8(_loc1_ + 4)) & 1) != 0)
                     {
                        si32(_loc11_ = (_loc13_ = (_loc13_ = li32(_loc8_ + 4)) & -2) | _loc7_ & 1,_loc8_ + 4);
                        si32(_loc11_ = (_loc11_ = li32(_loc1_ + 4)) & -2,_loc1_ + 4);
                        si32(_loc11_ = (_loc13_ = li32(_loc8_ = _loc13_ & -2)) | (_loc13_ = li32(_loc14_ + 4)) & 1,_loc14_ + 4);
                        si32(_loc14_,_loc8_);
                        si32(_loc8_,_loc3_);
                        si32(_loc11_ = (_loc11_ = li32(_loc8_ + 4)) & -2,_loc3_);
                        si32(_loc11_ = (_loc11_ = (_loc11_ = li32(_loc8_ + 4)) & 1) | _loc3_,_loc8_ + 4);
                        var _loc5_:*;
                        si32(_loc13_ = (_loc5_ = li32(_loc11_ &= -2)) | (_loc11_ = li32(_loc10_)) & 1,_loc10_);
                        si32(_loc3_,_loc11_);
                        si32(_loc11_ = (_loc13_ = (_loc13_ = li32(_loc8_ + 4)) & 1) | _loc11_,_loc8_ + 4);
                     }
                     else
                     {
                        si32(_loc11_ = _loc8_ | _loc7_ & 1,_loc14_ + 4);
                        si32(_loc11_ = (_loc11_ = li32(_loc8_ + 4)) | 1,_loc8_ + 4);
                        si32(_loc11_ = (_loc11_ = li32((_loc8_ = li32(_loc3_)) + 4)) & -2,_loc3_);
                        si32(_loc11_ = (_loc11_ = (_loc11_ = li32(_loc8_ + 4)) & 1) | _loc3_,_loc8_ + 4);
                        si32(_loc13_ = (_loc5_ = li32(_loc11_ &= -2)) | (_loc11_ = li32(_loc10_)) & 1,_loc10_);
                        si32(_loc3_,_loc11_);
                        si32(_loc11_ = (_loc13_ = (_loc13_ = li32(_loc8_ + 4)) & 1) | _loc11_,_loc8_ + 4);
                     }
                     si32(_loc11_ = (_loc11_ = li32(_loc10_)) | 1,_loc10_);
                  }
                  else
                  {
                     si32(_loc11_ = _loc7_ | 1,_loc10_);
                     if((_loc11_ = (_loc7_ = li32((_loc8_ = li32(_loc14_)) + 4)) & 1) != 0)
                     {
                        si32(_loc11_ = _loc7_ & -2,_loc8_ + 4);
                        si32(_loc11_ = (_loc11_ = li32((_loc8_ = li32(_loc3_)) + 4)) & -2,_loc3_);
                        si32(_loc11_ = (_loc11_ = (_loc11_ = li32(_loc8_ + 4)) & 1) | _loc3_,_loc8_ + 4);
                        si32(_loc13_ = (_loc5_ = li32(_loc11_ &= -2)) | (_loc11_ = li32(_loc10_)) & 1,_loc10_);
                        si32(_loc3_,_loc11_);
                        si32(_loc11_ = (_loc13_ = (_loc13_ = li32(_loc8_ + 4)) & 1) | _loc11_,_loc8_ + 4);
                     }
                     else
                     {
                        si32(_loc11_ = (_loc11_ = li32(_loc14_ + 4)) | 1,_loc14_ + 4);
                        si32(_loc11_ = (_loc13_ = li32(_loc8_ = _loc13_ & -2)) | (_loc13_ = li32(_loc10_)) & 1,_loc10_);
                        si32(_loc3_,_loc8_);
                     }
                  }
                  si32(_loc8_,_loc4_ - 24);
                  _loc14_ = int(_loc4_ - 24);
               }
               §§goto(addr1061);
            }
            else
            {
               §§goto(addr1052);
            }
         }
         else
         {
            _loc10_ = int(_loc3_ + 4);
            _loc8_ = int(_dss_chunks_szad + 4);
            _loc12_ = int(_loc4_ - 24);
            if(((_loc11_ = li32(_loc3_ + 4)) & -2) == _loc8_)
            {
               _loc12_ = li32(_loc3_);
               _loc14_ = _loc8_;
               if(_loc12_ != _loc8_)
               {
                  si32(_loc11_ = (_loc11_ = li32(_loc12_ + 4)) & -2,_loc3_);
                  si32(_loc11_ = (_loc11_ = (_loc11_ = li32(_loc12_ + 4)) & 1) | _loc3_,_loc12_ + 4);
                  si32(_loc11_ = (_loc13_ = (_loc13_ = li32(_loc3_ + 4)) & 1) | _loc3_ & -2,_loc12_ + 4);
                  si32(_loc11_ = (_loc11_ = li32(_loc3_ + 4)) | 1,_loc3_ + 4);
                  si32(_loc11_ = (_loc13_ = (_loc13_ = li32(_loc12_ + 4)) & 1) | int(_dss_chunks_szad + 4),_loc12_ + 4);
                  _loc14_ = _loc12_;
               }
               si32(_loc14_,_loc4_ - 24);
               _loc14_ = int(_loc4_ - 24);
               _loc12_ = _loc8_;
               _loc8_ = _loc3_;
               if(_loc7_ == 1)
               {
                  §§goto(addr582);
               }
               else
               {
                  §§goto(addr1052);
               }
               _loc2_ = _loc4_;
               ESP = _loc2_;
               return;
            }
         }
         §§goto(addr582);
      }
      §§goto(addr1061);
   }
}
