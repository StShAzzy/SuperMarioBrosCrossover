package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2337;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str3338;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN7Nes_Dmc11fill_bufferEvE8__func__;
   
   public function F__ZN7Nes_Dmc11fill_bufferEv() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc9_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      var _loc10_:*;
      if((_loc10_ = li8(_loc1_ + 44)) == 0)
      {
         if((_loc10_ = li32(_loc1_ + 12)) != 0)
         {
            if((_loc9_ = li32(_loc1_ + 60)) == 0)
            {
               _loc2_ -= 16;
               si32(L__2E_str3338,_loc2_ + 12);
               si32(380,_loc2_ + 8);
               si32(L__2E_str2337,_loc2_ + 4);
               si32(__ZZN7Nes_Dmc11fill_bufferEvE8__func__,_loc2_);
               ESP = _loc2_;
               F___assert();
               _loc2_ += 16;
            }
            _loc10_ = li32(_loc1_ + 64);
            var _loc8_:* = li32(_loc1_ + 24);
            _loc2_ -= 16;
            si32(_loc8_ += 32768,_loc2_ + 4);
            si32(_loc10_,_loc2_);
            ESP = _loc2_;
            ptr2fun[_loc9_]();
            _loc2_ += 16;
            si32(_loc10_ = int(eax),_loc1_ + 32);
            si32(_loc10_ = (_loc10_ = int((_loc10_ = li32(_loc1_ + 24)) + 1)) & 32767,_loc1_ + 24);
            si8(1,_loc1_ + 44);
            si32(_loc10_ = int((_loc10_ = li32(_loc1_ + 12)) + -1),_loc1_ + 12);
            if(_loc10_ == 0)
            {
               if((_loc10_ = (_loc10_ = li8(_loc1_)) & 64) != 0)
               {
                  si32(_loc10_ = (_loc10_ = (_loc10_ = li8(_loc1_ + 2)) << 6) | 16384,_loc1_ + 24);
                  si32(_loc10_ = (_loc10_ = (_loc10_ = li8(_loc1_ + 3)) << 4) | 1,_loc1_ + 12);
               }
               else
               {
                  si32(_loc8_ = (_loc8_ = li32((_loc10_ = li32(_loc1_ + 68)) + 1972)) & -17,_loc10_ + 1972);
                  si8(_loc10_ = li8(_loc1_ + 56),_loc1_ + 57);
                  si32(1073741824,_loc1_ + 52);
                  _loc6_ = 0;
                  if(((_loc10_ = (_loc8_ = li8(_loc7_ + 1980)) | li8((_loc7_ = li32(_loc1_ + 68)) + 1361)) & 255) == 0)
                  {
                     _loc6_ = li32(_loc7_ + 1356);
                     if((_loc5_ = li32(_loc7_ + 1956)) < _loc6_)
                     {
                        _loc6_ = _loc5_;
                     }
                  }
                  if((_loc10_ = li32(_loc7_ + 1952)) != _loc6_)
                  {
                     si32(_loc6_,_loc7_ + 1952);
                     if((_loc4_ = li32(_loc7_ + 1984)) != 0)
                     {
                        _loc2_ -= 16;
                        si32(li32(_loc7_ + 1988),_loc2_);
                        ESP = _loc2_;
                        ptr2fun[_loc4_]();
                        _loc2_ += 16;
                     }
                  }
               }
            }
         }
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
