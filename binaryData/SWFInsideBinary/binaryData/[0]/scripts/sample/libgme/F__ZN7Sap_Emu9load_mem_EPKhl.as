package sample.libgme
{
   import avm2.intrinsics.memory.*;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.*;
   
   public function F__ZN7Sap_Emu9load_mem_EPKhl() : void
   {
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc10_:int = 0;
      var _loc1_:* = 0;
      var _loc11_:* = 0;
      var _loc8_:int = 0;
      var _loc2_:* = ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 8);
      _loc11_ = li32(_loc3_ + 4);
      _loc10_ = _loc11_ + _loc1_;
      _loc9_ = li32(_loc3_);
      si32(_loc10_,_loc9_ + 884);
      si32(0,_loc9_ + 308);
      si32(66,_loc9_ + 324);
      si8(0,_loc9_ + 336);
      si32(-1,_loc9_ + 312);
      si32(-1,_loc9_ + 316);
      si32(-1,_loc9_ + 320);
      si32(312,_loc9_ + 332);
      _loc2_ -= 16;
      _loc10_ = _loc9_ + 304;
      si32(_loc10_,_loc2_ + 8);
      si32(_loc1_,_loc2_ + 4);
      si32(_loc11_,_loc2_);
      ESP = _loc2_;
      F__ZL10parse_infoPKhlPN7Sap_Emu6info_tE();
      _loc2_ += 16;
      _loc8_ = eax;
      if(_loc8_ == 0)
      {
         si32(li32(_loc9_ + 308),_loc9_ + 16);
         si32(li32(_loc9_ + 328),_loc9_ + 12);
         si32(li32(_loc9_ + 328),_loc9_ + 8);
         si32(4 << li8(_loc9_ + 336),_loc9_ + 168);
         _loc2_ -= 16;
         var _loc7_:Number = lf64(_loc9_ + 184) * 0.008333333333333333;
         sf64(_loc7_,_loc2_ + 4);
         si32(_loc9_ + 67160,_loc2_);
         ESP = _loc2_;
         F__ZN11Blip_Synth_11volume_unitEd();
         _loc2_ += 16;
         si32(1773447,_loc9_ + 260);
         var _loc6_:* = li32((_loc11_ = li32(li32(_loc9_ + 252))) + 20);
         _loc2_ -= 16;
         si32(1773447,_loc2_ + 4);
         si32(li32(_loc9_ + 252),_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc6_]();
         _loc2_ += 16;
         var _loc5_:* = li32((_loc11_ = li32(li32(_loc9_ + 252))) + 8);
         _loc2_ -= 16;
         si32(li32(_loc9_ + 168),_loc2_ + 4);
         si32(li32(_loc9_ + 252),_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc5_]();
         _loc2_ += 16;
         _loc8_ = eax;
         if(_loc8_ == 0)
         {
            var _loc4_:* = li32(li32(_loc9_) + 44);
            _loc2_ -= 16;
            si32(_loc9_ + 144,_loc2_ + 4);
            si32(_loc9_,_loc2_);
            ESP = _loc2_;
            ptr2fun[_loc4_]();
            _loc2_ += 16;
            si32(li32(li32(_loc9_ + 252) + 4),_loc9_ + 264);
            _loc8_ = 0;
         }
      }
      eax = _loc8_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
