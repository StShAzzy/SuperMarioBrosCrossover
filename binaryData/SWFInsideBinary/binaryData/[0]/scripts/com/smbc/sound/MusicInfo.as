package com.smbc.sound
{
   import com.explodingRabbit.cross.data.Consoles;
   import com.explodingRabbit.cross.games.Games;
   import com.explodingRabbit.cross.sound.MusicFormat;
   import com.explodingRabbit.utils.CustomDictionary;
   import com.smbc.characters.Bill;
   import com.smbc.characters.Link;
   import com.smbc.characters.Mario;
   import com.smbc.characters.MegaMan;
   import com.smbc.characters.Ryu;
   import com.smbc.characters.Samus;
   import com.smbc.characters.Simon;
   import com.smbc.characters.Sophia;
   
   public class MusicInfo
   {
      
      private static const SPC:String = MusicFormat.SPC;
      
      private static const NSF:String = MusicFormat.NSF;
      
      private static const KSS:String = MusicFormat.KSS;
      
      private static const NSFE:String = MusicFormat.NSFE;
      
      private static const VGM:String = MusicFormat.VGM;
      
      private static const GBS:String = MusicFormat.GBS;
      
      private static const NES:String = Consoles.nintendo;
      
      private static const SNES:String = Consoles.superNintendo;
      
      private static const GB:String = Consoles.gameBoy;
      
      private static const MSX:String = Consoles.msx;
      
      private static const SONG_DCT:CustomDictionary = new CustomDictionary();
      
      public static var SFX_DCT:CustomDictionary = new CustomDictionary();
      
      public static const SEP:String = "_";
      
      public static const STR:String = "MFX";
      
      public static const BGM_STR:String = SEP + "BGM";
      
      public static const LOOP_STR:String = SEP + "LOOP";
      
      private static const VOL_BLASTER_MASTER:int = SoundLevels.BLASTER_MASTER_NSF;
      
      private static const VOL_BLASTER_MASTER_SFX:int = 100;
      
      private static const VOL_CASTLEVANIA:int = SoundLevels.CASTLEVANIA_NSF;
      
      private static const VOL_CASTLEVANIA_SFX:int = 100;
      
      private static const VOL_CASTLEVANIA_2:int = SoundLevels.CASTLEVANIA_2_NSF;
      
      private static const VOL_CONTRA:int = SoundLevels.CONTRA_NSF;
      
      private static const VOL_CONTRA_SFX:int = 110;
      
      private static const VOL_SUPER_C_SFX:int = 110;
      
      private static const VOL_CONTRA_FORCE:int = SoundLevels.CONTRA_FORCE_NSF;
      
      private static const VOL_FINAL_FANTASY:int = VOL_CONTRA;
      
      private static const VOL_LIFE_FORCE:int = SoundLevels.LIFE_FORCE_NSF;
      
      private static const VOL_KID_ICARUS:int = 150;
      
      private static const VOL_MEGA_MAN:int = SoundLevels.MEGA_MAN_NSF;
      
      private static const VOL_MEGA_MAN_2:int = SoundLevels.MEGA_MAN_2_NSF;
      
      private static const VOL_MEGA_MAN_2_SFX:int = 100;
      
      private static const VOL_MEGA_MAN_3:int = SoundLevels.MEGA_MAN_3_NSF;
      
      private static const VOL_MEGA_MAN_3_SFX:int = 100;
      
      private static const VOL_MEGA_MAN_4_SFX:int = 100;
      
      private static const VOL_MEGA_MAN_5_SFX:int = 100;
      
      private static const VOL_MEGA_MAN_6_SFX:int = 100;
      
      private static const VOL_METROID:int = SoundLevels.METROID_NSF;
      
      private static const VOL_METROID_SFX:int = 160;
      
      private static const VOL_NINJA_GAIDEN:int = SoundLevels.NINJA_GAIDEN_NSF;
      
      private static const VOL_NINJA_GAIDEN_SFX:int = 110;
      
      private static const VOL_NINJA_GAIDEN_2:int = SoundLevels.NINJA_GAIDEN_2_NSF;
      
      private static const VOL_NINJA_GAIDEN_2_SFX:int = 110;
      
      private static const VOL_NINJA_GAIDEN_3_SFX:int = 110;
      
      private static const VOL_SUPER_MARIO_BROS:int = SoundLevels.SUPER_MARIO_BROS_NSF;
      
      public static const VOL_SUPER_MARIO_BROS_SFX:int = 100;
      
      private static const VOL_SUPER_MARIO_BROS_3:int = SoundLevels.SUPER_MARIO_BROS_3_NSF;
      
      private static const VOL_ZELDA_1:int = SoundLevels.ZELDA_1_NSF;
      
      private static const VOL_ZELDA_1_SFX:int = 115;
      
      private static const VOL_ZELDA_2:int = SoundLevels.ZELDA_2_NSF;
      
      public static const CHAR_STR_BILL:String = Bill.CHAR_NAME_CAPS + SEP;
      
      public static const CHAR_STR_LINK:String = Link.CHAR_NAME_CAPS + SEP;
      
      public static const CHAR_STR_MARIO:String = Mario.CHAR_NAME_CAPS + SEP;
      
      public static const CHAR_STR_MEGA_MAN:String = MegaMan.CHAR_NAME_CAPS + SEP;
      
      public static const CHAR_STR_RYU:String = Ryu.CHAR_NAME_CAPS + SEP;
      
      public static const CHAR_STR_SAMUS:String = Samus.CHAR_NAME_CAPS + SEP;
      
      public static const CHAR_STR_SIMON:String = Simon.CHAR_NAME_CAPS + SEP;
      
      public static const CHAR_STR_SOPHIA:String = Sophia.CHAR_NAME_CAPS + SEP;
      
      private static const MARIO_SECONDS_LEFT_DELAY:int = 2800;
      
      public static const TYPE_DUNGEON_BGM:String = "DUNGEON" + BGM_STR;
      
      public static const TYPE_DAY_BGM:String = "DAY" + BGM_STR;
      
      public static const TYPE_DIE:String = "DIE";
      
      public static const TYPE_NIGHT_BGM:String = "NIGHT" + BGM_STR;
      
      public static const TYPE_UNDER_GROUND_BGM:String = "UNDER_GROUND" + BGM_STR;
      
      public static const TYPE_WATER_BGM:String = "WATER" + BGM_STR;
      
      public static const TYPE_BONUS_BGM:String = "BONUS" + BGM_STR;
      
      public static const TYPE_CREDITS:String = "CREDITS";
      
      public static const TYPE_GAME_OVER:String = "GAME_OVER";
      
      public static const TYPE_INTRO:String = "INTRO";
      
      public static const TYPE_INTRO_LEVEL:String = "INTRO_LEVEL";
      
      public static const TYPE_SECONDS_LEFT:String = "SECONDS_LEFT";
      
      public static const TYPE_STAR:String = "STAR";
      
      public static const TYPE_WIN:String = "WIN";
      
      public static const TYPE_WIN_CASTLE:String = "WIN_CASTLE";
      
      private static const BT_BGM:String = SoundContainer.BT_BGM;
      
      private static const BT_LOOPING_SFX:String = SoundContainer.BT_LOOPING_SFX;
      
      private static const BT_MUSIC_EFFECT:String = SoundContainer.BT_MUSIC_EFFECT;
      
      private static const BT_OVERRIDE:String = SoundContainer.BT_OVERRIDE;
      
      private static const BT_SFX:String = SoundContainer.BT_SFX;
      
      public static const TRACK_OFFSET:int = -1;
      
      private static var indCtr:int = -1;
      
      public static const IND_SOURCE_CLASS:int = indCtr = indCtr + 1;
      
      public static const IND_FILE_TYPE:int = indCtr = indCtr + 1;
      
      public static const IND_TRACK_NUM:int = indCtr = indCtr + 1;
      
      public static const IND_VOLUME:int = indCtr = indCtr + 1;
      
      public static const IND_START_TIME:int = indCtr = indCtr + 1;
      
      public static const IND_SOUND_TYPE:int = indCtr = indCtr + 1;
      
      public static const IND_DURATION:int = indCtr = indCtr + 1;
      
      public static const IND_LOOP_PNT:int = indCtr = indCtr + 1;
      
      public static const IND_BUFFER:int = indCtr = indCtr + 1;
      
      public static const IND_8BIT:int = 0;
      
      public static const IND_16BIT:int = 1;
      
      public static const IND_GB:int = 2;
      
      private static const ContraNsf:Class = Games.contra.Nsf;
      
      private static const SuperCNsf:Class = Games.superC.Nsf;
      
      private static const SuperMarioBrosVsNsf:Class = Games.superMarioBros.NSF;
      
      private static const Zelda1Nsf:Class = Games.zelda.Nsf;
      
      private static const NinjaGaidenNsf:Class = Games.ninjaGaiden.Nsf;
      
      private static const MetroidNsf:Class = Games.metroid.Nsf;
      
      private static const CastlevaniaNsf:Class = Games.castlevania.Nsf;
      
      private static const Castlevania2Nsf:Class = Games.castlevania2.Nsf;
      
      private static const Castlevania3Nsf:Class = Games.castlevania3.Nsf;
      
      private static const BlasterMasterSfxNsf:Class = Games.blasterMaster.NsfSfx;
      
      private static const LifeForceNsf:Class = Games.lifeForce.Nsfe;
      
      private static const MegaManNsf:Class = Games.megaMan.Nsf;
      
      private static const MegaMan2Nsf:Class = Games.megaMan2.Nsf;
      
      private static const MegaMan3Nsf:Class = Games.megaMan3.Nsf;
      
      private static const MegaMan6Nsf:Class = Games.megaMan6.Nsf;
      
      private static const KidIcarusNsf:Class = Games.kidIcarus.Nsf;
      
      private static const NinjaGaiden2Nsf:Class = MusicInfo_NinjaGaiden2Nsf;
      
      private static const NinjaGaiden3Nsf:Class = MusicInfo_NinjaGaiden3Nsf;
      
      private static const MegaMan4Nsf:Class = MusicInfo_MegaMan4Nsf;
      
      private static const MegaMan5Nsf:Class = MusicInfo_MegaMan5Nsf;
      
      public static const SFX_BillDieSnd:Array = addSfx([[ContraNsf,NSF,83,VOL_CONTRA_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_BillEnemyExplodeSnd:Array = addSfx([[ContraNsf,NSF,26,VOL_CONTRA_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_BillElectrecuteSnd:Array = addSfx([[ContraNsf,NSF,29,VOL_CONTRA_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_BillFlareSnd:Array = addSfx([[ContraNsf,NSF,17,VOL_CONTRA_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_BillGetItemSnd:Array = addSfx([[ContraNsf,NSF,32,VOL_CONTRA_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_BillLandSnd:Array = addSfx([[ContraNsf,NSF,5,VOL_CONTRA_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_BillLaserSnd:Array = addSfx([[SuperCNsf,NSF,14,VOL_CONTRA_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_BillShotHitSnd:Array = addSfx([[ContraNsf,NSF,23,VOL_CONTRA_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_BillSpreadSnd:Array = addSfx([[SuperCNsf,NSF,15,VOL_SUPER_C_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_GameBowserFallSnd:Array = addSfx([[SuperMarioBrosVsNsf,NSF,33,VOL_SUPER_MARIO_BROS_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_GameBowserFireSnd:Array = addSfx([[SuperMarioBrosVsNsf,NSF,24,VOL_SUPER_MARIO_BROS_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_GameBrickBreakSnd:Array = addSfx([[SuperMarioBrosVsNsf,NSF,23,VOL_SUPER_MARIO_BROS_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_GameCanonSnd:Array = addSfx([[SuperMarioBrosVsNsf,NSF,29,VOL_SUPER_MARIO_BROS_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_GameCoinSnd:Array = addSfx([[SuperMarioBrosVsNsf,NSF,26,VOL_SUPER_MARIO_BROS_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_GameFlagPoleSnd:Array = addSfx([[SuperMarioBrosVsNsf,NSF,41,VOL_SUPER_MARIO_BROS_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_GameHitCeilingSnd:Array = addSfx([[SuperMarioBrosVsNsf,NSF,36,VOL_SUPER_MARIO_BROS_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_GameItemAppearSnd:Array = addSfx([[SuperMarioBrosVsNsf,NSF,27,VOL_SUPER_MARIO_BROS_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_GameKickShellSnd:Array = addSfx([[SuperMarioBrosVsNsf,NSF,38,VOL_SUPER_MARIO_BROS_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_GameNewLifeSnd:Array = addSfx([[SuperMarioBrosVsNsf,NSF,32,VOL_SUPER_MARIO_BROS_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_GamePauseSnd:Array = addSfx([[SuperMarioBrosVsNsf,NSF,22,VOL_SUPER_MARIO_BROS_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_GamePipeSnd:Array = addSfx([[SuperMarioBrosVsNsf,NSF,39,VOL_SUPER_MARIO_BROS_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_GamePowerUpSnd:Array = addSfx([[SuperMarioBrosVsNsf,NSF,31,VOL_SUPER_MARIO_BROS_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_GameSecondsLeftIntroSnd:Array = addSfx([[SuperMarioBrosVsNsf,NSF,40,VOL_SUPER_MARIO_BROS_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_GameStompSnd:Array = addSfx([[SuperMarioBrosVsNsf,NSF,37,VOL_SUPER_MARIO_BROS_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_GameVineSnd:Array = addSfx([[SuperMarioBrosVsNsf,NSF,28,VOL_SUPER_MARIO_BROS_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_LinkBombExplodeSnd:Array = addSfx([[Zelda1Nsf,NSF,30,VOL_ZELDA_1_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_LinkDieSnd:Array = addSfx([[Zelda1Nsf,NSF,10,VOL_ZELDA_1_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_LinkGetHeartSnd:Array = addSfx([[Zelda1Nsf,NSF,34,VOL_ZELDA_1_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_LinkGetItemSnd:Array = addSfx([[Zelda1Nsf,NSF,24,VOL_ZELDA_1_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_LinkHitEnemySnd:Array = addSfx([[Zelda1Nsf,NSF,32,VOL_ZELDA_1_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_LinkHitEnemyArmorSnd:Array = addSfx([[Zelda1Nsf,NSF,31,VOL_ZELDA_1_SFX - 35,0,BT_SFX,0,0,null]]);
      
      public static const SFX_LinkIntroLevelSnd:Array = addSfx([[Zelda1Nsf,NSF,5,VOL_ZELDA_1_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_LinkKillEnemySnd:Array = addSfx([[Zelda1Nsf,NSF,25,VOL_ZELDA_1_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_LinkSetBombSnd:Array = addSfx([[Zelda1Nsf,NSF,36,VOL_ZELDA_1_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_LinkSelectItemSnd:Array = addSfx([[Zelda1Nsf,NSF,21,VOL_ZELDA_1_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_LinkShootArrowSnd:Array = addSfx([[Zelda1Nsf,NSF,35,VOL_ZELDA_1_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_LinkTakeDamageSnd:Array = addSfx([[Zelda1Nsf,NSF,17,VOL_ZELDA_1_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_LinkShootSwordSnd:Array = addSfx([[Zelda1Nsf,NSF,14,VOL_ZELDA_1_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_LinkStabSnd:Array = addSfx([[Zelda1Nsf,NSF,26,VOL_ZELDA_1_SFX + 8,0,BT_SFX,0,0,null]]);
      
      public static const SFX_MarioFireballSnd:Array = addSfx([[SuperMarioBrosVsNsf,NSF,40,VOL_SUPER_MARIO_BROS_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_MarioJumpBigSnd:Array = addSfx([[SuperMarioBrosVsNsf,NSF,35,VOL_SUPER_MARIO_BROS_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_MarioJumpSmallSnd:Array = addSfx([[SuperMarioBrosVsNsf,NSF,34,VOL_SUPER_MARIO_BROS_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_MegaManChargeKickSnd:Array = addSfx([[MegaMan5Nsf,NSF,36,VOL_MEGA_MAN_5_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_MegaManChargeShotWeakSnd:Array = addSfx([[MegaMan5Nsf,NSF,33,VOL_MEGA_MAN_5_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_MegaManChargeShotSnd:Array = addSfx([[MegaMan5Nsf,NSF,34,VOL_MEGA_MAN_5_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_MegaManChargeHeatStartSnd:Array = addSfx([[MegaMan2Nsf,NSF,54,VOL_MEGA_MAN_2_SFX,0,BT_LOOPING_SFX,1340,1200,null]]);
      
      public static const SFX_MegaManChargeHeatLoopSnd:Array = addSfx([[MegaMan2Nsf,NSF,56,VOL_MEGA_MAN_2_SFX,0,BT_LOOPING_SFX,1340,1200,null]]);
      
      public static const SFX_MegaManChargeStartSnd:Array = addSfx([[MegaMan5Nsf,NSF,35,VOL_MEGA_MAN_5_SFX,0,BT_LOOPING_SFX,1340,1200,null]]);
      
      public static const SFX_MegaManDeflectSnd:Array = addSfx([[MegaMan6Nsf,NSF,40,VOL_MEGA_MAN_6_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_MegaManDieSnd:Array = addSfx([[MegaMan6Nsf,NSF,39,VOL_MEGA_MAN_6_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_MegaManDieAltSnd:Array = addSfx([[MegaMan2Nsf,NSF,66,VOL_MEGA_MAN_2_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_MegaManGetEnergySnd:Array = addSfx([[MegaMan6Nsf,NSF,50,VOL_MEGA_MAN_6_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_MegaManGetEnergyLoopingSnd:Array = addSfx([[MegaMan6Nsf,NSF,50,VOL_MEGA_MAN_6_SFX,0,BT_LOOPING_SFX,120,30,null]]);
      
      public static const SFX_MegaManGetNewLifeSnd:Array = addSfx([[MegaMan5Nsf,NSF,37,VOL_MEGA_MAN_5_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_MegaManHitEnemySnd:Array = addSfx([[MegaMan6Nsf,NSF,54,VOL_MEGA_MAN_6_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_MegaManIceSlasherSnd:Array = addSfx([[MegaManNsf,NSF,43,VOL_MEGA_MAN_6_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_MegaManIceSlasherHitSnd:Array = addSfx([[MegaManNsf,NSF,28,VOL_MEGA_MAN_6_SFX - 20,0,BT_SFX,0,0,null]]);
      
      public static const SFX_MegaManLandSnd:Array = addSfx([[MegaMan6Nsf,NSF,37,VOL_MEGA_MAN_6_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_MegaManMagmaBazookaSnd:Array = addSfx([[MegaMan5Nsf,NSF,44,VOL_MEGA_MAN_5_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_MegaManMetalBladeSnd:Array = addSfx([[MegaMan2Nsf,NSF,36,VOL_MEGA_MAN_2_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_MegaManPharaohShotSmallSnd:Array = addSfx([[MegaMan4Nsf,NSF,28,VOL_MEGA_MAN_4_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_MegaManPharaohShotBigSnd:Array = addSfx([[MegaMan4Nsf,NSF,63,VOL_MEGA_MAN_4_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_MegaManShootSnd:Array = addSfx([[MegaMan6Nsf,NSF,36,VOL_MEGA_MAN_6_SFX - 10,0,BT_SFX,0,0,null]]);
      
      public static const SFX_MegaManTakeDamageSnd:Array = addSfx([[MegaMan6Nsf,NSF,38,VOL_MEGA_MAN_6_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_MegaManTeleportSnd:Array = addSfx([[MegaMan6Nsf,NSF,59,VOL_MEGA_MAN_6_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_MegaManWaterShieldExpandSnd:Array = addSfx([[MegaMan3Nsf,NSF,41,VOL_MEGA_MAN_3_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_PitShootSnd:Array = addSfx([[KidIcarusNsf,NSF,16,VOL_KID_ICARUS,0,BT_SFX,0,0,null]]);
      
      public static const SFX_PitJumpSnd:Array = addSfx([[KidIcarusNsf,NSF,19,VOL_KID_ICARUS + 100,0,BT_SFX,0,0,null]]);
      
      public static const SFX_RyuArtOfFireWheelSnd:Array = addSfx([[NinjaGaidenNsf,NSF,41,VOL_NINJA_GAIDEN_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_RyuAttackArmorSnd:Array = addSfx([[NinjaGaiden3Nsf,NSF,61,VOL_NINJA_GAIDEN_3_SFX - 35,0,BT_SFX,0,0,null]]);
      
      public static const SFX_RyuAttackSnd:Array = addSfx([[NinjaGaidenNsf,NSF,32,VOL_NINJA_GAIDEN_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_RyuDamageEnemySnd:Array = addSfx([[NinjaGaiden3Nsf,NSF,67,VOL_NINJA_GAIDEN_3_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_RyuFireDrgonBallSnd:Array = addSfx([[NinjaGaiden2Nsf,NSF,69,VOL_NINJA_GAIDEN_2_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_RyuGetPickupSnd:Array = addSfx([[NinjaGaidenNsf,NSF,36,VOL_NINJA_GAIDEN_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_RyuGetScrollSnd:Array = addSfx([[NinjaGaiden2Nsf,NSF,49,VOL_NINJA_GAIDEN_2_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_RyuKillEnemySnd:Array = addSfx([[NinjaGaiden2Nsf,NSF,37,VOL_NINJA_GAIDEN_2_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_RyuJumpSnd:Array = addSfx([[NinjaGaidenNsf,NSF,33,VOL_NINJA_GAIDEN_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_RyuJumpSlashSnd:Array = addSfx([[NinjaGaidenNsf,NSF,42,VOL_NINJA_GAIDEN_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_RyuTakeDamageSnd:Array = addSfx([[NinjaGaidenNsf,NSF,35,VOL_NINJA_GAIDEN_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_RyuThrowBigStarSnd:Array = addSfx([[NinjaGaiden2Nsf,NSF,43,VOL_NINJA_GAIDEN_2_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_RyuThrowSmallStarSnd:Array = addSfx([[NinjaGaidenNsf,NSF,39,VOL_NINJA_GAIDEN_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SamusBombExplodeSnd:Array = addSfx([[MetroidNsf,NSF,15,VOL_METROID_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SamusBombSetSnd:Array = addSfx([[MetroidNsf,NSF,27,VOL_METROID_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SamusBulletProofSnd:Array = addSfx([[MetroidNsf,NSF,24,VOL_METROID_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SamusDieSnd:Array = addSfx([[MetroidNsf,NSF,34,VOL_METROID_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SamusGetEnergySnd:Array = addSfx([[MetroidNsf,NSF,25,VOL_METROID_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SamusGetMissileSnd:Array = addSfx([[MetroidNsf,NSF,26,VOL_METROID_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SamusHitEnemySnd:Array = addSfx([[MetroidNsf,NSF,21,VOL_METROID_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SamusJumpSnd:Array = addSfx([[MetroidNsf,NSF,20,VOL_METROID_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SamusLandSnd:Array = addSfx([[MetroidNsf,NSF,14,VOL_METROID_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SamusMorphBallSnd:Array = addSfx([[MetroidNsf,NSF,28,VOL_METROID_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SamusScrewAttackSnd:Array = addSfx([[MetroidNsf,NSF,17,VOL_METROID_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SamusShootMissileSnd:Array = addSfx([[MetroidNsf,NSF,16,VOL_METROID_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SamusShortBeamSnd:Array = addSfx([[MetroidNsf,NSF,23,VOL_METROID_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SamusTakeDamageSnd:Array = addSfx([[MetroidNsf,NSF,37,VOL_METROID_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SamusWaveBeamSnd:Array = addSfx([[MetroidNsf,NSF,19,VOL_METROID_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SimonAxeSnd:Array = addSfx([[CastlevaniaNsf,NSF,25,VOL_CASTLEVANIA_SFX,0,BT_LOOPING_SFX,0,0,null]]);
      
      public static const SFX_SimonCrossSnd:Array = addSfx([[CastlevaniaNsf,NSF,23,VOL_CASTLEVANIA_SFX,0,BT_LOOPING_SFX,0,0,null]]);
      
      public static const SFX_SimonGetHeartSnd:Array = addSfx([[CastlevaniaNsf,NSF,38,VOL_CASTLEVANIA_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SimonGetWeaponSnd:Array = addSfx([[CastlevaniaNsf,NSF,40,VOL_CASTLEVANIA_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SimonHitEnemySnd:Array = addSfx([[CastlevaniaNsf,NSF,36,VOL_CASTLEVANIA_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SimonHitEnemyC2Snd:Array = addSfx([[Castlevania2Nsf,NSF,36,VOL_CASTLEVANIA_SFX + 15,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SimonHolyWaterExplodeSnd:Array = addSfx([[CastlevaniaNsf,NSF,46,VOL_CASTLEVANIA_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SimonKillEnemySnd:Array = addSfx([[CastlevaniaNsf,NSF,36,VOL_CASTLEVANIA_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SimonKillEnemyC2Snd:Array = addSfx([[Castlevania2Nsf,NSF,38,VOL_CASTLEVANIA_SFX + 15,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SimonRosarySnd:Array = addSfx([[CastlevaniaNsf,NSF,52,VOL_CASTLEVANIA_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SimonStopWatchSnd:Array = addSfx([[CastlevaniaNsf,NSF,42,VOL_CASTLEVANIA_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SimonTakeDamageSnd:Array = addSfx([[Castlevania3Nsf,NSF,70,VOL_CASTLEVANIA_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SimonThrowDaggerSnd:Array = addSfx([[CastlevaniaNsf,NSF,24,VOL_CASTLEVANIA_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SimonWhipSnd:Array = addSfx([[CastlevaniaNsf,NSF,25,VOL_CASTLEVANIA_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SimonFlameWhipSnd:Array = addSfx([[Castlevania2Nsf,NSF,28,VOL_CASTLEVANIA_SFX + 30,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SophiaBulletExplodeSnd:Array = addSfx([[BlasterMasterSfxNsf,NSF,41,VOL_BLASTER_MASTER_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SophiaDieSnd:Array = addSfx([[BlasterMasterSfxNsf,NSF,75,VOL_BLASTER_MASTER_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SophiaGetPickupSnd:Array = addSfx([[BlasterMasterSfxNsf,NSF,45,VOL_BLASTER_MASTER_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SophiaHitEnemySnd:Array = addSfx([[BlasterMasterSfxNsf,NSF,55,VOL_BLASTER_MASTER_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SophiaHoverSnd:Array = addSfx([[BlasterMasterSfxNsf,NSF,49,VOL_BLASTER_MASTER_SFX,0,BT_LOOPING_SFX,180,0,null]]);
      
      public static const SFX_SophiaJumpSnd:Array = addSfx([[BlasterMasterSfxNsf,NSF,47,VOL_BLASTER_MASTER_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SophiaKillEnemySnd:Array = addSfx([[BlasterMasterSfxNsf,NSF,30,VOL_BLASTER_MASTER_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SophiaLandSnd:Array = addSfx([[BlasterMasterSfxNsf,NSF,46,VOL_BLASTER_MASTER_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SophiaMissileSnd:Array = addSfx([[BlasterMasterSfxNsf,NSF,48,VOL_BLASTER_MASTER_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SophiaOpenSnd:Array = addSfx([[BlasterMasterSfxNsf,NSF,63,VOL_BLASTER_MASTER_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SophiaSelectWeaponSnd:Array = addSfx([[BlasterMasterSfxNsf,NSF,26,VOL_BLASTER_MASTER_SFX - 5,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SophiaShootNormalSnd:Array = addSfx([[BlasterMasterSfxNsf,NSF,32,VOL_BLASTER_MASTER_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SophiaShootHyperSnd:Array = addSfx([[BlasterMasterSfxNsf,NSF,34,VOL_BLASTER_MASTER_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SophiaShootCrusherSnd:Array = addSfx([[BlasterMasterSfxNsf,NSF,35,VOL_BLASTER_MASTER_SFX,0,BT_SFX,0,0,null]]);
      
      public static const SFX_SophiaTakeDamageSnd:Array = addSfx([[BlasterMasterSfxNsf,NSF,61,VOL_BLASTER_MASTER_SFX,0,BT_SFX,0,0,null]]);
       
      
      public function MusicInfo()
      {
         super();
      }
      
      private static function addSfx(param1:Array) : Array
      {
         SFX_DCT.addItem(param1);
         return param1;
      }
      
      private static function getArr(param1:Class) : Array
      {
         if(!param1)
         {
            return null;
         }
         var _loc2_:String = Class(param1).toString();
         var _loc3_:int = 17;
         _loc2_ = _loc2_.substr(_loc3_,_loc2_.length - _loc3_ - 1);
         return SONG_DCT[_loc2_] as Array;
      }
   }
}
