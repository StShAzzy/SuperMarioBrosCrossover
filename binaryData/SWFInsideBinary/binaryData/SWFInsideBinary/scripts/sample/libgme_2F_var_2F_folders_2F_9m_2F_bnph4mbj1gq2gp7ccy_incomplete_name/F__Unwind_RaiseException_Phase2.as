package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme.ESP;
   import sample.libgme.F_abort;
   import sample.libgme.eax;
   import sample.libgme.ptr2fun;
   
   public function F__Unwind_RaiseException_Phase2() : void
   {
      var _loc3_:* = 0;
      var _loc11_:* = 0;
      var _loc1_:* = 0;
      var _loc9_:* = 0;
      var _loc10_:* = 0;
      var _loc4_:int = 0;
      var _loc12_:* = 0;
      var _loc6_:int = 0;
      var _loc5_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc12_ = li32(_loc1_);
      _loc11_ = li32(_loc3_);
      for(; _loc12_ != 0; if(_loc12_ == _loc10_)
      {
         ESP = _loc2_;
         F_abort();
      },var _loc8_:*,si32(_loc12_ = li32(_loc8_ = li32(_loc1_)),_loc1_))
      {
         _loc10_ = li32(_loc11_ + 16);
         if((_loc9_ = li32(_loc12_ + 24)) != 0)
         {
            _loc2_ -= 32;
            si32(_loc1_,_loc2_ + 20);
            si32(_loc11_,_loc2_ + 16);
            si32(li32(_loc11_ + 4),_loc2_ + 12);
            si32(li32(_loc11_),_loc2_ + 8);
            _loc6_ = 6;
            if(_loc12_ != _loc10_)
            {
               _loc6_ = 2;
            }
            si32(_loc6_,_loc2_ + 4);
            si32(1,_loc2_);
            ESP = _loc2_;
            ptr2fun[_loc9_]();
            _loc5_ = 7;
            _loc2_ += 32;
            if((_loc4_ = eax) == 7)
            {
               eax = _loc5_;
               _loc2_ = _loc3_;
               ESP = _loc2_;
            }
            if(_loc4_ != 8)
            {
               break;
            }
            continue;
            §§goto(addr155);
         }
      }
      _loc5_ = 2;
      addr155:
   }
}
