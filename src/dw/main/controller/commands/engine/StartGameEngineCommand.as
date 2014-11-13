package dw.main.controller.commands.engine
{
	import org.puremvc.as3.multicore.interfaces.INotification;
	import org.puremvc.as3.multicore.patterns.command.SimpleCommand;
	
	public class StartGameEngineCommand extends SimpleCommand
	{
		override public function execute(notification:INotification):void
		{
			super.execute( notification );
			
			
		}
	}
}