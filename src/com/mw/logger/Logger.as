package com.mw.logger
{
	import flash.utils.getQualifiedClassName;

	public class Logger
	{
		private static const WITHOUT_SENDER_POINT 	: String = "-";
		private static const WITH_SENDER_POINT 		: String = ">";
		
		private static const SENDER_NAME_PREFIX		: String = "[";
		private static const SENDER_NAME_POSTFIX	: String = "]";
		
		/**
		 * 
		 */
		
		protected static var _instance:Logger;
		
		
		/**
		 * 
		 */
		
		public static function getInstance() : Logger
		{
			if ( _instance == null )
			{
				_instance = new Logger();
			}
			
			return _instance;
		}
		
		protected var _lastSenderName:String;
		
		public function Logger()
		{}
		
		
		/**
		 * 
		 */
		
		public function log( message : String , sender : Object = null ) :void
		{
			if ( sender == null)
			{
				traceWithoutSender( message );
				
				_lastSenderName = null;
			}
			else
			{
				var newSenderName : String = getQualifiedClassName( sender );
				if ( _lastSenderName == newSenderName )
				{
					traceWithSameSender( message );
				}
				else
				{
					traceWithNewSender( newSenderName, message );
					
					_lastSenderName = newSenderName;
				}
			}
		}
		
		
		protected function traceWithoutSender( message : String ) :void
		{
			trace(" ");
			trace(WITHOUT_SENDER_POINT + " " + message );
			trace(" ");
		}
		
		protected function traceWithSameSender( message : String ) :void
		{
			trace(WITH_SENDER_POINT + " " + message);
		}
		
		protected function traceWithNewSender( newSenderName : String, message : String ) :void
		{
			trace(SENDER_NAME_PREFIX + newSenderName + SENDER_NAME_POSTFIX);
			trace(WITH_SENDER_POINT + " " + message);
		}
	}
}