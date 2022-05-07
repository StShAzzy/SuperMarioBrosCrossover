package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.sxi8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str1487;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str486;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN7Spc_Dsp5writeEiiE8__func__;
   
   public function F__ZN7Spc_Dsp5writeEii() : void
   {
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc1_:* = 0;
      var _loc9_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      if(uint(_loc1_) >= 128)
      {
         _loc2_ -= 16;
         si32(L__2E_str1487,_loc2_ + 12);
         si32(70,_loc2_ + 8);
         si32(L__2E_str486,_loc2_ + 4);
         si32(__ZZN7Spc_Dsp5writeEiiE8__func__,_loc2_);
         ESP = _loc2_;
         F___assert();
         _loc2_ += 16;
      }
      _loc9_ = li32(_loc3_ + 8);
      var _loc7_:int = (_loc8_ = li32(_loc3_)) + _loc1_;
      si8(_loc9_,_loc7_);
      _loc6_ = _loc1_ & 15;
      _loc5_ = _loc1_ >> 4;
      if(_loc6_ != 15)
      {
         if(uint(_loc6_) <= 1)
         {
            _loc6_ = si8(li8(_loc7_ = _loc8_ + (_loc1_ | 1)));
            _loc5_ = int(_loc8_ + (_loc5_ << 5));
            _loc1_ = si8(li8(_loc7_ = _loc8_ + (_loc1_ & -2)));
            si16(_loc1_,_loc5_ + 248);
            si16(_loc6_,_loc5_ + 250);
            if(int(_loc6_ * _loc1_) < li32(_loc8_ + 244))
            {
               if(_loc1_ <= -1)
               {
                  si16(_loc7_ = 0 - _loc1_,_loc5_ + 248);
               }
               else
               {
                  si16(_loc7_ = 0 - _loc6_,_loc5_ + 250);
               }
            }
         }
      }
      else
      {
         var _loc4_:*;
         si16(_loc4_ = (_loc4_ = _loc9_ << 24) >> 24,int(_loc8_ + (_loc5_ << 1)) + 132);
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
