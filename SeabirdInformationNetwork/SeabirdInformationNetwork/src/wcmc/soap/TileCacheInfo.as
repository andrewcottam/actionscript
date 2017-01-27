/**
 * TileCacheInfo.as
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
    
    public class TileCacheInfo
    {
        /**
         * Constructor, initializes the type class
         */
public function TileCacheInfo() {}
                
                   public var SpatialReference:wcmc.soap.SpatialReference;
                   public var TileOrigin:wcmc.soap.Point;
                   public var TileCols:Number;
                   public var TileRows:Number;
                   public var DPI:Number;
                   public var LODInfos:wcmc.soap.ArrayOfLODInfo;
           	}
      	 }