/**
 * PolygonN.as
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
    
    public class PolygonN extends wcmc.soap.Polygon
    {
        /**
         * Constructor, initializes the type class
         */
public function PolygonN() {}
                
                   public var HasID:Boolean;
                   public var HasZ:Boolean;
                   public var HasM:Boolean;
                   public var Extent:wcmc.soap.Envelope;
                   public var RingArray:wcmc.soap.ArrayOfRing;
                   public var SpatialReference:wcmc.soap.SpatialReference;
           	}
      	 }