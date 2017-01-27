/**
 * PictureMarkerSymbol.as
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
    
    public class PictureMarkerSymbol extends wcmc.soap.CartographicMarkerSymbol
    {
        /**
         * Constructor, initializes the type class
         */
public function PictureMarkerSymbol() {}
                
                   public var BgColor:wcmc.soap.Color;
                   public var BitmapTransColor:wcmc.soap.Color;
                   public var Picture:flash.utils.ByteArray;
                   public var PictureUri:String;
                   public var Width:Number;
                   public var FgColor:wcmc.soap.Color;
                   public var Swap1BitColor:Boolean;
           	}
      	 }