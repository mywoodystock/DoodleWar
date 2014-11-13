package
{
	import com.mw.logger.Logger;
	
	/**
	 * 
	 */
	
	public function log( message : String , sender : Object = null ) :void
	{
		var logger:Logger = Logger.getInstance();
		
		logger.log( message, sender );
	}
}