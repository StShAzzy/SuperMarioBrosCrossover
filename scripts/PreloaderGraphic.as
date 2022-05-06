package
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.text.StaticText;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class PreloaderGraphic extends MovieClip
   {
      
      public static var instance:PreloaderGraphic;
      
      public static var finishedLoading:Boolean;
       
      
      public var backgroundStg:Sprite;
      
      public var marioStg:MovieClip;
      
      public var percentLoadedMc:Sprite;
      
      private const LOAD_TXT_CORNER_X:int = 10;
      
      private const LOAD_TXT_CORNER_Y:int = 6;
      
      private const PERCENT_LOADED_CORNER_X:int = 12;
      
      private const PERCENT_LOADED_CORNER_Y:int = 6;
      
      private const FL_PRELOADER:String = SmbcPreloader.FL_PRELOADER;
      
      private var coinDispTxtStg:TextField;
      
      private var loadTxt:StaticText;
      
      private var coinSymbol:MovieClip;
      
      private var animTmr:Timer;
      
      private const ANIM_SPEED:int = 100;
      
      private const COIN_ANIM_TMR:Timer = new Timer(130);
      
      private const MARIO_STG_NUM_FRAMES:int = 3;
      
      private const COIN_SYMBOL_NUM_FRAMES:int = 5;
      
      private const COIN_SYMBOL_NAME:String = "coinSymbol";
      
      private const COIN_DISP_TXT_NAME:String = "coinDispTxtStg";
      
      private var bytesTotal:int;
      
      private var bytesLoaded:int;
      
      private var percentLoaded:Number = 0;
      
      private const NUM_BYTES_DIVISOR:int = 3;
      
      private var mainPreloader:SmbcPreloader;
      
      private var screenWidth:Number;
      
      public function PreloaderGraphic()
      {
         var _loc3_:DisplayObject = null;
         super();
         instance = this;
         var _loc1_:int = numChildren;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = getChildAt(_loc2_);
            if(_loc3_ is StaticText)
            {
               this.loadTxt = _loc3_ as StaticText;
            }
            _loc2_++;
         }
         this.coinDispTxtStg = this.percentLoadedMc.getChildByName(this.COIN_DISP_TXT_NAME) as TextField;
         this.coinSymbol = this.percentLoadedMc.getChildByName(this.COIN_SYMBOL_NAME) as MovieClip;
         this.coinSymbol.stop();
      }
      
      public function initiate() : void
      {
         this.mainPreloader = SmbcPreloader.instance;
         this.screenWidth = this.mainPreloader.STAGE_WIDTH;
         this.bytesTotal = stage.loaderInfo.bytesTotal;
         this.marioStg.stop();
         this.COIN_ANIM_TMR.addEventListener(TimerEvent.TIMER,this.coinAnimTmrHandler,false,0,true);
         this.animTmr = new Timer(this.ANIM_SPEED);
         this.animTmr.addEventListener(TimerEvent.TIMER,this.animTmrHandler,false,0,true);
         this.animTmr.start();
         this.COIN_ANIM_TMR.start();
         stage.addEventListener(Event.ENTER_FRAME,this.enterFrameHandler,false,0,true);
      }
      
      private function enterFrameHandler(param1:Event) : void
      {
         this.bytesLoaded = stage.loaderInfo.bytesLoaded;
         if(this.bytesLoaded == this.bytesTotal)
         {
            stage.removeEventListener(Event.ENTER_FRAME,this.enterFrameHandler);
            this.startTitleScreen();
            this.percentLoaded = 100;
            return;
         }
         if(this.mainPreloader.currentLabel == this.FL_PRELOADER)
         {
            this.percentLoaded = this.bytesLoaded / this.bytesTotal;
            this.marioStg.x = this.percentLoaded * this.screenWidth;
            this.percentLoaded = Math.floor(this.percentLoaded * 100);
         }
         if(this.percentLoaded < 10)
         {
            this.coinDispTxtStg.text = "0" + this.percentLoaded.toString();
         }
         else
         {
            this.coinDispTxtStg.text = this.percentLoaded.toString();
         }
      }
      
      private function coinAnimTmrHandler(param1:TimerEvent) : void
      {
         var _loc2_:int = this.coinSymbol.currentFrame;
         if(_loc2_ == this.COIN_SYMBOL_NUM_FRAMES)
         {
            this.coinSymbol.gotoAndStop(1);
         }
         else
         {
            this.coinSymbol.gotoAndStop(_loc2_ + 1);
         }
      }
      
      private function animTmrHandler(param1:TimerEvent) : void
      {
         var _loc2_:int = 0;
         if(this.marioStg)
         {
            _loc2_ = this.marioStg.currentFrame;
            if(_loc2_ == this.MARIO_STG_NUM_FRAMES)
            {
               this.marioStg.gotoAndStop(1);
            }
            else
            {
               this.marioStg.gotoAndStop(_loc2_ + 1);
            }
         }
      }
      
      private function startTitleScreen() : void
      {
         this.mainPreloader.gotoAndStop(SmbcPreloader.FL_LOAD_GAME);
      }
      
      public function prepareForTitleScreen() : void
      {
         var _loc2_:DisplayObject = null;
         removeChild(this.marioStg);
         this.marioStg = null;
         removeChild(this.backgroundStg);
         this.backgroundStg = null;
         removeChild(this.loadTxt);
         this.loadTxt = null;
         this.percentLoadedMc.x = this.PERCENT_LOADED_CORNER_X;
         this.percentLoadedMc.y = this.PERCENT_LOADED_CORNER_Y;
         this.coinDispTxtStg.text = "00";
         if(parent)
         {
            parent.setChildIndex(this,parent.numChildren - 1);
         }
         var _loc1_:int = 0;
         while(_loc1_ < numChildren)
         {
            _loc2_ = getChildAt(_loc1_);
            if(_loc2_ != null)
            {
               removeChild(_loc2_);
            }
            _loc1_++;
         }
         this.cleanUp();
      }
      
      private function cleanUp() : void
      {
         finishedLoading = true;
         this.animTmr.stop();
         this.animTmr.removeEventListener(TimerEvent.TIMER,this.animTmrHandler);
         this.COIN_ANIM_TMR.stop();
         this.COIN_ANIM_TMR.removeEventListener(TimerEvent.TIMER,this.coinAnimTmrHandler);
         if(parent)
         {
            parent.removeChild(this);
         }
         if(this.mainPreloader.preloaderGraphic == this)
         {
            this.mainPreloader.preloaderGraphic = null;
         }
         if(this.mainPreloader.currentLabel == this.FL_PRELOADER)
         {
            this.startTitleScreen();
         }
         else if(this.mainPreloader.currentLabel != SmbcPreloader.FL_PLAY_GAME)
         {
            this.mainPreloader.gotoAndStop(SmbcPreloader.FL_PLAY_GAME);
         }
         instance = null;
      }
   }
}
