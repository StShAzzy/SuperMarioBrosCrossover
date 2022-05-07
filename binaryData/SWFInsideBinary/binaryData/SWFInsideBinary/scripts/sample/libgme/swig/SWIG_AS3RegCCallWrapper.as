package sample.libgme.swig
{
   import sample.libgme.CModule;
   
   public function SWIG_AS3RegCCallWrapper(param1:Function, param2:Function) : void
   {
      var _loc3_:int = 0;
      if(_SWIG_AS3Func2Ptr[param1])
      {
         throw "tried to register C-callable wrapper for native C function";
      }
      if(_SWIG_AS3FreeFuncPtrs.length)
      {
         _loc3_ = _SWIG_AS3FreeFuncPtrs.pop();
      }
      else
      {
         _loc3_ = CModule.allocFunPtrs(null,1,4);
      }
      CModule.regFun(_loc3_,param2);
      _SWIG_AS3Func2Ptr[param1] = _loc3_;
      _SWIG_AS3Ptr2Func[_loc3_] = param1;
   }
}
