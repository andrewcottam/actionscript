/* file			identifypointcreatedevent.as
date			oct 2009
author			andrew cottam
description		this file is the definition for a custom event which occurs when the an identify point has been created
properties		latLng - the lat/long coordinate of the identify point
 */
package wcmc.classes
{
	import com.google.maps.LatLng;
	import flash.events.Event;
	import flash.geom.Point;
	public class IdentifyPointCreatedEvent extends Event
	{
		public function IdentifyPointCreatedEvent(type:String, _LatLng:LatLng,bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			latLng=_LatLng;
		}
		[Bindable]public var latLng:LatLng;
	    override public function clone():Event 
	    {
	        return new IdentifyPointCreatedEvent(type,latLng);
	    }
	}
}