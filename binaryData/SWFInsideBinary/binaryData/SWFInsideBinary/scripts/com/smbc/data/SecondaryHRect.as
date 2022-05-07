package com.smbc.data
{
   public class SecondaryHRect extends HRect
   {
       
      
      private var _lhTop:Number;
      
      private var _lhBot:Number;
      
      private var _lhLft:Number;
      
      private var _lhRht:Number;
      
      public function SecondaryHRect()
      {
         super();
      }
      
      override public function getHitPoints(param1:Number, param2:Number, param3:Number) : void
      {
         this._lhTop = hTop;
         this._lhBot = hBot;
         this._lhLft = hLft;
         this._lhRht = hRht;
         super.getHitPoints(param1,param2,param3);
      }
      
      public function get lhTop() : Number
      {
         return this._lhTop;
      }
      
      public function get lhBot() : Number
      {
         return this._lhBot;
      }
      
      public function get lhLft() : Number
      {
         return this._lhLft;
      }
      
      public function get lhRht() : Number
      {
         return this._lhRht;
      }
   }
}
