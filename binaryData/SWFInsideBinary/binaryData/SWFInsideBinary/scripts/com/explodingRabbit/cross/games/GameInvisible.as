package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.smbc.errors.SingletonError;
   import com.smbc.graphics.ThemeGroup;
   
   public class GameInvisible extends Game
   {
      
      private static var instance:Game;
      
      public static const NUM_WORLDS:int = 8;
       
      
      private const TG_OVERWORLD:ThemeGroup = addThemeGroup(1,1);
      
      private const TG_OVERWORLD_NIGHT:ThemeGroup = addThemeGroup(1,2,MT_DARK_EPIC);
      
      private const TG_SNOW:ThemeGroup = addThemeGroup(1,3);
      
      private const TG_SNOW_NIGHT:ThemeGroup = addThemeGroup(1,4,MT_DARK_EPIC);
      
      private const TG_OVERWORLD_GRAY:ThemeGroup = addThemeGroup(1,5,MT_DARK_EPIC);
      
      private const TG_UNDER_GROUND:ThemeGroup = addThemeGroup(1,6);
      
      private const TG_MUSHROOM_PLATFORM:ThemeGroup = addThemeGroup(2,1);
      
      private const TG_COIN_HEAVEN:ThemeGroup = addThemeGroup(3,1);
      
      private const TG_COIN_HEAVEN_NIGHT:ThemeGroup = addThemeGroup(3,2,MT_DARK_EPIC);
      
      private const TG_WATER:ThemeGroup = addThemeGroup(4,1);
      
      private const TG_CASTLE:ThemeGroup = addThemeGroup(5,1);
      
      private const TG_CASTLE_WATER:ThemeGroup = addThemeGroup(5,2);
      
      private const TG_CLOUDS:ThemeGroup = addThemeGroup(6,1);
      
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
         addToThemeInfoGeneral(this.TG_OVERWORLD,LT_NORMAL,LT_INTRO,LT_PLATFORM,LT_CHEEP_CHEEP);
         addToThemeInfoGeneral(this.TG_UNDER_GROUND,LT_UNDER_GROUND,LT_PIPE_BONUS);
         addToThemeInfoGeneral(this.TG_COIN_HEAVEN,LT_COIN_HEAVEN);
         addToThemeInfoGeneral(this.TG_CASTLE,LT_CASTLE);
         addToThemeInfoGeneral(this.TG_WATER,LT_WATER);
         addToThemeInfoWorld(3,this.TG_SNOW_NIGHT,LT_NORMAL);
         addToThemeInfoWorld(3,this.TG_OVERWORLD_NIGHT,LT_PLATFORM);
         addToThemeInfoWorld(3,this.TG_COIN_HEAVEN_NIGHT,LT_COIN_HEAVEN);
         addToThemeInfoWorld(4,this.TG_MUSHROOM_PLATFORM,LT_COIN_HEAVEN,LT_PLATFORM);
         addToThemeInfoWorld(5,this.TG_SNOW,LT_NORMAL);
         addToThemeInfoWorld(6,this.TG_OVERWORLD_NIGHT,LT_NORMAL);
         addToThemeInfoWorld(6,this.TG_COIN_HEAVEN_NIGHT,LT_COIN_HEAVEN);
         addToThemeInfoWorld(6,this.TG_OVERWORLD_GRAY,LT_PLATFORM);
         addToThemeInfoWorld(7,this.TG_SNOW,LT_NORMAL);
         addToThemeInfoWorld(8,this.TG_CASTLE_WATER,LT_WATER);
      }
      
      override protected function createPlayList() : void
      {
         setGameToUseAsPlayList(Games.superMarioBros);
      }
   }
}
