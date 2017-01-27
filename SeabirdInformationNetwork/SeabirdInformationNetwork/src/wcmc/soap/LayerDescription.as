/**
 * LayerDescription.as
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
    
    public class LayerDescription extends wcmc.soap.MapTableDescription
    {
        /**
         * Constructor, initializes the type class
         */
public function LayerDescription() {}
                
                   public var LayerID:Number;
                   public var Visible:Boolean;
                   public var ShowLabels:Boolean;
                   public var ScaleSymbols:Boolean;
                   public var SelectionFeatures:wcmc.soap.ArrayOfInt;
                   public var SelectionColor:wcmc.soap.Color;
                   public var SelectionSymbol:wcmc.soap.Symbol;
                   public var SetSelectionSymbol:Boolean;
                   public var SelectionBufferDistance:Number;
                   public var ShowSelectionBuffer:Boolean;
                   public var DefinitionExpression:String;
                   public var SourceID:String;
                   public var SelectionBufferSymbol:wcmc.soap.FillSymbol;
                   public var LayerResultOptions:wcmc.soap.LayerResultOptions;
                   public var UseTime:Boolean;
                   public var TimeDataCumulative:Boolean;
                   public var TimeOffset:Number;
                   public var TimeOffsetUnits:wcmc.soap.EsriTimeUnits;
           	}
      	 }