package com.smbc.characters
{
   import com.smbc.characters.base.MarioBase;
   import com.smbc.data.CharacterInfo;
   import com.smbc.data.PaletteTypes;
   import com.smbc.enemies.Enemy;
   import com.smbc.ground.*;
   import com.smbc.level.TitleLevel;
   import com.smbc.projectiles.*;
   import com.smbc.sound.*;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.Point;
   
   public final class Mario extends MarioBase
   {
      
      public static const CHAR_NAME:String = CharacterInfo.Mario[CharacterInfo.IND_CHAR_NAME];
      
      public static const CHAR_NAME_CAPS:String = CharacterInfo.Mario[CharacterInfo.IND_CHAR_NAME_CAPS];
      
      public static const CHAR_NAME_TEXT:String = CharacterInfo.Mario[CharacterInfo.IND_CHAR_NAME_MENUS];
      
      public static const CHAR_NUM:int = CharacterInfo.Mario[CharacterInfo.IND_CHAR_NUM];
      
      public static const PAL_ORDER_ARR:Array = [PaletteTypes.FLASH_POWERING_UP];
      
      public static const SUFFIX_VEC:Vector.<String> = Vector.<String>(["_1","_2","_2"]);
      
      public static const OBTAINABLE_UPGRADES_ARR:Array = [[MARIO_FIRE_FLOWER]];
      
      public static const MUSHROOM_UPGRADES:Array = [];
      
      public static const RESTORABLE_UPGRADES:Array = [];
      
      public static const NEVER_LOSE_UPGRADES:Array = [];
      
      public static const START_WITH_UPGRADES:Array = [];
      
      public static const SINGLE_UPGRADES_ARR:Array = [];
      
      public static const REPLACEABLE_UPGRADES_ARR:Array = [[]];
      
      public static const TITLE_SCREEN_UPGRADES:Array = [];
      
      public static const ICON_ORDER_ARR:Array = [MARIO_FIRE_FLOWER];
      
      public static const WIN_SONG_DUR:int = 5400;
      
      public static const CHAR_SEL_END_DUR:int = 1700;
      
      public static const GRAVITY:int = 1500;
      
      public static const JUMP_HEIGHT_MIN:int = 38;
      
      public static const JUMP_HEIGHT_NORMAL:int = 84;
      
      public static const JUMP_HEIGHT_RUN:int = 112;
      
      public static const JUMP_SPEED_NORMAL:int = 400;
      
      public static const JUMP_SPEED_RUN:int = 420;
      
      public static const FX_WALK:Number = 0.075;
      
      public static const FX_RUN_CROUCH:Number = 0.05;
      
      public static const FX_SKID:Number = 0.03;
      
      public static const SKID_THRESHOLD:int = 40;
      
      public static const FY:Number = 0.000001;
      
      public static const AX_DEFAULT:int = 350;
      
      public static const AX_RUN:int = 350;
      
      public static const VY_MAX_PSV_NORMAL:int = 600;
      
      public static const SKIN_PREVIEW_SIZE:Point = new Point();
      
      public static const SKIN_APPEARANCE_STATE_COUNT:int = 3;
      
      public static const SKIN_MARIO_SMB_NES:int = 0;
      
      public static const SKIN_MARIO_SMB_SNES:int = 1;
      
      public static const SKIN_MARIO_SML2:int = 2;
      
      public static const SKIN_MARIO_SMB3_NES:int = 3;
      
      public static const SKIN_DEMON_NES:int = 4;
      
      public static const SKIN_DEMON_SNES:int = 5;
      
      public static const SKIN_MARIO_SMW_SNES:int = 6;
      
      public static const SKIN_MARIO_SMB2_NES:int = 7;
      
      public static const SKIN_MARIO_SMB2_SNES:int = 8;
      
      public static const SKIN_MARIO_SMB3_SNES:int = 9;
      
      public static const SKIN_TOAD_NES:int = 10;
      
      public static const SKIN_MARIO_ATARI:int = 11;
      
      public static const SKIN_TOAD_SNES:int = 12;
      
      public static const SKIN_MARIO_X1:int = 13;
      
      public static const SKIN_MARIO_SML2_SPACE:int = 14;
      
      public static const SKIN_ORDER:Array = [SKIN_MARIO_SMB_NES,SKIN_MARIO_SMB_SNES,SKIN_MARIO_SMB2_NES,SKIN_MARIO_SMB2_SNES,SKIN_MARIO_SMB3_NES,SKIN_MARIO_SMB3_SNES,SKIN_MARIO_SMW_SNES,SKIN_MARIO_SML2,SKIN_MARIO_SML2_SPACE,SKIN_MARIO_X1,SKIN_MARIO_ATARI,SKIN_TOAD_NES,SKIN_TOAD_SNES,SKIN_DEMON_NES,SKIN_DEMON_SNES];
      
      public static const SPECIAL_SKIN_NUMBER:int = SKIN_MARIO_X1;
      
      public static const ATARI_SKIN_NUMBER:int = SKIN_MARIO_ATARI;
       
      
      public function Mario()
      {
         super();
      }
      
      override public function chooseCharacter() : void
      {
         var _loc1_:ItemBlock = null;
         super.chooseCharacter();
         vx = 0;
         _loc1_ = new ItemBlock(ItemBlock.DEFAULT_NAME);
         _loc1_.getPickup(null);
         _loc1_.visible = false;
         _loc1_.x = x - TILE_SIZE / 2;
         _loc1_.y = ny - TILE_SIZE * 4;
         level.addToLevel(_loc1_);
         pressJmpBtn();
      }
      
      override protected function bounce(param1:Enemy) : void
      {
         super.bounce(param1);
         _canStomp = true;
         if(level is TitleLevel)
         {
            param1.stomp();
         }
      }
      
      override protected function changeAppearance(param1:int = -1, param2:int = -1) : void
      {
         super.changeAppearance(param1,param2);
         if(appearanceNum == APPEARANCE_NUM_SMALL)
         {
            SKIN_PREVIEW_SIZE.x = SKIN_PREVIEW_SIZE_SMALL.x;
            SKIN_PREVIEW_SIZE.y = SKIN_PREVIEW_SIZE_SMALL.y;
         }
         else
         {
            SKIN_PREVIEW_SIZE.x = SKIN_PREVIEW_SIZE_BIG.x;
            SKIN_PREVIEW_SIZE.y = SKIN_PREVIEW_SIZE_BIG.y;
         }
      }
   }
}
