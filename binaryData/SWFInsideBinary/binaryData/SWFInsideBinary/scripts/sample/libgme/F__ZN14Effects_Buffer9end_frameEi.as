package sample.libgme
{
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str104;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str3107;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN11Blip_Buffer9end_frameEiE8__func__;
   
   public function F__ZN14Effects_Buffer9end_frameEi() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc10_:* = 0;
      var _loc11_:* = 0;
      var _loc6_:* = 0;
      var _loc9_:int = 0;
      var _loc8_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc11_ = li32(_loc1_ + 440);
      _loc10_ = li32(_loc3_ + 4);
      _loc9_ = 0;
      _loc8_ = 0;
      if(_loc11_ >= 1)
      {
         do
         {
            var _loc7_:* = (_loc7_ = int(_loc9_ * 11)) << 2;
            _loc6_ = li32((_loc7_ = int(_loc1_ + _loc7_)) + 60);
            si32(0,_loc7_ + 60);
            var _loc5_:*;
            var _loc4_:int = (_loc5_ = li32(_loc7_ + 20)) * _loc10_;
            _loc5_ = li32(_loc7_ + 24);
            si32(_loc5_ = int(_loc4_ + _loc5_),_loc7_ + 24);
            _loc5_ >>>= 16;
            _loc7_ = li32(_loc7_ + 32);
            if(_loc5_ > _loc7_)
            {
               _loc2_ -= 16;
               si32(L__2E_str3107,_loc2_ + 12);
               si32(147,_loc2_ + 8);
               si32(L__2E_str104,_loc2_ + 4);
               si32(__ZZN11Blip_Buffer9end_frameEiE8__func__,_loc2_);
               ESP = _loc2_;
               F___assert();
               _loc2_ += 16;
            }
            _loc8_ = (_loc7_ = _loc6_ << _loc9_) | _loc8_;
            _loc9_ += 1;
         }
         while(_loc11_ > _loc9_);
         
      }
      _loc6_ = li8(_loc1_ + 424);
      _loc9_ = 6;
      if(_loc6_ != 0)
      {
         _loc9_ = 120;
      }
      if((_loc7_ = _loc9_ & _loc8_) != 0)
      {
         if(_loc11_ == 7)
         {
            si32(_loc7_ = int((_loc7_ = li16(_loc1_ + 26)) + 8),_loc1_ + 432);
         }
      }
      _loc8_ = 1;
      if(_loc6_ == 0)
      {
         _loc8_ = 0;
      }
      if((_loc7_ = li8(_loc1_ + 444)) == 0)
      {
         if((_loc7_ = _loc8_ & 1) != 0)
         {
            addr224:
            si32(_loc7_ = int((_loc7_ = li16(_loc1_ + 26)) + 8),_loc1_ + 436);
         }
         si8(_loc6_,_loc1_ + 444);
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      §§goto(addr224);
   }
}
