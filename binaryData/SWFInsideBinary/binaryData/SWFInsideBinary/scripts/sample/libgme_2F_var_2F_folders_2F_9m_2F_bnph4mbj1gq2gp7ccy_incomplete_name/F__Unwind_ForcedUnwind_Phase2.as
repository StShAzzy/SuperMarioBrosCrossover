package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme.ESP;
   import sample.libgme.F__Unwind_SjLj_Unregister;
   import sample.libgme.eax;
   import sample.libgme.ptr2fun;
   
   public function F__Unwind_ForcedUnwind_Phase2() : void
   {
      var _loc4_:* = 0;
      var _loc13_:* = 0;
      var _loc3_:* = 0;
      var _loc11_:* = 0;
      var _loc12_:* = 0;
      var _loc6_:int = 0;
      var _loc14_:* = 0;
      var _loc8_:int = 0;
      var _loc9_:* = 0;
      var _loc10_:int = 0;
      var _loc5_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = li32((_loc4_ = _loc2_) + 4);
      _loc14_ = li32(_loc3_);
      _loc12_ = li32((_loc13_ = li32(_loc4_)) + 16);
      _loc11_ = li32(_loc13_ + 12);
      while(true)
      {
         _loc10_ = 26;
         _loc9_ = 0;
         _loc8_ = 5;
         if(_loc14_ != 0)
         {
            _loc9_ = li32(_loc14_ + 24);
            _loc8_ = 0;
            _loc10_ = 10;
         }
         var _loc7_:* = li32(_loc13_);
         var _loc1_:* = li32(_loc13_ + 4);
         _loc2_ -= 32;
         si32(_loc12_,_loc2_ + 24);
         si32(_loc3_,_loc2_ + 20);
         si32(_loc13_,_loc2_ + 16);
         si32(_loc1_,_loc2_ + 12);
         si32(_loc7_,_loc2_ + 8);
         si32(_loc10_,_loc2_ + 4);
         si32(1,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc11_]();
         _loc2_ += 32;
         if((_loc7_ = int(eax)) == 0)
         {
            _loc5_ = 5;
            if(_loc8_ != 5)
            {
               if(_loc9_ == 0)
               {
                  continue;
               }
               _loc2_ -= 32;
               si32(_loc3_,_loc2_ + 20);
               si32(_loc13_,_loc2_ + 16);
               si32(li32(_loc13_ + 4),_loc2_ + 12);
               si32(li32(_loc13_),_loc2_ + 8);
               si32(10,_loc2_ + 4);
               si32(1,_loc2_);
               ESP = _loc2_;
               ptr2fun[_loc9_]();
               _loc5_ = 7;
               _loc2_ += 32;
               if((_loc6_ = eax) != 7)
               {
                  if(_loc6_ != 8)
                  {
                     break;
                  }
                  continue;
               }
            }
            §§goto(addr253);
         }
         break;
      }
      _loc5_ = 2;
      addr253:
      eax = _loc5_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
