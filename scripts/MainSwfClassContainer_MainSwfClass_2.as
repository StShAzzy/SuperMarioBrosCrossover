package
{
   import flash.utils.ByteArray;
   import mx.core.MovieClipLoaderAsset;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol49")]
   public class MainSwfClassContainer_MainSwfClass extends MovieClipLoaderAsset
   {
      
      private static var bytes:ByteArray = null;
       
      
      public var dataClass:Class;
      
      public function MainSwfClassContainer_MainSwfClass()
      {
         this.dataClass = MainSwfClassContainer_MainSwfClass_dataClass;
         super();
         initialWidth = 10240 / 20;
         initialHeight = 9600 / 20;
      }
      
      override public function get movieClipData() : ByteArray
      {
         if(bytes == null)
         {
            bytes = ByteArray(new this.dataClass());
         }
         return bytes;
      }
   }
}
