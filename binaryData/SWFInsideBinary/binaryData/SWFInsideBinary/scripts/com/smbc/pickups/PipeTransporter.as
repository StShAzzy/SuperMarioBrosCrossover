package com.smbc.pickups
{
   import com.smbc.characters.Character;
   import com.smbc.data.PickupInfo;
   import com.smbc.level.Level;
   
   public class PipeTransporter extends Pickup
   {
      
      public static const P_TRANS_DEST_STR:String = "pTransDest";
      
      public static const WARP_STR:String = "pipeTransporterWarp";
       
      
      protected var teleNum:int;
      
      public var globDest:String;
      
      public var globPipeExInt:int;
      
      public var pipeInt:int;
      
      protected var teleDest:Teleporter;
      
      protected var teleStart:Teleporter;
      
      protected var teleEndDist:Number;
      
      public var axis:String;
      
      protected var checkPtVec:Vector.<Array>;
      
      public var ptType:String;
      
      protected var numCheckPts:int;
      
      protected var active:Boolean;
      
      protected var oneCP:Boolean;
      
      public function PipeTransporter(param1:String)
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         super(PickupInfo.PIPE_TRANSPORTER);
         _boomerangGrabbable = false;
         if(param1.indexOf("Global") != -1 || param1.indexOf(WARP_STR) != -1)
         {
            if(param1.indexOf("End") != -1)
            {
               this.ptType = "globalEnd";
            }
            else
            {
               this.ptType = "global";
            }
            _loc2_ = param1.indexOf("number=") + 7;
            if(_loc2_ != -1)
            {
               if(this.ptType == "global")
               {
                  this.globPipeExInt = int(param1.charAt(_loc2_));
               }
               else if(this.ptType == "globalEnd")
               {
                  this.pipeInt = int(param1.charAt(_loc2_));
               }
            }
            _loc3_ = param1.indexOf("&&" + P_TRANS_DEST_STR + "=");
            if(_loc3_ != -1)
            {
               _loc3_ += 13;
            }
            if((_loc4_ = param1.indexOf("&&",_loc3_)) == -1)
            {
               _loc4_ = param1.length;
            }
            if(_loc3_ != -1)
            {
               this.globDest = param1.substring(_loc3_,_loc4_);
               if(this.globDest == "0")
               {
                  this.globDest = Level.levelInstance.areaStr;
               }
            }
            if(param1.indexOf("Vert") != -1)
            {
               this.axis = "vertical";
            }
            else if(param1.indexOf("Horz") != -1)
            {
               this.axis = "horizontal";
            }
            gotoAndStop(this.axis);
         }
         else if(param1.indexOf("Local") != -1)
         {
            this.ptType = "local";
            this.teleNum = int(param1.charAt(param1.indexOf("&&number=") + 9));
            gotoAndStop("vertical");
         }
         else if(param1.indexOf("pitTransferEnd") != -1)
         {
            this.ptType = "globalEnd";
            this.axis = "vertical";
            this.pipeInt = -1;
            gotoAndStop(this.axis);
         }
         defyGrav = true;
         stopAnim = true;
      }
      
      override public function hitCharacter(param1:Character, param2:String) : void
      {
      }
      
      override public function touchPlayer(param1:Character) : void
      {
      }
   }
}
