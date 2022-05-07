package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme.ESP;
   import sample.libgme.eax;
   
   public function F___umtx_op_rw_rdlock() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc13_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:int = 0;
      var _loc5_:int = 0;
      var _loc6_:int = 0;
      var _loc1_:* = 0;
      var _loc12_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = li32((_loc4_ = _loc2_) + 4);
      _loc13_ = li32(_loc3_ + 16);
      _loc12_ = li32(_loc4_);
      if(_loc13_ == 0)
      {
         _loc2_ -= 16;
         si32(0,_loc2_ + 12);
         si32(li32(_loc3_ + 8),_loc2_ + 8);
         si32(li32(_loc3_),_loc2_ + 4);
         si32(li32(_loc12_ + 4),_loc2_);
         ESP = _loc2_;
         F_do_rw_rdlock();
         _loc2_ += 16;
         _loc12_ = int(eax);
      }
      else
      {
         si32(0,_loc13_ + 4);
         si32(0,_loc13_);
         _loc13_ = li32(_loc3_ + 8);
         _loc8_ = li32(_loc3_);
         var _loc9_:*;
         _loc7_ = (_loc9_ = int(new Date().time - clockStart)) / 1000;
         _loc3_ = int((_loc9_ %= 1000) * 1000000);
         _loc6_ = 0;
         _loc1_ = 0;
         while(true)
         {
            var _loc10_:int = _loc1_ + _loc6_;
            _loc9_ = li32(_loc12_ + 4);
            _loc2_ -= 16;
            si32(_loc10_,_loc2_ + 12);
            si32(_loc13_,_loc2_ + 8);
            si32(_loc8_,_loc2_ + 4);
            si32(_loc9_,_loc2_);
            ESP = _loc2_;
            F_do_rw_rdlock();
            _loc2_ += 16;
            _loc1_ = int(eax);
            if(_loc1_ != 60)
            {
               break;
            }
            _loc6_ = (_loc9_ = int(new Date().time - clockStart)) / 1000;
            _loc5_ = (_loc9_ %= 1000) * 1000000;
            if(_loc6_ == _loc7_)
            {
               _loc1_ = 60;
               if(_loc5_ >= _loc3_)
               {
                  break;
               }
            }
            else
            {
               _loc1_ = 60;
               if(_loc6_ >= _loc7_)
               {
                  break;
               }
            }
            _loc1_ = int((_loc5_ = _loc3_ - _loc5_) + 1000000000);
            if(_loc5_ >= 0)
            {
               _loc1_ = _loc5_;
            }
            _loc1_ /= 1000000;
            _loc10_ = _loc7_ - _loc6_;
            _loc9_ = _loc5_ >> 31;
            _loc6_ = (_loc9_ = int(_loc10_ + _loc9_)) * 1000;
         }
         _loc12_ = 4;
         if(_loc1_ != -1)
         {
            _loc12_ = _loc1_;
         }
      }
      eax = _loc12_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
