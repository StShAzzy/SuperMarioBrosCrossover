package com.smbc.utils
{
   import com.explodingRabbit.utils.CustomDictionary;
   import com.smbc.ground.Ground;
   import flash.utils.Dictionary;
   
   public final dynamic class GroundNestedColumnDictionary extends CustomDictionary
   {
      
      public static const NON_GRID_ITEM_KEY:String = "nonGridItem";
       
      
      public const COL_DCTS:CustomDictionary = new CustomDictionary();
      
      public const PLATFORM_KEY:String = "platformKey";
      
      public function GroundNestedColumnDictionary(param1:Boolean = false)
      {
         super(param1);
      }
      
      public function prepLevDcts(param1:int, param2:int) : void
      {
         var _loc3_:int = param2;
         var _loc4_:int = param1;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            this.COL_DCTS.addItem(_loc5_,new Dictionary(true));
            _loc5_ += _loc3_;
            _loc6_++;
         }
         this.COL_DCTS[this.PLATFORM_KEY] = new Dictionary(true);
         this.COL_DCTS[NON_GRID_ITEM_KEY] = new Dictionary(true);
      }
      
      override public function addItem(param1:Object, param2:Object = null) : void
      {
         var _loc3_:Dictionary = null;
         var _loc4_:Ground = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(!this[param1])
         {
            ++_length;
            this[param1] = param1;
            if(param1 is Ground)
            {
               _loc5_ = (_loc4_ = param1 as Ground).x;
               if(!_loc4_.offGrid)
               {
                  _loc3_ = this.COL_DCTS[_loc5_];
                  if(_loc3_)
                  {
                     _loc6_ = _loc4_.y;
                     _loc4_.colKey = _loc5_;
                     _loc4_.colKey2 = _loc6_;
                     _loc3_[_loc6_] = param1;
                  }
               }
               else
               {
                  _loc3_ = this.COL_DCTS[this.PLATFORM_KEY];
                  if(_loc3_)
                  {
                     _loc3_[_loc4_] = _loc4_;
                  }
               }
            }
         }
      }
      
      override public function removeItem(param1:Object) : void
      {
         var _loc2_:Dictionary = null;
         var _loc3_:Ground = null;
         var _loc4_:Number = NaN;
         if(this[param1])
         {
            delete this[param1];
            --_length;
            if(param1 is Ground)
            {
               _loc3_ = param1 as Ground;
               if(!_loc3_.offGrid)
               {
                  _loc4_ = _loc3_.colKey2;
                  _loc2_ = this.COL_DCTS[_loc3_.colKey];
                  if(_loc2_ && _loc2_[_loc4_])
                  {
                     _loc3_.colKey = NaN;
                     _loc3_.colKey2 = NaN;
                     delete _loc2_[_loc4_];
                  }
               }
               else
               {
                  _loc2_ = this.COL_DCTS[this.PLATFORM_KEY];
                  if(_loc2_ && _loc2_[_loc3_])
                  {
                     delete _loc2_[_loc3_];
                  }
               }
            }
         }
      }
      
      public function getGroundAt(param1:Number, param2:Number) : Ground
      {
         var _loc3_:Dictionary = this.COL_DCTS[param1];
         if(_loc3_)
         {
            return _loc3_[param2];
         }
         return null;
      }
   }
}
