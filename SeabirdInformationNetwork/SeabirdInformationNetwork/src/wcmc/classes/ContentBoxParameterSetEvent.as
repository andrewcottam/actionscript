/* file			contentboxparametersetevent.as
date			oct 2009
author			andrew cottam
description		this file is the definition for a custom event which occurs when the content box has its parameter set
				many subclasses of the contentbox class add event handlers to do some custom processing when the parameter has been set, e.g. to load data
 */
package wcmc.classes
{
	import flash.events.Event;
	/**
	 * definition for a custom event which occurs when the content box has its parameter set 
	 * @author andrewcottam
	 * 
	 */	
	public class ContentBoxParameterSetEvent extends Event
	{
		public function ContentBoxParameterSetEvent(type:String)
		{
			super(type);
		}		
	    override public function clone():Event 
	    {
	        return new ContentBoxParameterSetEvent(type);
	    }
	}
}