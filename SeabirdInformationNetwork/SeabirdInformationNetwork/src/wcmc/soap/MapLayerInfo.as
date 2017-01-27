/**
 * MapLayerInfo.as
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
    
    public class MapLayerInfo extends wcmc.soap.MapTableInfo
    {
        /**
         * Constructor, initializes the type class
         */
public function MapLayerInfo() {}
                
                   public var LayerID:Number;
                   public var Name:String;
                   public var Description:String;
                   public var LayerType:String;
                   public var SourceDescription:String;
                   public var HasLabels:Boolean;
                   public var CanSelect:Boolean;
                   public var CanScaleSymbols:Boolean;
                   public var MinScale:Number;
                   public var MaxScale:Number;
                   public var Extent:wcmc.soap.Envelope;
                   public var HasHyperlinks:Boolean;
                   public var HasAttributes:Boolean;
                   public var CanIdentify:Boolean;
                   public var CanFind:Boolean;
                   public var IsFeatureLayer:Boolean;
                   public var Fields:wcmc.soap.Fields;
                   public var DisplayField:String;
                   public var IDField:String;
                   public var IsComposite:Boolean;
                   public var SubLayerIDs:wcmc.soap.ArrayOfInt;
                   public var ParentLayerID:Number;
                   public var FieldAliases:wcmc.soap.ArrayOfString;
                   public var CopyrightText:String;
                   public var RelateInfos:wcmc.soap.ArrayOfRelateInfo;
                   public var SubtypeFieldName:String;
                   public var DefaultSubtypeCode:Number;
                   public var SubtypeInfos:wcmc.soap.ArrayOfSubtypeInfo;
                   public var SupportsTime:Boolean;
                   public var StartTimeFieldName:String;
                   public var EndTimeFieldName:String;
                   public var TimeValueFormat:String;
                   public var TrackIDFieldName:String;
                   public var TimeReference:wcmc.soap.TimeReference;
                   public var FullTimeExtent:wcmc.soap.TimeExtent;
                   public var TimeInterval:Number;
                   public var TimeIntervalUnits:wcmc.soap.EsriTimeUnits;
           	}
      	 }