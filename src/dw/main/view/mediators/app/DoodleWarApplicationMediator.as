package dw.main.view.mediators.app
{
	import dw.main.controller.constants.MainNotifications;
	
	import org.puremvc.as3.multicore.patterns.mediator.Mediator;
	
	public class DoodleWarApplicationMediator extends Mediator
	{
		/**
		 * 
		 */
		
		public static const NAME : String = "DoodleWarMediator";
		
		/**
		 * 
		 */
		
		public function DoodleWarApplicationMediator( app : DoodleWarApplication )
		{
			super( NAME, app );
		}
		
		
		/**
		 * 
		 */
		
		public function get app() :DoodleWarApplication
		{
			return viewComponent as DoodleWarApplication;
		}
		
		/**
		 * 
		 */
		
		override public function onRegister() :void
		{
			var mainStageMediator : MainStageMediator = new MainStageMediator( app.stage );
			facade.registerMediator( mainStageMediator );
			
			sendNotification( MainNotifications.START_GAME_ENGINE );
		}
		
		/**
		 * 
		 */
		
		override public function onRemove() :void
		{
			facade.removeMediator( MainStageMediator.NAME );
		}
	}
}