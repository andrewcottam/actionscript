/**
 * MapDescription.as
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
    
    public class MapDescription
    {
        /**
         * Constructor, initializes the type class
         */
public function MapDescription() {}
                
                   public var Name:String;
                   public var MapArea:wcmc.soap.MapArea;
                   public var LayerDescriptions:wcmc.soap.ArrayOfLayerDescription;
                   public var Rotation:Number;
                   public var SpatialReference:wcmc.soap.SpatialReference;
                   public var TransparentColor:wcmc.soap.Color;
                   public var SelectionColor:wcmc.soap.Color;
                   public var BackgroundSymbol:wcmc.soap.FillSymbol;
                   public var CustomGraphics:wcmc.soap.ArrayOfGraphicElement;
                   public var GeoTransformation:wcmc.soap.GeoTransformation;
                   public var TimeReference:wcmc.soap.TimeReference;
                   public var TimeValue:wcmc.soap.TimeValue;
           	}
      	 }