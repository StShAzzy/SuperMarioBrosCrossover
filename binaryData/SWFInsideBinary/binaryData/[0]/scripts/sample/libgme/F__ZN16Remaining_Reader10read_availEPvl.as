package sample.libgme
{
   import avm2.intrinsics.memory.*;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.*;
   
   public function F__ZN16Remaining_Reader10read_availEPvl() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc12_:* = 0;
      var _loc11_:* = 0;
      var _loc7_:* = 0;
      var _loc10_:* = 0;
      var _loc6_:int = 0;
      var _loc2_:* = ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc12_ = li32(_loc1_ + 4);
      _loc11_ = li32(_loc1_ + 8);
      _loc10_ = _loc11_ - _loc12_;
      _loc9_ = li32(_loc3_ + 8);
      _loc8_ = li32(_loc3_ + 4);
      if(_loc11_ != _loc12_)
      {
         _loc7_ = _loc9_;
         if(_loc10_ <= _loc9_)
         {
            _loc7_ = _loc10_;
         }
         _loc11_ = _loc12_ + _loc7_;
         si32(_loc11_,_loc1_ + 4);
         _loc2_ -= 16;
         si32(_loc7_,_loc2_ + 8);
         si32(_loc12_,_loc2_ + 4);
         si32(_loc8_,_loc2_);
         ESP = _loc2_;
         Fmemcpy();
         _loc2_ += 16;
         _loc10_ = _loc7_;
      }
      _loc6_ = _loc9_ - _loc10_;
      if(_loc10_ != _loc9_)
      {
         _loc11_ = li32(_loc1_ + 12);
         var _loc5_:*;
         var _loc4_:* = li32((_loc5_ = li32(_loc11_)) + 8);
         _loc2_ -= 16;
         si32(_loc6_,_loc2_ + 8);
         _loc5_ = _loc8_ + _loc10_;
         si32(_loc5_,_loc2_ + 4);
         si32(_loc11_,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc4_]();
         _loc2_ += 16;
         _loc6_ = eax;
         if(_loc6_ >= 1)
         {
            addr176:
            _loc6_ += _loc10_;
         }
         eax = _loc6_;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      §§goto(addr176);
   }
}
