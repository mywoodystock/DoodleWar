package dw.main
{
	import dw.main.controller.commands.startup.MainStartUpCommand;
	import dw.main.controller.constants.MainNotifications;
	
	import org.puremvc.as3.multicore.interfaces.IMediator;
	import org.puremvc.as3.multicore.interfaces.IProxy;
	import org.puremvc.as3.multicore.patterns.facade.Facade;
	
	public class MainFacade extends Facade
	{
		/**
		 * 
		 */
		
		private static const FACADE_KEY : String = "MainFacade";
		
		
		/**
		 * 
		 */
		
		public static function getInstance() :MainFacade
		{
			if ( instanceMap[ FACADE_KEY] == null )
			{
				instanceMap[ FACADE_KEY ] = new MainFacade();
			}
			
			return instanceMap[ FACADE_KEY ];
		}
		
		
		/**
		 * 
		 */
		
		public function MainFacade()
		{
			log("Create 'MainFacade'");
			
			super( FACADE_KEY );
		}
		
		
		/**
		 * 
		 */
		
		override protected function initializeController() : void
		{
			super.initializeController();
			
			this.registerCommand( MainNotifications.MAIN_START_UP, MainStartUpCommand);
		}
		
		
		/**
		 * 
		 */
		
		override protected function initializeModel() : void
		{
			super.initializeModel();
		}
		
		
		/**
		 * 
		 */
		
		override protected function initializeView() : void
		{
			super.initializeView();
		}
		
		
		/**
		 * 
		 */
		
		override public function registerCommand(notificationName:String, commandClassRef:Class):void
		{
			log("Register command '" + notificationName + "'", this);
			
			super.registerCommand( notificationName, commandClassRef );
		}
		
		
		/**
		 * 
		 */
		
		override public function registerMediator(mediator:IMediator):void
		{
			log("Register mediator '" + mediator.getMediatorName() + "'", this);
			
			super.registerMediator( mediator );
		}
		
		
		/**
		 * 
		 */
		
		override public function registerProxy(proxy:IProxy):void
		{
			log("Register proxy '" + proxy.getProxyName() + "'", this);
			
			super.registerProxy( proxy );
		}
		
		
		/**
		 * 
		 */
		
		override public function removeCommand(notificationName:String):void
		{
			log("Remove command '" + notificationName + "'", this);
			
			super.removeCommand( notificationName );
		}
		
		
		/**
		 * 
		 */
		
		override public function removeMediator( mediatorName : String ) : IMediator
		{
			log("Remove mediator '" + mediatorName + "'", this);
			
			return super.removeMediator( mediatorName );
		}
		
		
		/**
		 * 
		 */
		
		override public function removeProxy(proxyName:String):IProxy
		{
			log("Remove proxy '" + proxyName + "'", this);
			
			return super.removeProxy( proxyName );
		}
		
		
		/**
		 * 
		 */
		
		override public function sendNotification(notificationName:String, body:Object=null, type:String=null):void
		{
			log("Send notification '" + notificationName + "'", this);
			
			super.sendNotification( notificationName, body, type );
		}
		
		
		/**
		 * 
		 */
		
		public function startup( app:DoodleWarApplication ) :void
		{
			this.sendNotification( MainNotifications.MAIN_START_UP, app );
		}
	}
}