package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme.ESP;
   import sample.libgme.F___sfvwrite;
   import sample.libgme.eax;
   
   public function F___printf_render_pct() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc6_ = (_loc6_ = li8((_loc6_ = li32(_loc1_)) + 12)) & 64;
      _loc5_ = 0;
      if(_loc6_ == 0)
      {
         si32(L__2E_str2920,li32(_loc1_ + 80));
         si32(_loc5_ = 1,li32(_loc1_ + 80) + 4);
         si32(_loc6_ = int((_loc6_ = li32(_loc1_ + 12)) + 1),_loc1_ + 12);
         si32(_loc6_ = int((_loc6_ = li32(_loc1_ + 80)) + 8),_loc1_ + 80);
         si32(_loc6_ = int((_loc6_ = li32(_loc1_ + 8)) + 1),_loc1_ + 8);
         if(_loc6_ >= 8)
         {
            _loc2_ -= 16;
            var _loc4_:int;
            si32(_loc4_ = _loc1_ + 4,_loc2_ + 4);
            si32(li32(_loc1_),_loc2_);
            ESP = _loc2_;
            F___sfvwrite();
            _loc2_ += 16;
            si32(_loc6_ = int(_loc1_ + 16),_loc1_ + 80);
            si32(_loc6_,_loc1_ + 4);
            si32(0,_loc1_ + 12);
            si32(0,_loc1_ + 8);
            _loc5_ = 1;
         }
      }
      eax = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
