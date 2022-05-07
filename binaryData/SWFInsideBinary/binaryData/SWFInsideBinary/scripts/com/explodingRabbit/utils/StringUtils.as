package com.explodingRabbit.utils
{
   public class StringUtils
   {
      
      public static const IND_DATA_TYPE:int = 0;
      
      public static const IND_DATA_SKIN:int = 1;
      
      public static const IND_DATA_THEME:int = 2;
      
      public static const IND_DATA_SET:int = 3;
      
      public static const IND_DATA_LAYER:int = 4;
      
      private static const STR_TRIM_LENGTH:int = 22;
      
      private static const STR_SKIN_LENGTH:int = 3;
      
      private static const STR_THEME_LENGTH:int = 2;
      
      private static const STR_SET_LENGTH:int = 2;
      
      private static const STR_LAYER_LENGTH:int = 2;
      
      private static const STR_SEP_LENGTH:int = 1;
      
      private static const STR_SEP:String = "_";
       
      
      public function StringUtils()
      {
         super();
      }
      
      public static function readClassData(param1:Class) : Array
      {
         var _loc3_:int = 0;
         var _loc2_:String = Class(param1).toString();
         _loc2_ = _loc2_.substr(STR_TRIM_LENGTH,_loc2_.length - STR_TRIM_LENGTH - 1);
         var _loc4_:Array = ["",-1,-1,-1,-1];
         var _loc5_:int = _loc2_.indexOf(STR_SEP);
         _loc4_[IND_DATA_TYPE] = _loc2_.substr(_loc3_,_loc5_);
         _loc3_ = _loc5_ + STR_SEP_LENGTH;
         _loc4_[IND_DATA_SKIN] = int(_loc2_.substr(_loc3_,STR_SKIN_LENGTH));
         _loc3_ += STR_SKIN_LENGTH + STR_SEP_LENGTH;
         _loc4_[IND_DATA_THEME] = int(_loc2_.substr(_loc3_,STR_THEME_LENGTH));
         _loc3_ += STR_THEME_LENGTH + STR_SEP_LENGTH;
         if(_loc3_ >= _loc2_.length)
         {
            return _loc4_;
         }
         _loc4_[IND_DATA_SET] = int(_loc2_.substr(_loc3_,STR_SET_LENGTH));
         _loc3_ += STR_SET_LENGTH + STR_SEP_LENGTH;
         if(_loc3_ >= _loc2_.length)
         {
            return _loc4_;
         }
         _loc4_[IND_DATA_LAYER] = int(_loc2_.substr(_loc3_,STR_LAYER_LENGTH));
         return _loc4_;
      }
      
      public static function getClassNameFromClass(param1:Class) : String
      {
         var _loc2_:String = Class(param1).toString();
         var _loc3_:int = 17;
         return _loc2_.substr(_loc3_,_loc2_.length - _loc3_ - 1);
      }
      
      public static function getClassNameFromQualifiedName(param1:String) : String
      {
         return param1.substr(param1.indexOf("::") + 2);
      }
   }
}
