/**
 * GetLegendInfoResultEvent.as
 * This file was auto-generated from WSDL
 * Any change made to this file will be overwritten when the code is re-generated.
*/
package wcmc.soap
{
    import mx.utils.ObjectProxy;
    import flash.events.Event;
    import flash.utils.ByteArray;
    import mx.rpc.soap.types.*;
    /**
     * Typed event handler for the result of the operation
     */
    
    public class GetLegendInfoResultEvent extends Event
    {
        /**
         * The event type value
         */
        public static var GetLegendInfo_RESULT:String="GetLegendInfo_result";
        /**
         * Constructor for the new event type
         */
        public function GetLegendInfoResultEvent()
        {
            super(GetLegendInfo_RESULT,false,false);
        }
        
        private var _headers:Object;
        private var _result:ArrayOfMapServerLegendInfo;
         public function get result():ArrayOfMapServerLegendInfo
        {
            return _result;
        }
        
        public function set result(value:ArrayOfMapServerLegendInfo):void
        {
            _result = value;
        }

        public function get headers():Object
	    {
            return _headers;
	    }
			
	    public function set headers(value:Object):void
	    {
            _headers = value;
	    }
    }
}