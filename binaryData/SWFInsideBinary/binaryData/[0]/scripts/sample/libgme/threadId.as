package sample.libgme
{
   public var threadId:int = !!workerClass ? int(workerClass.current.getSharedProperty("flascc.threadId")) : 0;
}
