package com.smbc.sound
{
   import flash.utils.Dictionary;
   
   public class SoundInfo
   {
      
      public static const INFO_DCT:Dictionary = new Dictionary();
      
      public static const IND_CLASS:int = 0;
      
      public static const IND_VOLUME:int = 1;
      
      private static const MUS_REF:int = 80;
      
      private static const SFX_REF:int = 77;
      
      public static const BillMachineGunSnd:Class = SoundInfo_BillMachineGunSnd;
      
      public static const BillNormalShotSnd:Class = SoundInfo_BillNormalShotSnd;
      
      public static const GameBridgeBreakSnd:Class = SoundInfo_GameBridgeBreakSnd;
      
      public static const GameCharacterSelectCursorSnd:Class = SoundInfo_GameCharacterSelectCursorSnd;
      
      public static const GamePointsSnd:Class = SoundInfo_GamePointsSnd;
      
      public static const LinkBoomerangSnd:Class = SoundInfo_LinkBoomerangSnd;
      
      public static const LinkJumpSnd:Class = SoundInfo_LinkJumpSnd;
      
      public static const MegaManWaterShieldSnd:Class = SoundInfo_MegaManWaterShieldSnd;
      
      public static const RepeatingSilenceSnd:Class = SoundInfo_RepeatingSilenceSnd;
      
      public static const SamusIceBeamSnd:Class = SoundInfo_SamusIceBeamSnd;
      
      public static const SamusLongBeamSnd:Class = SoundInfo_SamusLongBeamSnd;
      
      public static const SamusStepSnd:Class = SoundInfo_SamusStepSnd;
      
      {
         INFO_DCT[BillMachineGunSnd] = [SoundEffect,-12];
         INFO_DCT[BillNormalShotSnd] = [SoundEffect,-12];
         INFO_DCT[GameBridgeBreakSnd] = [SoundEffect,0];
         INFO_DCT[GameCharacterSelectCursorSnd] = [SoundEffect,10];
         INFO_DCT[GamePointsSnd] = [LoopingSoundEffect,-14];
         INFO_DCT[LinkBoomerangSnd] = [LoopingSoundEffect,-4];
         INFO_DCT[LinkJumpSnd] = [SoundEffect,0];
         INFO_DCT[MegaManWaterShieldSnd] = [SoundEffect,-10];
         INFO_DCT[RepeatingSilenceSnd] = [RepeatingSilenceOverrideSnd,0];
         INFO_DCT[SamusIceBeamSnd] = [SoundEffect,0];
         INFO_DCT[SamusLongBeamSnd] = [SoundEffect,0];
         INFO_DCT[SamusStepSnd] = [SoundEffect,-5];
         setUpSoundLevels();
      }
      
      public function SoundInfo()
      {
         super();
      }
      
      private static function setUpSoundLevels() : void
      {
         var _loc1_:Array = null;
         var _loc2_:Class = null;
         var _loc3_:int = 0;
         for each(_loc1_ in INFO_DCT)
         {
            _loc2_ = _loc1_[IND_CLASS];
            _loc3_ = _loc1_[IND_VOLUME];
            if(_loc2_ == MusicEffect)
            {
               _loc3_ += MUS_REF;
            }
            else
            {
               _loc3_ += SFX_REF;
            }
            _loc1_[IND_VOLUME] = _loc3_;
         }
      }
   }
}
