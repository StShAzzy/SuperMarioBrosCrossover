package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme.ESP;
   import sample.libgme.eax;
   
   public function F_d_bare_function_type() : void
   {
      var _loc3_:* = 0;
      var _loc10_:* = 0;
      var _loc4_:* = 0;
      var _loc7_:* = 0;
      var _loc9_:* = 0;
      var _loc8_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ -= 16;
      _loc1_ = li32(_loc3_);
      _loc9_ = li8(_loc10_ = li32(_loc1_ + 12));
      _loc8_ = li32(_loc3_ + 4);
      if(_loc9_ == 74)
      {
         si32(_loc9_ = int(_loc10_ + 1),_loc1_ + 12);
         _loc8_ = 1;
      }
      si32(_loc10_ = 0,_loc3_ - 4);
      loop0:
      while(true)
      {
         _loc7_ = int(_loc3_ - 4);
         if(_loc8_ != 0)
         {
            if((_loc7_ = li8(_loc9_ = li32(_loc1_ + 12))) != 0)
            {
               if(_loc7_ == 69)
               {
                  break;
               }
               _loc2_ -= 16;
               si32(_loc1_,_loc2_);
               ESP = _loc2_;
               F_d_type();
               _loc8_ = 0;
               _loc2_ += 16;
               if((_loc10_ = int(eax)) != 0)
               {
                  continue;
               }
               §§goto(addr385);
            }
            break;
         }
         while((_loc8_ = li8(_loc9_ = li32(_loc1_ + 12))) != 0)
         {
            if(_loc8_ != 69)
            {
               _loc2_ -= 16;
               si32(_loc1_,_loc2_);
               ESP = _loc2_;
               F_d_type();
               _loc8_ = 0;
               _loc2_ += 16;
               if((_loc6_ = int(eax)) == 0)
               {
                  eax = _loc8_;
                  _loc2_ = _loc3_;
                  ESP = _loc2_;
               }
               _loc8_ = li32(_loc1_ + 20);
               if(_loc8_ >= li32(_loc1_ + 24))
               {
                  break;
               }
               var _loc5_:*;
               si32(_loc5_ = int(_loc8_ + 1),_loc1_ + 20);
               if((_loc8_ = int(li32(_loc1_ + 16) + int(_loc8_ * 12))) == 0)
               {
                  break;
               }
               continue;
               §§goto(addr385);
            }
            break loop0;
         }
         break;
         si32(_loc8_ = 0,_loc7_);
         §§goto(addr385);
      }
      _loc8_ = 0;
      if((_loc7_ = li32(_loc3_ - 4)) != 0)
      {
         if((_loc9_ = li32(_loc7_ + 8)) == 0)
         {
            if((_loc9_ = li32(_loc8_ = li32(_loc7_ + 4))) == 33)
            {
               if((_loc9_ = li32((_loc8_ = li32(_loc8_ + 4)) + 16)) == 9)
               {
                  si32(_loc9_ = int((_loc5_ = li32(_loc1_ + 48)) - li32(_loc8_ + 4)),_loc1_ + 48);
                  si32(_loc7_ = 0,_loc3_ - 4);
               }
            }
         }
         _loc4_ = li32(_loc1_ + 20);
         _loc9_ = li32(_loc1_ + 24);
         _loc8_ = 0;
         if(_loc4_ < _loc9_)
         {
            _loc6_ = li32(_loc1_ + 16);
            si32(_loc9_ = int(_loc4_ + 1),_loc1_ + 20);
            _loc1_ = int(_loc4_ * 12);
            _loc4_ = int(_loc6_ + _loc1_);
            _loc8_ = 0;
            if(_loc4_ != 0)
            {
               _loc9_ = int(_loc6_ + _loc1_);
               si32(35,_loc9_);
               si32(_loc10_,_loc9_ + 4);
               si32(_loc7_,_loc9_ + 8);
               _loc8_ = _loc4_;
            }
         }
      }
      addr385:
      return;
      si32(38,_loc8_);
      si32(_loc6_,_loc8_ + 4);
      si32(0,_loc8_ + 8);
      si32(_loc8_,_loc7_);
      _loc7_ = int(_loc8_ + 8);
   }
}
