/**
 * Field.as
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
    
    public class Field
    {
        /**
         * Constructor, initializes the type class
         */
public function Field() {}
                
                   public var Name:String;
                   public var Type:wcmc.soap.EsriFieldType;
                   public var IsNullable:Boolean;
                   public var Length:Number;
                   public var Precision:Number;
                   public var Scale:Number;
                   public var Required:Boolean;
                   public var Editable:Boolean;
                   public var DomainFixed:Boolean;
                   public var GeometryDef:wcmc.soap.GeometryDef;
                   public var AliasName:String;
                   public var ModelName:String;
                   public var DefaultValue:Object;
                   public var Domain:wcmc.soap.Domain;
                   public var RasterDef:wcmc.soap.RasterDef;
           	}
      	 }