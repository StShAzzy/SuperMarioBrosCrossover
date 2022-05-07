package com.explodingRabbit.utils
{
   import flash.utils.Dictionary;
   
   public dynamic class CustomDictionary extends Dictionary
   {
       
      
      protected var _length:int;
      
      protected var useWeakKeys:Boolean;
      
      public function CustomDictionary(param1:Boolean = false)
      {
         super(param1);
         this.useWeakKeys = param1;
      }
      
      public function clear() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this)
         {
            delete this[_loc1_];
            --this._length;
         }
      }
      
      public function addItem(param1:Object, param2:Object = null) : void
      {
         if(param1 != null && !this[param1])
         {
            ++this._length;
            if(param2)
            {
               this[param1] = param2;
            }
            else
            {
               this[param1] = param1;
            }
         }
      }
      
      public function removeItem(param1:Object) : void
      {
         if(param1 != null && this[param1])
         {
            delete this[param1];
            --this._length;
         }
      }
      
      public function clone(param1:CustomDictionary = null) : CustomDictionary
      {
         var _loc2_:* = null;
         if(!param1)
         {
            param1 = new CustomDictionary(this.useWeakKeys);
         }
         for(_loc2_ in this)
         {
            param1.addItem(_loc2_,this[_loc2_]);
         }
         return param1;
      }
      
      public function get length() : int
      {
         return this._length;
      }
      
      public function listItems() : String
      {
         var _loc2_:* = null;
         var _loc1_:String = "";
         for(_loc2_ in this)
         {
            _loc1_ += _loc2_.toString() + ": " + this[_loc2_].toString();
         }
         return _loc1_;
      }
      
      public function containsKey(param1:Object) : Boolean
      {
         if(param1 != null)
         {
            return this[param1] != undefined;
         }
         return false;
      }
      
      public function containsValue(param1:Object) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in this)
         {
            if(_loc2_ == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function toString() : String
      {
         var _loc2_:Object = null;
         var _loc1_:* = "";
         if(!this.length)
         {
            return "empty";
         }
         for each(_loc2_ in this)
         {
            _loc1_ += _loc2_;
            _loc1_ += ",";
         }
         return _loc1_;
      }
      
      public function fromArray(param1:Array) : void
      {
         var _loc4_:Object = null;
         this.clear();
         var _loc2_:int = param1.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1[_loc3_];
            this.addItem(_loc4_,_loc4_);
            _loc3_++;
         }
      }
   }
}
