package neoart.flod.xm
{
   public final class XMEnvelope
   {
       
      
      var value:int;
      
      var position:int;
      
      var frame:int;
      
      var delta:int;
      
      var fraction:int;
      
      var stopped:int;
      
      public function XMEnvelope()
      {
         super();
      }
      
      function reset(param1:int) : void
      {
         this.value = param1;
         this.position = 0;
         this.frame = 0;
         this.delta = 0;
         this.stopped = 0;
      }
   }
}
