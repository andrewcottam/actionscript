/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - IWCUserServices.as.
 */
package services.iwcuserservices
{
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.services.wrapper.WebServiceWrapper;
import com.adobe.serializers.utility.TypeUtility;
import mx.rpc.AbstractOperation;
import mx.rpc.AsyncToken;
import mx.rpc.soap.mxml.Operation;
import mx.rpc.soap.mxml.WebService;

[ExcludeClass]
internal class _Super_IWCUserServices extends com.adobe.fiber.services.wrapper.WebServiceWrapper
{
    
    // Constructor
    public function _Super_IWCUserServices()
    {
        // initialize service control
        _serviceControl = new mx.rpc.soap.mxml.WebService();
        var operations:Object = new Object();
        var operation:mx.rpc.soap.mxml.Operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "RegisterUser");
         operation.resultType = String;
        operations["RegisterUser"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "GetRoles");
         operation.resultElementType = String;
        operations["GetRoles"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "ValidateUser");
         operation.resultType = Boolean;
        operations["ValidateUser"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "GetUser");
         operation.resultType = String;
        operations["GetUser"] = operation;

        _serviceControl.operations = operations;
        try
        {
            _serviceControl.convertResultHandler = com.adobe.serializers.utility.TypeUtility.convertResultHandler;
        }
        catch (e: Error)
        { /* Flex 3.4 and earlier does not support the convertResultHandler functionality. */ }


        preInitializeService();
        model_internal::initialize();
    }
    
    //init initialization routine here, child class to override
    protected function preInitializeService():void
    {


        _serviceControl.service = "IWCUserServices";
        _serviceControl.port = "IWCUserServicesSoap";
        wsdl = "http://dev.unep-wcmc.org/iwc/IWCSecurityWebServices/IWCUserServices.asmx?wsdl";
        model_internal::loadWSDLIfNecessary();
    }
    

    /**
      * This method is a generated wrapper used to call the 'RegisterUser' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function RegisterUser(username:String, password:String, email:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("RegisterUser");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(username,password,email) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'GetRoles' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function GetRoles(username:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("GetRoles");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(username) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'ValidateUser' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function ValidateUser(username:String, password:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("ValidateUser");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(username,password) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'GetUser' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function GetUser(username:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("GetUser");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(username) ;
        return _internal_token;
    }
     
}

}
