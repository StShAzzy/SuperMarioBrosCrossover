package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL5modes;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL9amp_table;
   
   public function F__ZN6Ay_ApuC1Ev() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc9_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:int = 0;
      var _loc8_:int = 0;
      var _loc10_:int = 0;
      var _loc4_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      var _loc11_:*;
      si32(_loc11_ = int(_loc1_ + 520),_loc1_ + 504);
      si32(12,_loc1_ + 508);
      si32(0,_loc1_ + 500);
      si32(0,_loc1_ + 496);
      si32(0,_loc1_ + 512);
      si32(0,_loc1_ + 480);
      si32(0,_loc1_ + 484);
      si32(0,_loc1_ + 488);
      _loc10_ = 7;
      do
      {
         _loc9_ = _loc10_;
         _loc8_ = 15;
         if(uint(_loc9_) >= 4)
         {
            _loc8_ = 0;
         }
         _loc11_ = li8(_loc11_ = int(__ZL9amp_table + _loc8_));
         _loc10_ = _loc9_ * 48;
         _loc7_ = _loc1_ + _loc10_;
         si8(_loc11_,_loc7_ + 92);
         _loc6_ = 1;
         if(uint(_loc9_) >= 4)
         {
            _loc6_ = 0;
         }
         _loc11_ = _loc6_ & 1;
         var _loc5_:*;
         _loc11_ = int((_loc5_ = (_loc5_ = int((_loc6_ = li8(_loc5_ = int(__ZL5modes + _loc9_))) >>> 1)) & 1) - _loc11_);
         _loc5_ = int(_loc8_ + _loc11_);
         si8(_loc5_ = li8(_loc5_ = int(__ZL9amp_table + _loc5_)),_loc7_ + 93);
         _loc5_ = _loc11_ << 1;
         _loc5_ = int(_loc8_ + _loc5_);
         si8(_loc5_ = li8(_loc5_ = int(__ZL9amp_table + _loc5_)),_loc7_ + 94);
         _loc5_ = int(_loc11_ * 3);
         _loc5_ = int(_loc8_ + _loc5_);
         si8(_loc5_ = li8(_loc5_ = int(__ZL9amp_table + _loc5_)),_loc7_ + 95);
         _loc5_ = _loc11_ << 2;
         _loc5_ = int(_loc8_ + _loc5_);
         si8(_loc5_ = li8(_loc5_ = int(__ZL9amp_table + _loc5_)),_loc7_ + 96);
         _loc5_ = int(_loc11_ * 5);
         _loc5_ = int(_loc8_ + _loc5_);
         si8(_loc5_ = li8(_loc5_ = int(__ZL9amp_table + _loc5_)),_loc7_ + 97);
         _loc5_ = int(_loc11_ * 6);
         _loc5_ = int(_loc8_ + _loc5_);
         si8(_loc5_ = li8(_loc5_ = int(__ZL9amp_table + _loc5_)),_loc7_ + 98);
         _loc5_ = int(_loc11_ * 7);
         _loc5_ = int(_loc8_ + _loc5_);
         si8(_loc5_ = li8(_loc5_ = int(__ZL9amp_table + _loc5_)),_loc7_ + 99);
         _loc5_ = _loc11_ << 3;
         _loc5_ = int(_loc8_ + _loc5_);
         si8(_loc5_ = li8(_loc5_ = int(__ZL9amp_table + _loc5_)),_loc7_ + 100);
         _loc5_ = int(_loc11_ * 9);
         _loc5_ = int(_loc8_ + _loc5_);
         si8(_loc5_ = li8(_loc5_ = int(__ZL9amp_table + _loc5_)),_loc7_ + 101);
         _loc5_ = int(_loc11_ * 10);
         _loc5_ = int(_loc8_ + _loc5_);
         si8(_loc5_ = li8(_loc5_ = int(__ZL9amp_table + _loc5_)),_loc7_ + 102);
         _loc5_ = int(_loc11_ * 11);
         _loc5_ = int(_loc8_ + _loc5_);
         si8(_loc5_ = li8(_loc5_ = int(__ZL9amp_table + _loc5_)),_loc7_ + 103);
         _loc5_ = int(_loc11_ * 12);
         _loc5_ = int(_loc8_ + _loc5_);
         si8(_loc5_ = li8(_loc5_ = int(__ZL9amp_table + _loc5_)),_loc7_ + 104);
         _loc5_ = int(_loc11_ * 13);
         _loc5_ = int(_loc8_ + _loc5_);
         si8(_loc5_ = li8(_loc5_ = int(__ZL9amp_table + _loc5_)),_loc7_ + 105);
         _loc5_ = int(_loc11_ * 14);
         _loc5_ = int(_loc8_ + _loc5_);
         si8(_loc5_ = li8(_loc5_ = int(__ZL9amp_table + _loc5_)),_loc7_ + 106);
         _loc11_ *= 15;
         _loc11_ = int(_loc8_ + _loc11_);
         si8(_loc11_ = li8(_loc11_ = int(__ZL9amp_table + _loc11_)),_loc7_ + 107);
         _loc11_ = (_loc11_ = int(_loc6_ >>> 2)) & 1;
         _loc7_ = (_loc5_ = (_loc5_ = int(_loc6_ >>> 3)) & 1) - _loc11_;
         _loc11_ = (_loc11_ = int(0 - _loc11_)) & 15;
         _loc4_ = __ZL9amp_table + _loc11_;
         _loc8_ = 0;
         do
         {
            _loc11_ = int((_loc11_ = int(_loc8_ + _loc1_)) + _loc10_);
            si8(_loc5_ = li8(_loc4_),_loc11_ + 108);
            _loc4_ += _loc7_;
         }
         while((_loc8_ += 1) != 16);
         
         _loc11_ = (_loc11_ = int(_loc6_ >>> 4)) & 1;
         _loc8_ = (_loc5_ = (_loc5_ = int(_loc6_ >>> 5)) & 1) - _loc11_;
         _loc7_ = __ZL9amp_table + ((_loc11_ = int(0 - _loc11_)) & 15);
         _loc6_ = 0;
         do
         {
            _loc11_ = int((_loc11_ = int(_loc6_ + _loc1_)) + _loc10_);
            si8(_loc5_ = li8(_loc7_),_loc11_ + 124);
            _loc7_ += _loc8_;
         }
         while((_loc6_ += 1) != 16);
         
         _loc10_ = _loc9_ + -1;
      }
      while(_loc9_ != 0);
      
      si32(0,_loc1_ + 12);
      si32(0,_loc1_ + 28);
      si32(0,_loc1_ + 44);
      _loc2_ -= 16;
      si32(1062075353,_loc2_ + 8);
      si32(-1214942384,_loc2_ + 4);
      si32(_loc11_ = int(_loc1_ + 480),_loc2_);
      ESP = _loc2_;
      F__ZN11Blip_Synth_11volume_unitEd();
      _loc2_ += 16;
      si32(0,_loc1_ + 48);
      si32(0,_loc1_ + 72);
      si32(1,_loc1_ + 76);
      si32(16,_loc1_ + 32);
      si32(0,_loc1_ + 40);
      si32(0,_loc1_ + 36);
      si32(16,_loc1_ + 16);
      si32(0,_loc1_ + 24);
      si32(0,_loc1_ + 20);
      si32(16,_loc1_);
      si32(0,_loc1_ + 8);
      si32(0,_loc1_ + 4);
      si32(0,_loc1_ + 65);
      si32(0,_loc1_ + 61);
      si32(0,_loc1_ + 57);
      si32(0,_loc1_ + 53);
      si8(-1,_loc1_ + 60);
      si32(_loc11_ = int(_loc1_ + 188),_loc1_ + 84);
      si32(-48,_loc1_ + 88);
      si32(0,_loc1_ + 80);
      si8(9,_loc1_ + 66);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
