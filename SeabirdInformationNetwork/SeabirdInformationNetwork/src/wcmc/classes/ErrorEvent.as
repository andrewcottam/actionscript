/* file			errorevent.as
date			oct 2009
author			andrew cottam
description		custom event class used to fire user-defined error messages
*/
package wcmc.classes
{
	import flash.events.Event;

	public class ErrorEvent extends Event
	{
		public function ErrorEvent(type:String, description:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			ErrorDescription = description;
		}
		public var ErrorDescription:String;
	}
}