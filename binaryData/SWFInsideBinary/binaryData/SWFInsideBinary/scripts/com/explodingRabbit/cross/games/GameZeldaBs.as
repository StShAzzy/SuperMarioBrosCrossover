package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameZeldaBs extends Game
   {
      
      private static var instance:Game;
       
      
      private const VOLUME:int = 90;
      
      private const MainThemeData:Class = GameZeldaBs_MainThemeData;
      
      public const SngMainTheme:Song = addSong(this.MainThemeData,-1,null,this.VOLUME);
      
      private const OverworldData:Class = GameZeldaBs_OverworldData;
      
      public const SngOverworld:Song = addSong(this.OverworldData,-1,null,this.VOLUME);
      
      private const DungeonData:Class = GameZeldaBs_DungeonData;
      
      public const SngDungeon:Song = addSong(this.DungeonData,-1,null,this.VOLUME);
      
      private const GanonsLairData:Class = GameZeldaBs_GanonsLairData;
      
      public const SngGanonsLair:Song = addSong(this.GanonsLairData,-1,null,this.VOLUME);
      
      private const ConfrontingGanonData:Class = GameZeldaBs_ConfrontingGanonData;
      
      public const SngConfrontingGanon:Song = addSong(this.ConfrontingGanonData,-1,null,this.VOLUME);
      
      private const ZeldaRescuedData:Class = GameZeldaBs_ZeldaRescuedData;
      
      public const SngZeldaRescued:Song = addSong(this.ZeldaRescuedData,-1,null,this.VOLUME);
      
      private const EndingData:Class = GameZeldaBs_EndingData;
      
      public const SngEnding:Song = addSong(this.EndingData,-1,null,this.VOLUME);
      
      private const DefeatedData:Class = GameZeldaBs_DefeatedData;
      
      public const SngDefeated:Song = addSong(this.DefeatedData,-1,null,this.VOLUME);
      
      private const DiscoveryData:Class = GameZeldaBs_DiscoveryData;
      
      public const SngDiscovery:Song = addSong(this.DiscoveryData,-1,null,this.VOLUME);
      
      private const ImportantItemData:Class = GameZeldaBs_ImportantItemData;
      
      public const SngImportantItem:Song = addSong(this.ImportantItemData,-1,null,this.VOLUME);
      
      private const SmallItemData:Class = GameZeldaBs_SmallItemData;
      
      public const SngSmallItem:Song = addSong(this.SmallItemData,-1,null,this.VOLUME);
      
      private const TriforceOfPowerData:Class = GameZeldaBs_TriforceOfPowerData;
      
      public const SngTriforceOfPower:Song = addSong(this.TriforceOfPowerData,-1,null,this.VOLUME);
      
      private const TriforceOfWisdomData:Class = GameZeldaBs_TriforceOfWisdomData;
      
      public const SngTriforceOfWisdom:Song = addSong(this.TriforceOfWisdomData,-1,null,this.VOLUME);
      
      private const WhistleData:Class = GameZeldaBs_WhistleData;
      
      public const SngWhistle:Song = addSong(this.WhistleData,-1,null,this.VOLUME);
      
      public function GameZeldaBs(param1:int, param2:int = -1)
      {
         super("BS The Legend of Zelda","Nintendo",Consoles.superNintendo,param1,null,param2);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override protected function createPlayList() : void
      {
         addOverridableMusicTypes(LT_NORMAL);
         addToTypePlayList(LT_CASTLE,this.SngGanonsLair);
         addToTypePlayList(LT_CHEEP_CHEEP,this.SngOverworld);
         addToTypePlayList(LT_COIN_HEAVEN,this.SngZeldaRescued);
         addToTypePlayList(LT_INTRO,this.SngDiscovery);
         addToTypePlayList(LT_NORMAL,this.SngOverworld);
         addToTypePlayList(LT_PIPE_BONUS,this.SngDungeon);
         addToTypePlayList(LT_PLATFORM,this.SngOverworld);
         addToTypePlayList(LT_UNDER_GROUND,this.SngDungeon);
         addToTypePlayList(LT_WATER,this.SngMainTheme);
         addToTypePlayList(MT_DARK_EPIC,this.SngOverworld);
         addToTypePlayList(BOSS,null);
         addToTypePlayList(CHAR_SEL,this.SngZeldaRescued);
         addToTypePlayList(CHOOSE_CHARACTER,this.SngWhistle);
         addToTypePlayList(CREDITS,this.SngEnding);
         addToTypePlayList(DIE,null);
         addToTypePlayList(FINAL_BOSS,null);
         addToTypePlayList(GAME_OVER,this.SngZeldaRescued);
         addToTypePlayList(HURRY,null);
         addToTypePlayList(STAR,null);
         addToTypePlayList(TITLE_SCREEN,this.SngMainTheme);
         addToTypePlayList(WIN,this.SngTriforceOfPower);
         addToTypePlayList(WIN_CASTLE,this.SngTriforceOfWisdom);
      }
   }
}
