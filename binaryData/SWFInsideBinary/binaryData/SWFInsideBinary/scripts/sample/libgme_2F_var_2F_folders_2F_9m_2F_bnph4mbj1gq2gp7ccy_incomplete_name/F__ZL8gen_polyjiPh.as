package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme.ESP;
   
   public function F__ZL8gen_polyjiPh() : void
   {
      var _loc4_:* = 0;
      var _loc14_:* = 0;
      var _loc16_:* = 0;
      var _loc15_:* = 0;
      var _loc3_:* = 0;
      var _loc2_:int = ESP;
      _loc4_ = _loc2_;
      _loc3_ = 1;
      _loc16_ = li32(_loc4_ + 8);
      _loc15_ = li32(_loc4_ + 4);
      _loc14_ = li32(_loc4_);
      do
      {
         var _loc13_:* = _loc3_ & 1;
         var _loc12_:*;
         var _loc11_:* = (_loc12_ = int(0 - _loc13_)) & _loc14_;
         _loc12_ = int(_loc3_ >>> 1);
         var _loc10_:*;
         _loc12_ = (_loc10_ = _loc11_ ^ _loc12_) & 1;
         _loc11_ = (_loc11_ = int(0 - _loc12_)) & _loc14_;
         _loc10_ >>>= 1;
         var _loc9_:*;
         _loc11_ = (_loc9_ = _loc11_ ^ _loc10_) & 1;
         _loc10_ = (_loc10_ = int(0 - _loc11_)) & _loc14_;
         _loc9_ >>>= 1;
         var _loc1_:* = _loc10_ ^ _loc9_;
         _loc10_ = _loc1_ & 1;
         _loc9_ = (_loc9_ = int(0 - _loc10_)) & _loc14_;
         _loc1_ >>>= 1;
         _loc1_ = (_loc9_ ^= _loc1_) & 1;
         var _loc5_:* = (_loc5_ = int(0 - _loc1_)) & _loc14_;
         _loc9_ >>>= 1;
         var _loc6_:* = (_loc5_ ^= _loc9_) & 1;
         _loc9_ = (_loc9_ = int(0 - _loc6_)) & _loc14_;
         _loc5_ >>>= 1;
         var _loc7_:* = (_loc5_ = _loc9_ ^ _loc5_) & 1;
         _loc9_ = (_loc9_ = int(0 - _loc7_)) & _loc14_;
         _loc5_ >>>= 1;
         var _loc8_:* = (_loc5_ = (_loc9_ ^= _loc5_) & 1) << 7;
         _loc7_ <<= 6;
         _loc6_ <<= 5;
         _loc1_ <<= 4;
         _loc10_ <<= 3;
         _loc11_ <<= 2;
         si8(_loc13_ = (_loc13_ = (_loc13_ = (_loc13_ = (_loc13_ = (_loc13_ = (_loc13_ = (_loc12_ <<= 1) | _loc13_) | _loc11_) | _loc10_) | _loc1_) | _loc6_) | _loc7_) | _loc8_,_loc16_);
         _loc13_ = (_loc13_ = int(0 - _loc5_)) & _loc14_;
         _loc12_ = int(_loc9_ >>> 1);
         _loc3_ = _loc13_ ^ _loc12_;
         _loc16_ += 1;
      }
      while((_loc15_ += -1) != 0);
      
      ESP = _loc4_;
   }
}
