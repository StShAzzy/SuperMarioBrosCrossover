package
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import mx.core.MovieClipLoaderAsset;
   
   public class MainSwfClassContainer extends MovieClip
   {
       
      
      private var MainSwfClass:Class;
      
      public const GAME_SWF:MovieClipLoaderAsset = new this.MainSwfClass();
      
      public function MainSwfClassContainer()
      {
         this.MainSwfClass = MainSwfClassContainer_MainSwfClass;
         Loader(this.GAME_SWF.getChildAt(0)).contentLoaderInfo.addEventListener(Event.INIT,this.initHandler);
         super();
      }
      
      private function initHandler(param1:Event) : void
      {
         var _loc5_:DisplayObject = null;
         Loader(this.GAME_SWF.getChildAt(0)).contentLoaderInfo.removeEventListener(Event.INIT,this.initHandler);
         var _loc2_:SmbcPreloader = SmbcPreloader.instance;
         PreloaderGraphic.instance.prepareForTitleScreen();
         _loc2_.gotoAndStop(SmbcPreloader.FL_PLAY_GAME);
         if(parent)
         {
            parent.removeChild(this);
         }
         var _loc3_:DisplayObjectContainer = _loc2_.stage;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_.numChildren)
         {
            if((_loc5_ = _loc3_.getChildAt(_loc4_)) != null)
            {
               _loc3_.removeChild(_loc5_);
            }
            _loc4_++;
         }
         _loc2_.cleanUp();
         _loc3_.addChild(this.GAME_SWF);
      }
   }
}
