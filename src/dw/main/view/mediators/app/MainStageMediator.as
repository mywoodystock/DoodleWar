package dw.main.view.mediators.app
{
	import flash.display.Stage;
	
	import org.puremvc.as3.multicore.patterns.mediator.Mediator;
	
	public class MainStageMediator extends Mediator
	{
		/**
		 * 
		 */
		
		public static const NAME : String = "MainStageMediator";
		
		/**
		 * 
		 */
		
		public function MainStageMediator( stage : Stage )
		{
			super( NAME, stage );
		}
		
		/**
		 * 
		 */
		
		public function get stage() :Stage
		{
			return viewComponent as Stage;
		}
	}
}