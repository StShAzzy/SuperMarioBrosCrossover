package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   import sample.libgme.ESP;
   import sample.libgme.F_abort;
   import sample.libgme.eax;
   
   public function F___ultoa() : void
   {
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 12);
      _loc8_ = li32(_loc3_ + 8);
      _loc7_ = li32(_loc3_ + 4);
      _loc6_ = li32(_loc3_);
      if(_loc8_ != 8)
      {
         _loc1_ = li32(_loc3_ + 16);
         if(_loc8_ != 16)
         {
            if(_loc8_ == 10)
            {
               if(uint(_loc6_) <= 9)
               {
                  var _loc5_:*;
                  si8(_loc5_ = int(_loc6_ + 48),_loc7_ - 1);
                  _loc7_ += -1;
               }
               else
               {
                  if(_loc6_ <= -1)
                  {
                     si8(_loc5_ = (_loc5_ = int(uint(_loc6_) % 10)) | 48,_loc7_ - 1);
                     _loc6_ = int(uint(_loc6_) / 10);
                     _loc7_ += -1;
                  }
                  do
                  {
                     si8(_loc5_ = int((_loc5_ = int(_loc6_ % 10)) + 48),_loc7_ - 1);
                     _loc7_ += -1;
                     var _loc4_:int = _loc6_ / 10;
                     _loc5_ = int(_loc6_ + 9);
                     _loc6_ = _loc4_;
                  }
                  while(uint(_loc5_) > 18);
                  
               }
            }
            else
            {
               ESP = _loc2_;
               F_abort();
            }
         }
         else
         {
            do
            {
               _loc5_ = _loc6_ & 15;
               si8(_loc5_ = li8(_loc5_ = int(_loc1_ + _loc5_)),_loc7_ - 1);
               _loc7_ += -1;
            }
            while((_loc6_ >>>= 4) != 0);
            
         }
      }
      else
      {
         do
         {
            si8(_loc8_ = (_loc5_ = _loc6_ & 7) | 48,_loc7_ - 1);
            _loc7_ += -1;
         }
         while((_loc6_ >>>= 3) != 0);
         
         if(_loc1_ != 0)
         {
            if((_loc5_ = _loc8_ & 255) != 48)
            {
               si8(48,_loc7_ - 1);
               _loc7_ += -1;
            }
         }
      }
      eax = _loc7_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
