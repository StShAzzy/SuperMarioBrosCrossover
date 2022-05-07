package com.smbc.messageBoxes
{
   import com.explodingRabbit.cross.games.Game;
   import com.explodingRabbit.display.CustomMovieClip;
   import com.smbc.data.GameSettings;
   import com.smbc.data.MusicType;
   import com.smbc.data.SoundNames;
   import com.smbc.graphics.GridItem;
   import com.smbc.graphics.skins.BmdInfo;
   import com.smbc.graphics.skins.BmdSkinCont;
   import com.smbc.main.GlobVars;
   import com.smbc.managers.GraphicsManager;
   import com.smbc.managers.SoundManager;
   import flash.display.Bitmap;
   
   public class MapSkinMenu extends GridMenuBox
   {
      
      private static const SPACE_BETWEEN_ITEMS:int = 8;
       
      
      public function MapSkinMenu()
      {
         super();
      }
      
      override public function initiate() : void
      {
         super.initiate();
         this.setSelection(getItemFromSkinNum(GameSettings.getMapSkinLimited()),false);
      }
      
      override protected function setUpBorder() : void
      {
         spaceBetweenItemsX = SPACE_BETWEEN_ITEMS;
         spaceBetweenItemsY = SPACE_BETWEEN_ITEMS;
         itemWidth = BmdInfo.MAP_SKIN_PREVIEW_RECTANGLE.width * GlobVars.SCALE + GlobVars.SCALE * 2;
         itemHeight = BmdInfo.MAP_SKIN_PREVIEW_RECTANGLE.height * GlobVars.SCALE + GlobVars.SCALE * 2;
         super.setUpBorder();
      }
      
      override protected function setUpBitmaps() : void
      {
         var _loc3_:CustomMovieClip = null;
         var _loc4_:GridItem = null;
         var _loc1_:Vector.<CustomMovieClip> = BmdInfo.getMapSkinPreviews();
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            _loc3_ = _loc1_[_loc2_];
            (_loc4_ = new GridItem()).image = _loc3_;
            _loc4_.borderImage = new Bitmap(border);
            _loc4_.skinNum = items.length;
            items.push(_loc4_);
            _loc2_++;
         }
         this.sortItems();
      }
      
      override protected function sortItems() : void
      {
         var _loc4_:int = 0;
         var _loc1_:Vector.<int> = Vector.<int>(BmdInfo.MAIN_SKIN_ORDER);
         var _loc2_:Vector.<GridItem> = new Vector.<GridItem>();
         var _loc3_:GraphicsManager = GraphicsManager.INSTANCE;
         for each(_loc4_ in _loc1_)
         {
            if(_loc3_.skinIsActive(_loc3_.CLEAN_BMD_VEC_MAP[_loc4_]))
            {
               _loc2_.push(getItemFromSkinNum(_loc4_));
            }
         }
         items = _loc2_;
      }
      
      override protected function setSelection(param1:GridItem, param2:Boolean = true) : void
      {
         super.setSelection(param1,param2);
         updateText();
      }
      
      override protected function generateTopText() : String
      {
         var _loc1_:Game = GraphicsManager.INSTANCE.CLEAN_BMD_VEC_MAP[currentItem.skinNum].games[BmdSkinCont.IND_GAME_SOURCE];
         if(_loc1_.shortName != null)
         {
            return _loc1_.shortName;
         }
         return _loc1_.fullName;
      }
      
      override protected function setUpText() : void
      {
         bottomTfc = null;
         super.setUpText();
      }
      
      override public function pressJmpBtn() : void
      {
         GameSettings.changeMapSkin(currentItem.skinNum,false);
         if(characterSelect)
         {
            nextMsgBxToCreate = new CharacterSelectBox();
            SoundManager.SND_MNGR.changeMusic(MusicType.CHAR_SEL);
         }
         else
         {
            nextMsgBxToCreate = new GraphicsOptions(GraphicsOptions.lastIndex);
         }
         SoundManager.SND_MNGR.playSoundNow(SoundNames.SFX_GAME_COIN);
         cancel();
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
         SoundManager.SND_MNGR.playSoundNow(SoundNames.SFX_GAME_HIT_CEILING);
         cancel();
      }
   }
}
