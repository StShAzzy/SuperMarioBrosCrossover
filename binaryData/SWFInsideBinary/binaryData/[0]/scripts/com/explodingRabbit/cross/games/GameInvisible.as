package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.smbc.data.MapPack;
   import com.smbc.errors.SingletonError;
   import com.smbc.graphics.ThemeGroup;
   
   public class GameInvisible extends Game
   {
      
      private static var instance:Game;
      
      public static const NUM_WORLDS:int = 8;
       
      
      private const TG_DAY:ThemeGroup = addThemeGroup(1,1);
      
      private const TG_NIGHT:ThemeGroup = addThemeGroup(1,2,MT_DARK_EPIC);
      
      private const TG_BLACK:ThemeGroup = addThemeGroup(1,3);
      
      private const TG_WATER:ThemeGroup = addThemeGroup(1,4);
      
      private const TG_WATER_NIGHT:ThemeGroup = addThemeGroup(1,5);
      
      public function GameInvisible(param1:int, param2:int)
      {
         super("Super Mario Bros.","Nintendo",Consoles.nintendo,param1,"SMB (Invisible)",param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function setUpLevelThemes() : void
      {
         addToThemeInfoGeneral(this.TG_DAY,LT_NORMAL,LT_INTRO,LT_PLATFORM,LT_CHEEP_CHEEP,LT_COIN_HEAVEN);
         addToThemeInfoGeneral(this.TG_BLACK,LT_UNDER_GROUND,LT_PIPE_BONUS,LT_CASTLE);
         addToThemeInfoGeneral(this.TG_WATER,LT_WATER);
         addToThemeInfoWorld(3,this.TG_NIGHT,LT_NORMAL,LT_PLATFORM,LT_COIN_HEAVEN);
         addToThemeInfoWorld(6,this.TG_NIGHT,LT_NORMAL,LT_PLATFORM,LT_COIN_HEAVEN);
         themeMapPack = MapPack.Special;
         addToThemeInfoGeneral(this.TG_WATER_NIGHT,"3-1b","6-2c","6-2e");
         themeMapPack = MapPack.LostLevels;
         addToThemeInfoWorld(2,this.TG_NIGHT,LT_NORMAL,LT_CHEEP_CHEEP);
         addToThemeInfoWorld(3,this.TG_DAY,LT_NORMAL,LT_PLATFORM);
         addToThemeInfoWorld(6,this.TG_DAY,LT_NORMAL,LT_CHEEP_CHEEP);
         addToThemeInfoWorld(7,this.TG_NIGHT,LT_NORMAL,LT_PLATFORM);
         addToThemeInfoWorld(9,this.TG_NIGHT,LT_COIN_HEAVEN);
         addToThemeInfoWorld(12,this.TG_NIGHT,LT_NORMAL,LT_PLATFORM,LT_CHEEP_CHEEP);
         addToThemeInfoGeneral(this.TG_WATER_NIGHT,"9-4a");
      }
      
      override protected function createPlayList() : void
      {
         setGameToUseAsPlayList(Games.superMarioBros);
      }
   }
}
