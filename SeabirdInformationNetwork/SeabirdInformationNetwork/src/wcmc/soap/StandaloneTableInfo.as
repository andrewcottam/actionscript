/**
 * StandaloneTableInfo.as
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
    
    public class StandaloneTableInfo extends wcmc.soap.MapTableInfo
    {
        /**
         * Constructor, initializes the type class
         */
public function StandaloneTableInfo() {}
                
                   public var ID:Number;
                   public var Name:String;
                   public var Fields:wcmc.soap.Fields;
                   public var RelateInfos:wcmc.soap.ArrayOfRelateInfo;
                   public var SubtypeFieldName:String;
                   public var DefaultSubtypeCode:Number;
                   public var SubtypeInfos:wcmc.soap.ArrayOfSubtypeInfo;
                   public var SupportsTime:Boolean;
                   public var StartTimeFieldName:String;
                   public var EndTimeFieldName:String;
                   public var TimeValueFormat:String;
                   public var TrackIDFieldName:String;
                   public var TimeReference:wcmc.soap.TimeReference;
                   public var FullTimeExtent:wcmc.soap.TimeExtent;
                   public var TimeInterval:Number;
                   public var TimeIntervalUnits:wcmc.soap.EsriTimeUnits;
           	}
      	 }