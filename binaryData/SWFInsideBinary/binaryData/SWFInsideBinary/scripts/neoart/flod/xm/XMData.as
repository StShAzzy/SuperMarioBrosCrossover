package neoart.flod.xm
{
   public final class XMData
   {
       
      
      var points:Vector.<XMPoint>;
      
      var total:int;
      
      var sustain:int;
      
      var loopStart:int;
      
      var loopEnd:int;
      
      var flags:int;
      
      public function XMData()
      {
         super();
         this.points = new Vector.<XMPoint>(12,true);
      }
   }
}
