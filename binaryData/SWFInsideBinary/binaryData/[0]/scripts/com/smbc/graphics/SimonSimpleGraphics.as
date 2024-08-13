package com.smbc.graphics
{
   import com.smbc.data.AnimationTimers;
   import com.smbc.events.CustomEvents;
   import com.smbc.main.LevObj;
   import com.smbc.main.SimpleAnimatedObject;
   import com.smbc.utils.GameLoopTimer;
   import flash.events.Event;
   
   public class SimonSimpleGraphics extends SimpleAnimatedObject
   {
      
      public static const TYPE_DESTROY_FLAME:String = "destroyFlame";
      
      public static const TYPE_WHIP_SPARK:String = "whipSpark";
      
      private static const FL_DESTROY_FLAME_END:String = "destroyFlameEnd";
      
      private static const FL_DESTROY_FLAME_START:String = "destroyFlameStart";
      
      private static const FL_WHIP_SPARK:String = "whipSpark";
       
      
      private var type:String;
      
      private var source:LevObj;
      
      public function SimonSimpleGraphics(param1:LevObj, param2:String, param3:LevObj = null)
      {
         this.source = param1;
         this.type = param2;
         super();
         switch(param2)
         {
            case TYPE_DESTROY_FLAME:
               gotoAndStop(FL_DESTROY_FLAME_START);
               accurateAnimTmr = new GameLoopTimer(AnimationTimers.DEL_SLOW);
               x = param1.hMidX;
               y = param1.hMidY;
               param1.destroy();
               break;
            case TYPE_WHIP_SPARK:
               accurateAnimTmr = new GameLoopTimer(220);
               if(param1.nx > param3.nx)
               {
                  x = param1.hLft;
               }
               else
               {
                  x = param1.hRht;
               }
               y = param3.hMidY;
               gotoAndStop(FL_WHIP_SPARK);
               EVENT_MNGR.addEventListener(CustomEvents.LEVEL_SET_INDEXES,this.levelSetIndexesHandler,false,0,true);
         }
      }
      
      protected function levelSetIndexesHandler(param1:Event) : void
      {
         if(this.type == TYPE_WHIP_SPARK && Boolean(parent))
         {
            level.setChildIndex(this,level.numChildren - 1);
         }
      }
      
      override public function checkFrame() : void
      {
         if(this.type == TYPE_DESTROY_FLAME && currentFrame == convFrameToInt(FL_DESTROY_FLAME_END) + 1)
         {
            destroy();
         }
         else if(this.type == TYPE_WHIP_SPARK && currentFrameLabel != FL_WHIP_SPARK)
         {
            destroy();
         }
      }
      
      override public function cleanUp() : void
      {
         super.cleanUp();
         if(this.type == TYPE_WHIP_SPARK)
         {
            EVENT_MNGR.removeEventListener(CustomEvents.LEVEL_SET_INDEXES,this.levelSetIndexesHandler);
         }
      }
   }
}
