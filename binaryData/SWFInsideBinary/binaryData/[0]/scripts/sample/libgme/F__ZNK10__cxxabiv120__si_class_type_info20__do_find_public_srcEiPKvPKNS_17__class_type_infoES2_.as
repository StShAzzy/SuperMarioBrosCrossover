package sample.libgme
{
   import avm2.intrinsics.memory.*;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.*;
   
   public function F__ZNK10__cxxabiv120__si_class_type_info20__do_find_public_srcEiPKvPKNS_17__class_type_infoES2_() : void
   {
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc10_:* = 0;
      var _loc11_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:int = 0;
      var _loc2_:* = ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 16);
      _loc11_ = li32(_loc3_ + 12);
      _loc10_ = li32(_loc3_ + 8);
      _loc9_ = li32(_loc3_);
      if(_loc1_ == _loc10_)
      {
         _loc6_ = 6;
         if(li32(_loc9_ + 4) != li32(_loc11_ + 4))
         {
            addr55:
            var _loc5_:* = li32(_loc3_ + 4);
            var _loc7_:* = li32(_loc9_ + 8);
            var _loc8_:*;
            var _loc4_:* = li32((_loc8_ = li32(_loc7_)) + 32);
            _loc2_ -= 32;
            si32(_loc1_,_loc2_ + 16);
            si32(_loc11_,_loc2_ + 12);
            si32(_loc10_,_loc2_ + 8);
            si32(_loc5_,_loc2_ + 4);
            si32(_loc7_,_loc2_);
            ESP = _loc2_;
            ptr2fun[_loc4_]();
            _loc2_ += 32;
            _loc6_ = eax;
         }
         eax = _loc6_;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      §§goto(addr55);
   }
}
