package wcmc.classes
{
	import flash.events.Event;
/**
* This class is the definition for a custom event which occurs when the base map is changed.
*/ 
	public class ChangeBaseMapEvent extends Event
	{
		/**
		 * Called when the user changes the base map. 
		 * @param type The name of the ChangeBaseMapEvent.
		 * @param _newBaseMap The name of the base map as given in the EnumBaseMap enumeration.
		 * @see EnumBaseMap
		 */		
		public function ChangeBaseMapEvent(type:String,_newBaseMap:String)
		{
			super(type,true);
			newBaseMap=_newBaseMap;
		}		
	    override public function clone():Event 
	    {
	        return new ChangeBaseMapEvent(type,newBaseMap);
	    }
	    /**
	     * The name of the base map as given in the EnumBaseMap enumeration.
	     */	    
	    public var newBaseMap:String;
	}
}