package
{
   import flash.display.MovieClip;
   import flash.display.StageAlign;
   import flash.display.StageQuality;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   
   public class SmbcPreloader extends MovieClip
   {
      
      public static var instance:SmbcPreloader;
      
      public static const FL_PRELOADER:String = "preloader";
      
      public static const FL_EXPORT_CLASSES:String = "exportClasses";
      
      public static const FL_LOAD_GAME:String = "loadGame";
      
      public static const FL_PLAY_GAME:String = "playGame";
       
      
      public const STAGE_WIDTH:int = 520;
      
      public const STAGE_HEIGHT:int = 480;
      
      public var preloaderGraphic:PreloaderGraphic;
      
      public function SmbcPreloader()
      {
         super();
         instance = this;
         stop();
         addEventListener(Event.ADDED_TO_STAGE,this.addedToStageHandler,false,0,true);
      }
      
      public function addedToStageHandler(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.addedToStageHandler);
         stage.showDefaultContextMenu = false;
         stage.quality = StageQuality.LOW;
         stage.align = StageAlign.TOP_LEFT;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         this.preloaderGraphic.initiate();
      }
      
      public function cleanUp() : void
      {
         instance = null;
      }
   }
}
