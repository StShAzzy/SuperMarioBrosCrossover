package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import sample.libgme.ESP;
   import sample.libgme.F___fflush;
   import sample.libgme.F___swsetup;
   import sample.libgme.F___vfprintf;
   import sample.libgme.Fmemcpy;
   import sample.libgme.Fmemset;
   import sample.libgme.eax;
   
   public function F___sbprintf() : void
   {
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:int = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ -= 1264;
      _loc2_ -= 16;
      si32(232,_loc2_ + 8);
      si32(0,_loc2_ + 4);
      _loc1_ = _loc3_ - 232;
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      Fmemset();
      _loc2_ += 16;
      si16(-1,_loc3_ - 218);
      _loc6_ = (_loc7_ = li16((_loc8_ = li32(_loc3_)) + 12)) & 8;
      _loc5_ = li32(_loc3_ + 8);
      _loc4_ = li32(_loc3_ + 4);
      if(_loc6_ != 0)
      {
         if((_loc6_ = li32(_loc8_ + 16)) == 0)
         {
            if((_loc6_ = _loc7_ & 512) == 0)
            {
               §§goto(addr109);
            }
         }
         §§goto(addr143);
      }
      addr109:
      _loc2_ -= 16;
      si32(_loc8_,_loc2_);
      ESP = _loc2_;
      F___swsetup();
      _loc7_ = -1;
      _loc2_ += 16;
      if((_loc6_ = int(eax)) == 0)
      {
         _loc7_ = li16(_loc8_ + 12);
         addr143:
         si16(_loc6_ = _loc7_ & 65533,_loc3_ - 220);
         si16(_loc6_ = li16(_loc8_ + 14),_loc3_ - 218);
         si32(_loc6_ = li32(_loc8_ + 28),_loc3_ - 204);
         si32(_loc6_ = li32(_loc8_ + 44),_loc3_ - 188);
         si32(_loc6_ = li32(_loc8_ + 100),_loc3_ - 132);
         _loc2_ -= 16;
         si32(128,_loc2_ + 8);
         si32(_loc6_ = int(_loc8_ + 104),_loc2_ + 4);
         si32(_loc6_ = int(_loc1_ + 104),_loc2_);
         ESP = _loc2_;
         Fmemcpy();
         _loc2_ += 16;
         si32(_loc6_ = int(_loc3_ - 1256),_loc3_ - 232);
         si32(_loc6_,_loc3_ - 216);
         si32(1024,_loc3_ - 224);
         si32(1024,_loc3_ - 212);
         si32(0,_loc3_ - 208);
         _loc2_ -= 16;
         si32(_loc5_,_loc2_ + 8);
         si32(_loc4_,_loc2_ + 4);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F___vfprintf();
         _loc2_ += 16;
         if((_loc7_ = int(eax)) >= 0)
         {
            _loc2_ -= 16;
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F___fflush();
            _loc2_ += 16;
            if((_loc6_ = int(eax)) != 0)
            {
               _loc7_ = -1;
            }
         }
         if((_loc6_ = (_loc6_ = li8(_loc3_ - 220)) & 64) != 0)
         {
            si16(_loc6_ = (_loc6_ = li16(_loc8_ + 12)) | 64,_loc8_ + 12);
         }
      }
      eax = _loc7_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
