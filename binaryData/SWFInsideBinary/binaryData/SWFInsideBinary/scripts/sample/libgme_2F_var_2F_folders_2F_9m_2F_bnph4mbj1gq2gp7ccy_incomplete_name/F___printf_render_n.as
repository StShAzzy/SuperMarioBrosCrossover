package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme.ESP;
   import sample.libgme.eax;
   
   public function F___printf_render_n() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc7_ = li32(_loc1_ + 16);
      _loc6_ = li32(_loc3_ + 8);
      if(_loc7_ != 0)
      {
         var _loc5_:*;
         si8(li32(_loc1_ + 76),li32(_loc5_ = li32(_loc6_)));
      }
      else if((_loc7_ = li32(_loc1_ + 20)) != 0)
      {
         si16(li32(_loc1_ + 76),li32(_loc5_ = li32(_loc6_)));
      }
      else if((_loc7_ = li32(_loc1_ + 24)) != 0)
      {
         si32(li32(_loc1_ + 76),li32(_loc5_ = li32(_loc6_)));
      }
      else if((_loc7_ = li32(_loc1_ + 12)) != 0)
      {
         var _loc4_:* = li32(_loc7_ = li32(_loc6_));
         si32(_loc7_ = (_loc5_ = li32(_loc1_ + 76)) >> 31,_loc4_ + 4);
         si32(_loc5_,_loc4_);
      }
      else if((_loc7_ = li32(_loc1_ + 64)) != 0)
      {
         _loc4_ = li32(_loc7_ = li32(_loc6_));
         si32(_loc7_ = (_loc5_ = li32(_loc1_ + 76)) >> 31,_loc4_ + 4);
         si32(_loc5_,_loc4_);
      }
      else if((_loc7_ = li32(_loc1_ + 68)) != 0)
      {
         si32(li32(_loc1_ + 76),li32(_loc5_ = li32(_loc6_)));
      }
      else
      {
         _loc6_ = li32(_loc6_);
         if((_loc7_ = li32(_loc1_ + 60)) != 0)
         {
            _loc5_ = li32(_loc6_);
            si32(_loc7_ = (_loc4_ = li32(_loc1_ + 76)) >> 31,_loc5_ + 4);
            si32(_loc4_,_loc5_);
         }
         else
         {
            si32(li32(_loc1_ + 76),li32(_loc6_));
         }
      }
      eax = 0;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
