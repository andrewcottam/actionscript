/**
 * RelateDescription.as
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
    
    public class RelateDescription
    {
        /**
         * Constructor, initializes the type class
         */
public function RelateDescription() {}
                
                   public var RelationshipID:Number;
                   public var RelatedTableDefinitionExpression:String;
                   public var RelatedTableFields:String;
                   public var OutputSpatialReference:wcmc.soap.SpatialReference;
                   public var GeoTransformation:wcmc.soap.GeoTransformation;
                   public var IncludeGeometry:Boolean;
                   public var GeometryResultOptions:wcmc.soap.GeometryResultOptions;
                   public var ResultFormat:wcmc.soap.EsriRelateResultFormat;
           	}
      	 }