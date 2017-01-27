/* file			toolstartevent.as
date			oct 2009
author			andrew cottam
description		this file is the definition for a custom event which occurs when a tool starts
 */
package wcmc.classes
{
	import flash.events.Event;

	public class ToolStartEvent extends Event
	{
		public function ToolStartEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
	}
}