package com.smbc.utils
{
   import com.smbc.characters.Character;
   import com.smbc.level.TitleLevel;
   import flash.events.TimerEvent;
   
   public class CharacterSequencer
   {
      
      private static const IND_DELAY:int = 0;
      
      private static const IND_FUNCTION:int = 1;
       
      
      private var seqTmr:GameLoopTimer;
      
      private var seqArr:Array;
      
      private var stringChar:Character;
      
      private var curFunction:Function;
      
      private var recordChar:Character;
      
      public function CharacterSequencer()
      {
         super();
      }
      
      public function startNewSequence(param1:Array, param2:Character = null) : void
      {
         this.seqArr = param1.concat();
         this.seqTmr = new GameLoopTimer(1,1);
         this.seqTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.seqTmrHandler);
         if(!(this.seqArr[0][IND_FUNCTION] is Function))
         {
            this.stringChar = param2;
         }
         this.nextEvent();
      }
      
      private function convStrToFct(param1:Character) : void
      {
         var _loc2_:Array = null;
         var _loc3_:String = null;
         for each(_loc2_ in this.seqArr)
         {
            _loc3_ = _loc2_[IND_FUNCTION];
            _loc2_[IND_FUNCTION] = param1[_loc3_];
         }
      }
      
      private function nextEvent() : void
      {
         var _loc1_:Array = this.seqArr[0];
         this.seqTmr.delay = _loc1_[IND_DELAY];
         if(!this.stringChar)
         {
            this.curFunction = _loc1_[IND_FUNCTION];
         }
         else
         {
            this.curFunction = this.stringChar[String(_loc1_[IND_FUNCTION])];
         }
         this.seqTmr.start();
         if(this.seqTmr.delay == 0)
         {
            this.seqTmrHandler(new TimerEvent(TimerEvent.TIMER_COMPLETE));
         }
      }
      
      private function seqTmrHandler(param1:TimerEvent) : void
      {
         this.curFunction();
         this.seqTmr.stop();
         this.seqArr.shift();
         if(this.seqArr.length)
         {
            this.nextEvent();
         }
         else
         {
            this.endSequence();
         }
      }
      
      private function endSequence() : void
      {
         this.seqTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.seqTmrHandler);
         this.seqTmr = null;
         this.seqArr = null;
         this.curFunction = null;
         var _loc1_:TitleLevel = TitleLevel.instance;
         if(Boolean(_loc1_) && this.stringChar != _loc1_.player)
         {
            this.stringChar.destroy();
         }
         this.stringChar = null;
      }
      
      public function recordStart(param1:Character, param2:Boolean = true) : void
      {
         this.recordChar = param1;
         this.seqArr = [];
         if(this.seqTmr)
         {
            this.endSequence();
         }
         this.seqTmr = new GameLoopTimer(int.MAX_VALUE);
         if(!param2)
         {
            this.seqTmr.start();
         }
         else
         {
            this.seqTmr.totalTimePassed = 1;
         }
         param1.recordSeq = this;
      }
      
      public function addEvent(param1:String) : void
      {
         var _loc2_:Array = [];
         _loc2_[IND_DELAY] = this.seqTmr.totalTimePassed;
         _loc2_[IND_FUNCTION] = param1;
         this.seqArr.push(_loc2_);
         this.seqTmr.stop();
         this.seqTmr.start();
      }
      
      public function recordEnd() : void
      {
         this.recordChar = null;
         this.seqArr = null;
         this.endSequence();
      }
      
      public function toString() : String
      {
         var _loc4_:Array = null;
         var _loc1_:int = int(this.seqArr.length);
         var _loc2_:* = "";
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_)
         {
            _loc2_ += "[";
            _loc4_ = this.seqArr[_loc3_];
            _loc2_ += _loc4_[IND_DELAY].toString();
            _loc2_ += ",\"";
            _loc2_ += _loc4_[IND_FUNCTION];
            _loc2_ += "\"], ";
            _loc3_++;
         }
         return _loc2_;
      }
   }
}
