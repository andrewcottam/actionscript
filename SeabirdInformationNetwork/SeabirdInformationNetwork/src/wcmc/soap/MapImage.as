/**
 * MapImage.as
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
    
    public class MapImage
    {
        /**
         * Constructor, initializes the type class
         */
public function MapImage() {}
                
                   public var ImageData:flash.utils.ByteArray;
                   public var ImageURL:String;
                   public var Extent:wcmc.soap.Envelope;
                   public var VisibleLayerIDs:wcmc.soap.ArrayOfInt;
                   public var MapScale:Number;
                   public var ImageHeight:Number;
                   public var ImageWidth:Number;
                   public var ImageDPI:Number;
                   public var ImageType:String;
           	}
      	 }