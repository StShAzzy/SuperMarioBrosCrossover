package com.smbc.data
{
   import com.explodingRabbit.utils.CustomTimer;
   import com.probertson.utils.GZIPBytesEncoder;
   import com.smbc.errors.SingletonError;
   import com.smbc.main.GlobVars;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLVariables;
   
   public class OnlineData extends EventDispatcher
   {
      
      private static const URL_TO_LOAD:String = "http://data.explodingrabbit.com/super-mario-bros-crossover/data.txt.gz";
      
      public static const FUNDING_BOX_ICONS_REPLACEMENT_STRING:String = "FUNDING_BOX_ICONS";
      
      public static const CURRENT_MONEY_REPLACEMENT_STRING:String = "CURRENT_MONEY";
      
      public static const TARGET_MONEY_REPLACEMENT_STRING:String = "TARGET_MONEY";
      
      public static const TICKER_ITEM_TYPE_SORTED:String = "Sorted";
      
      public static const TICKER_ITEM_TYPE_UNOFFICIAL_WEBSITE_ONLY:String = "UnofficialWebsiteOnly";
      
      public static const TICKER_ITEM_TYPE_RANDOM:String = "Random";
      
      public static const WEBSITE_LINK_REPLACEMENT_STRING:String = "Developer Website";
      
      public static const DEVELOPER_WEBSITE_URL:String = "http://www.explodingrabbit.com/";
      
      private static const CURRENT_VERSION_NAME:String = "currentVersion";
      
      private static const TICKER_TEXT_NAME:String = "tickerText";
      
      private static const CURRENT_MONEY_NAME:String = "currentMoney";
      
      private static const TARGET_MONEY_NAME:String = "targetMoney";
      
      private static const FUNDING_BOX_TEXT_NAME:String = "fundingBoxText";
      
      private static const FUNDING_BOX_ICONS_REPLACEMENT_STRING_NAME:String = "fundingBoxIconsReplacementString";
      
      private static const DISPLAY_FUNDING_BOX_NAME:String = "displayFundingBox";
      
      private static const FUNDING_BOX_URL_NAME:String = "fundingBoxUrl";
      
      private static const LINKS_NAME:String = "links";
      
      private static const GAME_URL_NAME:String = "gameUrl";
      
      private static const OFFICIAL_WEBSITE_URLS:String = "officialWebsiteUrls";
      
      private static const SEPARATOR:String = "()";
      
      private static var _instance:OnlineData;
      
      private static const CONNECTION_ATTEMPTS_TO_TRY_COUNT:int = 5;
       
      
      private var loader:URLLoader;
      
      private var data:URLVariables;
      
      private var connectedAttemptsCount:int;
      
      private var tickerTextVector:Vector.<String>;
      
      private var fundingBoxTextVector:Vector.<String>;
      
      private var loadDataDelayTimer:CustomTimer;
      
      private var _onOfficialWebsite:Boolean;
      
      public function OnlineData()
      {
         this.loadDataDelayTimer = new CustomTimer(1000,1);
         super();
         if(_instance != null)
         {
            throw new SingletonError();
         }
         _instance = this;
         _instance.loadDataDelayTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.loadDataDelayTimerHandler,false,0,true);
      }
      
      public static function get instance() : OnlineData
      {
         if(_instance == null)
         {
            return new OnlineData();
         }
         return _instance;
      }
      
      public static function get onOfficialWebsite() : Boolean
      {
         if(!loaded)
         {
            return false;
         }
         return instance._onOfficialWebsite;
      }
      
      public static function initiate() : void
      {
         if(GameSettings.forceOfflineDebug && GameSettings.DEBUG_MODE)
         {
            _instance.dispatchEvent(new Event(Event.COMPLETE));
         }
         else
         {
            _instance.loadData();
         }
      }
      
      public static function get currentVersion() : Number
      {
         if(loaded)
         {
            return instance.data[CURRENT_VERSION_NAME];
         }
         return GameSettings.VERSION_NUMBER;
      }
      
      public static function get newVersionAvailable() : Boolean
      {
         return GameSettings.VERSION_NUMBER < currentVersion;
      }
      
      public static function get tickerText() : Vector.<String>
      {
         if(loaded && instance.data.hasOwnProperty(TICKER_TEXT_NAME))
         {
            if(instance.tickerTextVector == null)
            {
               instance.tickerTextVector = instance.generateTickerText();
            }
            return instance.tickerTextVector;
         }
         return Vector.<String>(["Please consider playing the game on our website, ExplodingRabbit.com. It helps us in many different ways, and you\'ll always be playing the newest version.","Please help us to make our first commercial game, Super Retro Squad. Choose Super Retro Squad in the links menu to learn more!","Join the community and talk more about Super Mario Bros. Crossover in the Exploding Rabbit forums. You can find it in the links menu.","Be sure to try all of the map difficulties. Easy mode makes the game more about collecting coins, and hard mode really tests your skills.","The special map set is from a game called Super Mario Bros. Special, made by Hudson in 1986. Be sure to try it out.","There is a hidden bee item in every level of hard mode. Can you find them all?"]);
      }
      
      public static function get currentMoney() : int
      {
         var _loc1_:int = 0;
         if(loaded && instance.data.hasOwnProperty(CURRENT_MONEY_NAME))
         {
            _loc1_ = instance.data[CURRENT_MONEY_NAME];
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            else if(_loc1_ > targetMoney)
            {
               _loc1_ = targetMoney;
            }
            return _loc1_;
         }
         return _loc1_;
      }
      
      public static function get targetMoney() : int
      {
         var _loc1_:int = 0;
         if(loaded && instance.data.hasOwnProperty(TARGET_MONEY_NAME))
         {
            _loc1_ = instance.data[TARGET_MONEY_NAME];
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            return _loc1_;
         }
         return _loc1_;
      }
      
      public static function get fundingBoxText() : Vector.<String>
      {
         var _loc1_:int = 0;
         if(loaded && instance.data.hasOwnProperty(FUNDING_BOX_TEXT_NAME))
         {
            if(instance.fundingBoxTextVector == null)
            {
               instance.fundingBoxTextVector = Vector.<String>(instance.data[FUNDING_BOX_TEXT_NAME].split(SEPARATOR));
               _loc1_ = 0;
               while(_loc1_ < instance.fundingBoxTextVector.length)
               {
                  instance.fundingBoxTextVector[_loc1_] = instance.fundingBoxTextVector[_loc1_].replace(CURRENT_MONEY_REPLACEMENT_STRING,"$" + addCommas(currentMoney));
                  instance.fundingBoxTextVector[_loc1_] = instance.fundingBoxTextVector[_loc1_].replace(TARGET_MONEY_REPLACEMENT_STRING,"$" + addCommas(targetMoney));
                  _loc1_++;
               }
            }
            return instance.fundingBoxTextVector;
         }
         return new Vector.<String>();
      }
      
      private static function addCommas(param1:Number) : String
      {
         var _loc4_:String = null;
         var _loc2_:String = param1.toString();
         var _loc3_:String = "";
         while(_loc2_.length > 3)
         {
            _loc4_ = _loc2_.substr(-3);
            _loc2_ = _loc2_.substr(0,_loc2_.length - 3);
            _loc3_ = "," + _loc4_ + _loc3_;
         }
         if(_loc2_.length > 0)
         {
            _loc3_ = _loc2_ + _loc3_;
         }
         return _loc3_;
      }
      
      public static function get displayFundingBox() : Boolean
      {
         if(loaded && instance.data.hasOwnProperty(DISPLAY_FUNDING_BOX_NAME))
         {
            return instance.data[DISPLAY_FUNDING_BOX_NAME];
         }
         return false;
      }
      
      public static function get links() : Vector.<String>
      {
         if(loaded && instance.data.hasOwnProperty(LINKS_NAME))
         {
            return Vector.<String>(instance.data[LINKS_NAME].toString().split(SEPARATOR));
         }
         return Vector.<String>(["Super Retro Squad","http://www.explodingrabbit.com/games/super-retro-squad",WEBSITE_LINK_REPLACEMENT_STRING,"http://www.explodingrabbit.com","Forum","http://www.explodingrabbit.com/forum/forums/super-mario-bros-crossover.32/","Wiki","http://www.explodingrabbit.com/wiki/Super_Mario_Bros._Crossover","Youtube","http://www.youtube.com/theexplodingrabbit","Twitter","http://www.twitter.com/explodingrabbit","Facebook","http://www.facebook.com/ExplodingRabbit","Google Plus","https://plus.google.com/+explodingrabbit"]);
      }
      
      private static function get officialWebsiteUrls() : Vector.<String>
      {
         if(loaded && instance.data.hasOwnProperty(OFFICIAL_WEBSITE_URLS))
         {
            return Vector.<String>(instance.data[OFFICIAL_WEBSITE_URLS].toString().split(SEPARATOR));
         }
         return Vector.<String>([gameUrl]);
      }
      
      public static function get gameUrl() : String
      {
         if(loaded && instance.data.hasOwnProperty(GAME_URL_NAME))
         {
            return instance.data[GAME_URL_NAME];
         }
         return "http://www.explodingrabbit.com/games/super-mario-bros-crossover";
      }
      
      public static function get fundingBoxUrl() : String
      {
         if(loaded && instance.data.hasOwnProperty(FUNDING_BOX_URL_NAME))
         {
            return instance.data[FUNDING_BOX_URL_NAME];
         }
         return "not loaded";
      }
      
      public static function get loaded() : Boolean
      {
         return !(instance.data == null || instance.data.toString().length == 0);
      }
      
      private function loadData() : void
      {
         try
         {
            this.loader = null;
            this.loader = new URLLoader();
            this.loader.dataFormat = URLLoaderDataFormat.BINARY;
            this.loader.addEventListener(Event.COMPLETE,this.urlLoaderHandler,false,0,true);
            this.loader.addEventListener(IOErrorEvent.IO_ERROR,this.ioErrorHandler,false,0,true);
            this.loader.load(new URLRequest(URL_TO_LOAD));
         }
         catch(error:Error)
         {
            loader.removeEventListener(IOErrorEvent.IO_ERROR,ioErrorHandler);
            loader.removeEventListener(Event.COMPLETE,urlLoaderHandler);
            data = null;
            loader = null;
            tryLoadDataAgain();
         }
      }
      
      private function tryLoadDataAgain() : void
      {
         this.loadDataDelayTimer.reset();
         this.loadDataDelayTimer.start();
      }
      
      private function loadDataComplete() : void
      {
         this.loadDataDelayTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,this.loadDataDelayTimerHandler);
         this.loadDataDelayTimer.stop();
         this.loadDataDelayTimer = null;
         if(this.connectedAttemptsCount < 1)
         {
            this.connectedAttemptsCount = 1;
         }
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      protected function loadDataDelayTimerHandler(param1:TimerEvent) : void
      {
         ++this.connectedAttemptsCount;
         if(this.connectedAttemptsCount < CONNECTION_ATTEMPTS_TO_TRY_COUNT)
         {
            this.loadData();
         }
         else
         {
            this.loadDataComplete();
         }
      }
      
      protected function ioErrorHandler(param1:IOErrorEvent) : void
      {
         this.loader.removeEventListener(IOErrorEvent.IO_ERROR,this.ioErrorHandler);
         this.loader.removeEventListener(Event.COMPLETE,this.urlLoaderHandler);
         this.loader = null;
         this.tryLoadDataAgain();
      }
      
      private function urlLoaderHandler(param1:Event) : void
      {
         var encoder:GZIPBytesEncoder = null;
         var event:Event = param1;
         this.loader.removeEventListener(Event.COMPLETE,this.urlLoaderHandler);
         this.loader.removeEventListener(IOErrorEvent.IO_ERROR,this.ioErrorHandler);
         try
         {
            this.data = new URLVariables();
            encoder = new GZIPBytesEncoder();
            this.data.decode(encoder.uncompressToByteArray(this.loader.data).toString());
            this.loader = null;
         }
         catch(error:Error)
         {
            data = null;
         }
         if(loaded)
         {
            this._onOfficialWebsite = _instance.checkIfOnOfficialWebsite();
            this.loadDataComplete();
         }
         else
         {
            this.tryLoadDataAgain();
         }
      }
      
      private function checkIfOnOfficialWebsite() : Boolean
      {
         var _loc3_:String = null;
         var _loc1_:String = GlobVars.STAGE.loaderInfo.url;
         if(GameSettings.DEBUG_MODE)
         {
            return GameSettings.onOfficialWebsiteDebug;
         }
         var _loc2_:Vector.<String> = officialWebsiteUrls;
         for each(_loc3_ in _loc2_)
         {
            if(_loc1_.substr(0,_loc3_.length) == _loc3_)
            {
               return true;
            }
         }
         return false;
      }
      
      private function generateTickerText() : Vector.<String>
      {
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc1_:Vector.<String> = Vector.<String>(instance.data[TICKER_TEXT_NAME].split(SEPARATOR));
         var _loc2_:Vector.<String> = new Vector.<String>();
         var _loc3_:Vector.<String> = new Vector.<String>();
         var _loc4_:int = 0;
         while(_loc4_ < _loc1_.length)
         {
            _loc5_ = _loc1_[_loc4_];
            _loc6_ = _loc1_[_loc4_ + 1];
            switch(_loc5_)
            {
               case TICKER_ITEM_TYPE_SORTED:
                  _loc2_.push(_loc6_);
                  break;
               case TICKER_ITEM_TYPE_UNOFFICIAL_WEBSITE_ONLY:
                  if(!onOfficialWebsite)
                  {
                     _loc2_.push(_loc6_);
                  }
                  break;
               case TICKER_ITEM_TYPE_RANDOM:
                  _loc3_.push(_loc6_);
                  break;
            }
            _loc4_ += 2;
         }
         if(_loc3_.length > 0)
         {
            _loc3_.sort(this.randomSort);
            _loc2_ = _loc2_.concat(_loc3_);
         }
         return _loc2_;
      }
      
      private function randomSort(param1:Object, param2:Object) : int
      {
         return Math.round(Math.random() * 2) - 1;
      }
   }
}
