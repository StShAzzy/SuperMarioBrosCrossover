package com.smbc.managers
{
   import com.explodingRabbit.utils.CustomDictionary;
   import com.explodingRabbit.utils.Enum;
   import com.smbc.data.GameSettings;
   import com.smbc.data.MapPack;
   import com.smbc.errors.SingletonError;
   import com.smbc.level.LevelData;
   
   public class LevelDataManager
   {
      
      private static var levelDatas:CustomDictionary = new CustomDictionary();
      
      private static const INSTANCE:LevelDataManager = new LevelDataManager();
      
      private static var instantiated:Boolean;
       
      
      public function LevelDataManager()
      {
         var _loc1_:MapPack = null;
         super();
         if(instantiated)
         {
            throw new SingletonError();
         }
         instantiated = true;
         for each(_loc1_ in Enum.GetConstants(MapPack))
         {
            levelDatas.addItem(_loc1_,new LevelData(_loc1_));
         }
      }
      
      public static function get currentLevelData() : LevelData
      {
         return getLevelData(GameSettings.mapPack);
      }
      
      public static function getLevelData(param1:MapPack) : LevelData
      {
         return levelDatas[param1];
      }
   }
}
