
{
   §__force_ordering_ns_967a1978-395b-4883-9375-772005c60b5f§;
}

package sample.libgme.vfs
{
   import flash.utils.ByteArray;
   
   public interface IBackingStore
   {
       
      
      function addFile(param1:String, param2:ByteArray) : void;
      
      function deleteFile(param1:String) : void;
      
      function getPaths() : Vector.<String>;
      
      function getFile(param1:String) : ByteArray;
      
      function pathExists(param1:String) : Boolean;
      
      function isDirectory(param1:String) : Boolean;
      
      function flush() : void;
      
      function get readOnly() : Boolean;
   }
}

const const_2:*;
