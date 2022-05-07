package com.smbc.messageBoxes
{
   import com.explodingRabbit.cross.games.Game;
   import com.explodingRabbit.display.CustomMovieClip;
   import com.smbc.characters.Character;
   import com.smbc.data.CharacterInfo;
   import com.smbc.data.SoundNames;
   import com.smbc.graphics.GridItem;
   import com.smbc.graphics.skins.BmdSkinCont;
   import com.smbc.level.Level;
   import com.smbc.main.GlobVars;
   import com.smbc.managers.GraphicsManager;
   import com.smbc.managers.SoundManager;
   import flash.display.Bitmap;
   import flash.geom.Point;
   
   public class CharacterSkinMenu extends GridMenuBox
   {
       
      
      private var charNum:int;
      
      private var player:Character;
      
      private var initialSkinNum:int;
      
      private var skinDescriptionBox:SkinDescriptionBox;
      
      public function CharacterSkinMenu(param1:int)
      {
         this.charNum = param1;
         super();
         if(Level.levelInstance != null)
         {
            this.player = Level.levelInstance.player;
         }
         this.initialSkinNum = STAT_MNGR.getCharSkinNum(param1);
      }
      
      override protected function setUpBorder() : void
      {
         var _loc1_:Point = null;
         _loc1_ = Character.getSkinPreviewSize(this.charNum);
         itemWidth = _loc1_.x + GlobVars.SCALE * 2;
         itemHeight = _loc1_.y + GlobVars.SCALE * 2;
         super.setUpBorder();
      }
      
      override protected function setUpBitmaps() : void
      {
         var _loc1_:CustomMovieClip = null;
         var _loc2_:GridItem = null;
         for each(_loc1_ in Character.getSkinPreviews(this.charNum))
         {
            _loc2_ = new GridItem();
            _loc2_.image = _loc1_;
            _loc2_.borderImage = new Bitmap(border);
            _loc2_.skinNum = items.length;
            items.push(_loc2_);
         }
         this.sortItems();
      }
      
      override public function initiate() : void
      {
         super.initiate();
         this.skinDescriptionBox = new SkinDescriptionBox();
         this.skinDescriptionBox.initiate();
         this.setSelection(getItemFromSkinNum(this.player.skinNum),false);
      }
      
      override protected function setSelection(param1:GridItem, param2:Boolean = true) : void
      {
         if(currentItem != null)
         {
            currentItem.image.visible = true;
         }
         super.setSelection(param1,param2);
         if(this.player != null)
         {
            if(param2)
            {
               GraphicsManager.INSTANCE.changeCharacterSkin(this.player,currentItem.skinNum);
            }
         }
         updateText();
         this.skinDescriptionBox.updateText();
      }
      
      override protected function sortItems() : void
      {
         var _loc4_:int = 0;
         var _loc1_:Vector.<int> = Character.getSkinOrderVec(this.charNum);
         var _loc2_:Vector.<GridItem> = new Vector.<GridItem>();
         var _loc3_:GraphicsManager = GraphicsManager.INSTANCE;
         for each(_loc4_ in _loc1_)
         {
            if(_loc3_.skinIsActive(_loc3_.CLEAN_BMC_VEC_CHARACTER[this.charNum][_loc4_]))
            {
               _loc2_.push(getItemFromSkinNum(_loc4_));
            }
         }
         items = _loc2_;
      }
      
      override protected function generateTopText() : String
      {
         var _loc1_:String = STAT_MNGR.getSkinName(true);
         if(_loc1_ == null)
         {
            _loc1_ = CharacterInfo.CHAR_ARR[this.charNum][CharacterInfo.IND_CHAR_NAME_FULL];
         }
         return _loc1_;
      }
      
      override protected function generateBottomText() : String
      {
         var _loc1_:Game = STAT_MNGR.getCurrentBmc(this.charNum).games[BmdSkinCont.IND_GAME_SOURCE];
         if(_loc1_.shortName != null)
         {
            return _loc1_.shortName;
         }
         return _loc1_.fullName;
      }
      
      override public function pressJmpBtn() : void
      {
         if(characterSelect)
         {
            characterSelect.chooseCharacter(this.charNum);
         }
         else
         {
            nextMsgBxToCreate = new GraphicsOptions(GraphicsOptions.lastIndex);
            SoundManager.SND_MNGR.playSoundNow(SoundNames.SFX_GAME_COIN);
            SoundManager.SND_MNGR.changeMusicOnResumeGame = true;
         }
         this.cancel();
      }
      
      override public function pressAtkBtn() : void
      {
         if(characterSelect != null)
         {
            nextMsgBxToCreate = new CharacterSelectBox();
         }
         else
         {
            nextMsgBxToCreate = new GraphicsOptions(GraphicsOptions.lastIndex);
         }
         if(currentItem.skinNum != this.initialSkinNum)
         {
            GraphicsManager.INSTANCE.changeCharacterSkin(this.player,this.initialSkinNum);
         }
         SoundManager.SND_MNGR.playSoundNow(SoundNames.SFX_GAME_HIT_CEILING);
         this.cancel();
      }
      
      override public function cancel() : void
      {
         super.cancel();
         if(this.skinDescriptionBox != null)
         {
            this.skinDescriptionBox.cancel();
         }
      }
   }
}
