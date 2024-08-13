package sample.libgme
{
   public var ESP_init:int = (!!workerClass ? int(workerClass.current.getSharedProperty("flascc.esp_init")) : 0) || int(stackSize * 2 + sbrk(stackSize * 2,pageSize));
}
