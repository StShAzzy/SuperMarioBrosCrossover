package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.smbc.errors.SingletonError;
   import com.smbc.graphics.ThemeGroup;
   
   public class GameSuperMarioBrosLostLevels extends Game
   {
      
      private static var instance:Game;
       
      
      private const TG_OVERWORLD:ThemeGroup = addThemeGroup(1,1);
      
      private const TG_OVERWORLD_FALL:ThemeGroup = addThemeGroup(1,2);
      
      private const TG_OVERWORLD_WINTER:ThemeGroup = addThemeGroup(1,3);
      
      private const TG_OVERWORLD_NIGHT:ThemeGroup = addThemeGroup(1,4,MT_DARK_EPIC);
      
      private const TG_OVERWORLD_NIGHT_FALL:ThemeGroup = addThemeGroup(1,5,MT_DARK_EPIC);
      
      private const TG_OVERWORLD_NIGHT_WINTER:ThemeGroup = addThemeGroup(1,6,MT_DARK_EPIC);
      
      private const TG_OVERWORLD_GRAY:ThemeGroup = addThemeGroup(1,7,MT_DARK_EPIC);
      
      private const TG_UNDER_GROUND:ThemeGroup = addThemeGroup(1,8);
      
      private const TG_WATER:ThemeGroup = addThemeGroup(2,1);
      
      private const TG_CASTLE:ThemeGroup = addThemeGroup(3,1);
      
      private const TG_CASTLE_WATER:ThemeGroup = addThemeGroup(3,2);
      
      private const TG_SKY:ThemeGroup = addThemeGroup(4,1);
      
      private const TG_COIN_HEAVEN:ThemeGroup = addThemeGroup(5,1);
      
      private const TG_COIN_HEAVEN_NIGHT:ThemeGroup = addThemeGroup(5,2,MT_DARK_EPIC);
      
      private const TG_COIN_HEAVEN_GRAY:ThemeGroup = addThemeGroup(5,3,MT_DARK_EPIC);
      
      private const TG_WATER_OVERWORLD:ThemeGroup = addThemeGroup(6,1);
      
      private const TG_WATER_GRAY:ThemeGroup = addThemeGroup(6,2,MT_DARK_EPIC);
      
      private const TG_CASTLE_OVERWORLD:ThemeGroup = addThemeGroup(7,1);
      
      private const TG_CASTLE_UNDERWATER:ThemeGroup = addThemeGroup(8,1);
      
      public function GameSuperMarioBrosLostLevels(param1:int, param2:int)
      {
         super("SMB2 (Japan)","Nintendo",Consoles.nintendo,param1,null,param2);
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
         addToThemeInfoGeneral(this.TG_SKY,"4-2c","4-3a");
         addToThemeInfoGeneral(this.TG_OVERWORLD_FALL,"8-2a","8-3a");
         addToThemeInfoWorld(2,this.TG_OVERWORLD_NIGHT,LT_NORMAL,LT_INTRO,LT_CHEEP_CHEEP);
         addToThemeInfoWorld(2,this.TG_COIN_HEAVEN_NIGHT,LT_COIN_HEAVEN);
         addToThemeInfoWorld(3,this.TG_OVERWORLD_WINTER,LT_NORMAL,LT_PLATFORM);
         addToThemeInfoWorld(3,this.TG_COIN_HEAVEN_NIGHT,LT_COIN_HEAVEN);
         addToThemeInfoWorld(4,this.TG_OVERWORLD_FALL,LT_COIN_HEAVEN);
         addToThemeInfoWorld(5,this.TG_OVERWORLD_WINTER,LT_NORMAL);
         addToThemeInfoWorld(6,this.TG_OVERWORLD,LT_NORMAL,LT_PLATFORM);
         addToThemeInfoWorld(7,this.TG_OVERWORLD_NIGHT_WINTER,LT_NORMAL,LT_INTRO);
         addToThemeInfoWorld(7,this.TG_OVERWORLD_GRAY,LT_CHEEP_CHEEP);
         addToThemeInfoWorld(8,this.TG_OVERWORLD_WINTER,LT_NORMAL);
         addToThemeInfoWorld(8,this.TG_CASTLE_WATER,LT_WATER);
      }
      
      override protected function createPlayList() : void
      {
         setGameToUseAsPlayList(Games.superMarioBros);
      }
   }
}
