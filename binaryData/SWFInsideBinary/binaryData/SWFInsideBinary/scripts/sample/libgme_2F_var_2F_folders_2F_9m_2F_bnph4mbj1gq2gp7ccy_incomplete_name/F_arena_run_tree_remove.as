package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme.ESP;
   
   public function F_arena_run_tree_remove() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc15_:* = 0;
      var _loc1_:* = 0;
      var _loc14_:* = 0;
      var _loc6_:* = 0;
      var _loc13_:* = 0;
      var _loc8_:* = 0;
      var _loc10_:* = 0;
      var _loc5_:* = 0;
      var _loc12_:int = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ -= 16;
      _loc3_ = li32(_loc4_);
      si32(_loc15_ = li32(_loc3_),_loc4_ - 16);
      _loc13_ = (_loc14_ = int(_loc4_ - 16)) | 4;
      var _loc11_:*;
      si32(_loc11_ = (_loc12_ = _loc3_ + 4) & -2,_loc13_);
      _loc10_ = 1;
      _loc9_ = li32(_loc4_ + 4);
      _loc8_ = _loc10_;
      if(uint(_loc15_) <= uint(_loc9_))
      {
         _loc8_ = 0;
      }
      if(uint(_loc15_) >= uint(_loc9_))
      {
         _loc10_ = 0;
      }
      _loc13_ = _loc8_ & 1;
      _loc1_ = int((_loc11_ = _loc10_ & 1) - _loc13_);
      if(_loc1_ <= -1)
      {
         _loc8_ = _loc12_;
         _loc14_ = _loc15_;
         if(((_loc5_ = li32((_loc10_ = li32(_loc15_)) + 4)) & 1) == 0)
         {
            _loc14_ = _loc15_;
            if(((_loc11_ = li8((_loc11_ = li32(_loc10_)) + 4)) & 1) == 0)
            {
               si32(_loc11_ = _loc5_ | 1,_loc10_ + 4);
               if((_loc11_ = (_loc5_ = li32((_loc14_ = li32(_loc10_ = (_loc8_ = li32(_loc15_ + 4)) & -2)) + 4)) & 1) != 0)
               {
                  si32(_loc11_ = _loc5_ & -2,_loc10_);
                  si32(_loc11_ = (_loc11_ = (_loc11_ = li32(_loc14_ + 4)) & 1) | _loc10_,_loc14_ + 4);
                  si32(_loc11_ = (_loc11_ = (_loc11_ = li32(_loc15_ + 4)) & 1) | _loc14_,_loc15_ + 4);
                  si32(_loc11_ = _loc11_ & 1 | li32(_loc10_ = _loc14_ & -2),_loc15_ + 4);
                  si32(_loc15_,_loc10_);
                  if((_loc11_ = (_loc8_ = li32((_loc14_ = (_loc11_ = li32(_loc15_ + 4)) & -2) + 4)) & 1) != 0)
                  {
                     si32(_loc11_ = _loc8_ & -2,_loc14_ + 4);
                     si32(_loc11_ = (_loc13_ = li32(_loc15_ + 4)) | 1,_loc15_ + 4);
                     si32(_loc13_ = (_loc13_ = li32(_loc11_ = _loc13_ & -2)) | 1,_loc15_ + 4);
                     si32(_loc15_,_loc11_);
                     si32(_loc11_,_loc10_);
                  }
                  else
                  {
                     si32(_loc14_,_loc15_ + 4);
                  }
               }
               else
               {
                  si32(_loc11_ = _loc8_ | 1,_loc15_ + 4);
                  si32(_loc11_ = (_loc11_ = li32(_loc10_)) | 1,_loc15_ + 4);
                  si32(_loc15_,_loc10_);
               }
               si32(_loc11_ = (_loc11_ = li32(_loc10_ + 4)) & -2,_loc10_ + 4);
               si32(_loc10_,_loc4_ - 16);
               _loc14_ = int(_loc4_ - 16);
            }
            §§goto(addr991);
         }
      }
      else
      {
         if(_loc1_ != 0)
         {
            _loc10_ = _loc15_;
            if(_loc1_ == 1)
            {
               _loc5_ = int(_loc15_ + 4);
               _loc8_ = _loc12_;
               addr521:
               _loc1_ = li32(_loc5_);
               _loc11_ = (_loc11_ = li8((_loc11_ = li32(_loc10_ = _loc1_ & -2)) + 4)) & 1;
               _loc14_ = _loc15_;
               if(_loc11_ == 0)
               {
                  if((_loc11_ = (_loc10_ = li32((_loc14_ = li32(_loc15_)) + 4)) & 1) != 0)
                  {
                     if((_loc11_ = (_loc11_ = li8((_loc10_ = li32(_loc6_ = _loc10_ & -2)) + 4)) & 1) != 0)
                     {
                        si32(_loc11_ = (_loc13_ = (_loc13_ = li32(_loc6_ + 4)) & -2) | _loc1_ & 1,_loc6_ + 4);
                        si32(_loc11_ = (_loc11_ = li32(_loc10_ + 4)) & -2,_loc10_ + 4);
                        si32(_loc11_ = (_loc13_ = li32(_loc10_ = _loc13_ & -2)) | (_loc13_ = li32(_loc14_ + 4)) & 1,_loc14_ + 4);
                        si32(_loc14_,_loc10_);
                        si32(_loc10_,_loc15_);
                        si32(_loc11_ = (_loc11_ = li32(_loc10_ + 4)) & -2,_loc15_);
                        si32(_loc11_ = (_loc11_ = (_loc11_ = li32(_loc10_ + 4)) & 1) | _loc15_,_loc10_ + 4);
                        var _loc7_:*;
                        si32(_loc13_ = (_loc7_ = li32(_loc11_ &= -2)) | (_loc11_ = li32(_loc5_)) & 1,_loc5_);
                        si32(_loc15_,_loc11_);
                        si32(_loc11_ = (_loc13_ = (_loc13_ = li32(_loc10_ + 4)) & 1) | _loc11_,_loc10_ + 4);
                     }
                     else
                     {
                        si32(_loc11_ = _loc6_ | _loc1_ & 1,_loc14_ + 4);
                        si32(_loc11_ = (_loc11_ = li32(_loc6_ + 4)) | 1,_loc6_ + 4);
                        si32(_loc11_ = (_loc11_ = li32((_loc10_ = li32(_loc15_)) + 4)) & -2,_loc15_);
                        si32(_loc11_ = (_loc11_ = (_loc11_ = li32(_loc10_ + 4)) & 1) | _loc15_,_loc10_ + 4);
                        si32(_loc13_ = (_loc7_ = li32(_loc11_ &= -2)) | (_loc11_ = li32(_loc5_)) & 1,_loc5_);
                        si32(_loc15_,_loc11_);
                        si32(_loc11_ = (_loc13_ = (_loc13_ = li32(_loc10_ + 4)) & 1) | _loc11_,_loc10_ + 4);
                     }
                     si32(_loc11_ = (_loc11_ = li32(_loc5_)) | 1,_loc5_);
                  }
                  else
                  {
                     si32(_loc11_ = _loc1_ | 1,_loc5_);
                     _loc1_ = li32((_loc10_ = li32(_loc14_)) + 4);
                     if((_loc11_ = _loc1_ & 1) != 0)
                     {
                        si32(_loc11_ = _loc1_ & -2,_loc10_ + 4);
                        si32(_loc11_ = (_loc11_ = li32((_loc10_ = li32(_loc15_)) + 4)) & -2,_loc15_);
                        si32(_loc11_ = (_loc11_ = (_loc11_ = li32(_loc10_ + 4)) & 1) | _loc15_,_loc10_ + 4);
                        si32(_loc13_ = (_loc7_ = li32(_loc11_ &= -2)) | (_loc11_ = li32(_loc5_)) & 1,_loc5_);
                        si32(_loc15_,_loc11_);
                        si32(_loc11_ = (_loc13_ = (_loc13_ = li32(_loc10_ + 4)) & 1) | _loc11_,_loc10_ + 4);
                     }
                     else
                     {
                        si32(_loc11_ = (_loc11_ = li32(_loc14_ + 4)) | 1,_loc14_ + 4);
                        si32(_loc11_ = (_loc13_ = li32(_loc10_ = _loc13_ & -2)) | (_loc13_ = li32(_loc5_)) & 1,_loc5_);
                        si32(_loc15_,_loc10_);
                     }
                  }
                  si32(_loc10_,_loc4_ - 16);
                  _loc14_ = int(_loc4_ - 16);
               }
               §§goto(addr997);
            }
            else
            {
               §§goto(addr991);
            }
         }
         else
         {
            _loc5_ = int(_loc15_ + 4);
            _loc8_ = int(_loc4_ - 16);
            if(((_loc11_ = li32(_loc15_ + 4)) & -2) == _loc12_)
            {
               _loc14_ = li32(_loc15_);
               _loc8_ = _loc12_;
               if(_loc14_ != _loc12_)
               {
                  si32(_loc11_ = (_loc11_ = li32(_loc14_ + 4)) & -2,_loc15_);
                  si32(_loc11_ = (_loc11_ = (_loc11_ = li32(_loc14_ + 4)) & 1) | _loc15_,_loc14_ + 4);
                  si32(_loc11_ = (_loc13_ = (_loc13_ = li32(_loc15_ + 4)) & 1) | _loc15_ & -2,_loc14_ + 4);
                  si32(_loc11_ = (_loc11_ = li32(_loc15_ + 4)) | 1,_loc15_ + 4);
                  si32(_loc11_ = (_loc11_ = (_loc11_ = li32(_loc14_ + 4)) & 1) | _loc12_,_loc14_ + 4);
                  _loc8_ = _loc14_;
               }
               si32(_loc8_,_loc4_ - 16);
               _loc14_ = int(_loc4_ - 16);
               _loc8_ = _loc12_;
               _loc10_ = _loc15_;
               if(_loc1_ == 1)
               {
                  §§goto(addr521);
               }
               else
               {
                  §§goto(addr991);
               }
               _loc2_ = _loc4_;
               ESP = _loc2_;
               return;
            }
         }
         §§goto(addr521);
      }
      §§goto(addr997);
   }
}
