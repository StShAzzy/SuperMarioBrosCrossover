package sample.libgme
{
   import avm2.intrinsics.memory.*;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.*;
   
   public function F__ZN9Music_Emu8fill_bufEv() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc10_:* = 0;
      var _loc8_:int = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:int = 0;
      var _loc2_:* = ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      var _loc11_:* = li32(_loc1_ + 236);
      if(_loc11_ != 0)
      {
         _loc2_ -= 16;
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2269,_loc2_ + 12);
         si32(314,_loc2_ + 8);
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str1268,_loc2_ + 4);
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN9Music_Emu8fill_bufEvE8__func__,_loc2_);
         ESP = _loc2_;
         F___assert();
         _loc2_ += 16;
      }
      _loc11_ = li8(_loc1_ + 208);
      if(_loc11_ == 0)
      {
         _loc10_ = li32(_loc1_ + 240);
         _loc11_ = li32(_loc1_ + 204);
         si32(_loc11_ = _loc11_ + 2048,_loc1_ + 204);
         _loc11_ = li32(_loc1_ + 196);
         if(_loc11_ >= 0)
         {
            _loc11_ = li32(_loc1_);
            var _loc9_:* = li32(_loc11_ + 60);
            _loc2_ -= 16;
            si32(_loc10_,_loc2_ + 8);
            si32(2048,_loc2_ + 4);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            ptr2fun[_loc9_]();
            _loc2_ += 16;
            _loc8_ = eax;
            if(_loc8_ != 0)
            {
               si8(1,_loc1_ + 208);
               si32(_loc8_,_loc1_ + 16);
            }
         }
         else
         {
            _loc2_ -= 16;
            si32(4096,_loc2_ + 8);
            si32(0,_loc2_ + 4);
            si32(_loc10_,_loc2_);
            ESP = _loc2_;
            Fmemset();
            _loc2_ += 16;
         }
         _loc7_ = li32(_loc1_ + 240);
         _loc6_ = li16(_loc7_);
         si16(16,_loc7_);
         _loc5_ = 4096;
         do
         {
            _loc11_ = _loc7_ + _loc5_;
            _loc11_ = (_loc11_ = si16(li16(_loc11_ - 2))) + 8;
            _loc5_ += -2;
         }
         while(uint(_loc11_) < 17);
         
         si16(_loc6_,_loc7_);
         if(_loc5_ >= 1)
         {
            var _loc4_:*;
            _loc11_ = (_loc4_ = _loc5_ >> 1) + li32(_loc1_ + 204);
            si32(_loc11_ = _loc11_ + -2048,_loc1_ + 228);
            si32(2048,_loc1_ + 236);
         }
         else
         {
            addr275:
            _loc11_ = li32(_loc1_ + 232);
            si32(_loc11_ = _loc11_ + 2048,_loc1_ + 232);
         }
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      §§goto(addr275);
   }
}
