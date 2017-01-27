/* file			toolstartevent.as
date			oct 2009
author			andrew cottam
description		this file is the definition for a custom event which occurs when a tool stops
 */
package wcmc.classes
{
	import flash.events.Event;

	public class ToolStopEvent extends Event
	{
		public function ToolStopEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
	}
}