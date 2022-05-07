package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.sxi8;
   import sample.libgme.ESP;
   import sample.libgme.F___error;
   import sample.libgme.eax;
   
   public function F__ascii_mbsnrtowcs() : void
   {
      var _loc3_:* = 0;
      var _loc10_:* = 0;
      var _loc1_:* = 0;
      var _loc11_:* = 0;
      var _loc12_:* = 0;
      var _loc7_:int = 0;
      var _loc8_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc12_ = li32(_loc1_);
      _loc11_ = li32(_loc3_ + 8);
      if((_loc10_ = li32(_loc3_)) == 0)
      {
         _loc10_ = int(0 - _loc11_);
         _loc1_ = 0;
         while(_loc10_ != _loc1_)
         {
            var _loc9_:*;
            if((_loc8_ = li8(_loc9_ = int(_loc12_ - _loc1_))) == 0)
            {
               break;
            }
            if((_loc9_ = (_loc9_ = _loc8_ << 24) >> 24) <= -1)
            {
               ESP = _loc2_;
               F___error();
               si32(86,int(eax));
               _loc11_ = -1;
               §§goto(addr217);
            }
            _loc1_ += -1;
         }
         _loc11_ = int(0 - _loc1_);
      }
      else
      {
         _loc8_ = int(0 - li32(_loc3_ + 12));
         _loc7_ = 0 - _loc11_;
         _loc6_ = 0;
         for(; _loc8_ != _loc6_; _loc6_ += -1)
         {
            if(_loc7_ == _loc6_)
            {
               break;
            }
            if((_loc5_ = si8(li8(_loc9_ = int(_loc12_ - _loc6_)))) <= -1)
            {
               ESP = _loc2_;
               F___error();
               si32(86,int(eax));
               _loc11_ = -1;
            }
            else
            {
               _loc11_ = int(0 - _loc6_);
               var _loc4_:int = _loc10_ + (_loc11_ << 2);
               si32(_loc5_ & 255,_loc4_);
               if((_loc5_ & 255) != 0)
               {
                  continue;
               }
               si32(0,_loc1_);
            }
            §§goto(addr217);
         }
         si32(_loc9_ = int(_loc12_ - _loc6_),_loc1_);
         _loc11_ = int(0 - _loc6_);
      }
      addr217:
      eax = _loc11_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
