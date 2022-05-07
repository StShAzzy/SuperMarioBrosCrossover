package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.sxi8;
   import sample.libgme.ESP;
   import sample.libgme.F_abort;
   import sample.libgme.eax;
   
   public function F__ZL17parse_lsda_headerP15_Unwind_ContextPKhP16lsda_header_info() : void
   {
      var _loc3_:* = 0;
      var _loc10_:* = 0;
      var _loc9_:int = 0;
      var _loc5_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:int = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = 0;
      _loc10_ = li32(_loc3_ + 8);
      si32(_loc1_,_loc10_);
      _loc9_ = _loc10_ + 4;
      _loc7_ = int((_loc8_ = li32(_loc3_ + 4)) + 1);
      if((_loc6_ = li8(_loc8_)) != 255)
      {
         if((_loc5_ = _loc6_ & 112) <= 47)
         {
            if(_loc5_ != 0)
            {
               if(_loc5_ != 16)
               {
                  if(_loc5_ != 32)
                  {
                     addr89:
                     ESP = _loc2_;
                     F_abort();
                  }
               }
            }
         }
         else if(_loc5_ != 48)
         {
            if(_loc5_ != 64)
            {
               if(_loc5_ != 80)
               {
                  §§goto(addr89);
               }
            }
         }
         _loc2_ -= 16;
         si32(_loc9_,_loc2_ + 12);
         si32(_loc7_,_loc2_ + 8);
         si32(_loc1_,_loc2_ + 4);
         si32(_loc6_,_loc2_);
         ESP = _loc2_;
         F__ZL28read_encoded_value_with_basehjPKhPj();
         _loc2_ += 16;
         _loc7_ = int(eax);
      }
      else
      {
         si32(0,_loc9_);
      }
      si8(_loc8_ = li8(_loc7_),_loc10_ + 20);
      if(_loc8_ != 255)
      {
         _loc6_ = int(_loc7_ + 1);
         _loc7_ = _loc1_;
         do
         {
            var _loc4_:*;
            _loc7_ = (_loc4_ = (_loc4_ = (_loc8_ = si8(li8(_loc6_))) & 127) << _loc1_) | _loc7_;
            _loc1_ += 7;
            _loc6_ += 1;
         }
         while(_loc8_ < 0);
         
         si32(_loc8_ = int(_loc6_ + _loc7_),_loc10_ + 12);
      }
      else
      {
         si32(0,_loc10_ + 12);
         _loc6_ = int(_loc7_ + 1);
      }
      si8(_loc8_ = li8(_loc6_),_loc10_ + 21);
      _loc7_ = int(_loc6_ + 1);
      _loc1_ = 0;
      _loc6_ = _loc1_;
      do
      {
         _loc6_ = (_loc4_ = (_loc4_ = (_loc8_ = si8(li8(_loc7_))) & 127) << _loc1_) | _loc6_;
         _loc1_ += 7;
         _loc7_ += 1;
      }
      while(_loc8_ < 0);
      
      si32(_loc8_ = int(_loc7_ + _loc6_),_loc10_ + 16);
      eax = _loc7_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
