package nl.stroep.utils
{
   import com.adobe.images.*;
   import com.smbc.SuperMarioBrosCrossover;
   import com.smbc.data.SoundNames;
   import com.smbc.level.Level;
   import com.smbc.managers.SoundManager;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import flash.net.*;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   
   public class ImageSaver extends EventDispatcher
   {
      
      public static var INSTANCE:ImageSaver;
      
      private static const screenRect:Rectangle = new Rectangle(0,0,512,480);
       
      
      private const CONTENT_TYPE:String = "application/octet-stream";
      
      private const EXTENSION_JPG:String = "JPG";
      
      private const EXTENSION_PNG:String = "PNG";
      
      private var _recording:Boolean;
      
      private var bytearray:ByteArray;
      
      private var urlRequest:URLRequest;
      
      private var _ed:EventDispatcher;
      
      private var _serverpath:String;
      
      private var jpgEncoder:JPGEncoder;
      
      private var storedBmpsVec:Vector.<IBitmapDrawable>;
      
      private var exportTmr:Timer;
      
      private var drawScreenTmr:Timer;
      
      private var ctr:int;
      
      private var game:SuperMarioBrosCrossover;
      
      private var recordingSymbol:Sprite;
      
      public function ImageSaver(param1:String = "", param2:SuperMarioBrosCrossover = null)
      {
         this.storedBmpsVec = new Vector.<IBitmapDrawable>();
         this.exportTmr = new Timer(250);
         this.drawScreenTmr = new Timer(1000 / 30);
         super();
         this._serverpath = param1;
         this._ed = new EventDispatcher();
         this.game = param2;
         this.recordingSymbol = new Sprite();
         this.recordingSymbol.graphics.beginFill(16711680);
         this.recordingSymbol.graphics.drawRect(0,0,20,20);
         this.recordingSymbol.graphics.endFill();
      }
      
      public function store(param1:IBitmapDrawable) : void
      {
         var _loc2_:BitmapData = new BitmapData(512,480);
         _loc2_.draw(param1,null,null,null,screenRect);
         this.storedBmpsVec.push(_loc2_);
      }
      
      public function startRecording() : void
      {
      }
      
      public function stopRecording() : void
      {
         SoundManager.SND_MNGR.playSound(SoundNames.SFX_SIMON_KILL_ENEMY_C2);
         this._recording = false;
         this.drawScreenTmr.stop();
         this.drawScreenTmr.removeEventListener(TimerEvent.TIMER,this.drawScreenTmrHandler);
         if(this.game.stage.contains(this.recordingSymbol))
         {
            this.game.stage.removeChild(this.recordingSymbol);
         }
      }
      
      protected function drawScreenTmrHandler(param1:TimerEvent) : void
      {
         Level.levelInstance.captureFrameOnRender();
      }
      
      public function clearStoredImages() : void
      {
         this.storedBmpsVec.length = 0;
      }
      
      public function saveAll() : void
      {
         Level.levelInstance.pauseMainTmrs();
         if(this._recording)
         {
            this.stopRecording();
         }
         this.exportTmr.addEventListener(TimerEvent.TIMER,this.saveNext,false,0,true);
         this.exportTmr.start();
      }
      
      protected function saveNext(param1:TimerEvent) : void
      {
         if(this.storedBmpsVec.length)
         {
            ++this.ctr;
            this.save(this.storedBmpsVec.shift(),"images/frame" + this.ctr.toString() + ".png");
         }
         else
         {
            this.exportTmr.stop();
            this.exportTmr.removeEventListener(TimerEvent.TIMER,this.saveNext);
            Level.levelInstance.resumeMainTmrs();
         }
      }
      
      public function save(param1:IBitmapDrawable, param2:String, param3:Number = 16777215, param4:int = 85, param5:Rectangle = null) : void
      {
         var _loc6_:BitmapData = this.getBitmapData(param1,param3,param5);
         var _loc7_:String = this.getExtension(param2);
         switch(_loc7_.toUpperCase())
         {
            case this.EXTENSION_JPG:
               this.jpgEncoder = new JPGEncoder(param4);
               this.bytearray = this.jpgEncoder.encode(_loc6_);
               break;
            case this.EXTENSION_PNG:
               this.bytearray = PNGEncoder.encode(_loc6_);
               break;
            default:
               this.jpgEncoder = new JPGEncoder(param4);
               this.bytearray = this.jpgEncoder.encode(_loc6_);
         }
         this.urlRequest = new URLRequest(this._serverpath + "?filename=" + param2);
         this.urlRequest.contentType = this.CONTENT_TYPE;
         this.urlRequest.method = URLRequestMethod.POST;
         this.urlRequest.data = this.bytearray;
         var _loc8_:URLLoader = new URLLoader();
         _loc8_.addEventListener(Event.COMPLETE,this.onSaveSucces);
         _loc8_.addEventListener(IOErrorEvent.IO_ERROR,this.onSaveFailed);
         _loc8_.load(this.urlRequest);
      }
      
      public function saveLocal(param1:IBitmapDrawable, param2:String, param3:Number = 16777215, param4:int = 85, param5:Rectangle = null) : void
      {
         var _loc6_:BitmapData = this.getBitmapData(param1,param3,param5);
         var _loc7_:String = this.getExtension(param2);
         switch(_loc7_.toUpperCase())
         {
            case this.EXTENSION_JPG:
               this.jpgEncoder = new JPGEncoder(param4);
               this.bytearray = this.jpgEncoder.encode(_loc6_);
               break;
            case this.EXTENSION_PNG:
               this.bytearray = PNGEncoder.encode(_loc6_);
               break;
            default:
               this.jpgEncoder = new JPGEncoder(param4);
               this.bytearray = this.jpgEncoder.encode(_loc6_);
         }
         this.urlRequest = new URLRequest(this._serverpath + "?filename=" + param2);
         this.urlRequest.contentType = this.CONTENT_TYPE;
         this.urlRequest.method = URLRequestMethod.POST;
         this.urlRequest.data = this.bytearray;
         var _loc8_:FileReference = new FileReference();
         _loc8_.addEventListener(Event.COMPLETE,this.onSaveSucces);
         _loc8_.addEventListener(IOErrorEvent.IO_ERROR,this.onSaveFailed);
         _loc8_.save(this.bytearray,param2);
      }
      
      public function getBitmapData(param1:IBitmapDrawable, param2:Number = 4294967295, param3:Rectangle = null) : BitmapData
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:BitmapData = null;
         var _loc8_:Bitmap = null;
         var _loc9_:Matrix = null;
         if(param1 is BitmapData)
         {
            return param1 as BitmapData;
         }
         _loc4_ = param1 as DisplayObject;
         _loc5_ = _loc4_.width;
         _loc6_ = _loc4_.height;
         if(param3)
         {
            _loc5_ = param3.width;
            _loc6_ = param3.height;
         }
         _loc7_ = new BitmapData(_loc5_,_loc6_,true,param2);
         _loc8_ = new Bitmap(_loc7_);
         if(param3 == null)
         {
            _loc9_ = new Matrix(1,0,0,1,-_loc4_.getBounds(_loc8_).x + _loc4_.x,-_loc4_.getBounds(_loc8_).y + _loc4_.y);
            _loc7_.draw(_loc4_,_loc9_);
         }
         else
         {
            _loc7_.draw(_loc4_,null,null,null,param3);
         }
         return _loc7_;
      }
      
      private function getExtension(param1:String) : String
      {
         return param1.split(".")[1];
      }
      
      private function onSaveFailed(param1:IOErrorEvent) : void
      {
         this.dispatchEvent(param1);
      }
      
      private function onSaveSucces(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get serverpath() : String
      {
         return this._serverpath;
      }
      
      public function set serverpath(param1:String) : void
      {
         this._serverpath = param1;
      }
      
      public function get recording() : Boolean
      {
         return this._recording;
      }
   }
}
