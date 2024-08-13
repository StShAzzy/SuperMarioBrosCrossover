package
{
   import sample.libgme.*;
   import sample.libgme.swig.*;
   
   public class libgme
   {
       
      
      public function libgme()
      {
         super();
      }
      
      public static function gme_open_file(param1:String, param2:int, param3:int) : String
      {
         return _wrap_gme_open_file(param1,param2,param3);
      }
      
      public static function gme_track_count(param1:int) : int
      {
         return _wrap_gme_track_count(param1);
      }
      
      public static function gme_start_track(param1:int, param2:int) : String
      {
         return _wrap_gme_start_track(param1,param2);
      }
      
      public static function gme_play(param1:int, param2:int, param3:int) : String
      {
         return _wrap_gme_play(param1,param2,param3);
      }
      
      public static function gme_play_float(param1:int, param2:int, param3:int, param4:int) : String
      {
         return _wrap_gme_play_float(param1,param2,param3,param4);
      }
      
      public static function gme_delete(param1:int) : void
      {
         _wrap_gme_delete(param1);
      }
      
      public static function gme_set_fade(param1:int, param2:int) : void
      {
         _wrap_gme_set_fade(param1,param2);
      }
      
      public static function gme_track_ended(param1:int) : int
      {
         return _wrap_gme_track_ended(param1);
      }
      
      public static function gme_tell(param1:int) : int
      {
         return _wrap_gme_tell(param1);
      }
      
      public static function gme_seek(param1:int, param2:int) : String
      {
         return _wrap_gme_seek(param1,param2);
      }
      
      public static function get gme_info_only() : int
      {
         return _wrap_gme_info_only();
      }
      
      public static function gme_warning(param1:int) : String
      {
         return _wrap_gme_warning(param1);
      }
      
      public static function gme_load_m3u(param1:int, param2:String) : String
      {
         return _wrap_gme_load_m3u(param1,param2);
      }
      
      public static function gme_track_info(param1:int, param2:int, param3:int) : String
      {
         return _wrap_gme_track_info(param1,param2,param3);
      }
      
      public static function get gme_max_field() : int
      {
         return _wrap_gme_max_field();
      }
      
      public static function gme_set_stereo_depth(param1:int, param2:Number) : void
      {
         _wrap_gme_set_stereo_depth(param1,param2);
      }
      
      public static function gme_ignore_silence(param1:int, param2:int) : void
      {
         _wrap_gme_ignore_silence(param1,param2);
      }
      
      public static function gme_set_tempo(param1:int, param2:Number) : void
      {
         _wrap_gme_set_tempo(param1,param2);
      }
      
      public static function gme_voice_count(param1:int) : int
      {
         return _wrap_gme_voice_count(param1);
      }
      
      public static function gme_voice_names(param1:int) : int
      {
         return _wrap_gme_voice_names(param1);
      }
      
      public static function gme_mute_voice(param1:int, param2:int, param3:int) : void
      {
         _wrap_gme_mute_voice(param1,param2,param3);
      }
      
      public static function gme_mute_voices(param1:int, param2:int) : void
      {
         _wrap_gme_mute_voices(param1,param2);
      }
      
      public static function gme_equalizer(param1:int) : *
      {
         return _wrap_gme_equalizer(param1);
      }
      
      public static function gme_set_equalizer(param1:int, param2:int) : void
      {
         _wrap_gme_set_equalizer(param1,param2);
      }
      
      public static function get gme_gbs_type() : int
      {
         return _wrap_gme_gbs_type_get();
      }
      
      public static function get gme_kss_type() : int
      {
         return _wrap_gme_kss_type_get();
      }
      
      public static function get gme_nsf_type() : int
      {
         return _wrap_gme_nsf_type_get();
      }
      
      public static function get gme_nsfe_type() : int
      {
         return _wrap_gme_nsfe_type_get();
      }
      
      public static function get gme_sap_type() : int
      {
         return _wrap_gme_sap_type_get();
      }
      
      public static function get gme_spc_type() : int
      {
         return _wrap_gme_spc_type_get();
      }
      
      public static function gme_type(param1:int) : int
      {
         return _wrap_gme_type(param1);
      }
      
      public static function gme_type_list() : int
      {
         return _wrap_gme_type_list();
      }
      
      public static function get gme_wrong_file_type() : int
      {
         return _wrap_gme_wrong_file_type_get();
      }
      
      public static function gme_open_data(param1:int, param2:int, param3:int, param4:int) : String
      {
         return _wrap_gme_open_data(param1,param2,param3,param4);
      }
      
      public static function gme_identify_header(param1:int) : String
      {
         return _wrap_gme_identify_header(param1);
      }
      
      public static function gme_identify_extension(param1:String) : int
      {
         return _wrap_gme_identify_extension(param1);
      }
      
      public static function gme_identify_file(param1:String, param2:int) : String
      {
         return _wrap_gme_identify_file(param1,param2);
      }
      
      public static function gme_new_emu(param1:int, param2:int) : int
      {
         return _wrap_gme_new_emu(param1,param2);
      }
      
      public static function gme_load_file(param1:int, param2:String) : String
      {
         return _wrap_gme_load_file(param1,param2);
      }
      
      public static function gme_load_data(param1:int, param2:int, param3:int) : String
      {
         return _wrap_gme_load_data(param1,param2,param3);
      }
      
      public static function gme_load_custom(param1:int, param2:Function, param3:int, param4:int) : String
      {
         return _wrap_gme_load_custom(param1,param2,param3,param4);
      }
      
      public static function gme_load_m3u_data(param1:int, param2:int, param3:int) : String
      {
         return _wrap_gme_load_m3u_data(param1,param2,param3);
      }
      
      public static function gme_set_user_data(param1:int, param2:int) : void
      {
         _wrap_gme_set_user_data(param1,param2);
      }
      
      public static function gme_user_data(param1:int) : int
      {
         return _wrap_gme_user_data(param1);
      }
      
      public static function gme_set_user_cleanup(param1:int, param2:Function) : void
      {
         _wrap_gme_set_user_cleanup(param1,param2);
      }
   }
}
