package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN7Kss_EmuC4EvE5names;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN7Kss_EmuC4EvE5types;
   
   public function F__ZN7Kss_EmuC2Ev() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc11_:int = 0;
      var _loc4_:int = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc7_:* = 0;
      var _loc10_:int = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      var _loc12_:* = _loc1_ + 792;
      si32(_loc12_,_loc1_ + 788);
      _loc11_ = _loc1_ + 255;
      _loc10_ = 0;
      do
      {
         _loc4_ = _loc10_ + 255;
         _loc9_ = 1;
         _loc7_ = 4;
         _loc8_ = _loc4_;
         if(_loc10_ != -255)
         {
            do
            {
               _loc9_ ^= _loc8_;
            }
            while(_loc8_ >>= 1, _loc8_ >>= 1 != 0);
            
            _loc12_ = _loc9_ << 2;
            _loc7_ = _loc12_ & 4;
         }
         _loc12_ = _loc1_ + _loc10_;
         var _loc6_:* = _loc11_ + _loc10_;
         var _loc5_:* = _loc4_ & 0xA8;
         _loc5_ = _loc7_ | _loc5_;
         si8(_loc5_,_loc6_ + 272);
         _loc6_ = _loc5_ | 1;
         si8(_loc6_,_loc12_ + 783);
      }
      while(_loc10_ += -1, _loc10_ += -1 != -256);
      
      _loc12_ = li8(_loc1_ + 272);
      si8(_loc12_ = _loc12_ | 0x40,_loc1_ + 272);
      _loc12_ = li8(_loc1_ + 528);
      si8(_loc12_ = _loc12_ | 0x40,_loc1_ + 528);
      _loc2_ -= 16;
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F__ZN9Music_EmuC2Ev();
      _loc2_ += 16;
      si32(0,_loc1_ + 252);
      si32(0,_loc1_ + 256);
      si32(0,_loc1_ + 268);
      _loc12_ = sample.libgme.__ZTV7Kss_Emu + 8;
      si32(_loc12_,_loc1_);
      si32(0,_loc1_ + 904);
      si32(0,_loc1_ + 908);
      _loc2_ -= 16;
      _loc12_ = _loc1_ + 66784;
      si32(_loc12_,_loc2_);
      ESP = _loc2_;
      F__ZN6Ay_ApuC1Ev();
      _loc2_ += 16;
      _loc12_ = _loc1_ + 68352;
      si32(_loc12_,_loc1_ + 68336);
      si32(8,_loc1_ + 68340);
      si32(0,_loc1_ + 68332);
      si32(0,_loc1_ + 68328);
      si32(0,_loc1_ + 68344);
      si32(0,_loc1_ + 68312);
      si32(0,_loc1_ + 68316);
      si32(0,_loc1_ + 68320);
      si32(0,_loc1_ + 68092);
      si32(0,_loc1_ + 68108);
      si32(0,_loc1_ + 68124);
      si32(0,_loc1_ + 68140);
      si32(0,_loc1_ + 68156);
      si32(0,_loc1_ + 68872);
      si32(sample.libgme._gme_kss_type,_loc1_ + 4);
      si32(6,_loc1_ + 220);
      si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN7Kss_EmuC4EvE5names,_loc1_ + 164);
      si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN7Kss_EmuC4EvE5types,_loc1_ + 268);
      _loc2_ -= 16;
      si32(256,_loc2_ + 8);
      si32(255,_loc2_ + 4);
      _loc12_ = _loc1_ + 68876;
      si32(_loc12_,_loc2_);
      ESP = _loc2_;
      Fmemset();
      _loc2_ += 16;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
