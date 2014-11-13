package dw.main.controller.commands.startup
{
	import dw.main.view.mediators.app.DoodleWarApplicationMediator;
	
	import org.puremvc.as3.multicore.interfaces.INotification;
	import org.puremvc.as3.multicore.patterns.command.SimpleCommand;

	public class MainStartUpCommand extends SimpleCommand
	{
		override public function execute(notification:INotification):void
		{
			super.execute(notification);
			
			var app:DoodleWarApplication = notification.getBody() as DoodleWarApplication;
			
			var appMediator:DoodleWarApplicationMediator = new DoodleWarApplicationMediator( app );
			facade.registerMediator( appMediator );
		}
	}
}