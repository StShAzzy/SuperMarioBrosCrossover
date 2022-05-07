package com.explodingRabbit.cross.games
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.sound.Song;
   import com.smbc.errors.SingletonError;
   
   public class GameLifeForce extends Game
   {
      
      private static var instance:Game;
       
      
      public const Nsfe:Class = GameLifeForce_Nsfe;
      
      private const VOLUME:int = 65;
      
      public const SngStage1LifeForce:Song = addSong(this.Nsfe,1,null,this.VOLUME);
      
      public const SngStage2Meteorolite:Song = addSong(this.Nsfe,2,null,this.VOLUME);
      
      public const SngStage3BlazingPhoenixAndDragon:Song = addSong(this.Nsfe,3,null,this.VOLUME);
      
      public const SngStage4OrganicLifeForms:Song = addSong(this.Nsfe,4,null,this.VOLUME);
      
      public const SngStage5RoadToMystery:Song = addSong(this.Nsfe,5,null,this.VOLUME);
      
      public const SngStage5Bonus:Song = addSong(this.Nsfe,6,null,this.VOLUME);
      
      public const SngStage5Pyramic:Song = addSong(this.Nsfe,7,null,this.VOLUME);
      
      public const SngStage6StarsAndLight:Song = addSong(this.Nsfe,8,null,this.VOLUME);
      
      public const SngBoss:Song = addSong(this.Nsfe,9,null,this.VOLUME);
      
      public const SngEnding:Song = addSong(this.Nsfe,10,null,this.VOLUME);
      
      public function GameLifeForce(param1:int)
      {
         super("Life Force","Konami",Consoles.nintendo,param1);
         if(instance)
         {
            throw new SingletonError();
         }
         instance = this;
      }
   }
}
