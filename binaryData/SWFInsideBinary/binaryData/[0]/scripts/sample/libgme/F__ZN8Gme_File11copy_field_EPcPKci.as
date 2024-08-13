package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.sxi8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str6194;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str7195;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str8196;
   
   public function F__ZN8Gme_File11copy_field_EPcPKci() : void
   {
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc1_:* = 0;
      var _loc9_:* = 0;
      var _loc6_:int = 0;
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      if(_loc1_ != 0)
      {
         _loc9_ = li32(_loc3_ + 8);
         _loc8_ = li32(_loc3_);
         _loc6_ = 0;
         if(li8(_loc1_) != 0)
         {
            while(_loc9_ != _loc6_)
            {
               var _loc7_:* = _loc1_ + _loc6_;
               if((uint(_loc7_ = (_loc7_ = si8(li8(_loc7_))) + -1)) >= 32)
               {
                  break;
               }
               _loc6_ += 1;
            }
            _loc9_ -= _loc6_;
            _loc5_ = 255;
            if(_loc9_ <= _loc5_)
            {
               _loc5_ = _loc9_;
            }
            _loc9_ = _loc1_ + _loc6_;
            _loc4_ = 0;
            while(_loc4_ < _loc5_)
            {
               _loc7_ = _loc4_ + _loc1_;
               if((_loc7_ = li8(_loc7_ = _loc7_ + _loc6_)) == 0)
               {
                  break;
               }
               _loc4_ += 1;
            }
            _loc6_ = 0 - _loc4_;
            do
            {
               _loc1_ = _loc6_;
               if(_loc1_ == 0)
               {
                  break;
               }
               _loc6_ = _loc1_ + 1;
            }
            while(_loc7_ = _loc9_ - _loc1_, uint(li8(_loc7_ - 1)) < 33);
            
            _loc7_ = _loc8_ - _loc1_;
            _loc6_ = 0;
            si8(_loc6_,_loc7_);
            _loc2_ -= 16;
            _loc7_ = 0 - _loc1_;
            si32(_loc7_,_loc2_ + 8);
            si32(_loc9_,_loc2_ + 4);
            si32(_loc8_,_loc2_);
            ESP = _loc2_;
            Fmemcpy();
            _loc2_ += 16;
            loop3:
            do
            {
               _loc7_ = _loc8_ + _loc6_;
               _loc5_ = li8(_loc7_);
               _loc7_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str6194 + _loc6_;
               _loc7_ = li8(_loc7_);
               _loc9_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str7195;
               _loc1_ = _loc8_;
               if(_loc5_ == _loc7_)
               {
                  continue;
               }
               while(true)
               {
                  _loc4_ = li8(_loc1_);
                  _loc7_ = li8(_loc9_);
                  _loc6_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str8196;
                  _loc5_ = _loc8_;
                  if(_loc4_ == _loc7_)
                  {
                     _loc9_ += 1;
                     _loc1_ += 1;
                     if(_loc4_ == 0)
                     {
                        break loop3;
                     }
                     continue;
                  }
                  while(true)
                  {
                     _loc9_ = li8(_loc5_);
                     _loc7_ = li8(_loc6_);
                     if(_loc9_ != _loc7_)
                     {
                        break;
                     }
                     _loc6_ += 1;
                     _loc5_ += 1;
                     if(_loc9_ == 0)
                     {
                        break loop3;
                     }
                  }
               }
            }
            while(_loc6_ += 1, _loc5_ != 0);
            
            si8(0,_loc8_);
         }
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
