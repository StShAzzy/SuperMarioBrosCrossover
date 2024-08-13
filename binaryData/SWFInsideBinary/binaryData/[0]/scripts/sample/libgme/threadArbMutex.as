package sample.libgme
{
   public var threadArbMutex:* = !!workerClass ? workerClass.current.getSharedProperty("flascc.threadArbMutex") || new mutexClass() : undefined;
}
