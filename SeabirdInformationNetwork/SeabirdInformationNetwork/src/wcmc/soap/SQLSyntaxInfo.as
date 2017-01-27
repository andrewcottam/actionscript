/**
 * SQLSyntaxInfo.as
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
    
    public class SQLSyntaxInfo
    {
        /**
         * Constructor, initializes the type class
         */
public function SQLSyntaxInfo() {}
                
                   public var FunctionNames:wcmc.soap.PropertySet;
                   public var SpecialCharacters:wcmc.soap.PropertySet;
                   public var SupportedPredicates:wcmc.soap.ArrayOfString;
                   public var SupportedClauses:wcmc.soap.ArrayOfString;
                   public var IdentifierCase:Boolean;
                   public var DelimitedIdentifierCase:Boolean;
                   public var StringComparisonCase:Boolean;
                   public var Keywords:wcmc.soap.ArrayOfString;
                   public var InvalidCharacters:String;
                   public var InvalidStartingCharacters:String;
           	}
      	 }