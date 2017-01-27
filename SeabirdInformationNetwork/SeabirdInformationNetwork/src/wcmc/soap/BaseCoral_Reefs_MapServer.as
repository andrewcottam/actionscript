
/**
 * BaseCoral_Reefs_MapServerService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package wcmc.soap{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.utils.getDefinitionByName;
	import flash.utils.getQualifiedClassName;
	import mx.controls.treeClasses.DefaultDataDescriptor;
	import mx.utils.ObjectUtil;
	import mx.utils.ObjectProxy;
	import mx.messaging.events.MessageFaultEvent;
	import mx.messaging.MessageResponder;
	import mx.messaging.messages.SOAPMessage;
	import mx.messaging.messages.ErrorMessage;
   	import mx.messaging.ChannelSet;
	import mx.messaging.channels.DirectHTTPChannel;
	import mx.rpc.*;
	import mx.rpc.events.*;
	import mx.rpc.soap.*;
	import mx.rpc.wsdl.*;
	import mx.rpc.xml.*;
	import mx.rpc.soap.types.*;
	import mx.collections.ArrayCollection;
	
	/**
	 * Base service implementation, extends the AbstractWebService and adds specific functionality for the selected WSDL
	 * It defines the options and properties for each of the WSDL's operations
	 */ 
	public class BaseCoral_Reefs_MapServer extends AbstractWebService
    {
		private var results:Object;
		private var schemaMgr:SchemaManager;
		private var BaseCoral_Reefs_MapServerService:WSDLService;
		private var BaseCoral_Reefs_MapServerPortType:WSDLPortType;
		private var BaseCoral_Reefs_MapServerBinding:WSDLBinding;
		private var BaseCoral_Reefs_MapServerPort:WSDLPort;
		private var currentOperation:WSDLOperation;
		private var internal_schema:BaseCoral_Reefs_MapServerSchema;
	
		/**
		 * Constructor for the base service, initializes all of the WSDL's properties
		 * @param [Optional] The LCDS destination (if available) to use to contact the server
		 * @param [Optional] The URL to the WSDL end-point
		 */
		public function BaseCoral_Reefs_MapServer(destination:String=null, rootURL:String=null)
		{
			super(destination, rootURL);
			if(destination == null)
			{
				//no destination available; must set it to go directly to the target
				this.useProxy = false;
			}
			else
			{
				//specific destination requested; must set proxying to true
				this.useProxy = true;
			}
			
			if(rootURL != null)
			{
				this.endpointURI = rootURL;
			} 
			else 
			{
				this.endpointURI = null;
			}
			internal_schema = new BaseCoral_Reefs_MapServerSchema();
			schemaMgr = new SchemaManager();
			for(var i:int;i<internal_schema.schemas.length;i++)
			{
				internal_schema.schemas[i].targetNamespace=internal_schema.targetNamespaces[i];
				schemaMgr.addSchema(internal_schema.schemas[i]);
			}
BaseCoral_Reefs_MapServerService = new WSDLService("BaseCoral_Reefs_MapServerService");
			BaseCoral_Reefs_MapServerPort = new WSDLPort("BaseCoral_Reefs_MapServerPort",BaseCoral_Reefs_MapServerService);
        	BaseCoral_Reefs_MapServerBinding = new WSDLBinding("BaseCoral_Reefs_MapServerBinding");
	        BaseCoral_Reefs_MapServerPortType = new WSDLPortType("BaseCoral_Reefs_MapServerPortType");
       		BaseCoral_Reefs_MapServerBinding.portType = BaseCoral_Reefs_MapServerPortType;
       		BaseCoral_Reefs_MapServerPort.binding = BaseCoral_Reefs_MapServerBinding;
       		BaseCoral_Reefs_MapServerService.addPort(BaseCoral_Reefs_MapServerPort);
       		BaseCoral_Reefs_MapServerPort.endpointURI = "http://development3.unep-wcmc.org/arcgis/services/Islands/Coral_Reefs/MapServer";
       		if(this.endpointURI == null)
       		{
       			this.endpointURI = BaseCoral_Reefs_MapServerPort.endpointURI; 
       		} 
       		
			var requestMessage:WSDLMessage;
	        var responseMessage:WSDLMessage;
//define the WSDLOperation: new WSDLOperation(methodName)
            var GetLegendInfo:WSDLOperation = new WSDLOperation("GetLegendInfo");
				//input message for the operation
    	        requestMessage = new WSDLMessage("GetLegendInfo");
            				requestMessage.addPart(new WSDLMessagePart(new QName("","MapName"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("","LayerIDs"),null,new QName("http://www.esri.com/schemas/ArcGIS/9.4","ArrayOfInt")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("","LegendPatch"),null,new QName("http://www.esri.com/schemas/ArcGIS/9.4","MapServerLegendPatch")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("","ImageType"),null,new QName("http://www.esri.com/schemas/ArcGIS/9.4","ImageType")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://www.esri.com/schemas/ArcGIS/9.4";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://www.esri.com/schemas/ArcGIS/9.4","GetLegendInfo");
                
                responseMessage = new WSDLMessage("GetLegendInfoResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("","Result"),null,new QName("http://www.esri.com/schemas/ArcGIS/9.4","ArrayOfMapServerLegendInfo")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://www.esri.com/schemas/ArcGIS/9.4";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://www.esri.com/schemas/ArcGIS/9.4","GetLegendInfo");GetLegendInfo.inputMessage = requestMessage;
	        GetLegendInfo.outputMessage = responseMessage;
            GetLegendInfo.schemaManager = this.schemaMgr;
            GetLegendInfo.soapAction = "\"\"";
            GetLegendInfo.style = "document";
            BaseCoral_Reefs_MapServerService.getPort("BaseCoral_Reefs_MapServerPort").binding.portType.addOperation(GetLegendInfo);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ArrayOfSurfacePatch"),wcmc.soap.ArrayOfSurfacePatch);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","BezierCurve"),wcmc.soap.BezierCurve);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","Geometry"),wcmc.soap.Geometry);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","esriMergePolicyType"),wcmc.soap.EsriMergePolicyType);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ArrayOfRecord"),wcmc.soap.ArrayOfRecord);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","MapServerRow"),wcmc.soap.MapServerRow);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","Point"),wcmc.soap.Point);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","StandaloneTableInfo"),wcmc.soap.StandaloneTableInfo);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","esriGeometryType"),wcmc.soap.EsriGeometryType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","GroupElement"),wcmc.soap.GroupElement);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","esriSpatialRelEnum"),wcmc.soap.EsriSpatialRelEnum);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","TimeExtent"),wcmc.soap.TimeExtent);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","Path"),wcmc.soap.Path);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","MapServerLegendInfo"),wcmc.soap.MapServerLegendInfo);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","TimeQueryFilter"),wcmc.soap.TimeQueryFilter);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","Curve"),wcmc.soap.Curve);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","SpatialFilter"),wcmc.soap.SpatialFilter);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","esriUnits"),wcmc.soap.EsriUnits);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","MultiPatchN"),wcmc.soap.MultiPatchN);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","GeometryDef"),wcmc.soap.GeometryDef);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","CodedValue"),wcmc.soap.CodedValue);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","MapServerLegendClass"),wcmc.soap.MapServerLegendClass);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","Domain"),wcmc.soap.Domain);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","esriTextDirection"),wcmc.soap.EsriTextDirection);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ScaleBar"),wcmc.soap.ScaleBar);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","MultiPatchB"),wcmc.soap.MultiPatchB);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","CmykColor"),wcmc.soap.CmykColor);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","Patch"),wcmc.soap.Patch);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","MapServerBookmark"),wcmc.soap.MapServerBookmark);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ArrayOfMapServerBookmark"),wcmc.soap.ArrayOfMapServerBookmark);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","PictureMarkerSymbol"),wcmc.soap.PictureMarkerSymbol);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","Ring"),wcmc.soap.Ring);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ProjectedCoordinateSystem"),wcmc.soap.ProjectedCoordinateSystem);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ParagraphTextElement"),wcmc.soap.ParagraphTextElement);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","Polygon"),wcmc.soap.Polygon);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","XMLBinaryFillSymbol"),wcmc.soap.XMLBinaryFillSymbol);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ArrayOfGraphicElement"),wcmc.soap.ArrayOfGraphicElement);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","TriangleStrip"),wcmc.soap.TriangleStrip);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ImageResult"),wcmc.soap.ImageResult);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","esriMaskStyle"),wcmc.soap.EsriMaskStyle);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ArrayOfValue"),wcmc.soap.ArrayOfValue);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","SymbolBorder"),wcmc.soap.SymbolBorder);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","Polyline"),wcmc.soap.Polyline);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","esriFindOption"),wcmc.soap.EsriFindOption);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","Line"),wcmc.soap.Line);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","AreaPatch"),wcmc.soap.AreaPatch);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","MapImage"),wcmc.soap.MapImage);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","CartographicMarkerSymbol"),wcmc.soap.CartographicMarkerSymbol);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","QueryResultOptions"),wcmc.soap.QueryResultOptions);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","PropertySetProperty"),wcmc.soap.PropertySetProperty);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","NumericFormat"),wcmc.soap.NumericFormat);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ImageDisplay"),wcmc.soap.ImageDisplay);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","Polycurve"),wcmc.soap.Polycurve);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ArrayOfStandaloneTableDescription"),wcmc.soap.ArrayOfStandaloneTableDescription);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","StandaloneTableDescription"),wcmc.soap.StandaloneTableDescription);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ArrayOfSubtypeInfo"),wcmc.soap.ArrayOfSubtypeInfo);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ArrayOfCodedValue"),wcmc.soap.ArrayOfCodedValue);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","PictureFillSymbol"),wcmc.soap.PictureFillSymbol);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","esriTextVerticalAlignment"),wcmc.soap.EsriTextVerticalAlignment);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","PolygonN"),wcmc.soap.PolygonN);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ImageType"),wcmc.soap.ImageType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","esriTimeRelation"),wcmc.soap.EsriTimeRelation);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","MapServerRelationship"),wcmc.soap.MapServerRelationship);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","PolygonB"),wcmc.soap.PolygonB);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ArrayOfMapServerLegendInfo"),wcmc.soap.ArrayOfMapServerLegendInfo);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","XMLFilterDef"),wcmc.soap.XMLFilterDef);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","RelatedRecordSet"),wcmc.soap.RelatedRecordSet);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","esriCachedMapServiceType"),wcmc.soap.EsriCachedMapServiceType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","SimpleMarkerSymbol"),wcmc.soap.SimpleMarkerSymbol);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","esriImageReturnType"),wcmc.soap.EsriImageReturnType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","MapArea"),wcmc.soap.MapArea);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","esriTimeUnits"),wcmc.soap.EsriTimeUnits);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","PointB"),wcmc.soap.PointB);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ArrayOfMapServerRelationship"),wcmc.soap.ArrayOfMapServerRelationship);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","Border"),wcmc.soap.Border);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ArrayOfMapLayerInfo"),wcmc.soap.ArrayOfMapLayerInfo);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","XMLPersistedObject"),wcmc.soap.XMLPersistedObject);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","CacheControlInfo"),wcmc.soap.CacheControlInfo);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","PointN"),wcmc.soap.PointN);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","CodedValueDomain"),wcmc.soap.CodedValueDomain);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ArrayOfMapServerIdentifyResult"),wcmc.soap.ArrayOfMapServerIdentifyResult);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","FieldDomainInfo"),wcmc.soap.FieldDomainInfo);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","GeometryResultOptions"),wcmc.soap.GeometryResultOptions);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","GeoTransformation"),wcmc.soap.GeoTransformation);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","TimeValue"),wcmc.soap.TimeValue);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","UnknownCoordinateSystem"),wcmc.soap.UnknownCoordinateSystem);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","Field"),wcmc.soap.Field);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","esriNumericAlignmentEnum"),wcmc.soap.EsriNumericAlignmentEnum);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","CircleElement"),wcmc.soap.CircleElement);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ArrayOfLayerDescription"),wcmc.soap.ArrayOfLayerDescription);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ArrayOfMapServerLegendClass"),wcmc.soap.ArrayOfMapServerLegendClass);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ArrayOfLayerCacheInfo"),wcmc.soap.ArrayOfLayerCacheInfo);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","MapServerFindResult"),wcmc.soap.MapServerFindResult);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","RasterDef"),wcmc.soap.RasterDef);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","esriRoundingOptionEnum"),wcmc.soap.EsriRoundingOptionEnum);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","CenterAndScale"),wcmc.soap.CenterAndScale);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","RectangleElement"),wcmc.soap.RectangleElement);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ArrayOfMapServerLegendGroup"),wcmc.soap.ArrayOfMapServerLegendGroup);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ArrayOfMapServerHyperlink"),wcmc.soap.ArrayOfMapServerHyperlink);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","MapServerInfo"),wcmc.soap.MapServerInfo);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","MapTableInfo"),wcmc.soap.MapTableInfo);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","esriImageFormat"),wcmc.soap.EsriImageFormat);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","esriFieldType"),wcmc.soap.EsriFieldType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","HlsColor"),wcmc.soap.HlsColor);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","SymbolBackground"),wcmc.soap.SymbolBackground);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","GraphicElement"),wcmc.soap.GraphicElement);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","SimpleFillSymbol"),wcmc.soap.SimpleFillSymbol);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","GeographicCoordinateSystem"),wcmc.soap.GeographicCoordinateSystem);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","CacheStorageInfo"),wcmc.soap.CacheStorageInfo);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","esriScaleBarPos"),wcmc.soap.EsriScaleBarPos);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ArrayOfPath"),wcmc.soap.ArrayOfPath);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","MarkerElement"),wcmc.soap.MarkerElement);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","LineElement"),wcmc.soap.LineElement);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","MultiPatch"),wcmc.soap.MultiPatch);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","esriTextCase"),wcmc.soap.EsriTextCase);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ImageQueryFilter"),wcmc.soap.ImageQueryFilter);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","AlternatingScaleBar"),wcmc.soap.AlternatingScaleBar);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ArrayOfStandaloneTableInfo"),wcmc.soap.ArrayOfStandaloneTableInfo);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","EllipseElement"),wcmc.soap.EllipseElement);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","LayerDescription"),wcmc.soap.LayerDescription);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","Shadow"),wcmc.soap.Shadow);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","esriSimpleLineStyle"),wcmc.soap.EsriSimpleLineStyle);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","RgbColor"),wcmc.soap.RgbColor);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","EllipticArc"),wcmc.soap.EllipticArc);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","esriScaleBarResizeHint"),wcmc.soap.EsriScaleBarResizeHint);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","TriangleFan"),wcmc.soap.TriangleFan);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","esriTextHorizontalAlignment"),wcmc.soap.EsriTextHorizontalAlignment);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","TimeReference"),wcmc.soap.TimeReference);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","LinePatch"),wcmc.soap.LinePatch);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","PolylineB"),wcmc.soap.PolylineB);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ArrayOfLODInfo"),wcmc.soap.ArrayOfLODInfo);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","PolylineN"),wcmc.soap.PolylineN);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","CircularArc"),wcmc.soap.CircularArc);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","Color"),wcmc.soap.Color);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","SQLSyntaxInfo"),wcmc.soap.SQLSyntaxInfo);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","LayerCacheInfo"),wcmc.soap.LayerCacheInfo);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ArrayOfPropertySetProperty"),wcmc.soap.ArrayOfPropertySetProperty);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","TimeInstant"),wcmc.soap.TimeInstant);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","Segment"),wcmc.soap.Segment);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","SubtypeInfo"),wcmc.soap.SubtypeInfo);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","RelateDescription"),wcmc.soap.RelateDescription);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","TileCacheInfo"),wcmc.soap.TileCacheInfo);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","QueryResult"),wcmc.soap.QueryResult);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ArrayOfMapServerFindResult"),wcmc.soap.ArrayOfMapServerFindResult);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","MapServerLegendGroup"),wcmc.soap.MapServerLegendGroup);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","Background"),wcmc.soap.Background);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ArrayOfImageResult"),wcmc.soap.ArrayOfImageResult);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","BitMaskCodedValueDomain"),wcmc.soap.BitMaskCodedValueDomain);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ArrayOfFieldDomainInfo"),wcmc.soap.ArrayOfFieldDomainInfo);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","Element"),wcmc.soap.Element);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","CenterAndSize"),wcmc.soap.CenterAndSize);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","esriQueryResultFormat"),wcmc.soap.EsriQueryResultFormat);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","CharacterMarkerSymbol"),wcmc.soap.CharacterMarkerSymbol);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","Envelope"),wcmc.soap.Envelope);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ArrayOfInt"),wcmc.soap.ArrayOfInt);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","Fields"),wcmc.soap.Fields);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","esriVertPosEnum"),wcmc.soap.EsriVertPosEnum);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ArrayOfSegment"),wcmc.soap.ArrayOfSegment);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","MultipointB"),wcmc.soap.MultipointB);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","TextElement"),wcmc.soap.TextElement);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","FIDSet"),wcmc.soap.FIDSet);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","esriMapCacheStorageFormat"),wcmc.soap.EsriMapCacheStorageFormat);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ArrayOfPoint"),wcmc.soap.ArrayOfPoint);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","PolygonElement"),wcmc.soap.PolygonElement);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","esriScaleBarFrequency"),wcmc.soap.EsriScaleBarFrequency);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","MapServerHyperlink"),wcmc.soap.MapServerHyperlink);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","CacheDescriptionInfo"),wcmc.soap.CacheDescriptionInfo);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","SpatialReference"),wcmc.soap.SpatialReference);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","SimpleLineSymbol"),wcmc.soap.SimpleLineSymbol);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ArrayOfMapServerRow"),wcmc.soap.ArrayOfMapServerRow);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ArrayOfRelatedRecordGroup"),wcmc.soap.ArrayOfRelatedRecordGroup);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","QueryFilter"),wcmc.soap.QueryFilter);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","RangeDomain"),wcmc.soap.RangeDomain);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","MarkerSymbol"),wcmc.soap.MarkerSymbol);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","MultipointN"),wcmc.soap.MultipointN);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","Symbol"),wcmc.soap.Symbol);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","RelateInfo"),wcmc.soap.RelateInfo);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","TileImageInfo"),wcmc.soap.TileImageInfo);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","esriRelateResultFormat"),wcmc.soap.EsriRelateResultFormat);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ImageDescription"),wcmc.soap.ImageDescription);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","esriSimpleFillStyle"),wcmc.soap.EsriSimpleFillStyle);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ArrayOfString"),wcmc.soap.ArrayOfString);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","LODInfo"),wcmc.soap.LODInfo);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","MapLayerInfo"),wcmc.soap.MapLayerInfo);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","RecordSet"),wcmc.soap.RecordSet);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","GrayColor"),wcmc.soap.GrayColor);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ArrayOfField"),wcmc.soap.ArrayOfField);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","MapExtent"),wcmc.soap.MapExtent);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ArrayOfRelateInfo"),wcmc.soap.ArrayOfRelateInfo);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","XMLBinarySymbol"),wcmc.soap.XMLBinarySymbol);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","FeatureExtent"),wcmc.soap.FeatureExtent);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","MapServerLegendPatch"),wcmc.soap.MapServerLegendPatch);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","esriSearchOrder"),wcmc.soap.EsriSearchOrder);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","EnvelopeN"),wcmc.soap.EnvelopeN);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","FillSymbol"),wcmc.soap.FillSymbol);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","FilterDef"),wcmc.soap.FilterDef);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","HsvColor"),wcmc.soap.HsvColor);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","LayerResultOptions"),wcmc.soap.LayerResultOptions);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","SingleDivisionScaleBar"),wcmc.soap.SingleDivisionScaleBar);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","esriTextPosition"),wcmc.soap.EsriTextPosition);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","Multipoint"),wcmc.soap.Multipoint);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","EnvelopeB"),wcmc.soap.EnvelopeB);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","TextSymbol"),wcmc.soap.TextSymbol);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","esriSplitPolicyType"),wcmc.soap.EsriSplitPolicyType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","esriSimpleMarkerStyle"),wcmc.soap.EsriSimpleMarkerStyle);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","MapTableDescription"),wcmc.soap.MapTableDescription);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","MapServerForceDeriveFromAnyType"),wcmc.soap.MapServerForceDeriveFromAnyType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","Record"),wcmc.soap.Record);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","SymbolShadow"),wcmc.soap.SymbolShadow);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","MapDescription"),wcmc.soap.MapDescription);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","PropertySet"),wcmc.soap.PropertySet);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","LineSymbol"),wcmc.soap.LineSymbol);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ArrayOfFilterDef"),wcmc.soap.ArrayOfFilterDef);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","ArrayOfRing"),wcmc.soap.ArrayOfRing);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","RelatedRecordGroup"),wcmc.soap.RelatedRecordGroup);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","esriIdentifyOption"),wcmc.soap.EsriIdentifyOption);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.esri.com/schemas/ArcGIS/9.4","MapServerIdentifyResult"),wcmc.soap.MapServerIdentifyResult);}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param MapName* @param LayerIDs* @param LegendPatch* @param ImageType
		 * @return Asynchronous token
		 */
		public function getLegendInfo(mapName:String,layerIDs:ArrayOfInt,legendPatch:MapServerLegendPatch,imageType:ImageType):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["MapName"] = mapName;
	            out["LayerIDs"] = layerIDs;
	            out["LegendPatch"] = legendPatch;
	            out["ImageType"] = imageType;
	            currentOperation = BaseCoral_Reefs_MapServerService.getPort("BaseCoral_Reefs_MapServerPort").binding.portType.getOperation("GetLegendInfo");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
        /**
         * Performs the actual call to the remove server
         * It SOAP-encodes the message using the schema and WSDL operation options set above and then calls the server using 
         * an async invoker
         * It also registers internal event handlers for the result / fault cases
         * @private
         */
        private function call(operation:WSDLOperation,args:Object,token:AsyncToken,headers:Array=null):void
        {
	    	var enc:SOAPEncoder = new SOAPEncoder();
	        var soap:Object = new Object;
	        var message:SOAPMessage = new SOAPMessage();
	        enc.wsdlOperation = operation;
	        soap = enc.encodeRequest(args,headers);
	        message.setSOAPAction(operation.soapAction);
	        message.body = soap.toString();
	        message.url=endpointURI;
            var inv:AsyncRequest = new AsyncRequest();
            inv.destination = super.destination;
            //we need this to handle multiple asynchronous calls 
            var wrappedData:Object = new Object();
            wrappedData.operation = currentOperation;
            wrappedData.returnToken = token;
            if(!this.useProxy)
            {
            	var dcs:ChannelSet = new ChannelSet();	
	        	dcs.addChannel(new DirectHTTPChannel("direct_http_channel"));
            	inv.channelSet = dcs;
            }                
            var processRes:AsyncResponder = new AsyncResponder(processResult,faultResult,wrappedData);
            inv.invoke(message,processRes);
		}
        
        /**
         * Internal event handler to process a successful operation call from the server
         * The result is decoded using the schema and operation settings and then the events get passed on to the actual facade that the user employs in the application 
         * @private
         */
		private function processResult(result:Object,wrappedData:Object):void
           {
           		var headers:Object;
           		var token:AsyncToken = wrappedData.returnToken;
                var currentOperation:WSDLOperation = wrappedData.operation;
                var decoder:SOAPDecoder = new SOAPDecoder();
                decoder.resultFormat = "object";
                decoder.headerFormat = "object";
                decoder.multiplePartsFormat = "object";
                decoder.ignoreWhitespace = true;
                decoder.makeObjectsBindable=false;
                decoder.wsdlOperation = currentOperation;
                decoder.schemaManager = currentOperation.schemaManager;
                var body:Object = result.message.body;
                var stringResult:String = String(body);
                if(stringResult == null  || stringResult == "")
                	return;
                var soapResult:SOAPResult = decoder.decodeResponse(result.message.body);
                if(soapResult.isFault)
                {
	                var faults:Array = soapResult.result as Array;
	                for each (var soapFault:Fault in faults)
	                {
		                var soapFaultEvent:FaultEvent = FaultEvent.createEvent(soapFault,token,null);
		                token.dispatchEvent(soapFaultEvent);
	                }
                } else {
	                result = soapResult.result;
	                headers = soapResult.headers;
	                var event:ResultEvent = ResultEvent.createEvent(result,token,null);
	                event.headers = headers;
	                token.dispatchEvent(event);
                }
           }
           	/**
           	 * Handles the cases when there are errors calling the operation on the server
           	 * This is not the case for SOAP faults, which is handled by the SOAP decoder in the result handler
           	 * but more critical errors, like network outage or the impossibility to connect to the server
           	 * The fault is dispatched upwards to the facade so that the user can do something meaningful 
           	 * @private
           	 */
			private function faultResult(error:MessageFaultEvent,token:Object):void
			{
				//when there is a network error the token is actually the wrappedData object from above	
				if(!(token is AsyncToken))
					token = token.returnToken;
				token.dispatchEvent(new FaultEvent(FaultEvent.FAULT,true,true,new Fault(error.faultCode,error.faultString,error.faultDetail)));
			}
		}
	}

	import mx.rpc.AsyncToken;
	import mx.rpc.AsyncResponder;
	import mx.rpc.wsdl.WSDLBinding;
                
    /**
     * Internal class to handle multiple operation call scheduling
     * It allows us to pass data about the operation being encoded / decoded to and from the SOAP encoder / decoder units. 
     * @private
     */
    class PendingCall
    {
		public var args:*;
		public var headers:Array;
		public var token:AsyncToken;
		
		public function PendingCall(args:Object, headers:Array=null)
		{
			this.args = args;
			this.headers = headers;
			this.token = new AsyncToken(null);
		}
	}