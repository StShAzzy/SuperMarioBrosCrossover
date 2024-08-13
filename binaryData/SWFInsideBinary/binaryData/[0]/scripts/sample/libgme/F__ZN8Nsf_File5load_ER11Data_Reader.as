package sample.libgme
{
   import avm2.intrinsics.memory.*;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.*;
   
   public function F__ZN8Nsf_File5load_ER11Data_Reader() : void
   {
      var _loc3_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:int = 0;
      var _loc8_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:int = 0;
      var _loc5_:* = 0;
      var _loc2_:* = ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      var _loc9_:* = li32(_loc1_);
      _loc8_ = li32(_loc9_ + 12);
      _loc2_ -= 16;
      si32(128,_loc2_ + 8);
      _loc7_ = li32(_loc3_);
      si32(_loc9_ = _loc7_ + 252,_loc2_ + 4);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      ptr2fun[_loc8_]();
      _loc2_ += 16;
      _loc6_ = eax;
      if(_loc6_ != 0)
      {
         _loc5_ = _gme_wrong_file_type;
         if(_loc6_ != __ZN11Data_Reader9eof_errorE)
         {
            _loc5_ = _loc6_;
         }
      }
      else
      {
         if((li8(_loc7_ + 375) & 0xCE) != 0)
         {
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str12372,_loc7_ + 16);
         }
         _loc1_ = li8(_loc7_ + 258);
         si32(_loc1_,_loc7_ + 12);
         si32(_loc1_,_loc7_ + 8);
         _loc4_ = 0;
         do
         {
            _loc1_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str11371 - _loc4_;
            _loc1_ = li8(_loc1_);
            _loc9_ = _loc7_ - _loc4_;
            _loc9_ = li8(_loc9_ + 252);
            _loc5_ = _gme_wrong_file_type;
            if(_loc9_ != _loc1_)
            {
               break;
            }
            _loc4_ += -1;
            _loc5_ = 0;
         }
         while(_loc4_ != -5);
         
      }
      eax = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
