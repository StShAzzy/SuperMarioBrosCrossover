package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme.ESP;
   
   public function F_arena_run_tree_insert() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc7_:* = 0;
      var _loc10_:* = 0;
      var _loc11_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc8_:* = 0;
      var _loc6_:* = 0;
      var _loc13_:* = 0;
      var _loc12_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ -= 16;
      _loc3_ = li32(_loc4_);
      si32(_loc13_ = li32(_loc3_),_loc4_ - 16);
      _loc11_ = (_loc12_ = int(_loc4_ - 16)) | 4;
      var _loc9_:*;
      si32(_loc9_ = (_loc10_ = int(_loc3_ + 4)) & -2,_loc11_);
      _loc8_ = 0;
      _loc7_ = li32(_loc4_ + 4);
      _loc6_ = _loc10_;
      while(true)
      {
         _loc1_ = _loc13_;
         _loc5_ = _loc12_;
         while(true)
         {
            if(_loc10_ == _loc1_)
            {
               si32(_loc10_,_loc7_);
               si32(_loc9_ = _loc10_ | 1,_loc7_ + 4);
               if(_loc8_ >= 1)
               {
                  si32(_loc9_ = (_loc9_ = (_loc9_ = li32(_loc5_ + 4)) & 1) | _loc7_,_loc5_ + 4);
                  si32(_loc9_ = _loc9_ & 1 | li32(_loc10_ = _loc7_ & -2),_loc5_ + 4);
                  si32(_loc5_,_loc10_);
                  si32(_loc9_ = (_loc11_ = (_loc11_ = li32(_loc10_ + 4)) & -2) | (_loc9_ = li32(_loc5_ + 4)) & 1,_loc10_ + 4);
                  si32(_loc9_ = (_loc9_ = li32(_loc5_ + 4)) | 1,_loc5_ + 4);
                  if((_loc9_ = li32(_loc6_)) == _loc5_)
                  {
                     si32(_loc10_,_loc6_);
                  }
                  else if((_loc9_ = (_loc7_ = li32(_loc6_ + 4)) & -2) == _loc5_)
                  {
                     si32(_loc9_ = (_loc9_ = _loc7_ & 1) | _loc10_,_loc6_ + 4);
                  }
               }
               else
               {
                  si32(_loc7_,_loc5_);
               }
               si32(_loc9_ = li32(_loc4_ - 16),_loc3_);
               si32(_loc11_ = (_loc11_ = li32(_loc9_ + 4)) & -2,_loc9_ + 4);
               _loc2_ = _loc4_;
               ESP = _loc2_;
               return;
            }
            if((_loc9_ = (_loc8_ = li32((_loc13_ = li32(_loc1_)) + 4)) & 1) == 0)
            {
               break;
            }
            if((_loc9_ = (_loc9_ = li8((_loc9_ = li32(_loc13_)) + 4)) & 1) == 0)
            {
               break;
            }
            si32(_loc9_ = _loc8_ & -2,_loc1_);
            si32(_loc9_ = (_loc9_ = (_loc9_ = li32(_loc13_ + 4)) & 1) | _loc1_,_loc13_ + 4);
            si32(_loc11_ = (_loc11_ = li32((_loc9_ = li32(_loc13_)) + 4)) & -2,_loc9_ + 4);
            if((_loc9_ = li32(_loc5_)) == _loc1_)
            {
               si32(_loc13_,_loc5_);
               _loc1_ = _loc13_;
               break;
            }
            si32(_loc9_ = (_loc9_ = (_loc9_ = li32(_loc5_ + 4)) & 1) | _loc13_,_loc5_ + 4);
            si32(_loc9_ = _loc9_ & 1 | li32(_loc13_ &= -2),_loc5_ + 4);
            si32(_loc5_,_loc13_);
            si32(_loc9_ = (_loc11_ = (_loc11_ = li32(_loc13_ + 4)) & -2) | (_loc9_ = li32(_loc5_ + 4)) & 1,_loc13_ + 4);
            si32(_loc9_ = (_loc9_ = li32(_loc5_ + 4)) | 1,_loc5_ + 4);
            if((_loc9_ = li32(_loc6_)) == _loc5_)
            {
               si32(_loc13_,_loc6_);
            }
            else
            {
               si32(_loc9_ = (_loc9_ = (_loc9_ = li32(_loc6_ + 4)) & 1) | _loc13_,_loc6_ + 4);
            }
            _loc1_ = _loc5_ = 1;
            if(uint(_loc13_) <= uint(_loc7_))
            {
               _loc1_ = 0;
            }
            if(uint(_loc13_) >= uint(_loc7_))
            {
               _loc5_ = 0;
            }
            _loc11_ = _loc1_ & 1;
            if((_loc8_ = int((_loc9_ = _loc5_ & 1) - _loc11_)) <= -1)
            {
               _loc1_ = li32(_loc13_);
               _loc5_ = _loc13_;
            }
            else
            {
               _loc1_ = (_loc9_ = li32(_loc13_ + 4)) & -2;
               _loc5_ = _loc13_;
            }
         }
         _loc8_ = _loc6_ = 1;
         if(uint(_loc1_) <= uint(_loc7_))
         {
            _loc8_ = 0;
         }
         if(uint(_loc1_) >= uint(_loc7_))
         {
            _loc6_ = 0;
         }
         _loc11_ = _loc8_ & 1;
         if((_loc8_ = int((_loc9_ = _loc6_ & 1) - _loc11_)) <= -1)
         {
            _loc13_ = li32(_loc1_);
            _loc12_ = _loc1_;
            _loc6_ = _loc5_;
         }
         else
         {
            _loc13_ = (_loc9_ = li32(_loc1_ + 4)) & -2;
            _loc12_ = _loc1_;
            _loc6_ = _loc5_;
         }
      }
   }
}
