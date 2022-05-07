package com.smbc.level
{
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.enemies.Barrel;
   import com.smbc.main.GlobVars;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   
   public class BarrelSpawner
   {
       
      
      private var level:Level;
      
      private var position:Point;
      
      private var timer:CustomTimer;
      
      public function BarrelSpawner(param1:Point)
      {
         this.level = Level.levelInstance;
         this.timer = new CustomTimer(2000);
         super();
         param1.y += GlobVars.TILE_SIZE;
         param1.x += GlobVars.TILE_SIZE * 0.5;
         this.position = param1;
         this.timer.addEventListener(TimerEvent.TIMER,this.timerHandler,false,0,true);
         this.timer.start();
      }
      
      protected function timerHandler(param1:TimerEvent) : void
      {
         var _loc2_:Barrel = null;
         _loc2_ = new Barrel("");
         _loc2_.x = this.position.x;
         _loc2_.y = this.position.y;
         _loc2_.nx = _loc2_.x;
         _loc2_.ny = _loc2_.y;
         this.level.addToLevel(_loc2_);
      }
   }
}
