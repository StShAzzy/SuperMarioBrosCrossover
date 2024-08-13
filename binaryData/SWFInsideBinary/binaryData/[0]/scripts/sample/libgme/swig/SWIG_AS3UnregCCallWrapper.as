package sample.libgme.swig
{
   public function SWIG_AS3UnregCCallWrapper(param1:Function) : void
   {
      var _loc2_:int = int(_SWIG_AS3Func2Ptr[param1]);
      delete _SWIG_AS3Func2Ptr[param1];
      delete _SWIG_AS3Ptr2Func[_loc2_];
      _SWIG_AS3FreeFuncPtrs.push(_loc2_);
   }
}
