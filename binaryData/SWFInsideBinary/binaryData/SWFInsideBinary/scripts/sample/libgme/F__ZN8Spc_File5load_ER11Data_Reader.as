package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2497;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str495;
   
   public function F__ZN8Spc_File5load_ER11Data_Reader() : void
   {
      var _loc4_:* = 0;
      var _loc11_:* = 0;
      var _loc3_:* = 0;
      var _loc12_:int = 0;
      var _loc1_:int = 0;
      var _loc5_:int = 0;
      var _loc14_:* = 0;
      var _loc9_:int = 0;
      var _loc13_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = li32((_loc4_ = _loc2_) + 4);
      var _loc15_:*;
      _loc14_ = li32((_loc15_ = li32(_loc3_)) + 16);
      _loc2_ -= 16;
      si32(_loc3_,_loc2_);
      ESP = _loc2_;
      ptr2fun[_loc14_]();
      _loc13_ = _gme_wrong_file_type;
      _loc2_ += 16;
      if((_loc12_ = eax) >= 65920)
      {
         _loc11_ = li32(_loc4_);
         var _loc10_:* = li32((_loc15_ = li32(_loc3_)) + 12);
         _loc2_ -= 16;
         si32(256,_loc2_ + 8);
         si32(_loc15_ = int(_loc11_ + 252),_loc2_ + 4);
         si32(_loc3_,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc10_]();
         _loc2_ += 16;
         if((_loc13_ = eax) == 0)
         {
            _loc9_ = 0;
            while(true)
            {
               _loc15_ = li8(_loc15_ = int(L__2E_str495 - _loc9_));
               var _loc8_:* = li8((_loc8_ = int(_loc11_ - _loc9_)) + 252);
               _loc13_ = _gme_wrong_file_type;
               if(_loc8_ != _loc15_)
               {
                  break;
               }
               if((_loc9_ += -1) == -27)
               {
                  _loc1_ = _loc12_ + -66048;
                  if(_loc1_ >= 1)
                  {
                     _loc2_ -= 16;
                     si32(_loc1_,_loc2_ + 4);
                     si32(li32(_loc11_ + 508),_loc2_);
                     ESP = _loc2_;
                     F_realloc();
                     _loc13_ = L__2E_str2497;
                     _loc2_ += 16;
                     if((_loc5_ = eax) != 0)
                     {
                        si32(_loc5_,_loc11_ + 508);
                        si32(_loc1_,_loc11_ + 512);
                        var _loc6_:* = li32((_loc15_ = li32(_loc3_)) + 20);
                        _loc2_ -= 16;
                        si32(65792,_loc2_ + 4);
                        si32(_loc3_,_loc2_);
                        ESP = _loc2_;
                        ptr2fun[_loc6_]();
                        _loc2_ += 16;
                        if((_loc13_ = eax) == 0)
                        {
                           var _loc7_:* = li32((_loc15_ = li32(_loc3_)) + 12);
                           _loc2_ -= 16;
                           si32(li32(_loc11_ + 512),_loc2_ + 8);
                           si32(li32(_loc11_ + 508),_loc2_ + 4);
                           si32(_loc3_,_loc2_);
                           ESP = _loc2_;
                           ptr2fun[_loc7_]();
                           _loc2_ += 16;
                           if((_loc13_ = eax) == 0)
                           {
                           }
                           break;
                        }
                        break;
                     }
                     break;
                  }
                  _loc13_ = 0;
                  break;
               }
            }
         }
      }
      eax = _loc13_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
