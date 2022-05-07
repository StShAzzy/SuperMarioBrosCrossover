package com.smbc.managers
{
   import com.explodingRabbit.utils.CustomDictionary;
   import com.smbc.errors.SingletonError;
   import com.smbc.text.TextFieldContainer;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class TextManager extends MainManager
   {
      
      private static var instantiated:Boolean;
      
      public static const INSTANCE:TextManager = new TextManager();
       
      
      public const TFC_DCT:CustomDictionary = new CustomDictionary(true);
      
      private var currentTxtFrm:TextFormat;
      
      public function TextManager()
      {
         super();
         if(instantiated)
         {
            throw new SingletonError();
         }
         instantiated = true;
      }
      
      override public function initiate() : void
      {
         super.initiate();
      }
      
      public function setUpNewTextField(param1:TextFieldContainer, param2:Number = 0, param3:Number = 0, param4:DisplayObjectContainer = null, param5:String = "") : void
      {
         this.TFC_DCT[param1] = true;
         if(param2 != 0)
         {
            param1.x = param2;
         }
         if(param3 != 0)
         {
            param1.y = param3;
         }
         if(param4 != null)
         {
            param4.addChild(param1);
         }
         if(param5 != "")
         {
            param1.text = param5;
         }
      }
      
      public function replaceStageTextField(param1:TextField, param2:TextFieldContainer, param3:DisplayObjectContainer) : void
      {
         param2.x = param1.x;
         param2.y = param1.y - 1;
         param2.text = param1.text;
         this.TFC_DCT[param2] = true;
         param3.addChildAt(param2,param3.getChildIndex(param1));
         param3.removeChild(param1);
      }
   }
}
