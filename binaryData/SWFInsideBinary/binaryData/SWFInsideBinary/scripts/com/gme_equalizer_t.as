package
{
   import sample.libgme.*;
   import sample.libgme.swig.*;
   
   public class gme_equalizer_t
   {
       
      
      public var swigCPtr:int;
      
      public function gme_equalizer_t()
      {
         super();
      }
      
      public static function create() : gme_equalizer_t
      {
         var _loc1_:* = new gme_equalizer_t();
         _loc1_.swigCPtr = _wrap_new_gme_equalizer_t();
         return _loc1_;
      }
      
      public function set treble(param1:Number) : void
      {
         _wrap_gme_equalizer_t_treble_set(swigCPtr,param1);
      }
      
      public function get treble() : Number
      {
         return _wrap_gme_equalizer_t_treble_get(swigCPtr);
      }
      
      public function set bass(param1:int) : void
      {
         _wrap_gme_equalizer_t_bass_set(swigCPtr,param1);
      }
      
      public function get bass() : int
      {
         return _wrap_gme_equalizer_t_bass_get(swigCPtr);
      }
      
      public function destroy() : void
      {
         _wrap_delete_gme_equalizer_t(swigCPtr);
      }
   }
}
