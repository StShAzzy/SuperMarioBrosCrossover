package neoart.flod.xm
{
   public final class XMInstrument
   {
       
      
      var name:String = "";
      
      var samples:Vector.<XMSample>;
      
      var noteSamples:Vector.<int>;
      
      var fadeout:int;
      
      var hasVolume:int;
      
      var volData:XMData;
      
      var hasPanning:int;
      
      var panData:XMData;
      
      var vibratoType:int;
      
      var vibratoSweep:int;
      
      var vibratoSpeed:int;
      
      var vibratoDepth:int;
      
      public function XMInstrument()
      {
         super();
         this.noteSamples = new Vector.<int>(96,true);
         this.volData = new XMData();
         this.panData = new XMData();
      }
   }
}
