package sample.libgme
{
   import avm2.intrinsics.memory.*;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.*;
   
   public function F__ZN7Nes_Dmc5startEv() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc10_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc12_:* = 0;
      var _loc11_:int = 0;
      var _loc6_:* = 0;
      var _loc2_:* = ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc12_ = li8(_loc1_ + 2);
      si32(_loc12_ = (_loc12_ = _loc12_ << 6) | 0x4000,_loc1_ + 24);
      _loc12_ = li8(_loc1_ + 3);
      si32(_loc12_ = (_loc12_ = _loc12_ << 4) | 1,_loc1_ + 12);
      _loc2_ -= 16;
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F__ZN7Nes_Dmc11fill_bufferEv();
      _loc2_ += 16;
      _loc12_ = li8(_loc1_ + 56);
      _loc11_ = 1073741824;
      if(_loc12_ != 0)
      {
         _loc10_ = li32(_loc1_ + 12);
         _loc11_ = 1073741824;
         if(_loc10_ != 0)
         {
            var _loc9_:*;
            _loc12_ = (_loc9_ = li32((_loc9_ = li32(_loc1_ + 68)) + 1948)) + li32(_loc1_ + 16) + ((_loc9_ = (_loc9_ = _loc10_ << 3) + li32(_loc1_ + 36)) + -9) * li32(_loc1_ + 28);
            _loc11_ = _loc12_ + 1;
         }
      }
      _loc12_ = li32(_loc1_ + 52);
      if(_loc12_ != _loc11_)
      {
         si32(_loc11_,_loc1_ + 52);
         _loc6_ = 0;
         _loc7_ = li32(_loc1_ + 68);
         if(((_loc12_ = (_loc9_ = li8(_loc7_ + 1980)) | li8(_loc7_ + 1361)) & 0xFF) == 0)
         {
            _loc6_ = li32(_loc7_ + 1356);
            _loc5_ = li32(_loc7_ + 1956);
            if(_loc5_ < _loc6_)
            {
               _loc6_ = _loc5_;
            }
         }
         _loc12_ = li32(_loc7_ + 1952);
         if(_loc12_ != _loc6_)
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
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
