package neoart.flod.xm
{
   public final class XMData
   {
       
      
      internal var points:Vector.<XMPoint>;
      
      internal var total:int;
      
      internal var sustain:int;
      
      internal var loopStart:int;
      
      internal var loopEnd:int;
      
      internal var flags:int;
      
      public function XMData()
      {
         super();
         this.points = new Vector.<XMPoint>(12,true);
      }
   }
}
