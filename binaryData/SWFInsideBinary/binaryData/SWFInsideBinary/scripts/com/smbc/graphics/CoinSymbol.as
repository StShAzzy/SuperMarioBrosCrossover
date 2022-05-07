package com.smbc.graphics
{
   import com.explodingRabbit.display.CustomMovieClip;
   import com.explodingRabbit.utils.CustomDictionary;
   import com.smbc.data.AnimationTimers;
   import com.smbc.events.CustomEvents;
   import com.smbc.interfaces.ICustomTimer;
   import com.smbc.main.SkinObj;
   import com.smbc.managers.EventManager;
   import com.smbc.managers.GraphicsManager;
   import flash.events.Event;
   
   public class CoinSymbol extends SkinObj
   {
      
      public static var instance:CoinSymbol;
      
      public static const FL_START:String = "start";
      
      public static const FL_END:String = "end";
      
      public static var animEndFrameNum:int;
      
      private static const NUM_ANIM_FRAMES:int = 4;
      
      public static var animStartFrameDelay:int;
      
      private static const CHANGE_MAP_FCT_DCT:CustomDictionary = new CustomDictionary(true);
      
      {
         EventManager.EVENT_MNGR.addEventListener(CustomEvents.CHANGE_INTERFACE_SKIN,changeInterfaceSkinHandler,false,0,true);
      }
      
      protected var animDelCtr:int;
      
      public function CoinSymbol()
      {
         super();
         mainAnimTmr = AnimationTimers.ANIM_SLOWEST_TMR;
      }
      
      public static function getInstance() : CoinSymbol
      {
         instance = new CoinSymbol();
         return instance;
      }
      
      protected static function changeInterfaceSkinHandler(param1:Event) : void
      {
         var _loc2_:GraphicsManager = GraphicsManager.INSTANCE;
         var _loc3_:CustomMovieClip = new CustomMovieClip(null,null,"CoinSymbol");
         animStartFrameDelay = _loc2_.getFrameDelay(_loc3_.getPaletteByRow(0));
         animEndFrameNum = NUM_ANIM_FRAMES + _loc3_.convFrameToInt(FL_START) - 1;
         while(animEndFrameNum > 0 && _loc3_.frameIsEmpty(animEndFrameNum))
         {
            --animEndFrameNum;
         }
         instance.gotoAndStop(FL_START);
         instance.animDelCtr = 0;
      }
      
      public function initiateLevelHandler() : void
      {
         gotoAndStop(FL_START);
         this.animDelCtr = 0;
      }
      
      override public function animate(param1:ICustomTimer) : Boolean
      {
         if(currentFrameLabel == FL_START && this.animDelCtr < animStartFrameDelay && mainAnimTmr == param1)
         {
            ++this.animDelCtr;
            return false;
         }
         this.animDelCtr = 0;
         return super.animate(param1);
      }
      
      override public function checkFrame() : void
      {
         if(currentFrame == animEndFrameNum + 1)
         {
            gotoAndStop(FL_START);
         }
      }
   }
}
