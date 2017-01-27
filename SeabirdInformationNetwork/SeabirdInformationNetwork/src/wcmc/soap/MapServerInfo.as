/**
 * MapServerInfo.as
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
    
    public class MapServerInfo
    {
        /**
         * Constructor, initializes the type class
         */
public function MapServerInfo() {}
                
                   public var Name:String;
                   public var Description:String;
                   public var FullExtent:wcmc.soap.Envelope;
                   public var Extent:wcmc.soap.Envelope;
                   public var SpatialReference:wcmc.soap.SpatialReference;
                   public var MapLayerInfos:wcmc.soap.ArrayOfMapLayerInfo;
                   public var BackgroundColor:wcmc.soap.Color;
                   public var Bookmarks:wcmc.soap.ArrayOfMapServerBookmark;
                   public var DefaultMapDescription:wcmc.soap.MapDescription;
                   public var Units:wcmc.soap.EsriUnits;
                   public var SupportedImageReturnTypes:wcmc.soap.EsriImageReturnType;
                   public var BackgroundSymbol:wcmc.soap.FillSymbol;
                   public var CopyrightText:String;
                   public var StandaloneTableInfos:wcmc.soap.ArrayOfStandaloneTableInfo;
                   public var StandaloneTableDescriptions:wcmc.soap.ArrayOfStandaloneTableDescription;
                   public var FullTimeExtent:wcmc.soap.TimeExtent;
           	}
      	 }