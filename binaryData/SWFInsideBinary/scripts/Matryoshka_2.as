package
{
   import apparat.lzma.LZMADecoder;
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public final class Matryoshka extends Sprite
   {
       
      
      public function Matryoshka()
      {
         super();
         if(null == stage)
         {
            addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         }
         else
         {
            this.init();
         }
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         this.init();
      }
      
      private function init() : void
      {
         var decoder:LZMADecoder = null;
         var properties:Vector.<int> = null;
         var input:ByteArray = null;
         var i:int = 0;
         var outSize:uint = 0;
         var j:int = 0;
         var output:ByteArray = null;
         var loader:Loader = null;
         try
         {
            decoder = new LZMADecoder();
            properties = new Vector.<int>(5,true);
            input = MatryoshkaContent.byteArray;
            i = 0;
            while(i < 5)
            {
               properties[i] = input.readUnsignedByte();
               i++;
            }
            if(!decoder.setDecoderProperties(properties))
            {
               throw new Error("Could not set decoder properties.");
            }
            outSize = 0;
            j = 0;
            while(j < 8)
            {
               outSize |= input.readUnsignedByte() << 8 * j;
               j++;
            }
            output = new ByteArray();
            if(!decoder.code(input,output,outSize))
            {
               throw new Error("LZMA decoder failed.");
            }
            loader = new Loader();
            loader.loadBytes(output,new LoaderContext(false,ApplicationDomain.currentDomain));
            addChild(loader);
         }
         finally
         {
            MatryoshkaContent.byteArray = null;
            MatryoshkaContent.byteArrayAsset = null;
         }
      }
      
      override public function toString() : String
      {
         return "[Matryoshka]";
      }
   }
}
