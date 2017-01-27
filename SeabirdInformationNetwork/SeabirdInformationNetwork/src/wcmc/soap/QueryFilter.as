/**
 * QueryFilter.as
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
    
    public class QueryFilter
    {
        /**
         * Constructor, initializes the type class
         */
public function QueryFilter() {}
                
                   public var SubFields:String;
                   public var WhereClause:String;
                   public var SpatialReferenceFieldName:String;
                   public var Resolution:Number;
                   public var OutputSpatialReference:wcmc.soap.SpatialReference;
                   public var FIDSet:wcmc.soap.FIDSet;
                   public var PostfixClause:String;
                   public var FilterDefs:wcmc.soap.ArrayOfFilterDef;
           	}
      	 }