package sample.libgme
{
   public function F___error_unthreaded() : void
   {
      var _loc2_:* = 0;
      var _loc1_:* = int(ESP);
      _loc2_ = _loc1_;
      eax = _errno;
      _loc1_ = _loc2_;
      ESP = _loc1_;
   }
}
