package neoart.flod.xm
{
   public final class XMInstrument
   {
       
      
      internal var name:String = "";
      
      internal var samples:Vector.<XMSample>;
      
      internal var noteSamples:Vector.<int>;
      
      internal var fadeout:int;
      
      internal var hasVolume:int;
      
      internal var volData:XMData;
      
      internal var hasPanning:int;
      
      internal var panData:XMData;
      
      internal var vibratoType:int;
      
      internal var vibratoSweep:int;
      
      internal var vibratoSpeed:int;
      
      internal var vibratoDepth:int;
      
      public function XMInstrument()
      {
         super();
         this.noteSamples = new Vector.<int>(96,true);
         this.volData = new XMData();
         this.panData = new XMData();
      }
   }
}
