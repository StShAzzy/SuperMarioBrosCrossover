package com.smbc.graphics.skins
{
   import com.smbc.data.LevelDataTranscoder;
   import com.smbc.managers.GraphicsManager;
   
   public final class SkinNames
   {
      
      public static const USE_MAP_SKIN:String = "map skin";
      
      public static const RANDOM:String = "random";
       
      
      public function SkinNames()
      {
         super();
      }
      
      public static function getName(param1:int) : String
      {
         var _loc2_:int = GraphicsManager.RANDOM_SKIN_NUM;
         if(param1 < _loc2_)
         {
            return LevelDataTranscoder.SKINS_VEC[param1];
         }
         if(param1 == _loc2_)
         {
            return RANDOM;
         }
         return USE_MAP_SKIN;
      }
      
      public static function getNum(param1:String) : int
      {
         if(param1 === RANDOM)
         {
            return GraphicsManager.RANDOM_SKIN_NUM;
         }
         if(param1 === USE_MAP_SKIN)
         {
            return GraphicsManager.USE_MAP_SKIN_NUM;
         }
         return LevelDataTranscoder.SKINS_OBJ[param1];
      }
   }
}
