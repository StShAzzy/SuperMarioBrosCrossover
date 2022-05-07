package com.smbc.utils
{
   import com.explodingRabbit.utils.CustomDictionary;
   import com.smbc.main.AnimatedObject;
   
   public final dynamic class AnimatedObjectSortableDictionary extends CustomDictionary
   {
       
      
      public const AO_VEC:Vector.<AnimatedObject> = new Vector.<AnimatedObject>();
      
      public function AnimatedObjectSortableDictionary(param1:Boolean = false)
      {
         super(param1);
      }
      
      override public function addItem(param1:Object, param2:Object = null) : void
      {
         if(!this[param1])
         {
            ++_length;
            this[param1] = param1;
            this.AO_VEC.push(param1);
         }
      }
      
      override public function removeItem(param1:Object) : void
      {
         var _loc2_:int = 0;
         if(this[param1])
         {
            delete this[param1];
            --_length;
            _loc2_ = this.AO_VEC.indexOf(param1);
            if(_loc2_ != -1)
            {
               this.AO_VEC.splice(_loc2_,1);
            }
         }
      }
   }
}
