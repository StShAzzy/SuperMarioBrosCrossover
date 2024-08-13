package sample.libgme
{
   public function threadArbCondWait(param1:Number) : Boolean
   {
      var _loc2_:Boolean = false;
      return Boolean(threadArbConds[threadId & 0x1F].wait(param1));
   }
}
