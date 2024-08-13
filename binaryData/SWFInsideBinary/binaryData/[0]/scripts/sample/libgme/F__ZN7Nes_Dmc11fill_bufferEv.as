package sample.libgme
{
   import avm2.intrinsics.memory.*;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.*;
   
   public function F__ZN7Nes_Dmc11fill_bufferEv() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc9_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      var _loc10_:* = li8(_loc1_ + 44);
      if(_loc10_ == 0)
      {
         _loc10_ = li32(_loc1_ + 12);
         if(_loc10_ != 0)
         {
            _loc9_ = li32(_loc1_ + 60);
            if(_loc9_ == 0)
            {
               _loc2_ -= 16;
               si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str3338,_loc2_ + 12);
               si32(380,_loc2_ + 8);
               si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2337,_loc2_ + 4);
               si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN7Nes_Dmc11fill_bufferEvE8__func__,_loc2_);
               ESP = _loc2_;
               F___assert();
               _loc2_ += 16;
            }
            _loc10_ = li32(_loc1_ + 64);
            var _loc8_:* = li32(_loc1_ + 24);
            _loc2_ -= 16;
            _loc8_ += 32768;
            si32(_loc8_ += 32768,_loc2_ + 4);
            si32(_loc10_,_loc2_);
            ESP = _loc2_;
            ptr2fun[_loc9_]();
            _loc2_ += 16;
            _loc10_ = eax;
            si32(_loc10_,_loc1_ + 32);
            _loc10_ = li32(_loc1_ + 24);
            si32(_loc10_ = (_loc10_ = _loc10_ + 1) & 0x7FFF,_loc1_ + 24);
            si8(1,_loc1_ + 44);
            _loc10_ = li32(_loc1_ + 12);
            si32(_loc10_ = _loc10_ + -1,_loc1_ + 12);
            if(_loc10_ == 0)
            {
               _loc10_ = li8(_loc1_);
               if((_loc10_ = _loc10_ & 0x40) != 0)
               {
                  _loc10_ = li8(_loc1_ + 2);
                  si32(_loc10_ = (_loc10_ = _loc10_ << 6) | 0x4000,_loc1_ + 24);
                  _loc10_ = li8(_loc1_ + 3);
                  si32(_loc10_ = (_loc10_ = _loc10_ << 4) | 1,_loc1_ + 12);
               }
               else
               {
                  _loc10_ = li32(_loc1_ + 68);
                  si32(_loc8_ = (_loc8_ = li32(_loc10_ + 1972)) & -17,_loc10_ + 1972);
                  _loc10_ = li8(_loc1_ + 56);
                  si8(_loc10_,_loc1_ + 57);
                  si32(1073741824,_loc1_ + 52);
                  _loc6_ = 0;
                  _loc7_ = li32(_loc1_ + 68);
                  if(((_loc10_ = (_loc8_ = li8(_loc7_ + 1980)) | li8(_loc7_ + 1361)) & 0xFF) == 0)
                  {
                     _loc6_ = li32(_loc7_ + 1356);
                     _loc5_ = li32(_loc7_ + 1956);
                     if(_loc5_ < _loc6_)
                     {
                        _loc6_ = _loc5_;
                     }
                  }
                  _loc10_ = li32(_loc7_ + 1952);
                  if(_loc10_ != _loc6_)
                  {
                     si32(_loc6_,_loc7_ + 1952);
                     _loc4_ = li32(_loc7_ + 1984);
                     if(_loc4_ != 0)
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
