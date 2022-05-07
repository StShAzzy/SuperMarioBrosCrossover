package com.smbc.utils
{
   import com.explodingRabbit.utils.CustomDictionary;
   import com.smbc.graphics.Scenery;
   import com.smbc.main.GlobVars;
   import flash.utils.Dictionary;
   
   public final dynamic class SceneryNestedColumnDictionary extends CustomDictionary
   {
      
      public static const NON_GRID_ITEM_KEY:String = "nonGridItem";
      
      private static const TILE_SIZE:int = GlobVars.TILE_SIZE;
       
      
      public const COL_DCTS:CustomDictionary = new CustomDictionary();
      
      public function SceneryNestedColumnDictionary(param1:Boolean = false)
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
         this.COL_DCTS[NON_GRID_ITEM_KEY] = new Dictionary(true);
      }
      
      override public function addItem(param1:Object, param2:Object = null) : void
      {
         var _loc3_:Scenery = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Dictionary = null;
         var _loc7_:CustomDictionary = null;
         if(!this[param1])
         {
            ++_length;
            this[param1] = param1;
            if(!(param1 is Scenery))
            {
               throw new Error("adding an object to SCENERY_DCT that is not Scenery");
            }
            _loc3_ = param1 as Scenery;
            _loc4_ = _loc3_.x;
            _loc5_ = _loc3_.y;
            if((_loc6_ = this.COL_DCTS[_loc4_]) && _loc3_.width <= TILE_SIZE)
            {
               _loc3_.colKey = _loc4_;
               _loc3_.rowKey = _loc5_;
               if((_loc7_ = _loc6_[_loc5_]) == null)
               {
                  _loc7_ = new CustomDictionary();
                  _loc6_[_loc5_] = _loc7_;
               }
               _loc7_.addItem(_loc3_);
            }
            else if(_loc6_ = this.COL_DCTS[NON_GRID_ITEM_KEY])
            {
               _loc3_.colKey = _loc4_;
               _loc6_[_loc3_] = _loc3_;
            }
         }
      }
      
      override public function removeItem(param1:Object) : void
      {
         var _loc2_:Scenery = null;
         var _loc3_:Dictionary = null;
         var _loc4_:CustomDictionary = null;
         if(this[param1])
         {
            delete this[param1];
            --_length;
            if(param1 is Scenery)
            {
               _loc2_ = param1 as Scenery;
               _loc3_ = this.COL_DCTS[_loc2_.colKey];
               if(_loc3_ && _loc3_[_loc2_.rowKey])
               {
                  _loc2_.colKey = NaN;
                  if((_loc4_ = _loc3_[_loc2_.rowKey]).length <= 1)
                  {
                     delete _loc3_[_loc2_.rowKey];
                  }
                  else
                  {
                     _loc4_.removeItem(_loc2_);
                  }
                  _loc2_.rowKey = NaN;
               }
               else
               {
                  _loc3_ = this.COL_DCTS[NON_GRID_ITEM_KEY];
                  if(_loc3_ && _loc3_[_loc2_])
                  {
                     _loc2_.colKey = NaN;
                     delete _loc3_[_loc2_];
                  }
               }
            }
         }
      }
      
      public function getSceneryAt(param1:Number, param2:Number) : CustomDictionary
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
