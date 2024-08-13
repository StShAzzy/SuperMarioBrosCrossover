include "sample/libgme/ptr2fun_init.as";
include "sample/libgme/ptr2funInit.as";
include "sample/libgme/domainClass.as";
include "sample/libgme/mutexClass.as";
include "sample/libgme/conditionClass.as";
include "sample/libgme/workerDomainClass.as";
include "sample/libgme/workerClass.as";
include "sample/libgme/threadId.as";
include "sample/libgme/realThreadId.as";
include "sample/libgme/threadArbMutex.as";
include "sample/libgme/threadArbConds.as";
include "sample/libgme/threadArbLockDepth.as";
include "sample/libgme/threadArbMutexLock.as";
include "sample/libgme/threadArbMutexUnlock.as";
include "sample/libgme/threadArbCondsNotify.as";
include "sample/libgme/threadArbCondWait.as";
include "sample/libgme/yieldCond.as";
include "sample/libgme/yield.as";
include "sample/libgme/workerInits.as";
include "sample/libgme/newThread.as";
include "sample/libgme/ram_init.as";
include "sample/libgme/throwWhenOutOfMemory.as";
include "sample/libgme/sbrk.as";
include "sample/libgme/stackSize.as";
include "sample/libgme/stackAlign.as";
include "sample/libgme/pageSize.as";
include "sample/libgme/ESP_init.as";
include "sample/libgme/inf.as";
include "sample/libgme/nan.as";
include "§__force_ordering_ns_967a1978-395b-4883-9375-772005c60b5f§/const_7.as";


{
   §__force_ordering_ns_967a1978-395b-4883-9375-772005c60b5f§;
   if(!ptr2fun_init.length)
   {
      ptr2fun_init[0] = function():void
      {
         throw new Error("null function pointer called");
      };
      ptr2fun_init.length = 1;
   }
   ram_init;
   this;
   ram_init.endian = Endian.LITTLE_ENDIAN;
   if(ram_init.length < domainClass.MIN_DOMAIN_MEMORY_LENGTH)
   {
      ram_init.length = domainClass.MIN_DOMAIN_MEMORY_LENGTH;
   }
   var _loc1_:* = domainClass.currentDomain.domainMemory = ram_init;
   return _loc1_;
}
