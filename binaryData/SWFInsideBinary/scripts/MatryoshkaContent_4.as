package
{
   import flash.utils.ByteArray;
   
   public final class MatryoshkaContent
   {
      
      public static var byteArrayAsset:Class = MatryoshkaContent_byteArrayAsset;
      
      public static var byteArray:ByteArray = ByteArray(new byteArrayAsset());
       
      
      public function MatryoshkaContent()
      {
         super();
      }
   }
}
