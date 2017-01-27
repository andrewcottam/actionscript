/**
 * StandaloneTableDescription.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */

package wcmc.soap{
    import mx.utils.ObjectProxy;
    import flash.utils.ByteArray;
    import mx.rpc.soap.types.*;
    /**
     * Wrapper class for a operation required type
     */
    
    public class StandaloneTableDescription extends wcmc.soap.MapTableDescription
    {
        /**
         * Constructor, initializes the type class
         */
public function StandaloneTableDescription() {}
                
                   public var ID:Number;
                   public var DefinitionExpression:String;
                   public var SourceID:String;
                   public var UseTime:Boolean;
                   public var TimeDataCumulative:Boolean;
                   public var TimeOffset:Number;
                   public var TimeOffsetUnits:wcmc.soap.EsriTimeUnits;
           	}
      	 }