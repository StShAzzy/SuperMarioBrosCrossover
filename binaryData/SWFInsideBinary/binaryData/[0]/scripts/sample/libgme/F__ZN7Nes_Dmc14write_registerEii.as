package sample.libgme
{
   import avm2.intrinsics.memory.*;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.*;
   
   public function F__ZN7Nes_Dmc14write_registerEii() : void
   {
      var _loc7_:* = 0;
      var _loc18_:* = 0;
      var _loc19_:* = 0;
      var _loc4_:* = 0;
      var _loc15_:* = 0;
      var _loc1_:* = 0;
      var _loc9_:* = 0;
      var _loc11_:* = 0;
      var _loc2_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc14_:* = 0;
      var _loc13_:int = 0;
      var _loc12_:int = 0;
      var _loc10_:* = 0;
      var _loc3_:* = ESP;
      _loc7_ = _loc3_;
      _loc4_ = li32(_loc7_ + 8);
      _loc19_ = li32(_loc7_ + 4);
      _loc18_ = li32(_loc7_);
      if(_loc19_ != 1)
      {
         if(_loc19_ == 0)
         {
            var _loc17_:* = li8(_loc18_ + 58);
            var _loc16_:*;
            si32(_loc15_ = si16(li16(_loc17_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL16dmc_period_table + (_loc17_ << 5) + ((_loc16_ = _loc4_ & 0x0F) << 1))),_loc18_ + 28);
            _loc14_ = _loc4_ & 0xC0;
            _loc13_ = 1;
            if(_loc14_ != 128)
            {
               _loc13_ = 0;
            }
            _loc17_ = _loc13_ & 1;
            si8(_loc17_,_loc18_ + 56);
            _loc16_ = li8(_loc18_ + 57);
            si8(_loc17_ = _loc16_ & _loc17_,_loc18_ + 57);
            _loc12_ = 1073741824;
            if(_loc14_ == 128)
            {
               _loc1_ = li32(_loc18_ + 12);
               _loc12_ = 1073741824;
               if(_loc1_ != 0)
               {
                  _loc17_ = (_loc16_ = li32((_loc16_ = li32(_loc18_ + 68)) + 1948)) + li32(_loc18_ + 16) + (_loc16_ = (_loc16_ = (_loc16_ = _loc1_ << 3) + li32(_loc18_ + 36)) + -9) * _loc15_;
                  _loc12_ = _loc17_ + 1;
               }
            }
            _loc17_ = li32(_loc18_ + 52);
            if(_loc17_ != _loc12_)
            {
               si32(_loc12_,_loc18_ + 52);
               _loc10_ = 0;
               _loc9_ = li32(_loc18_ + 68);
               if(((_loc17_ = (_loc17_ = li8(_loc9_ + 1980)) | li8(_loc9_ + 1361)) & 0xFF) == 0)
               {
                  _loc10_ = li32(_loc9_ + 1356);
                  _loc11_ = li32(_loc9_ + 1956);
                  if(_loc11_ < _loc10_)
                  {
                     _loc10_ = _loc11_;
                  }
               }
               _loc17_ = li32(_loc9_ + 1952);
               if(_loc17_ != _loc10_)
               {
                  si32(_loc10_,_loc9_ + 1952);
                  _loc2_ = li32(_loc9_ + 1984);
                  if(_loc2_ != 0)
                  {
                     _loc3_ -= 16;
                     si32(li32(_loc9_ + 1988),_loc3_);
                     ESP = _loc3_;
                     ptr2fun[_loc2_]();
                     _loc3_ += 16;
                  }
               }
            }
         }
      }
      else
      {
         _loc5_ = li32(_loc18_ + 48);
         _loc6_ = _loc4_ & 0x7F;
         si32(_loc6_,_loc18_ + 48);
         _loc17_ = li8(_loc18_ + 59);
         if(_loc17_ == 0)
         {
            _loc17_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL9dac_table + _loc5_;
            si32(_loc17_ = (_loc17_ = li8(_loc17_)) + _loc6_ - li8(_loc16_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL9dac_table + _loc6_),_loc18_ + 20);
         }
      }
      _loc3_ = _loc7_;
      ESP = _loc3_;
   }
}
