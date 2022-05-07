package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme.ESP;
   
   public function F_extent_tree_ad_insert() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc12_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc10_:* = 0;
      var _loc9_:* = 0;
      var _loc13_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ -= 24;
      _loc3_ = li32(_loc4_);
      si32(_loc13_ = li32(_loc3_),_loc4_ - 16);
      var _loc11_:*;
      si32(_loc11_ = (_loc12_ = int(_loc3_ + 4)) & -2,_loc4_ - 12);
      _loc10_ = 0;
      _loc9_ = int(_loc4_ - 24);
      _loc8_ = li32(_loc4_ + 4);
      _loc7_ = _loc12_;
      while(true)
      {
         _loc6_ = _loc13_;
         _loc5_ = _loc9_;
         while(true)
         {
            if(_loc12_ == _loc6_)
            {
               si32(_loc12_,_loc8_ + 8);
               si32(_loc11_ = _loc12_ | 1,_loc8_ + 12);
               if(_loc10_ >= 1)
               {
                  si32(_loc11_ = (_loc11_ = (_loc11_ = li32(_loc5_ + 12)) & 1) | _loc8_,_loc5_ + 12);
                  si32(_loc11_ = _loc11_ & 1 | li32((_loc12_ = _loc8_ & -2) + 8),_loc5_ + 12);
                  si32(_loc5_,_loc12_ + 8);
                  si32(_loc11_ = li32(_loc12_ + 12) & -2 | (_loc11_ = li32(_loc5_ + 12)) & 1,_loc12_ + 12);
                  si32(_loc11_ = (_loc11_ = li32(_loc5_ + 12)) | 1,_loc5_ + 12);
                  if((_loc11_ = li32(_loc7_ + 8)) == _loc5_)
                  {
                     si32(_loc12_,_loc7_ + 8);
                  }
                  else if((_loc11_ = (_loc8_ = li32(_loc7_ + 12)) & -2) == _loc5_)
                  {
                     si32(_loc11_ = (_loc11_ = _loc8_ & 1) | _loc12_,_loc7_ + 12);
                  }
               }
               else
               {
                  si32(_loc8_,_loc5_ + 8);
               }
               si32(_loc11_ = li32(_loc4_ - 16),_loc3_);
               var _loc1_:* = li32(_loc11_ + 12);
               _loc1_ &= -2;
               si32(_loc1_,_loc11_ + 12);
               _loc2_ = _loc4_;
               ESP = _loc2_;
               return;
            }
            if((_loc11_ = (_loc13_ = li32((_loc10_ = li32(_loc6_ + 8)) + 12)) & 1) == 0)
            {
               break;
            }
            if((_loc11_ = (_loc11_ = li8((_loc11_ = li32(_loc10_ + 8)) + 12)) & 1) == 0)
            {
               break;
            }
            si32(_loc11_ = _loc13_ & -2,_loc6_ + 8);
            si32(_loc11_ = (_loc11_ = (_loc11_ = li32(_loc10_ + 12)) & 1) | _loc6_,_loc10_ + 12);
            si32(li32((_loc11_ = li32(_loc10_ + 8)) + 12) & -2,_loc11_ + 12);
            if((_loc11_ = li32(_loc5_ + 8)) == _loc6_)
            {
               si32(_loc10_,_loc5_ + 8);
               _loc6_ = _loc10_;
               break;
            }
            si32(_loc11_ = (_loc11_ = (_loc11_ = li32(_loc5_ + 12)) & 1) | _loc10_,_loc5_ + 12);
            si32(_loc11_ = _loc11_ & 1 | li32((_loc13_ = _loc10_ & -2) + 8),_loc5_ + 12);
            si32(_loc5_,_loc13_ + 8);
            si32(_loc11_ = li32(_loc13_ + 12) & -2 | (_loc11_ = li32(_loc5_ + 12)) & 1,_loc13_ + 12);
            si32(_loc11_ = (_loc11_ = li32(_loc5_ + 12)) | 1,_loc5_ + 12);
            if((_loc11_ = li32(_loc7_ + 8)) == _loc5_)
            {
               si32(_loc13_,_loc7_ + 8);
            }
            else
            {
               si32(_loc11_ = (_loc11_ = (_loc11_ = li32(_loc7_ + 12)) & 1) | _loc13_,_loc7_ + 12);
            }
            _loc5_ = li32(_loc13_ + 16);
            _loc6_ = li32(_loc8_ + 16);
            _loc9_ = _loc10_ = 1;
            if(uint(_loc6_) >= uint(_loc5_))
            {
               _loc9_ = 0;
            }
            if(uint(_loc6_) <= uint(_loc5_))
            {
               _loc10_ = 0;
            }
            _loc1_ = _loc9_ & 1;
            if((_loc10_ = int((_loc11_ = _loc10_ & 1) - _loc1_)) <= -1)
            {
               _loc6_ = li32(_loc13_ + 8);
               _loc5_ = _loc13_;
            }
            else
            {
               _loc6_ = (_loc11_ = li32(_loc13_ + 12)) & -2;
               _loc5_ = _loc13_;
            }
         }
         _loc10_ = li32(_loc6_ + 16);
         _loc9_ = li32(_loc8_ + 16);
         _loc13_ = _loc7_ = 1;
         if(uint(_loc9_) >= uint(_loc10_))
         {
            _loc13_ = 0;
         }
         if(uint(_loc9_) <= uint(_loc10_))
         {
            _loc7_ = 0;
         }
         _loc1_ = _loc13_ & 1;
         if((_loc10_ = int((_loc11_ = _loc7_ & 1) - _loc1_)) <= -1)
         {
            _loc13_ = li32(_loc6_ + 8);
            _loc9_ = _loc6_;
            _loc7_ = _loc5_;
         }
         else
         {
            _loc13_ = (_loc11_ = li32(_loc6_ + 12)) & -2;
            _loc9_ = _loc6_;
            _loc7_ = _loc5_;
         }
      }
   }
}
