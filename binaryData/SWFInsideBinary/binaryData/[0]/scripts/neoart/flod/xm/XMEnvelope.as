package neoart.flod.xm
{
   public final class XMEnvelope
   {
       
      
      internal var value:int;
      
      internal var position:int;
      
      internal var frame:int;
      
      internal var delta:int;
      
      internal var fraction:int;
      
      internal var stopped:int;
      
      public function XMEnvelope()
      {
         super();
      }
      
      internal function reset(param1:int) : void
      {
         this.value = param1;
         this.position = 0;
         this.frame = 0;
         this.delta = 0;
         this.stopped = 0;
      }
   }
}
