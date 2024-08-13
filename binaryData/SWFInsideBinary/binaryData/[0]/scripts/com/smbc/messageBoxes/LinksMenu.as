package com.smbc.messageBoxes
{
   import com.smbc.data.OnlineData;
   import com.smbc.events.CustomEvents;
   import com.smbc.text.TextFieldContainer;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class LinksMenu extends MenuBox
   {
      
      public static const YOUTUBE_URL:String = "http://www.youtube.com/TheExplodingRabbit";
      
      public static const TWITTER_URL:String = "http://www.twitter.com/ExplodingRabbit";
      
      public static const FACEBOOK_URL:String = "http://www.facebook.com/ExplodingRabbit";
      
      public static const GOOGLE_PLUS_URL:String = "https://plus.google.com/+explodingrabbit/";
      
      private static const LINKS_SEP:String = "()";
       
      
      private var strVec:Vector.<String>;
      
      private const NORMAL_IND:int = 2;
      
      private var links:Vector.<String>;
      
      private var names:Array;
      
      public function LinksMenu()
      {
         this.strVec = new Vector.<String>();
         super(this.loadItems(),0,NaN,false,"Each item will open in \\n a new browser window.");
         this.strVec = null;
         numItemsThatFitOnScreen = 7;
      }
      
      private function loadItems() : Array
      {
         if(this.names == null)
         {
            this.initiateData();
         }
         var _loc1_:Array = this.names;
         _loc1_.push([MenuBoxItems.BACK_TO_MAIN_MENU]);
         return _loc1_;
      }
      
      private function initiateData() : void
      {
         this.links = OnlineData.links;
         this.names = [];
         var _loc1_:int = int(this.links.indexOf(OnlineData.WEBSITE_LINK_REPLACEMENT_STRING));
         if(_loc1_ >= 0)
         {
            if(OnlineData.newVersionAvailable)
            {
               this.links[_loc1_] = MenuBoxItems.PLAY_NEW_VERSION;
               this.links[_loc1_ + 1] = OnlineData.gameUrl;
            }
            else if(OnlineData.onOfficialWebsite)
            {
               this.links.splice(_loc1_,2);
            }
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.links.length)
         {
            if(_loc2_ % 2 == 0)
            {
               this.names.push([this.links[_loc2_]]);
            }
            _loc2_++;
         }
      }
      
      override protected function chooseItem(param1:String, param2:String, param3:TextFieldContainer, param4:int) : void
      {
         var _loc5_:int = 0;
         if(param1 == MenuBoxItems.BACK_TO_MAIN_MENU)
         {
            if(!nextMsgBxToCreate)
            {
               MSG_BX_MNGR.writeNextMainMenu(this);
            }
            cancel();
         }
         else
         {
            _loc5_ = int(this.links.indexOf(param1));
            navigateToURL(new URLRequest(this.links[_loc5_ + 1]),PlainMessageMenuBox.BLANK_PAGE);
         }
         SND_MNGR.playSoundNow(MessageBoxSounds.SN_CHOOSE_ITEM);
         dispatchEvent(new Event(CustomEvents.MSG_BX_CHOOSE_ITEM + param1));
      }
      
      override public function pressAtkBtn() : void
      {
         MSG_BX_MNGR.writeNextMainMenu(this);
         cancel();
         SND_MNGR.playSoundNow(SN_CANCEL_ITEM);
      }
   }
}
