package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str495;
   
   public function F__ZN7Spc_Emu9load_mem_EPKhl() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:int = 0;
      var _loc4_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc7_ = li32(_loc3_);
      si32(_loc1_,_loc7_ + 252);
      si32(_loc6_ = li32(_loc3_ + 8),_loc7_ + 256);
      si32(8,_loc7_ + 168);
      _loc5_ = 0;
      _loc4_ = _gme_wrong_file_type;
      if(_loc6_ >= 65920)
      {
         do
         {
            _loc7_ = li8(_loc7_ = int(L__2E_str495 - _loc5_));
            _loc6_ = li8(_loc6_ = int(_loc1_ - _loc5_));
            _loc4_ = _gme_wrong_file_type;
            if(_loc6_ != _loc7_)
            {
               break;
            }
            _loc5_ += -1;
            _loc4_ = 0;
         }
         while(_loc5_ != -27);
         
      }
      eax = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
