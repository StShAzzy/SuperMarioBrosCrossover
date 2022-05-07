package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str6122;
   
   public function F__ZN11Classic_Emu16set_sample_rate_El() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc6_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      if((_loc8_ = li32(_loc1_ + 252)) == 0)
      {
         if((_loc8_ = li32(_loc1_ + 256)) == 0)
         {
            _loc2_ -= 16;
            si32(172,_loc2_);
            ESP = _loc2_;
            F_malloc();
            _loc2_ += 16;
            _loc8_ = int(eax);
            si32(2,_loc8_ + 16);
            si32(0,_loc8_ + 12);
            si32(0,_loc8_ + 8);
            si32(1,_loc8_ + 4);
            var _loc7_:*;
            si32(_loc7_ = int(__ZTV13Stereo_Buffer + 8),_loc8_);
            si32(2147483647,_loc8_ + 20);
            si32(0,_loc8_ + 24);
            si32(0,_loc8_ + 28);
            si32(0,_loc8_ + 32);
            si32(0,_loc8_ + 44);
            si32(0,_loc8_ + 36);
            si32(0,_loc8_ + 40);
            si32(0,_loc8_ + 48);
            si32(16,_loc8_ + 52);
            si32(0,_loc8_ + 56);
            si32(2147483647,_loc8_ + 64);
            si32(0,_loc8_ + 68);
            si32(0,_loc8_ + 72);
            si32(0,_loc8_ + 76);
            si32(0,_loc8_ + 88);
            si32(0,_loc8_ + 80);
            si32(0,_loc8_ + 84);
            si32(0,_loc8_ + 92);
            si32(16,_loc8_ + 96);
            si32(0,_loc8_ + 100);
            si32(2147483647,_loc8_ + 108);
            si32(0,_loc8_ + 112);
            si32(0,_loc8_ + 116);
            si32(0,_loc8_ + 120);
            si32(0,_loc8_ + 132);
            si32(0,_loc8_ + 124);
            si32(0,_loc8_ + 128);
            si32(0,_loc8_ + 136);
            si32(16,_loc8_ + 140);
            si32(0,_loc8_ + 144);
            si32(_loc7_ = int(_loc8_ + 20),_loc8_ + 152);
            si32(_loc7_ = int(_loc8_ + 64),_loc8_ + 156);
            si32(_loc7_ = int(_loc8_ + 108),_loc8_ + 160);
            si32(_loc8_,_loc1_ + 256);
            _loc6_ = L__2E_str6122;
            if(_loc8_ != 0)
            {
               addr279:
               si32(_loc8_,_loc1_ + 252);
               var _loc5_:* = li32(_loc3_ + 4);
               var _loc4_:* = li32((_loc7_ = li32(_loc8_)) + 16);
               _loc2_ -= 16;
               si32(50,_loc2_ + 8);
               si32(_loc5_,_loc2_ + 4);
               si32(_loc8_,_loc2_);
               ESP = _loc2_;
               ptr2fun[_loc4_]();
               _loc2_ += 16;
               _loc6_ = eax;
            }
            eax = _loc6_;
            _loc2_ = _loc3_;
            ESP = _loc2_;
            return;
         }
      }
      §§goto(addr279);
   }
}
