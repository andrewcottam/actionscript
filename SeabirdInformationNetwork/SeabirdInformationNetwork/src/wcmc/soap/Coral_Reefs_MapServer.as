
/**
 * Coral_Reefs_MapServerService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
 /**
  * Usage example: to use this service from within your Flex application you have two choices:
  * Use it via Actionscript only
  * Use it via MXML tags
  * Actionscript sample code:
  * Step 1: create an instance of the service; pass it the LCDS destination string if any
  * var myService:Coral_Reefs_MapServer= new Coral_Reefs_MapServer();
  * Step 2: for the desired operation add a result handler (a function that you have already defined previously)  
  * myService.addGetLegendInfoEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.GetLegendInfo(myMapName,myLayerIDs,myLegendPatch,myImageType);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="wcmc.soap.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:Coral_Reefs_MapServer id="myService">
  *   <srv:GetLegendInfo_request_var>
  *		<srv:GetLegendInfo_request MapName=myValue,LayerIDs=myValue,LegendPatch=myValue,ImageType=myValue/>
  *   </srv:GetLegendInfo_request_var>
  * </srv:Coral_Reefs_MapServer>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.GetLegendInfo_send()" />
  */
 package wcmc.soap{
	import mx.rpc.AsyncToken;
	import flash.events.EventDispatcher;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.events.FaultEvent;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;

    /**
     * Dispatches when a call to the operation GetLegendInfo completes with success
     * and returns some data
     * @eventType GetLegendInfoResultEvent
     */
    [Event(name="GetLegendInfo_result", type="wcmc.soap.GetLegendInfoResultEvent")]
    
	/**
	 * Dispatches when the operation that has been called fails. The fault event is common for all operations
	 * of the WSDL
	 * @eventType mx.rpc.events.FaultEvent
	 */
    [Event(name="fault", type="mx.rpc.events.FaultEvent")]

	public class Coral_Reefs_MapServer extends EventDispatcher implements ICoral_Reefs_MapServer
	{
    	private var _baseService:BaseCoral_Reefs_MapServer;
        
        /**
         * Constructor for the facade; sets the destination and create a baseService instance
         * @param The LCDS destination (if any) associated with the imported WSDL
         */  
        public function Coral_Reefs_MapServer(destination:String=null,rootURL:String=null)
        {
        	_baseService = new BaseCoral_Reefs_MapServer(destination,rootURL);
        }
        
		//stub functions for the GetLegendInfo operation
          

        /**
         * @see ICoral_Reefs_MapServer#GetLegendInfo()
         */
        public function getLegendInfo(mapName:String,layerIDs:ArrayOfInt,legendPatch:MapServerLegendPatch,imageType:ImageType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getLegendInfo(mapName,layerIDs,legendPatch,imageType);
            _internal_token.addEventListener("result",_GetLegendInfo_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see ICoral_Reefs_MapServer#GetLegendInfo_send()
		 */    
        public function getLegendInfo_send():AsyncToken
        {
        	return getLegendInfo(_GetLegendInfo_request.MapName,_GetLegendInfo_request.LayerIDs,_GetLegendInfo_request.LegendPatch,_GetLegendInfo_request.ImageType);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _GetLegendInfo_request:GetLegendInfo_request;
		/**
		 * @see ICoral_Reefs_MapServer#GetLegendInfo_request_var
		 */
		[Bindable]
		public function get getLegendInfo_request_var():GetLegendInfo_request
		{
			return _GetLegendInfo_request;
		}
		
		/**
		 * @private
		 */
		public function set getLegendInfo_request_var(request:GetLegendInfo_request):void
		{
			_GetLegendInfo_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _GetLegendInfo_lastResult:ArrayOfMapServerLegendInfo;
		[Bindable]
		/**
		 * @see ICoral_Reefs_MapServer#GetLegendInfo_lastResult
		 */	  
		public function get getLegendInfo_lastResult():ArrayOfMapServerLegendInfo
		{
			return _GetLegendInfo_lastResult;
		}
		/**
		 * @private
		 */
		public function set getLegendInfo_lastResult(lastResult:ArrayOfMapServerLegendInfo):void
		{
			_GetLegendInfo_lastResult = lastResult;
		}
		
		/**
		 * @see ICoral_Reefs_MapServer#addGetLegendInfo()
		 */
		public function addgetLegendInfoEventListener(listener:Function):void
		{
			addEventListener(GetLegendInfoResultEvent.GetLegendInfo_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _GetLegendInfo_populate_results(event:ResultEvent):void
        {
        var e:GetLegendInfoResultEvent = new GetLegendInfoResultEvent();
		            e.result = event.result as ArrayOfMapServerLegendInfo;
		                       e.headers = event.headers;
		             getLegendInfo_lastResult = e.result;
		             dispatchEvent(e);
	        		
		}
		
		//service-wide functions
		/**
		 * @see ICoral_Reefs_MapServer#getWebService()
		 */
		public function getWebService():BaseCoral_Reefs_MapServer
		{
			return _baseService;
		}
		
		/**
		 * Set the event listener for the fault event which can be triggered by each of the operations defined by the facade
		 */
		public function addCoral_Reefs_MapServerFaultEventListener(listener:Function):void
		{
			addEventListener("fault",listener);
		}
		
		/**
		 * Internal function to re-dispatch the fault event passed on by the base service implementation
		 * @private
		 */
		 
		 private function throwFault(event:FaultEvent):void
		 {
		 	dispatchEvent(event);
		 }
    }
}
