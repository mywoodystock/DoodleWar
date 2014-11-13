package
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	
	import dw.main.MainFacade;
	import dw.main.controller.constants.MainNotifications;
	
	import starling.core.Starling;
	
	public class DoodleWarApplication extends Sprite
	{
		/**
		 * 
		 */
		
		protected var _mainFacade:MainFacade;
		
		/**
		 * 
		 */
		
		protected var _starling:Starling;
		
		/**
		 * 
		 */
		
		public function DoodleWarApplication()
		{
			super();
			
			initStage();
			initMainFacade();
			initStarling();
			
			_mainFacade.startup( this );
			
		}
		
		/**
		 * 
		 */
		
		protected function initStage() :void
		{
			// support autoOrients
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
		}
		
		/**
		 * 
		 */
		
		protected function initMainFacade() :void
		{
			_mainFacade = MainFacade.getInstance();
		}
		
		/**
		 * 
		 */
		
		protected function initStarling() :void
		{
			log( _starling );
		}
	}
}