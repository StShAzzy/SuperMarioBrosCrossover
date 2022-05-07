package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme.ESP;
   import sample.libgme.F___error;
   import sample.libgme.F_abort;
   import sample.libgme.F_mmap;
   import sample.libgme.F_munmap;
   import sample.libgme.F_strerror_r;
   import sample.libgme.___progname;
   import sample.libgme.__malloc_message;
   import sample.libgme.eax;
   import sample.libgme.ptr2fun;
   
   public function F_pages_map() : void
   {
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc7_:int = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ -= 64;
      _loc2_ -= 32;
      _loc1_ = 0;
      si32(_loc1_,_loc2_ + 24);
      si32(_loc1_,_loc2_ + 20);
      si32(-1,_loc2_ + 16);
      si32(4098,_loc2_ + 12);
      si32(3,_loc2_ + 8);
      si32(_loc9_ = li32(_loc3_ + 4),_loc2_ + 4);
      si32(_loc8_ = li32(_loc3_),_loc2_);
      ESP = _loc2_;
      F_mmap();
      _loc2_ += 32;
      if((_loc7_ = eax) != -1)
      {
         _loc1_ = _loc7_;
         if(_loc8_ != 0)
         {
            _loc1_ = _loc7_;
            if(_loc7_ != _loc8_)
            {
               _loc2_ -= 16;
               si32(_loc9_,_loc2_ + 4);
               si32(_loc7_,_loc2_);
               ESP = _loc2_;
               F_munmap();
               _loc1_ = 0;
               _loc2_ += 16;
               var _loc6_:*;
               if((_loc6_ = int(eax)) == -1)
               {
                  ESP = _loc2_;
                  F___error();
                  _loc2_ -= 16;
                  si32(64,_loc2_ + 8);
                  si32(_loc6_ = int(_loc3_ - 64),_loc2_ + 4);
                  si32(li32(_loc6_ = int(eax)),_loc2_);
                  ESP = _loc2_;
                  F_strerror_r();
                  _loc2_ += 16;
                  var _loc5_:* = li32(__malloc_message);
                  _loc2_ -= 16;
                  si32(L__2E_str5796,_loc2_ + 12);
                  si32(_loc6_,_loc2_ + 8);
                  si32(L__2E_str39830,_loc2_ + 4);
                  si32(li32(___progname),_loc2_);
                  ESP = _loc2_;
                  ptr2fun[_loc5_]();
                  _loc2_ += 16;
                  _loc1_ = 0;
                  if((_loc6_ = li8(_opt_abort_2E_b)) == 1)
                  {
                     ESP = _loc2_;
                     F_abort();
                  }
               }
            }
         }
      }
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
