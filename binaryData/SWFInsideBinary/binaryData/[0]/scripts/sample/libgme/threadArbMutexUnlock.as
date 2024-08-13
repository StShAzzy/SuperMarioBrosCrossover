package sample.libgme
{
   public function threadArbMutexUnlock() : void
   {
      threadArbLockDepth = _loc1_;
      var _loc1_:* = threadArbLockDepth - 1;
      if(!_loc1_)
      {
         threadArbMutex.unlock();
      }
   }
}
