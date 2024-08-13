package com.smbc.graphics
{
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.managers.GraphicsManager;
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   
   public class WaterHaze extends Background
   {
      
      private static const MOVE_TMR_DEL:int = 180;
      
      private static const NUM_PAUSE_COUNTS:int = 1;
      
      private static const MOVE_AMT:int = GraphicsManager.BMD_SCALE;
      
      private static const ST_UP:String = "up";
      
      private static const ST_DOWN:String = "down";
      
      private static const ST_WAIT:String = "wait";
      
      private static const MASK_RECT:Rectangle = new Rectangle(0 * MOVE_AMT,40 * MOVE_AMT,256 * MOVE_AMT,200 * MOVE_AMT);
       
      
      private var state:String = "up";
      
      private var moveTmr:CustomTimer;
      
      private var maxY:Number;
      
      private var minY:Number;
      
      private var pauseCtr:int;
      
      private var movingDown:Boolean;
      
      public function WaterHaze(param1:Class, param2:Number = 1, param3:Boolean = true, param4:int = 0, param5:String = null)
      {
         super(param1,param2,param3,param4,param5);
         var _loc6_:Sprite = new Sprite();
         _loc6_.graphics.beginFill(16777215);
         _loc6_.graphics.drawRect(0,0,MASK_RECT.width,MASK_RECT.height);
         _loc6_.graphics.endFill();
         mask = _loc6_;
         mask.x = MASK_RECT.x;
         mask.y = MASK_RECT.y;
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
            this.maxY = y;
         }
         if(isNaN(this.minY))
         {
            this.minY = y - MOVE_AMT * 4;
         }
         if(!this.moveTmr)
         {
            this.moveTmr = new CustomTimer(MOVE_TMR_DEL);
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
