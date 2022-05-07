package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL23__gxx_exception_cleanup19_Unwind_Reason_CodeP17_Unwind_Exception;
   
   public function F___cxa_throw() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:int = 0;
      var _loc2_:int = ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc5_ = li32(_loc3_);
      si32(_loc1_,_loc5_ - 80);
      _loc1_ = li32(_loc3_ + 8);
      si32(_loc1_,_loc5_ - 76);
      _loc1_ = li32(__ZN10__cxxabiv120__unexpected_handlerE);
      si32(_loc1_,_loc5_ - 72);
      _loc1_ = li32(__ZN10__cxxabiv119__terminate_handlerE);
      si32(_loc1_,_loc5_ - 68);
      si32(1196315971,_loc5_ - 28);
      si32(1126902528,_loc5_ - 32);
      si32(__ZL23__gxx_exception_cleanup19_Unwind_Reason_CodeP17_Unwind_Exception,_loc5_ - 24);
      _loc2_ -= 16;
      si32(_loc4_ = _loc5_ + -32,_loc2_);
      ESP = _loc2_;
      F__Unwind_SjLj_RaiseException();
      _loc2_ += 16;
      _loc2_ -= 16;
      si32(_loc4_,_loc2_);
      ESP = _loc2_;
      F___cxa_begin_catch();
      _loc2_ += 16;
      ESP = _loc2_;
      F__ZSt9terminatev();
   }
}
