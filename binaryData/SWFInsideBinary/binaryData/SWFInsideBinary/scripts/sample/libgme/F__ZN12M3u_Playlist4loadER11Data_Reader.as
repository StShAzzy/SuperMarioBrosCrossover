package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.F_idalloc;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str1247;
   
   public function F__ZN12M3u_Playlist4loadER11Data_Reader() : void
   {
      var _loc4_:* = 0;
      var _loc11_:* = 0;
      var _loc3_:* = 0;
      var _loc12_:int = 0;
      var _loc10_:int = 0;
      var _loc9_:int = 0;
      var _loc1_:int = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc14_:* = 0;
      var _loc13_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = li32((_loc4_ = _loc2_) + 4);
      _loc13_ = li32((_loc14_ = li32(_loc3_)) + 16);
      _loc2_ -= 16;
      si32(_loc3_,_loc2_);
      ESP = _loc2_;
      ptr2fun[_loc13_]();
      _loc2_ += 16;
      _loc12_ = eax;
      _loc14_ = li32((_loc11_ = li32(_loc4_)) + 8);
      _loc2_ -= 16;
      si32(_loc10_ = _loc12_ + 1,_loc2_ + 4);
      si32(_loc14_,_loc2_);
      ESP = _loc2_;
      F_realloc();
      _loc2_ += 16;
      if((_loc9_ = eax) == 0)
      {
         _loc8_ = int(L__2E_str1247);
         if(_loc10_ == 0)
         {
            addr123:
            si32(_loc9_,_loc11_ + 8);
            si32(_loc10_,_loc11_ + 12);
            var _loc7_:* = li32((_loc14_ = li32(_loc3_)) + 12);
            _loc2_ -= 16;
            si32(_loc12_,_loc2_ + 8);
            si32(_loc9_,_loc2_ + 4);
            si32(_loc3_,_loc2_);
            ESP = _loc2_;
            ptr2fun[_loc7_]();
            _loc2_ += 16;
            if((_loc8_ = int(eax)) == 0)
            {
               _loc2_ -= 16;
               si32(_loc11_,_loc2_);
               ESP = _loc2_;
               F__ZN12M3u_Playlist6parse_Ev();
               _loc8_ = 0;
               _loc2_ += 16;
               _loc1_ = eax;
               if(_loc1_ != 0)
               {
                  _loc5_ = li32(_loc11_);
                  si32(0,_loc11_);
                  si32(0,_loc11_ + 4);
                  if(_loc5_ != 0)
                  {
                     _loc2_ -= 16;
                     si32(_loc5_,_loc2_);
                     ESP = _loc2_;
                     F_idalloc();
                     _loc2_ += 16;
                  }
                  _loc6_ = li32(_loc11_ + 8);
                  si32(0,_loc11_ + 8);
                  si32(0,_loc11_ + 12);
                  _loc8_ = _loc1_;
                  if(_loc6_ != 0)
                  {
                     _loc2_ -= 16;
                     si32(_loc6_,_loc2_);
                     ESP = _loc2_;
                     F_idalloc();
                     _loc2_ += 16;
                     _loc8_ = _loc1_;
                  }
               }
            }
         }
         eax = _loc8_;
         _loc2_ = _loc4_;
         ESP = _loc2_;
         return;
      }
      §§goto(addr123);
   }
}
