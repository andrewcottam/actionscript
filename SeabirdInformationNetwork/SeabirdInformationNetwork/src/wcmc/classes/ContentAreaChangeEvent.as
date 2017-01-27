/* file			userchangedcontentareaevent.as
date			oct 2009
author			andrew cottam
description		this file is the definition for a custom event which occurs when a user changes the content area and is widely used in the application
				to control navigation and which content box is loaded into the content box contained
properties		state - the state that the application should load - this corresponds to a content box, e.g. if the state is ToolSpeciesDistribution then the speciesdistribution content box will be loaded
				parameter - the parameter that is passed to the content box - this controls the content, e.g. if it is a species content box then a parameter value of BLGM will load data for black guillemot				
 */
package wcmc.classes
{
	import flash.events.Event;
	public class ContentAreaChangeEvent extends Event
	{
		public var state:String;
		public var parameter:String;
		public function ContentAreaChangeEvent(type:String, _state:String, _parameter:String="-1")
		{
			super(type,true);
			state = _state;
			parameter = _parameter;
		}
        override public function clone():Event 
        {
            return new ContentAreaChangeEvent(type, state, parameter);
        }
	}
}