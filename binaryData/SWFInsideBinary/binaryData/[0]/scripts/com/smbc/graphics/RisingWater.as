package com.smbc.graphics
{
   import com.smbc.managers.GraphicsManager;
   import com.smbc.utils.GameLoopTimer;
   import flash.events.TimerEvent;
   
   public class RisingWater extends Background
   {
      
      private static const MOVE_TMR_DEL:int = 150;
      
      private static const NUM_PAUSE_COUNTS:int = 1;
      
      private static const MOVE_AMT:int = GraphicsManager.BMD_SCALE;
      
      private static const TOTAL_INCREMENTS:int = 20;
      
      private static const HIGHEST_Y_OFS:int = 4;
      
      private static const ST_UP:String = "up";
      
      private static const ST_DOWN:String = "down";
      
      private static const ST_WAIT:String = "wait";
       
      
      private var state:String = "up";
      
      private var moveTmr:GameLoopTimer;
      
      private var maxY:Number;
      
      private var minY:Number;
      
      private var pauseCtr:int;
      
      private var movingDown:Boolean;
      
      public function RisingWater(param1:Class, param2:Number = 1, param3:Boolean = true, param4:int = 0, param5:String = null)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      protected function moveTmrHandler(param1:TimerEvent) : void
      {
         if(y >= this.maxY)
         {
            if(this.state == ST_DOWN)
            {
               this.state = ST_WAIT;
               this.pauseCtr = 0;
            }
            else if(this.pauseCtr == NUM_PAUSE_COUNTS)
            {
               this.state = ST_UP;
            }
            else
            {
               ++this.pauseCtr;
            }
         }
         else if(y <= this.minY)
         {
            if(this.state == ST_UP)
            {
               this.state = ST_WAIT;
               this.pauseCtr = 0;
            }
            else if(this.pauseCtr == NUM_PAUSE_COUNTS)
            {
               this.state = ST_DOWN;
            }
            else
            {
               ++this.pauseCtr;
            }
         }
         if(this.state == ST_DOWN)
         {
            y += MOVE_AMT;
         }
         else if(this.state == ST_UP)
         {
            y -= MOVE_AMT;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         if(isNaN(this.maxY))
         {
            this.maxY = y + MOVE_AMT * TOTAL_INCREMENTS;
         }
         if(isNaN(this.minY))
         {
            this.minY = y + HIGHEST_Y_OFS;
         }
         y = this.maxY;
         if(!this.moveTmr)
         {
            this.moveTmr = new GameLoopTimer(MOVE_TMR_DEL);
            this.moveTmr.addEventListener(TimerEvent.TIMER,this.moveTmrHandler,false,0,true);
            this.moveTmr.start();
         }
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
         this.moveTmr.stop();
         this.moveTmr.removeEventListener(TimerEvent.TIMER,this.moveTmrHandler);
         this.moveTmr = null;
      }
   }
}
