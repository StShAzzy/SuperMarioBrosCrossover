package
{
   import sample.libgme.*;
   import sample.libgme.swig.*;
   
   public class gme_type_t_
   {
       
      
      public var swigCPtr:int;
      
      public function gme_type_t_()
      {
         super();
      }
      
      public static function create() : gme_type_t_
      {
         var _loc1_:* = new gme_type_t_();
         _loc1_.swigCPtr = _wrap_new_gme_type_t_();
         return _loc1_;
      }
      
      public function set system(param1:String) : void
      {
         _wrap_gme_type_t__system_set(swigCPtr,param1);
      }
      
      public function get system() : String
      {
         return _wrap_gme_type_t__system_get(swigCPtr);
      }
      
      public function set track_count(param1:int) : void
      {
         _wrap_gme_type_t__track_count_set(swigCPtr,param1);
      }
      
      public function get track_count() : int
      {
         return _wrap_gme_type_t__track_count_get(swigCPtr);
      }
      
      public function set new_emu(param1:Function) : void
      {
         _wrap_gme_type_t__new_emu_set(swigCPtr,param1);
      }
      
      public function get new_emu() : Function
      {
         return _wrap_gme_type_t__new_emu_get(swigCPtr);
      }
      
      public function set new_info(param1:Function) : void
      {
         _wrap_gme_type_t__new_info_set(swigCPtr,param1);
      }
      
      public function get new_info() : Function
      {
         return _wrap_gme_type_t__new_info_get(swigCPtr);
      }
      
      public function set extension_(param1:String) : void
      {
         _wrap_gme_type_t__extension__set(swigCPtr,param1);
      }
      
      public function get extension_() : String
      {
         return _wrap_gme_type_t__extension__get(swigCPtr);
      }
      
      public function set flags_(param1:int) : void
      {
         _wrap_gme_type_t__flags__set(swigCPtr,param1);
      }
      
      public function get flags_() : int
      {
         return _wrap_gme_type_t__flags__get(swigCPtr);
      }
      
      public function destroy() : void
      {
         _wrap_delete_gme_type_t_(swigCPtr);
      }
   }
}
