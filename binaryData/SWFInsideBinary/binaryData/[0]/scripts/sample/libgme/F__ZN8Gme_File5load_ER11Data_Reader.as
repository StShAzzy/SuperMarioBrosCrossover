package sample.libgme
{
   import avm2.intrinsics.memory.*;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.*;
   
   public function F__ZN8Gme_File5load_ER11Data_Reader() : void
   {
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc1_:* = 0;
      var _loc10_:int = 0;
      var _loc8_:int = 0;
      var _loc11_:* = 0;
      var _loc12_:* = 0;
      var _loc7_:int = 0;
      var _loc2_:* = ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc12_ = li32(_loc1_);
      _loc11_ = li32(_loc12_ + 16);
      _loc2_ -= 16;
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      ptr2fun[_loc11_]();
      _loc2_ += 16;
      _loc10_ = eax;
      _loc9_ = li32(_loc3_);
      _loc12_ = li32(_loc9_ + 132);
      _loc2_ -= 16;
      si32(_loc10_,_loc2_ + 4);
      si32(_loc12_,_loc2_);
      ESP = _loc2_;
      F_realloc();
      _loc2_ += 16;
      _loc8_ = eax;
      if(_loc8_ == 0)
      {
         _loc7_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str9197;
         if(_loc10_ == 0)
         {
            addr110:
            si32(_loc8_,_loc9_ + 132);
            si32(_loc10_,_loc9_ + 136);
            _loc12_ = li32(_loc1_);
            var _loc6_:* = li32(_loc12_ + 12);
            _loc2_ -= 16;
            si32(_loc10_,_loc2_ + 8);
            si32(_loc8_,_loc2_ + 4);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            ptr2fun[_loc6_]();
            _loc2_ += 16;
            _loc7_ = eax;
            if(_loc7_ == 0)
            {
               _loc12_ = li32(_loc9_);
               var _loc5_:* = li32(_loc12_ + 16);
               _loc2_ -= 16;
               si32(li32(_loc9_ + 136),_loc2_ + 8);
               si32(li32(_loc9_ + 132),_loc2_ + 4);
               si32(_loc9_,_loc2_);
               ESP = _loc2_;
               ptr2fun[_loc5_]();
               _loc2_ += 16;
               _loc7_ = eax;
            }
         }
         eax = _loc7_;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      §§goto(addr110);
   }
}
