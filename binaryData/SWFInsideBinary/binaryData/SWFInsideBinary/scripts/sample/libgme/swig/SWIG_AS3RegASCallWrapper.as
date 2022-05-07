package sample.libgme.swig
{
   public function SWIG_AS3RegASCallWrapper(param1:int, param2:Function) : void
   {
      if(_SWIG_AS3Ptr2Func[param1])
      {
         throw "tried to register AS-callable wrapper for existing AS wrapper";
      }
      _SWIG_AS3Func2Ptr[param2] = param1;
      _SWIG_AS3Ptr2Func[param1] = param2;
   }
}
