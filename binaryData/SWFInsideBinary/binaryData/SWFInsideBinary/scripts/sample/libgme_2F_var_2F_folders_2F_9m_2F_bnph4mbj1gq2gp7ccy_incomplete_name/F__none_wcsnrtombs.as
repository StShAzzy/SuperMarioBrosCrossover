package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme.ESP;
   import sample.libgme.F___error;
   import sample.libgme.eax;
   
   public function F__none_wcsnrtombs() : void
   {
      var _loc3_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:int = 0;
      var _loc9_:int = 0;
      var _loc4_:* = 0;
      var _loc10_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc10_ = li32(_loc1_);
      _loc9_ = 0;
      _loc8_ = li32(_loc3_ + 8);
      if((_loc7_ = li32(_loc3_)) != 0)
      {
         _loc9_ = 0 - li32(_loc3_ + 12);
         _loc5_ = 0 - _loc8_;
         _loc8_ = 0;
         for(; _loc9_ != _loc8_; _loc10_ += 4,_loc8_ += -1)
         {
            if(_loc5_ == _loc8_)
            {
               break;
            }
            if((uint(_loc4_ = li32(_loc10_))) >= 256)
            {
               ESP = _loc2_;
               F___error();
               si32(86,int(eax));
               _loc10_ = -1;
               §§goto(addr202);
            }
            si8(_loc4_,int(_loc7_ - _loc8_));
            var _loc6_:*;
            if((_loc6_ = _loc4_ & 255) != 0)
            {
               continue;
            }
            si32(0,_loc1_);
            _loc10_ = int(0 - _loc8_);
            addr202:
            eax = _loc10_;
            _loc2_ = _loc3_;
            ESP = _loc2_;
            return;
            §§goto(addr202);
         }
         si32(_loc10_,_loc1_);
         _loc10_ = int(0 - _loc8_);
      }
      else
      {
         for(; _loc8_ != 0; _loc8_ += -1,_loc9_ += -4)
         {
            if((_loc7_ = li32(_loc6_ = int(_loc10_ - _loc9_))) == 0)
            {
               break;
            }
            if(uint(_loc7_) < 256)
            {
               continue;
            }
            ESP = _loc2_;
            F___error();
            si32(86,int(eax));
            _loc10_ = -1;
            §§goto(addr202);
         }
         _loc10_ = (_loc6_ = int(0 - _loc9_)) >> 2;
      }
      §§goto(addr202);
   }
}
