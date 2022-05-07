package flxmp
{
   import flash.display.Shape;
   
   public class Wave
   {
       
      
      public var name:String;
      
      public var samples:Vector.<Number>;
      
      public var length:int;
      
      public var loopStart:int;
      
      public var loopLength:int;
      
      public var loopEnd:int;
      
      public var volume:Number;
      
      public var finetune:Number;
      
      public var sixteenbit:Boolean;
      
      public var type:int;
      
      public var panning:Number;
      
      public var relNote:int;
      
      public function Wave()
      {
         super();
      }
      
      public function drawWave() : Shape
      {
         var _loc3_:Number = NaN;
         var _loc1_:Shape = new Shape();
         var _loc2_:Number = 0;
         _loc1_.graphics.moveTo(0,300);
         _loc1_.graphics.lineStyle(1);
         for each(_loc3_ in this.samples)
         {
            _loc1_.graphics.lineTo(_loc2_,300 - _loc3_ * 300);
            _loc2_ += 0.1;
         }
         return _loc1_;
      }
   }
}
