package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str1268;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str3270;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN9Music_Emu4skipElE8__func__;
   
   public function F__ZN9Music_Emu4skipEl() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc13_:* = 0;
      var _loc5_:int = 0;
      var _loc12_:* = 0;
      var _loc10_:int = 0;
      var _loc9_:* = 0;
      var _loc11_:* = 0;
      var _loc8_:* = 0;
      var _loc6_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = li32(_loc4_ = _loc2_);
      var _loc14_:*;
      if((_loc14_ = li32(_loc3_ + 196)) <= -1)
      {
         _loc2_ -= 16;
         si32(L__2E_str3270,_loc2_ + 12);
         si32(197,_loc2_ + 8);
         si32(L__2E_str1268,_loc2_ + 4);
         si32(__ZZN9Music_Emu4skipElE8__func__,_loc2_);
         ESP = _loc2_;
         F___assert();
         _loc2_ += 16;
      }
      _loc13_ = li32(_loc4_ + 4);
      si32(_loc14_ = int((_loc14_ = li32(_loc3_ + 200)) + _loc13_),_loc3_ + 200);
      _loc12_ = li32(_loc3_ + 232);
      _loc11_ = _loc13_;
      if(_loc12_ <= _loc13_)
      {
         _loc11_ = _loc12_;
      }
      si32(_loc14_ = int(_loc12_ - _loc11_),_loc3_ + 232);
      _loc10_ = _loc13_ - _loc11_;
      _loc9_ = li32(_loc3_ + 236);
      _loc8_ = _loc10_;
      if(_loc10_ >= _loc9_)
      {
         _loc8_ = _loc9_;
      }
      si32(_loc14_ = int(_loc9_ - _loc8_),_loc3_ + 236);
      if(_loc10_ != _loc8_)
      {
         if((_loc14_ = li8(_loc3_ + 208)) == 0)
         {
            _loc14_ = int(_loc10_ - _loc8_);
            var _loc7_:*;
            si32(_loc7_ = int((_loc7_ = li32(_loc3_ + 204)) + _loc14_),_loc3_ + 204);
            var _loc1_:* = li32((_loc7_ = li32(_loc3_)) + 64);
            _loc2_ -= 16;
            si32(_loc14_,_loc2_ + 4);
            si32(_loc3_,_loc2_);
            ESP = _loc2_;
            ptr2fun[_loc1_]();
            _loc2_ += 16;
            if((_loc5_ = eax) != 0)
            {
               si8(1,_loc3_ + 208);
               si32(_loc5_,_loc3_ + 16);
            }
         }
      }
      _loc7_ = li32(_loc3_ + 232);
      if((_loc14_ = (_loc14_ = li32(_loc3_ + 236)) | _loc7_) == 0)
      {
         _loc6_ = 1;
         if(((_loc14_ = (_loc14_ = li8(_loc3_ + 208)) | li8(_loc3_ + 209)) & 255) == 0)
         {
            _loc6_ = 0;
         }
         si8(_loc14_ = _loc6_ & 1,_loc3_ + 209);
      }
      eax = 0;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
