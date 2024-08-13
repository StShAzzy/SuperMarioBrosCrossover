package sample.libgme
{
   import avm2.intrinsics.memory.*;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.*;
   
   public function F__ZN8Gme_File8load_memEPKvl() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:int = 0;
      var _loc6_:* = 0;
      var _loc9_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      var _loc10_:* = li32(_loc1_);
      _loc9_ = li32(_loc10_ + 24);
      _loc2_ -= 16;
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      ptr2fun[_loc9_]();
      _loc2_ += 16;
      _loc10_ = li32(_loc1_);
      _loc8_ = li32(_loc10_ + 16);
      _loc2_ -= 16;
      _loc10_ = li32(_loc3_ + 8);
      si32(_loc10_,_loc2_ + 8);
      _loc10_ = li32(_loc3_ + 4);
      si32(_loc10_,_loc2_ + 4);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      ptr2fun[_loc8_]();
      _loc2_ += 16;
      _loc7_ = eax;
      _loc10_ = li32(_loc1_ + 8);
      if(_loc10_ == 0)
      {
         _loc10_ = li32(_loc1_ + 4);
         si32(_loc10_ = li32(_loc10_ + 4),_loc1_ + 12);
         si32(_loc10_,_loc1_ + 8);
      }
      _loc6_ = li32(_loc1_);
      if(_loc7_ == 0)
      {
         var _loc5_:* = li32(_loc6_ + 28);
         _loc2_ -= 16;
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc5_]();
         _loc2_ += 16;
      }
      else
      {
         var _loc4_:* = li32(_loc6_ + 8);
         _loc2_ -= 16;
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc4_]();
         _loc2_ += 16;
      }
      eax = _loc7_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
