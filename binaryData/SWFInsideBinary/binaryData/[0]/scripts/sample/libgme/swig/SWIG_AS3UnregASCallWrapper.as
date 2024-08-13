package sample.libgme.swig
{
   public function SWIG_AS3UnregASCallWrapper(param1:Function) : void
   {
      var _loc2_:int = int(_SWIG_AS3Func2Ptr[param1]);
      delete _SWIG_AS3Func2Ptr[param1];
      delete _SWIG_AS3Ptr2Func[_loc2_];
   }
}
