package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.sxi8;
   import sample.libgme.ESP;
   import sample.libgme.F___error;
   import sample.libgme.eax;
   
   public function F__ascii_mbrtowc() : void
   {
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = 0;
      if((_loc5_ = li32(_loc3_ + 4)) != 0)
      {
         _loc1_ = -2;
         if(li32(_loc3_ + 8) != 0)
         {
            _loc1_ = si8(li8(_loc5_));
            if(_loc1_ <= -1)
            {
               ESP = _loc2_;
               F___error();
               si32(86,int(eax));
               _loc1_ = -1;
            }
            else
            {
               _loc5_ = li32(_loc3_);
               _loc1_ &= 255;
               if(_loc5_ != 0)
               {
                  si32(_loc1_,_loc5_);
               }
               _loc5_ = 1;
               if(_loc1_ == 0)
               {
                  _loc5_ = 0;
               }
               _loc1_ = _loc5_ & 1;
            }
         }
      }
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}