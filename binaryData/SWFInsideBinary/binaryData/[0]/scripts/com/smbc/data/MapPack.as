package com.smbc.data
{
   import com.explodingRabbit.utils.Enum;
   
   public class MapPack extends Enum
   {
      
      public static const Smb:MapPack = new MapPack();
      
      public static const Special:MapPack = new MapPack();
      
      public static const LostLevels:MapPack = new MapPack("Lost Levels");
      
      {
         initEnum(MapPack);
      }
      
      public function MapPack(param1:String = null)
      {
         super(param1);
      }
   }
}
