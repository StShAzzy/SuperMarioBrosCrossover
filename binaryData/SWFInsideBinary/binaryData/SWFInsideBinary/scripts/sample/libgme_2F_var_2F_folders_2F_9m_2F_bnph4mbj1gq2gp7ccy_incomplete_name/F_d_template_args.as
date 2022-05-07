package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme.ESP;
   import sample.libgme.eax;
   
   public function F_d_template_args() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc9_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc4_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ -= 16;
      _loc1_ = li32(_loc3_);
      _loc9_ = li32(_loc1_ + 44);
      _loc7_ = li8(_loc8_ = li32(_loc1_ + 12));
      si32(_loc6_ = int(_loc8_ + 1),_loc1_ + 12);
      _loc5_ = 0;
      if(_loc7_ == 73)
      {
         si32(0,_loc3_ - 4);
         _loc5_ = li8(_loc6_);
         _loc4_ = _loc3_ - 4;
         while(true)
         {
            if((_loc7_ = _loc5_ & 255) != 76)
            {
               if((_loc7_ = (_loc7_ = _loc5_ << 24) >> 24) == 88)
               {
                  si32(_loc7_ = int(_loc6_ + 1),_loc1_ + 12);
                  _loc2_ -= 16;
                  si32(_loc1_,_loc2_);
                  ESP = _loc2_;
                  F_d_expression();
                  _loc2_ += 16;
                  _loc6_ = int(eax);
                  si32(_loc8_ += 1,_loc1_ + 12);
                  if(li8(_loc8_ = li32(_loc1_ + 12)) != 69)
                  {
                     _loc6_ = 0;
                  }
               }
               else
               {
                  _loc2_ -= 16;
                  si32(_loc1_,_loc2_);
                  ESP = _loc2_;
                  F_d_type();
                  _loc2_ += 16;
                  _loc6_ = int(eax);
               }
            }
            else
            {
               _loc2_ -= 16;
               si32(_loc1_,_loc2_);
               ESP = _loc2_;
               F_d_expr_primary();
               _loc2_ += 16;
               _loc6_ = int(eax);
            }
            _loc5_ = 0;
            if(_loc6_ != 0)
            {
               _loc5_ = li32(_loc1_ + 20);
               if(_loc5_ < li32(_loc1_ + 24))
               {
                  si32(_loc8_ = int(_loc5_ + 1),_loc1_ + 20);
                  if((_loc5_ = int(li32(_loc1_ + 16) + int(_loc5_ * 12))) != 0)
                  {
                     si32(39,_loc5_);
                     si32(_loc6_,_loc5_ + 4);
                     si32(0,_loc5_ + 8);
                     si32(_loc5_,_loc4_);
                     _loc4_ = _loc5_ + 8;
                     if((_loc5_ = li8(_loc6_ = li32(_loc1_ + 12))) == 69)
                     {
                        si32(_loc7_ = int(_loc6_ + 1),_loc1_ + 12);
                        si32(_loc9_,_loc1_ + 44);
                        _loc5_ = li32(_loc3_ - 4);
                        break;
                     }
                     continue;
                  }
               }
               si32(_loc5_ = 0,_loc4_);
               break;
            }
            break;
         }
      }
      eax = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
