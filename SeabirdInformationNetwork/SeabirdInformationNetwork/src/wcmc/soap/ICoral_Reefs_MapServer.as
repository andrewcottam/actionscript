
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package wcmc.soap{
	import mx.rpc.AsyncToken;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
               
    public interface ICoral_Reefs_MapServer
    {
    	//Stub functions for the GetLegendInfo operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param MapName
    	 * @param LayerIDs
    	 * @param LegendPatch
    	 * @param ImageType
    	 * @return An AsyncToken
    	 */
    	function getLegendInfo(mapName:String,layerIDs:ArrayOfInt,legendPatch:MapServerLegendPatch,imageType:ImageType):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getLegendInfo_send():AsyncToken;
        
        /**
         * The getLegendInfo operation lastResult property
         */
        function get getLegendInfo_lastResult():ArrayOfMapServerLegendInfo;
		/**
		 * @private
		 */
        function set getLegendInfo_lastResult(lastResult:ArrayOfMapServerLegendInfo):void;
       /**
        * Add a listener for the getLegendInfo operation successful result event
        * @param The listener function
        */
       function addgetLegendInfoEventListener(listener:Function):void;
       
       
        /**
         * The getLegendInfo operation request wrapper
         */
        function get getLegendInfo_request_var():GetLegendInfo_request;
        
        /**
         * @private
         */
        function set getLegendInfo_request_var(request:GetLegendInfo_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseCoral_Reefs_MapServer;
	}
}