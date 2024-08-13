package
{
   import sample.libgme.*;
   import sample.libgme.swig.*;
   
   public class track_info_t
   {
       
      
      public var swigCPtr:int;
      
      public function track_info_t()
      {
         super();
      }
      
      public static function create() : track_info_t
      {
         var _loc1_:* = new track_info_t();
         _loc1_.swigCPtr = _wrap_new_track_info_t();
         return _loc1_;
      }
      
      public function set track_count(param1:int) : void
      {
         _wrap_track_info_t_track_count_set(swigCPtr,param1);
      }
      
      public function get track_count() : int
      {
         return _wrap_track_info_t_track_count_get(swigCPtr);
      }
      
      public function set length(param1:int) : void
      {
         _wrap_track_info_t_length_set(swigCPtr,param1);
      }
      
      public function get length() : int
      {
         return _wrap_track_info_t_length_get(swigCPtr);
      }
      
      public function set intro_length(param1:int) : void
      {
         _wrap_track_info_t_intro_length_set(swigCPtr,param1);
      }
      
      public function get intro_length() : int
      {
         return _wrap_track_info_t_intro_length_get(swigCPtr);
      }
      
      public function set loop_length(param1:int) : void
      {
         _wrap_track_info_t_loop_length_set(swigCPtr,param1);
      }
      
      public function get loop_length() : int
      {
         return _wrap_track_info_t_loop_length_get(swigCPtr);
      }
      
      public function set system(param1:int) : void
      {
         _wrap_track_info_t_system_set(swigCPtr,param1);
      }
      
      public function get system() : int
      {
         return _wrap_track_info_t_system_get(swigCPtr);
      }
      
      public function set game(param1:int) : void
      {
         _wrap_track_info_t_game_set(swigCPtr,param1);
      }
      
      public function get game() : int
      {
         return _wrap_track_info_t_game_get(swigCPtr);
      }
      
      public function set song(param1:int) : void
      {
         _wrap_track_info_t_song_set(swigCPtr,param1);
      }
      
      public function get song() : int
      {
         return _wrap_track_info_t_song_get(swigCPtr);
      }
      
      public function set author(param1:int) : void
      {
         _wrap_track_info_t_author_set(swigCPtr,param1);
      }
      
      public function get author() : int
      {
         return _wrap_track_info_t_author_get(swigCPtr);
      }
      
      public function set copyright(param1:int) : void
      {
         _wrap_track_info_t_copyright_set(swigCPtr,param1);
      }
      
      public function get copyright() : int
      {
         return _wrap_track_info_t_copyright_get(swigCPtr);
      }
      
      public function set comment(param1:int) : void
      {
         _wrap_track_info_t_comment_set(swigCPtr,param1);
      }
      
      public function get comment() : int
      {
         return _wrap_track_info_t_comment_get(swigCPtr);
      }
      
      public function set dumper(param1:int) : void
      {
         _wrap_track_info_t_dumper_set(swigCPtr,param1);
      }
      
      public function get dumper() : int
      {
         return _wrap_track_info_t_dumper_get(swigCPtr);
      }
      
      public function destroy() : void
      {
         _wrap_delete_track_info_t(swigCPtr);
      }
   }
}
