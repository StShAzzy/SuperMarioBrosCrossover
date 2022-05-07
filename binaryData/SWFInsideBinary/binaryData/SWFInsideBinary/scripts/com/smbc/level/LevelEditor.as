package com.smbc.level
{
   import com.smbc.errors.SingletonError;
   import com.smbc.events.CustomEvents;
   import com.smbc.main.GlobVars;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class LevelEditor
   {
      
      public static const INSTANCE:LevelEditor = new LevelEditor();
      
      private static const STG_TOP:int = GlobVars.STAGE_TOP;
      
      private static const STG_BOT:int = GlobVars.STAGE_HEIGHT;
      
      private static const STG_LFT:int = GlobVars.STAGE_LEFT;
      
      private static const STG_RHT:int = GlobVars.STAGE_WIDTH;
      
      private static const TILE_SIZE:int = GlobVars.TILE_SIZE;
       
      
      private const GRID_VEC:Vector.<GridTile> = new Vector.<GridTile>();
      
      private var level:Level;
      
      private var grid:Sprite;
      
      public function LevelEditor()
      {
         super();
         if(INSTANCE)
         {
            throw new SingletonError();
         }
      }
      
      public function enterLevelEditorMode() : void
      {
         this.level = Level.levelInstance;
         this.level.addEventListener(CustomEvents.GAME_LOOP_END,this.gameLoopEndHandler,false,0,true);
         this.level.addEventListener(MouseEvent.CLICK,this.clickHandler,false,0,true);
         this.drawGrid();
      }
      
      public function gameLoopEndHandler(param1:Event) : void
      {
         this.level.addChild(this.grid);
         this.level.setChildIndex(this.grid,this.level.numChildren - 1);
      }
      
      private function clickHandler(param1:MouseEvent) : void
      {
         var _loc2_:Point = this.level.getCurrentGrid(this.level.mouseX,this.level.mouseY);
         var _loc3_:GridTile = param1.target as GridTile;
         _loc3_.clickTile();
      }
      
      private function drawGrid() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:GridTile = null;
         var _loc5_:int = 0;
         this.GRID_VEC.length = 0;
         this.grid = null;
         this.grid = new Sprite();
         while(_loc1_ < this.level.numVertTiles)
         {
            _loc2_ = _loc1_ * TILE_SIZE;
            _loc3_ = 0;
            while(_loc3_ < this.level.numHorzTiles)
            {
               _loc4_ = new GridTile();
               _loc5_ = _loc3_ * TILE_SIZE;
               _loc4_.x = _loc5_;
               _loc4_.y = _loc2_;
               this.grid.addChild(_loc4_);
               this.GRID_VEC.push(_loc4_);
               _loc3_++;
            }
            _loc1_++;
         }
         this.level.addChild(this.grid);
      }
      
      public function getTileAt(param1:int, param2:int) : GridTile
      {
         param1 = this.level.getNearestGrid(param1,-1);
         param2 = this.level.getNearestGrid(param2,-1);
         return this.GRID_VEC[param2 / TILE_SIZE * this.level.numHorzTiles + param1 / TILE_SIZE];
      }
   }
}
