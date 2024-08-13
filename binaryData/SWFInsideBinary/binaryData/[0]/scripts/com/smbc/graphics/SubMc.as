package com.smbc.graphics
{
   import com.smbc.characters.Character;
   import com.smbc.interfaces.ICustomTimer;
   import com.smbc.main.SkinObj;
   
   public class SubMc extends SkinObj
   {
       
      
      protected var suffixVec:Vector.<String>;
      
      protected var hasPState2:Boolean;
      
      public var parChar:Character;
      
      public var hitStopAnim:Boolean;
      
      public var hitFrameLabel:String;
      
      public var recolor:Boolean;
      
      public var charNum:int;
      
      public function SubMc(param1:Character = null)
      {
         this.suffixVec = Vector.<String>(["","",""]);
         this.parChar = param1;
         this.charNum = param1.charNum;
         param1.addSubMc(this);
         super();
      }
      
      override public function animate(param1:ICustomTimer) : Boolean
      {
         if(!stopAnim)
         {
            ANIMATOR.animate(this);
            checkFrame();
            return true;
         }
         return false;
      }
      
      override public function resetColor(param1:Boolean = false) : void
      {
         if(param1)
         {
            redraw(currentFrame,getCleanMasterBmdSkinForReading().bmd);
         }
         else
         {
            redraw(currentFrame);
         }
      }
      
      public function convLab(param1:String) : String
      {
         return param1;
      }
      
      override public function gotoAndStop(param1:Object, param2:String = null) : void
      {
         var _loc3_:Array = null;
         if(this.parChar.replaceColor)
         {
            this.resetColor();
         }
         super.gotoAndStop(param1,param2);
         if(this.parChar.getFlashArr())
         {
            _loc3_ = this.parChar.getFlashArr();
            recolorBmps(_loc3_[IND_FLASH_ARR_PAL_IN],_loc3_[IND_FLASH_ARR_PAL_OUT],_loc3_[IND_FLASH_ARR_IN_COLOR],_loc3_[IND_FLASH_ARR_OUT_COLOR],this.parChar.defColors);
         }
      }
      
      protected function cmcGotoAndStop(param1:Object, param2:String = null) : void
      {
         super.gotoAndStop(param1,param2);
      }
      
      public function setStopFrame(param1:String) : void
      {
         this.gotoAndStop(this.convLab(param1));
         stopAnim = true;
      }
      
      public function setPlayFrame(param1:String) : void
      {
         this.gotoAndStop(this.convLab(param1));
         stopAnim = false;
      }
   }
}
