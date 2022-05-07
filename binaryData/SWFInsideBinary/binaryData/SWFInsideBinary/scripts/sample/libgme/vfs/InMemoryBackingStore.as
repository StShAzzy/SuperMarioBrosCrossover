package sample.libgme.vfs
{
   import flash.events.EventDispatcher;
   import flash.utils.ByteArray;
   
   public class InMemoryBackingStore extends EventDispatcher implements IBackingStore
   {
       
      
      private var filemap:Object;
      
      public function InMemoryBackingStore()
      {
         filemap = {};
         super();
      }
      
      public function get readOnly() : Boolean
      {
         return false;
      }
      
      public function getPaths() : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>();
         var _loc4_:int = 0;
         var _loc3_:* = filemap;
         while(§§hasnext(_loc3_,_loc4_))
         {
            _loc2_.push(§§nextname(_loc4_,_loc3_));
         }
         return _loc2_;
      }
      
      public function flush() : void
      {
      }
      
      public function deleteFile(param1:String) : void
      {
         delete filemap[param1];
      }
      
      public function addFile(param1:String, param2:ByteArray) : void
      {
         filemap[param1] = param2;
      }
      
      public function addDirectory(param1:String) : void
      {
         filemap[param1] = null;
      }
      
      public function getFile(param1:String) : ByteArray
      {
         return filemap[param1];
      }
      
      public function isDirectory(param1:String) : Boolean
      {
         return filemap[param1] == null;
      }
      
      public function pathExists(param1:String) : Boolean
      {
         return filemap.hasOwnProperty(param1);
      }
   }
}

const §4§;
