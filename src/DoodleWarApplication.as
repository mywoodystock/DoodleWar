package
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	
	import dw.main.MainFacade;
	import dw.main.controller.constants.MainNotifications;
	
	public class DoodleWarApplication extends Sprite
	{
		/**
		 * 
		 */
		
		protected var _mainFacade:MainFacade;
		
		/**
		 * 
		 */
		
		public function DoodleWarApplication()
		{
			super();
			
			initStage();
			initMainFacade();
			
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
	}
}