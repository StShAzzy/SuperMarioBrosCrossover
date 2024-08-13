package sample.libgme
{
   public var threadArbConds:* = !!workerClass ? (function():*
   {
      var _loc3_:* = undefined;
      var _loc1_:* = [];
      var _loc2_:* = 0;
      while(_loc2_ < 32)
      {
         _loc3_ = workerClass.current.getSharedProperty("flascc.threadArbCond." + _loc2_);
         if(!_loc3_)
         {
            return undefined;
         }
         _loc1_[_loc2_] = _loc3_;
         _loc2_++;
      }
      return _loc1_;
   })() || (function():*
   {
      var _loc1_:* = [];
      var _loc2_:* = 0;
      while(_loc2_ < 32)
      {
         _loc1_[_loc2_] = new conditionClass(threadArbMutex);
         _loc2_++;
      }
      return _loc1_;
   })() : undefined;
}
