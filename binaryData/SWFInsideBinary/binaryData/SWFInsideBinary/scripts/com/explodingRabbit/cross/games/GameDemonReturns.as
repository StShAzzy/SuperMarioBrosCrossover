package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.smbc.data.MapPack;
   import com.smbc.errors.SingletonError;
   import com.smbc.graphics.ThemeGroup;
   
   public class GameDemonReturns extends Game
   {
      
      private static var instance:Game;
       
      
      private const TG_OVERWORLD_1:ThemeGroup = addThemeGroup(1,1);
      
      private const TG_OVERWORLD_2:ThemeGroup = addThemeGroup(1,2);
      
      private const TG_OVERWORLD_3:ThemeGroup = addThemeGroup(1,3);
      
      private const TG_OVERWORLD_4:ThemeGroup = addThemeGroup(1,4,MT_DARK_EPIC);
      
      private const TG_UNDER_GROUND_1:ThemeGroup = addThemeGroup(2,1);
      
      private const TG_UNDER_GROUND_2:ThemeGroup = addThemeGroup(2,2);
      
      private const TG_UNDER_GROUND_3:ThemeGroup = addThemeGroup(2,3);
      
      private const TG_UNDER_GROUND_4:ThemeGroup = addThemeGroup(2,4);
      
      private const TG_UNDER_GROUND_PIPE_BONUS:ThemeGroup = addThemeGroup(2,5);
      
      private const TG_PLATFORM_1:ThemeGroup = addThemeGroup(3,1,MT_DARK_EPIC);
      
      private const TG_PLATFORM_2:ThemeGroup = addThemeGroup(3,2,MT_DARK_EPIC);
      
      private const TG_PLATFORM_3:ThemeGroup = addThemeGroup(3,3,MT_DARK_EPIC);
      
      private const TG_PLATFORM_4:ThemeGroup = addThemeGroup(3,4,MT_DARK_EPIC);
      
      private const TG_CASTLE_1:ThemeGroup = addThemeGroup(4,1);
      
      private const TG_CASTLE_2:ThemeGroup = addThemeGroup(4,2);
      
      private const TG_CASTLE_3:ThemeGroup = addThemeGroup(4,3);
      
      private const TG_CASTLE_4:ThemeGroup = addThemeGroup(4,4);
      
      private const TG_CASTLE_4_WATER:ThemeGroup = addThemeGroup(4,5);
      
      private const TG_COIN_HEAVEN_NORMAL:ThemeGroup = addThemeGroup(5,1);
      
      private const TG_COIN_HEAVEN_SPECIAL:ThemeGroup = addThemeGroup(5,2);
      
      private const TG_WATER_1:ThemeGroup = addThemeGroup(6,1);
      
      private const TG_WATER_2:ThemeGroup = addThemeGroup(6,2);
      
      private const TG_WATER_3:ThemeGroup = addThemeGroup(6,3);
      
      private const TG_WATER_4:ThemeGroup = addThemeGroup(6,4);
      
      public function GameDemonReturns(param1:int, param2:int)
      {
         super("Demon Returns","Namco Bandai Games",Consoles.nintendo,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override public function initiate() : void
      {
         super.initiate();
         creditsGame = Games.gameCenterCx2;
      }
      
      override protected function setUpLevelThemes() : void
      {
         addToThemeInfoGeneral(this.TG_COIN_HEAVEN_NORMAL,LT_COIN_HEAVEN);
         addToThemeInfoGeneral(this.TG_UNDER_GROUND_PIPE_BONUS,LT_PIPE_BONUS);
         addToThemeInfoGeneral(this.TG_OVERWORLD_1,LT_NORMAL,LT_INTRO);
         addToThemeInfoGeneral(this.TG_PLATFORM_1,LT_PLATFORM,LT_CHEEP_CHEEP);
         addToThemeInfoGeneral(this.TG_UNDER_GROUND_1,LT_UNDER_GROUND);
         addToThemeInfoGeneral(this.TG_CASTLE_1,LT_CASTLE);
         addToThemeInfoGeneral(this.TG_WATER_1,LT_WATER);
         addToThemeInfoWorld(3,this.TG_OVERWORLD_2,LT_NORMAL,LT_INTRO);
         addToThemeInfoWorld(3,this.TG_PLATFORM_2,LT_PLATFORM,LT_CHEEP_CHEEP);
         addToThemeInfoWorld(3,this.TG_UNDER_GROUND_2,LT_UNDER_GROUND);
         addToThemeInfoWorld(3,this.TG_CASTLE_2,LT_CASTLE);
         addToThemeInfoWorld(3,this.TG_WATER_2,LT_WATER);
         addToThemeInfoWorld(4,this.TG_OVERWORLD_2,LT_NORMAL,LT_INTRO);
         addToThemeInfoWorld(4,this.TG_PLATFORM_2,LT_PLATFORM,LT_CHEEP_CHEEP);
         addToThemeInfoWorld(4,this.TG_UNDER_GROUND_2,LT_UNDER_GROUND);
         addToThemeInfoWorld(4,this.TG_CASTLE_2,LT_CASTLE);
         addToThemeInfoWorld(4,this.TG_WATER_2,LT_WATER);
         addToThemeInfoWorld(5,this.TG_OVERWORLD_3,LT_NORMAL,LT_INTRO);
         addToThemeInfoWorld(5,this.TG_PLATFORM_3,LT_PLATFORM,LT_CHEEP_CHEEP);
         addToThemeInfoWorld(5,this.TG_UNDER_GROUND_3,LT_UNDER_GROUND);
         addToThemeInfoWorld(5,this.TG_CASTLE_3,LT_CASTLE);
         addToThemeInfoWorld(5,this.TG_WATER_3,LT_WATER);
         addToThemeInfoWorld(6,this.TG_OVERWORLD_3,LT_NORMAL,LT_INTRO);
         addToThemeInfoWorld(6,this.TG_PLATFORM_3,LT_PLATFORM,LT_CHEEP_CHEEP);
         addToThemeInfoWorld(6,this.TG_UNDER_GROUND_3,LT_UNDER_GROUND);
         addToThemeInfoWorld(6,this.TG_CASTLE_3,LT_CASTLE);
         addToThemeInfoWorld(6,this.TG_WATER_3,LT_WATER);
         addToThemeInfoWorld(7,this.TG_OVERWORLD_4,LT_NORMAL,LT_INTRO);
         addToThemeInfoWorld(7,this.TG_PLATFORM_4,LT_PLATFORM,LT_CHEEP_CHEEP);
         addToThemeInfoWorld(7,this.TG_UNDER_GROUND_4,LT_UNDER_GROUND);
         addToThemeInfoWorld(7,this.TG_CASTLE_4,LT_CASTLE);
         addToThemeInfoWorld(7,this.TG_WATER_4,LT_WATER);
         addToThemeInfoWorld(8,this.TG_OVERWORLD_4,LT_NORMAL,LT_INTRO);
         addToThemeInfoWorld(8,this.TG_PLATFORM_4,LT_PLATFORM,LT_CHEEP_CHEEP);
         addToThemeInfoWorld(8,this.TG_UNDER_GROUND_4,LT_UNDER_GROUND);
         addToThemeInfoWorld(8,this.TG_CASTLE_4,LT_CASTLE);
         addToThemeInfoWorld(8,this.TG_CASTLE_4_WATER,LT_WATER);
         themeMapPack = MapPack.Special;
         addToThemeInfoGeneral(this.TG_UNDER_GROUND_3,"6-2d");
         addToThemeInfoGeneral(this.TG_WATER_4,"8-2b");
      }
      
      override protected function createPlayList() : void
      {
         setGameToUseAsPlayList(Games.gimmick);
         addToThemePlayList(this.TG_CASTLE_4_WATER,Games.gimmick.SngLionHeart,[LT_WATER]);
      }
   }
}
