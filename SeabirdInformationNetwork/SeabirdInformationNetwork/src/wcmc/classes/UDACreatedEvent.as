/* file			udacreatedevent.as
date			oct 2009
author			andrew cottam
description		this file is the definition for a custom event which occurs when a user-defined area has been created
properties		geometry - the geometry of the UDA
 */
package wcmc.classes
{
	import com.esri.ags.geometry.Geometry;
	
	import flash.events.Event;

	public class UDACreatedEvent extends Event
	{
		public function UDACreatedEvent(type:String, _geometry:Geometry,bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			geometry=_geometry;
		}
		[Bindable]
		public var geometry:Geometry;
	    override public function clone():Event 
	    {
	        return new UDACreatedEvent(type,geometry);
	    }
	}
}