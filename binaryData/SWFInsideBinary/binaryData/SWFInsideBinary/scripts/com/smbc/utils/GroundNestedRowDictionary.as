package com.smbc.utils
{
   import com.explodingRabbit.utils.CustomDictionary;
   import com.smbc.ground.Ground;
   import flash.utils.Dictionary;
   
   public final dynamic class GroundNestedRowDictionary extends CustomDictionary
   {
       
      
      public const ROW_DCTS:CustomDictionary = new CustomDictionary();
      
      public const OFF_GRID_KEY:String = "offGridKey";
      
      public function GroundNestedRowDictionary(param1:Boolean = false)
      {
         super(param1);
      }
      
      public function prepLevDcts(param1:int, param2:int) : void
      {
         var _loc3_:int = param2;
         var _loc4_:int = param1 - 1;
         var _loc5_:int = _loc3_;
         var _loc6_:int = 0;
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            this.ROW_DCTS.addItem(_loc5_,new Dictionary(true));
            _loc5_ += _loc3_;
            _loc6_++;
         }
         this.ROW_DCTS[this.OFF_GRID_KEY] = new Dictionary(true);
      }
      
      override public function addItem(param1:Object, param2:Object = null) : void
      {
         var _loc3_:Ground = null;
         var _loc4_:Dictionary = null;
         var _loc5_:Number = NaN;
         if(!this[param1])
         {
            ++_length;
            this[param1] = param1;
            if(param1 is Ground)
            {
               _loc3_ = param1 as Ground;
               _loc5_ = _loc3_.y;
               if(!_loc3_.offGrid)
               {
                  _loc4_ = this.ROW_DCTS[_loc5_];
               }
               else
               {
                  _loc4_ = this.ROW_DCTS[this.OFF_GRID_KEY];
               }
               if(_loc4_)
               {
                  _loc3_.rowKey = _loc5_;
                  _loc4_[param1] = param1;
               }
            }
         }
      }
      
      override public function removeItem(param1:Object) : void
      {
         var _loc2_:Dictionary = null;
         var _loc3_:Ground = null;
         if(this[param1])
         {
            delete this[param1];
            --_length;
            if(param1 is Ground)
            {
               _loc3_ = param1 as Ground;
               if(!_loc3_.offGrid)
               {
                  _loc2_ = this.ROW_DCTS[_loc3_.rowKey];
               }
               else
               {
                  _loc2_ = this.ROW_DCTS[this.OFF_GRID_KEY];
               }
               if(_loc2_ && _loc2_[param1])
               {
                  _loc3_.rowKey;
                  delete _loc2_[param1];
               }
            }
         }
      }
   }
}
