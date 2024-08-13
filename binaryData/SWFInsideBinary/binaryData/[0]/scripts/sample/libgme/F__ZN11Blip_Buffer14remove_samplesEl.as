package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str104;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2106;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN11Blip_Buffer14remove_silenceElE8__func__;
   
   public function F__ZN11Blip_Buffer14remove_samplesEl() : void
   {
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      if(_loc1_ != 0)
      {
         _loc9_ = li32(_loc3_);
         var _loc7_:*;
         if((_loc7_ = (_loc8_ = li32(_loc9_ + 4)) >>> 16) < _loc1_)
         {
            _loc2_ -= 16;
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2106,_loc2_ + 12);
            si32(152,_loc2_ + 8);
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str104,_loc2_ + 4);
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN11Blip_Buffer14remove_silenceElE8__func__,_loc2_);
            ESP = _loc2_;
            F___assert();
            _loc2_ += 16;
         }
         _loc7_ = _loc1_ << 16;
         var _loc6_:* = _loc8_ - _loc7_;
         si32(_loc6_,_loc9_ + 4);
         _loc7_ = _loc1_ << 2;
         var _loc5_:* = li32(_loc9_ + 8);
         var _loc4_:int = _loc5_ + _loc7_;
         _loc2_ -= 16;
         si32(_loc4_,_loc2_ + 4);
         si32(_loc5_,_loc2_);
         _loc6_ &= -65536;
         si32(_loc6_ = (_loc6_ = _loc6_ &= -65536 >>> 14) + 72,_loc2_ + 8);
         ESP = _loc2_;
         Fmemmove();
         _loc2_ += 16;
         _loc5_ = li32(_loc9_ + 8);
         _loc2_ -= 16;
         si32(_loc7_,_loc2_ + 8);
         si32(0,_loc2_ + 4);
         _loc7_ = _loc5_ + _loc6_;
         si32(_loc7_,_loc2_);
         ESP = _loc2_;
         Fmemset();
         _loc2_ += 16;
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
