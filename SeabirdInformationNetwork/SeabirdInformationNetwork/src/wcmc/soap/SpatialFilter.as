/**
 * SpatialFilter.as
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
    
    public class SpatialFilter extends wcmc.soap.QueryFilter
    {
        /**
         * Constructor, initializes the type class
         */
public function SpatialFilter() {}
                
                   public var SearchOrder:wcmc.soap.EsriSearchOrder;
                   public var SpatialRel:wcmc.soap.EsriSpatialRelEnum;
                   public var SpatialRelDescription:String;
                   public var FilterGeometry:wcmc.soap.Geometry;
                   public var GeometryFieldName:String;
                   public var FilterOwnsGeometry:Boolean;
           	}
      	 }