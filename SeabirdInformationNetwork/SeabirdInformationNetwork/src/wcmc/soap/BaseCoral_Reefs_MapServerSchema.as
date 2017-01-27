package wcmc.soap
{
	 import mx.rpc.xml.Schema
	 public class BaseCoral_Reefs_MapServerSchema
	{
		 public var schemas:Array = new Array();
		 public var targetNamespaces:Array = new Array();
		 public function BaseCoral_Reefs_MapServerSchema():void
{		
			 var xsdXML0:XML = <xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:e="http://www.esri.com/schemas/ArcGIS/9.4" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" attributeFormDefault="unqualified" elementFormDefault="unqualified" targetNamespace="http://www.esri.com/schemas/ArcGIS/9.4">
    <xs:element name="GetDocumentInfo">
        <xs:complexType/>
    </xs:element>
    <xs:element name="GetDocumentInfoResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="e:PropertySet"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="GetMapCount">
        <xs:complexType/>
    </xs:element>
    <xs:element name="GetMapCountResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="xs:int"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="GetMapName">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Index" type="xs:int"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="GetMapNameResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="xs:string"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="GetDefaultMapName">
        <xs:complexType/>
    </xs:element>
    <xs:element name="GetDefaultMapNameResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="xs:string"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="GetServerInfo">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="MapName" type="xs:string"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="GetServerInfoResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="e:MapServerInfo"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="ExportMapImage">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="MapDescription" type="e:MapDescription"/>
                <xs:element name="ImageDescription" type="e:ImageDescription"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="ExportMapImageResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="e:MapImage"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="ExportScaleBar">
        <xs:complexType>
            <xs:sequence>
                <xs:element minOccurs="0" name="ScaleBar" type="e:ScaleBar"/>
                <xs:element name="MapDescription" type="e:MapDescription"/>
                <xs:element name="MapDisplay" type="e:ImageDisplay"/>
                <xs:element minOccurs="0" name="BackGroundColor" type="e:Color"/>
                <xs:element name="ImageDescription" type="e:ImageDescription"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="ExportScaleBarResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="e:ImageResult"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="Find">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="MapDescription" type="e:MapDescription"/>
                <xs:element name="MapImageDisplay" type="e:ImageDisplay"/>
                <xs:element name="SearchString" type="xs:string"/>
                <xs:element name="Contains" type="xs:boolean"/>
                <xs:element name="SearchFields" type="xs:string"/>
                <xs:element name="FindOption" type="e:esriFindOption"/>
                <xs:element name="LayerIDs" type="e:ArrayOfInt"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="FindResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="e:ArrayOfMapServerFindResult"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="Identify">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="MapDescription" type="e:MapDescription"/>
                <xs:element name="MapImageDisplay" type="e:ImageDisplay"/>
                <xs:element name="SearchShape" type="e:Geometry"/>
                <xs:element name="Tolerance" type="xs:int"/>
                <xs:element name="IdentifyOption" type="e:esriIdentifyOption"/>
                <xs:element name="LayerIDs" type="e:ArrayOfInt"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="IdentifyResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="e:ArrayOfMapServerIdentifyResult"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="QueryFeatureCount">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="MapName" type="xs:string"/>
                <xs:element name="LayerID" type="xs:int"/>
                <xs:element name="QueryFilter" type="e:QueryFilter"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="QueryFeatureCountResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="xs:int"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="QueryFeatureIDs">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="MapName" type="xs:string"/>
                <xs:element name="LayerID" type="xs:int"/>
                <xs:element name="QueryFilter" type="e:QueryFilter"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="QueryFeatureIDsResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="e:FIDSet"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="QueryFeatureData">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="MapName" type="xs:string"/>
                <xs:element name="LayerID" type="xs:int"/>
                <xs:element name="QueryFilter" type="e:QueryFilter"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="QueryFeatureDataResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="e:RecordSet"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="QueryFeatureCount2">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="MapName" type="xs:string"/>
                <xs:element name="LayerDescription" type="e:LayerDescription"/>
                <xs:element name="QueryFilter" type="e:QueryFilter"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="QueryFeatureCount2Response">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="xs:int"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="QueryFeatureIDs2">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="MapName" type="xs:string"/>
                <xs:element name="LayerDescription" type="e:LayerDescription"/>
                <xs:element name="QueryFilter" type="e:QueryFilter"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="QueryFeatureIDs2Response">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="e:FIDSet"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="QueryFeatureData2">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="MapName" type="xs:string"/>
                <xs:element name="LayerDescription" type="e:LayerDescription"/>
                <xs:element name="QueryFilter" type="e:QueryFilter"/>
                <xs:element name="QueryResultOptions" type="e:QueryResultOptions"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="QueryFeatureData2Response">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="e:QueryResult"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="QueryHyperlinks">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="MapDescription" type="e:MapDescription"/>
                <xs:element name="MapImageDisplay" type="e:ImageDisplay"/>
                <xs:element name="LayerIDs" type="e:ArrayOfInt"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="QueryHyperlinksResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="e:ArrayOfMapServerHyperlink"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="ComputeScale">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="MapDescription" type="e:MapDescription"/>
                <xs:element name="MapImageDisplay" type="e:ImageDisplay"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="ComputeScaleResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="xs:double"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="ComputeDistance">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="MapName" type="xs:string"/>
                <xs:element name="FromPoint" type="e:Point"/>
                <xs:element name="ToPoint" type="e:Point"/>
                <xs:element name="Units" type="e:esriUnits"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="ComputeDistanceResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="xs:double"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="ToMapPoints">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="MapDescription" type="e:MapDescription"/>
                <xs:element name="MapImageDisplay" type="e:ImageDisplay"/>
                <xs:element name="ScreenXValues" type="e:ArrayOfInt"/>
                <xs:element name="ScreenYValues" type="e:ArrayOfInt"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="ToMapPointsResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="e:Multipoint"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="FromMapPoints">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="MapDescription" type="e:MapDescription"/>
                <xs:element name="MapImageDisplay" type="e:ImageDisplay"/>
                <xs:element name="MapPoints" type="e:Multipoint"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="FromMapPointsResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="ScreenXValues" type="e:ArrayOfInt"/>
                <xs:element name="ScreenYValues" type="e:ArrayOfInt"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="GetLegendInfo">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="MapName" type="xs:string"/>
                <xs:element name="LayerIDs" type="e:ArrayOfInt"/>
                <xs:element name="LegendPatch" type="e:MapServerLegendPatch"/>
                <xs:element name="ImageType" type="e:ImageType"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="GetLegendInfoResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="e:ArrayOfMapServerLegendInfo"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="GetSQLSyntaxInfo">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="MapName" type="xs:string"/>
                <xs:element name="LayerID" type="xs:int"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="GetSQLSyntaxInfoResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="e:SQLSyntaxInfo"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="GetSupportedImageReturnTypes">
        <xs:complexType/>
    </xs:element>
    <xs:element name="GetSupportedImageReturnTypesResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="e:esriImageReturnType"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="IsFixedScaleMap">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="MapName" type="xs:string"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="IsFixedScaleMapResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="xs:boolean"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="HasSingleFusedMapCache">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="MapName" type="xs:string"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="HasSingleFusedMapCacheResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="xs:boolean"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="GetTileCacheInfo">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="MapName" type="xs:string"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="GetTileCacheInfoResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="e:TileCacheInfo"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="GetMapTile">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="MapName" type="xs:string"/>
                <xs:element name="Level" type="xs:int"/>
                <xs:element name="Row" type="xs:int"/>
                <xs:element name="Column" type="xs:int"/>
                <xs:element minOccurs="0" name="Format" type="xs:string"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="GetMapTileResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="xs:base64Binary"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="HasLayerCache">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="MapName" type="xs:string"/>
                <xs:element name="LayerID" type="xs:int"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="HasLayerCacheResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="xs:boolean"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="GetLayerTile">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="MapName" type="xs:string"/>
                <xs:element name="LayerID" type="xs:int"/>
                <xs:element name="Level" type="xs:int"/>
                <xs:element name="Row" type="xs:int"/>
                <xs:element name="Column" type="xs:int"/>
                <xs:element minOccurs="0" name="Format" type="xs:string"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="GetLayerTileResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="xs:base64Binary"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="GetVirtualCacheDirectory">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="MapName" type="xs:string"/>
                <xs:element name="LayerID" type="xs:int"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="GetVirtualCacheDirectoryResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="xs:string"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="GetCacheName">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="MapName" type="xs:string"/>
                <xs:element name="LayerID" type="xs:int"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="GetCacheNameResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="xs:string"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="GetTileImageInfo">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="MapName" type="xs:string"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="GetTileImageInfoResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="e:TileImageInfo"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="GetCacheControlInfo">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="MapName" type="xs:string"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="GetCacheControlInfoResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="e:CacheControlInfo"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="GetServiceConfigurationInfo">
        <xs:complexType/>
    </xs:element>
    <xs:element name="GetServiceConfigurationInfoResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="e:PropertySet"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="GetCacheDescriptionInfo">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="MapName" type="xs:string"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="GetCacheDescriptionInfoResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="e:CacheDescriptionInfo"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="QueryRowCount">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="MapName" type="xs:string"/>
                <xs:element name="MapTableDescription" type="e:MapTableDescription"/>
                <xs:element name="QueryFilter" type="e:QueryFilter"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="QueryRowCountResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="xs:int"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="QueryRowIDs">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="MapName" type="xs:string"/>
                <xs:element name="MapTableDescription" type="e:MapTableDescription"/>
                <xs:element name="QueryFilter" type="e:QueryFilter"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="QueryRowIDsResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="e:ArrayOfInt"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="QueryData">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="MapName" type="xs:string"/>
                <xs:element name="MapTableDescription" type="e:MapTableDescription"/>
                <xs:element name="QueryFilter" type="e:QueryFilter"/>
                <xs:element name="QueryResultOptions" type="e:QueryResultOptions"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="QueryDataResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="e:QueryResult"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="QueryRelatedRecords">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="MapName" type="xs:string"/>
                <xs:element name="SourceTableID" type="xs:int"/>
                <xs:element name="SourceFIDSet" type="e:FIDSet"/>
                <xs:element name="RelateDescription" type="e:RelateDescription"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="QueryRelatedRecordsResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="e:QueryResult"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="GetCacheStorageInfo">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="MapName" type="xs:string"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="GetCacheStorageInfoResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="e:CacheStorageInfo"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="QueryRasterValue">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="MapName" type="xs:string"/>
                <xs:element name="SourceTableID" type="xs:int"/>
                <xs:element name="RowIDs" type="e:ArrayOfInt"/>
                <xs:element minOccurs="0" name="FieldName" type="xs:string"/>
                <xs:element minOccurs="0" name="ImageType" type="e:ImageType"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:element name="QueryRasterValueResponse">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Result" type="e:ArrayOfImageResult"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <xs:simpleType name="esriIdentifyOption">
        <xs:annotation/>
        <xs:restriction base="xs:string">
            <xs:enumeration value="esriIdentifyTopmost"/>
            <xs:enumeration value="esriIdentifyAllLayers"/>
            <xs:enumeration value="esriIdentifyVisibleLayers"/>
        </xs:restriction>
    </xs:simpleType>
    <xs:simpleType name="esriMapCacheStorageFormat">
        <xs:annotation/>
        <xs:restriction base="xs:string">
            <xs:enumeration value="esriMapCacheStorageModeCompact"/>
            <xs:enumeration value="esriMapCacheStorageModeExploded"/>
        </xs:restriction>
    </xs:simpleType>
    <xs:simpleType name="esriFindOption">
        <xs:annotation/>
        <xs:restriction base="xs:string">
            <xs:enumeration value="esriFindVisibleLayers"/>
            <xs:enumeration value="esriFindAllLayers"/>
        </xs:restriction>
    </xs:simpleType>
    <xs:complexType name="TileCacheInfo">
        <xs:sequence>
            <xs:element minOccurs="0" name="SpatialReference" type="e:SpatialReference"/>
            <xs:element minOccurs="0" name="TileOrigin" type="e:Point">
                <xs:annotation>
                    <xs:documentation>The tiling origin.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element name="TileCols" type="xs:int"/>
            <xs:element name="TileRows" type="xs:int"/>
            <xs:element name="DPI" type="xs:int">
                <xs:annotation>
                    <xs:documentation>The tiling DPI.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element minOccurs="0" name="LODInfos" type="e:ArrayOfLODInfo"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="LODInfo">
        <xs:sequence>
            <xs:element name="LevelID" type="xs:int"/>
            <xs:element name="Scale" type="xs:double"/>
            <xs:element name="Resolution" type="xs:double"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ArrayOfLODInfo">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="LODInfo" type="e:LODInfo"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="AreaPatch">
        <xs:complexContent>
            <xs:extension base="e:Patch"/>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="ArrayOfGraphicElement">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="GraphicElement" type="e:GraphicElement"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ArrayOfLayerDescription">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="LayerDescription" type="e:LayerDescription"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ArrayOfMapLayerInfo">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="MapLayerInfo" type="e:MapLayerInfo"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ArrayOfMapServerBookmark">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="MapServerBookmark" type="e:MapServerBookmark"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ArrayOfMapServerFindResult">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="MapServerFindResult" type="e:MapServerFindResult"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ArrayOfMapServerHyperlink">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="MapServerHyperlink" type="e:MapServerHyperlink"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ArrayOfMapServerIdentifyResult">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="MapServerIdentifyResult" type="e:MapServerIdentifyResult"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ArrayOfMapServerLegendClass">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="MapServerLegendClass" type="e:MapServerLegendClass"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ArrayOfMapServerLegendGroup">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="MapServerLegendGroup" type="e:MapServerLegendGroup"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ArrayOfMapServerLegendInfo">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="MapServerLegendInfo" type="e:MapServerLegendInfo"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ArrayOfMapServerRelationship">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="MapServerRelationship" type="e:MapServerRelationship"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ArrayOfMapServerRow">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="MapServerRow" type="e:MapServerRow"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ArrayOfStandaloneTableInfo">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="StandaloneTableInfo" type="e:StandaloneTableInfo"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ArrayOfStandaloneTableDescription">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="StandaloneTableDescription" type="e:StandaloneTableDescription"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ArrayOfRelateInfo">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="RelateInfo" type="e:RelateInfo"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ArrayOfRelatedRecordGroup">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="RelatedRecordGroup" type="e:RelatedRecordGroup"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ArrayOfSubtypeInfo">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="SubtypeInfo" type="e:SubtypeInfo"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ArrayOfFieldDomainInfo">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="FieldDomainInfo" type="e:FieldDomainInfo"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="CenterAndScale">
        <xs:complexContent>
            <xs:extension base="e:MapArea">
                <xs:sequence>
                    <xs:element minOccurs="0" name="Center" type="e:Point"/>
                    <xs:element name="Scale" type="xs:double">
                        <xs:annotation>
                            <xs:documentation>The map scale.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="DPI" type="xs:double">
                        <xs:annotation>
                            <xs:documentation>The device resolution of the image.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="DevBottom" type="xs:int">
                        <xs:annotation>
                            <xs:documentation>The X cooridnate for bottom right corner point.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="DevLeft" type="xs:int">
                        <xs:annotation>
                            <xs:documentation>The X coordinate for the upper left corner point.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="DevTop" type="xs:int">
                        <xs:annotation>
                            <xs:documentation>The Y coordinate for the upper left corner point.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="DevRight" type="xs:int">
                        <xs:annotation>
                            <xs:documentation>The Y coordinate for the bottom right corner point.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="CenterAndSize">
        <xs:complexContent>
            <xs:extension base="e:MapArea">
                <xs:sequence>
                    <xs:element minOccurs="0" name="Center" type="e:Point"/>
                    <xs:element name="Height" type="xs:double"/>
                    <xs:element name="Width" type="xs:double"/>
                    <xs:element name="Units" type="xs:string"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="FeatureExtent">
        <xs:complexContent>
            <xs:extension base="e:MapArea">
                <xs:sequence>
                    <xs:element name="DefaultScale" type="xs:double"/>
                    <xs:element default="1.0" name="ExpandRatio" type="xs:double"/>
                    <xs:element minOccurs="0" name="FeatureIDs" type="e:ArrayOfInt"/>
                    <xs:element name="LayerID" type="xs:int"/>
                    <xs:element name="MapName" type="xs:string"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="ImageDescription">
        <xs:sequence>
            <xs:element minOccurs="0" name="ImageType" type="e:ImageType">
                <xs:annotation>
                    <xs:documentation>The type of image to be generated.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element minOccurs="0" name="ImageDisplay" type="e:ImageDisplay">
                <xs:annotation>
                    <xs:documentation>The display characteristics of the image to be generated.</xs:documentation>
                </xs:annotation>
            </xs:element>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ImageDisplay">
        <xs:sequence>
            <xs:element name="ImageHeight" type="xs:int">
                <xs:annotation>
                    <xs:documentation>The height of the image in pixels.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element name="ImageWidth" type="xs:int">
                <xs:annotation>
                    <xs:documentation>The width of the image in pixels.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element name="ImageDPI" type="xs:double">
                <xs:annotation>
                    <xs:documentation>The device resolution of the image (dots per inch).</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element minOccurs="0" name="TransparentColor" type="e:Color"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ImageResult">
        <xs:sequence>
            <xs:element minOccurs="0" name="ImageData" type="xs:base64Binary">
                <xs:annotation>
                    <xs:documentation>Binary data representing the generated image.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element name="ImageURL" type="xs:string">
                <xs:annotation>
                    <xs:documentation>The URL of the generated image.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element name="ImageHeight" type="xs:int">
                <xs:annotation>
                    <xs:documentation>The height of the image in pixels.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element name="ImageWidth" type="xs:int">
                <xs:annotation>
                    <xs:documentation>The width of the image in pixels.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element name="ImageDPI" type="xs:double">
                <xs:annotation>
                    <xs:documentation>The device resolution of the image specified in the request (dots per inch).</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element minOccurs="0" name="ImageType" type="xs:string">
                <xs:annotation>
                    <xs:documentation>The MIME type of the image data</xs:documentation>
                </xs:annotation>
            </xs:element>
        </xs:sequence>
    </xs:complexType>
    <xs:simpleType name="esriImageFormat">
        <xs:annotation/>
        <xs:restriction base="xs:string">
            <xs:enumeration value="esriImageNone"/>
            <xs:enumeration value="esriImageBMP"/>
            <xs:enumeration value="esriImageJPG"/>
            <xs:enumeration value="esriImageDIB"/>
            <xs:enumeration value="esriImageTIFF"/>
            <xs:enumeration value="esriImagePNG"/>
            <xs:enumeration value="esriImagePNG24"/>
            <xs:enumeration value="esriImageEMF"/>
            <xs:enumeration value="esriImagePS"/>
            <xs:enumeration value="esriImagePDF"/>
            <xs:enumeration value="esriImageAI"/>
            <xs:enumeration value="esriImageGIF"/>
            <xs:enumeration value="esriImageSVG"/>
            <xs:enumeration value="esriImagePNG32"/>
        </xs:restriction>
    </xs:simpleType>
    <xs:simpleType name="esriScaleBarPos">
        <xs:annotation/>
        <xs:restriction base="xs:string">
            <xs:enumeration value="esriScaleBarAbove"/>
            <xs:enumeration value="esriScaleBarBeforeLabels"/>
            <xs:enumeration value="esriScaleBarAfterLabels"/>
            <xs:enumeration value="esriScaleBarBeforeBar"/>
            <xs:enumeration value="esriScaleBarAfterBar"/>
            <xs:enumeration value="esriScaleBarBelow"/>
        </xs:restriction>
    </xs:simpleType>
    <xs:simpleType name="esriVertPosEnum">
        <xs:annotation/>
        <xs:restriction base="xs:string">
            <xs:enumeration value="esriAbove"/>
            <xs:enumeration value="esriTop"/>
            <xs:enumeration value="esriOn"/>
            <xs:enumeration value="esriBottom"/>
            <xs:enumeration value="esriBelow"/>
        </xs:restriction>
    </xs:simpleType>
    <xs:simpleType name="esriScaleBarFrequency">
        <xs:annotation/>
        <xs:restriction base="xs:string">
            <xs:enumeration value="esriScaleBarNone"/>
            <xs:enumeration value="esriScaleBarOne"/>
            <xs:enumeration value="esriScaleBarMajorDivisions"/>
            <xs:enumeration value="esriScaleBarDivisions"/>
            <xs:enumeration value="esriScaleBarDivisionsAndFirstMidpoint"/>
            <xs:enumeration value="esriScaleBarDivisionsAndFirstSubdivisions"/>
            <xs:enumeration value="esriScaleBarDivisionsAndSubdivisions"/>
        </xs:restriction>
    </xs:simpleType>
    <xs:simpleType name="esriScaleBarResizeHint">
        <xs:annotation/>
        <xs:restriction base="xs:string">
            <xs:enumeration value="esriScaleBarFixed"/>
            <xs:enumeration value="esriScaleBarAutoDivision"/>
            <xs:enumeration value="esriScaleBarAutoDivisions"/>
        </xs:restriction>
    </xs:simpleType>
    <xs:simpleType name="esriImageReturnType">
        <xs:annotation/>
        <xs:restriction base="xs:string">
            <xs:enumeration value="esriImageReturnURL"/>
            <xs:enumeration value="esriImageReturnMimeData"/>
        </xs:restriction>
    </xs:simpleType>
    <xs:complexType name="ImageType">
        <xs:sequence>
            <xs:element name="ImageFormat" type="e:esriImageFormat">
                <xs:annotation>
                    <xs:documentation>The image format.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element name="ImageReturnType" type="e:esriImageReturnType">
                <xs:annotation>
                    <xs:documentation>The return type.</xs:documentation>
                </xs:annotation>
            </xs:element>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="LayerDescription">
        <xs:complexContent>
            <xs:extension base="e:MapTableDescription">
                <xs:sequence>
                    <xs:element name="LayerID" type="xs:int">
                        <xs:annotation>
                            <xs:documentation>The layer ID. This is a unique ID for the layer, and is used to identify the layer in a number of method calls.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element name="Visible" type="xs:boolean"/>
                    <xs:element name="ShowLabels" type="xs:boolean"/>
                    <xs:element name="ScaleSymbols" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="SelectionFeatures" type="e:ArrayOfInt"/>
                    <xs:element minOccurs="0" name="SelectionColor" type="e:Color"/>
                    <xs:element minOccurs="0" name="SelectionSymbol" type="e:Symbol"/>
                    <xs:element name="SetSelectionSymbol" type="xs:boolean"/>
                    <xs:element name="SelectionBufferDistance" type="xs:double"/>
                    <xs:element name="ShowSelectionBuffer" type="xs:boolean"/>
                    <xs:element name="DefinitionExpression" type="xs:string"/>
                    <xs:element minOccurs="0" name="SourceID" type="xs:string"/>
                    <xs:element minOccurs="0" name="SelectionBufferSymbol" type="e:FillSymbol"/>
                    <xs:element minOccurs="0" name="LayerResultOptions" type="e:LayerResultOptions"/>
                    <xs:element minOccurs="0" name="UseTime" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="TimeDataCumulative" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="TimeOffset" type="xs:double"/>
                    <xs:element minOccurs="0" name="TimeOffsetUnits" type="e:esriTimeUnits"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="LayerResultOptions">
        <xs:sequence>
            <xs:element default="true" minOccurs="0" name="IncludeGeometry" type="xs:boolean"/>
            <xs:element minOccurs="0" name="GeometryResultOptions" type="e:GeometryResultOptions"/>
            <xs:element default="false" minOccurs="0" name="ReturnFieldNamesInResults" type="xs:boolean"/>
            <xs:element default="true" minOccurs="0" name="FormatValuesInResults" type="xs:boolean"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="LinePatch">
        <xs:complexContent>
            <xs:extension base="e:Patch"/>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType abstract="true" name="MapArea">
        <xs:sequence>
            <xs:element minOccurs="0" name="Extent" type="e:Envelope"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="MapDescription">
        <xs:sequence>
            <xs:element name="Name" type="xs:string"/>
            <xs:element minOccurs="0" name="MapArea" type="e:MapArea"/>
            <xs:element minOccurs="0" name="LayerDescriptions" type="e:ArrayOfLayerDescription"/>
            <xs:element name="Rotation" type="xs:double">
                <xs:annotation>
                    <xs:documentation>The angle/rotation of the map (data frame) in degrees, measured anti-clockwise.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element minOccurs="0" name="SpatialReference" type="e:SpatialReference"/>
            <xs:element minOccurs="0" name="TransparentColor" type="e:Color"/>
            <xs:element minOccurs="0" name="SelectionColor" type="e:Color"/>
            <xs:element minOccurs="0" name="BackgroundSymbol" type="e:FillSymbol"/>
            <xs:element minOccurs="0" name="CustomGraphics" type="e:ArrayOfGraphicElement"/>
            <xs:element minOccurs="0" name="GeoTransformation" type="e:GeoTransformation"/>
            <xs:element minOccurs="0" name="TimeReference" type="e:TimeReference"/>
            <xs:element minOccurs="0" name="TimeValue" type="e:TimeValue"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="MapExtent">
        <xs:complexContent>
            <xs:extension base="e:MapArea"/>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="MapImage">
        <xs:sequence>
            <xs:element minOccurs="0" name="ImageData" type="xs:base64Binary">
                <xs:annotation>
                    <xs:documentation>Binary data representing the generated image.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element name="ImageURL" type="xs:string">
                <xs:annotation>
                    <xs:documentation>The URL of the generated image.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element minOccurs="0" name="Extent" type="e:Envelope">
                <xs:annotation>
                    <xs:documentation>The extent of the map frame on the page.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element minOccurs="0" name="VisibleLayerIDs" type="e:ArrayOfInt">
                <xs:annotation>
                    <xs:documentation>Array of the visible layers drawn for the generated map scale.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element name="MapScale" type="xs:double"/>
            <xs:element name="ImageHeight" type="xs:int">
                <xs:annotation>
                    <xs:documentation>The height of the image in pixels.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element name="ImageWidth" type="xs:int">
                <xs:annotation>
                    <xs:documentation>The width of the image in pixels.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element name="ImageDPI" type="xs:double">
                <xs:annotation>
                    <xs:documentation>The device resolution of the image specified in the request (dots per inch).</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element minOccurs="0" name="ImageType" type="xs:string">
                <xs:annotation>
                    <xs:documentation>The MIME type of the image data.</xs:documentation>
                </xs:annotation>
            </xs:element>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="MapLayerInfo">
        <xs:complexContent>
            <xs:extension base="e:MapTableInfo">
                <xs:sequence>
                    <xs:element name="LayerID" type="xs:int">
                        <xs:annotation>
                            <xs:documentation>The layer identifier. This ID is used throughout to uniquely identify the layer for all requests.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element name="Name" type="xs:string"/>
                    <xs:element name="Description" type="xs:string"/>
                    <xs:element name="LayerType" type="xs:string">
                        <xs:annotation>
                            <xs:documentation>The layer type.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element name="SourceDescription" type="xs:string"/>
                    <xs:element name="HasLabels" type="xs:boolean"/>
                    <xs:element name="CanSelect" type="xs:boolean"/>
                    <xs:element name="CanScaleSymbols" type="xs:boolean"/>
                    <xs:element name="MinScale" type="xs:double"/>
                    <xs:element name="MaxScale" type="xs:double"/>
                    <xs:element minOccurs="0" name="Extent" type="e:Envelope"/>
                    <xs:element name="HasHyperlinks" type="xs:boolean"/>
                    <xs:element name="HasAttributes" type="xs:boolean"/>
                    <xs:element name="CanIdentify" type="xs:boolean"/>
                    <xs:element name="CanFind" type="xs:boolean"/>
                    <xs:element name="IsFeatureLayer" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="Fields" type="e:Fields"/>
                    <xs:element name="DisplayField" type="xs:string"/>
                    <xs:element name="IDField" type="xs:string"/>
                    <xs:element name="IsComposite" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="SubLayerIDs" type="e:ArrayOfInt">
                        <xs:annotation>
                            <xs:documentation>The list identifying the sublayers if the layer is a composite layer.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element name="ParentLayerID" type="xs:int"/>
                    <xs:element minOccurs="0" name="FieldAliases" type="e:ArrayOfString"/>
                    <xs:element name="CopyrightText" type="xs:string"/>
                    <xs:element minOccurs="0" name="RelateInfos" type="e:ArrayOfRelateInfo"/>
                    <xs:element minOccurs="0" name="SubtypeFieldName" type="xs:string"/>
                    <xs:element minOccurs="0" name="DefaultSubtypeCode" type="xs:int"/>
                    <xs:element minOccurs="0" name="SubtypeInfos" type="e:ArrayOfSubtypeInfo"/>
                    <xs:element minOccurs="0" name="SupportsTime" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="StartTimeFieldName" type="xs:string"/>
                    <xs:element minOccurs="0" name="EndTimeFieldName" type="xs:string"/>
                    <xs:element minOccurs="0" name="TimeValueFormat" type="xs:string"/>
                    <xs:element minOccurs="0" name="TrackIDFieldName" type="xs:string"/>
                    <xs:element minOccurs="0" name="TimeReference" type="e:TimeReference"/>
                    <xs:element minOccurs="0" name="FullTimeExtent" type="e:TimeExtent"/>
                    <xs:element default="0.0" minOccurs="0" name="TimeInterval" type="xs:double"/>
                    <xs:element minOccurs="0" name="TimeIntervalUnits" type="e:esriTimeUnits"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="MapServerBookmark">
        <xs:complexContent>
            <xs:extension base="e:MapArea">
                <xs:sequence>
                    <xs:element name="Name" type="xs:string"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="MapServerFindResult">
        <xs:sequence>
            <xs:element name="Value" type="xs:string"/>
            <xs:element name="LayerID" type="xs:int"/>
            <xs:element name="FeatureID" type="xs:int">
                <xs:annotation>
                    <xs:documentation>The ID of the found feature.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element name="FieldName" type="xs:string"/>
            <xs:element minOccurs="0" name="Shape" type="e:Geometry">
                <xs:annotation>
                    <xs:documentation>The geometry of the found feature.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element minOccurs="0" name="Properties" type="e:PropertySet">
                <xs:annotation>
                    <xs:documentation>A set of name-value pairs for the found features's field names and values.</xs:documentation>
                </xs:annotation>
            </xs:element>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="MapServerHyperlink">
        <xs:sequence>
            <xs:element minOccurs="0" name="Location" type="e:Geometry"/>
            <xs:element name="URL" type="xs:string"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="MapServerIdentifyResult">
        <xs:sequence>
            <xs:element name="LayerID" type="xs:int"/>
            <xs:element name="Name" type="xs:string"/>
            <xs:element minOccurs="0" name="Properties" type="e:PropertySet"/>
            <xs:element minOccurs="0" name="Shape" type="e:Geometry"/>
            <xs:element minOccurs="0" name="Relationships" type="e:ArrayOfMapServerRelationship">
                <xs:annotation>
                    <xs:documentation>The related rows (relationships) of the identified object.</xs:documentation>
                </xs:annotation>
            </xs:element>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="MapServerInfo">
        <xs:sequence>
            <xs:element name="Name" type="xs:string"/>
            <xs:element name="Description" type="xs:string"/>
            <xs:element minOccurs="0" name="FullExtent" type="e:Envelope"/>
            <xs:element minOccurs="0" name="Extent" type="e:Envelope"/>
            <xs:element minOccurs="0" name="SpatialReference" type="e:SpatialReference">
                <xs:annotation>
                    <xs:documentation>The spatial reference of the map (data frame).</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element minOccurs="0" name="MapLayerInfos" type="e:ArrayOfMapLayerInfo"/>
            <xs:element minOccurs="0" name="BackgroundColor" type="e:Color"/>
            <xs:element minOccurs="0" name="Bookmarks" type="e:ArrayOfMapServerBookmark"/>
            <xs:element minOccurs="0" name="DefaultMapDescription" type="e:MapDescription"/>
            <xs:element name="Units" type="e:esriUnits">
                <xs:annotation>
                    <xs:documentation>The units for the map (data frame).</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element name="SupportedImageReturnTypes" type="e:esriImageReturnType"/>
            <xs:element minOccurs="0" name="BackgroundSymbol" type="e:FillSymbol"/>
            <xs:element name="CopyrightText" type="xs:string"/>
            <xs:element minOccurs="0" name="StandaloneTableInfos" type="e:ArrayOfStandaloneTableInfo"/>
            <xs:element minOccurs="0" name="StandaloneTableDescriptions" type="e:ArrayOfStandaloneTableDescription"/>
            <xs:element minOccurs="0" name="FullTimeExtent" type="e:TimeExtent"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="MapServerLegendClass">
        <xs:sequence>
            <xs:element name="Label" type="xs:string"/>
            <xs:element name="Description" type="xs:string"/>
            <xs:element minOccurs="0" name="SymbolImage" type="e:ImageResult"/>
            <xs:element minOccurs="0" name="TransparentColor" type="e:Color"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="MapServerLegendGroup">
        <xs:sequence>
            <xs:element name="Heading" type="xs:string"/>
            <xs:element minOccurs="0" name="LegendClasses" type="e:ArrayOfMapServerLegendClass">
                <xs:annotation>
                    <xs:documentation>A collection of legend class objects.</xs:documentation>
                </xs:annotation>
            </xs:element>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="MapServerLegendInfo">
        <xs:sequence>
            <xs:element name="LayerID" type="xs:int"/>
            <xs:element name="Name" type="xs:string">
                <xs:annotation>
                    <xs:documentation>The layer name.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element minOccurs="0" name="LegendGroups" type="e:ArrayOfMapServerLegendGroup"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="MapServerLegendPatch">
        <xs:sequence>
            <xs:element name="Width" type="xs:double">
                <xs:annotation>
                    <xs:documentation>The patch width (in points).</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element name="Height" type="xs:double">
                <xs:annotation>
                    <xs:documentation>The patch width (in points).</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element name="ImageDPI" type="xs:double">
                <xs:annotation>
                    <xs:documentation>The patch resolution (dots per inch).</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element minOccurs="0" name="LinePatch" type="e:LinePatch"/>
            <xs:element minOccurs="0" name="AreaPatch" type="e:AreaPatch"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="MapServerRelationship">
        <xs:sequence>
            <xs:element name="Name" type="xs:string"/>
            <xs:element minOccurs="0" name="Rows" type="e:ArrayOfMapServerRow"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="MapServerRow">
        <xs:sequence>
            <xs:element name="Name" type="xs:string"/>
            <xs:element minOccurs="0" name="Properties" type="e:PropertySet">
                <xs:annotation>
                    <xs:documentation>A set of name-value pairs for the row's field names and values.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element minOccurs="0" name="Relationships" type="e:ArrayOfMapServerRelationship">
                <xs:annotation>
                    <xs:documentation>The related rows (relationships).</xs:documentation>
                </xs:annotation>
            </xs:element>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType abstract="true" name="ScaleBar">
        <xs:sequence>
            <xs:element minOccurs="0" name="BarHeight" type="xs:double"/>
            <xs:element minOccurs="0" name="Division" type="xs:double"/>
            <xs:element minOccurs="0" name="Divisions" type="xs:short"/>
            <xs:element minOccurs="0" name="DivisionsBeforeZero" type="xs:short"/>
            <xs:element minOccurs="0" name="Subdivisions" type="xs:short"/>
            <xs:element minOccurs="0" name="Units" type="e:esriUnits"/>
            <xs:element minOccurs="0" name="UnitLabel" type="xs:string"/>
            <xs:element minOccurs="0" name="UnitLabelPosition" type="e:esriScaleBarPos"/>
            <xs:element minOccurs="0" name="UnitLabelGap" type="xs:double"/>
            <xs:element minOccurs="0" name="UnitLabelSymbol" type="e:TextSymbol"/>
            <xs:element minOccurs="0" name="LabelFrequency" type="e:esriScaleBarFrequency"/>
            <xs:element minOccurs="0" name="LabelPosition" type="e:esriVertPosEnum"/>
            <xs:element minOccurs="0" name="LabelGap" type="xs:double"/>
            <xs:element minOccurs="0" name="LabelSymbol" type="e:TextSymbol"/>
            <xs:element minOccurs="0" name="NumberFormat" type="e:NumericFormat"/>
            <xs:element minOccurs="0" name="ResizeHint" type="e:esriScaleBarResizeHint"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="AlternatingScaleBar">
        <xs:complexContent>
            <xs:extension base="e:ScaleBar">
                <xs:sequence>
                    <xs:element minOccurs="0" name="FillSymbol1" type="e:FillSymbol"/>
                    <xs:element minOccurs="0" name="FillSymbol2" type="e:FillSymbol"/>
                    <xs:element minOccurs="0" name="DivisionMarkSymbol" type="e:LineSymbol"/>
                    <xs:element minOccurs="0" name="SubdivisionMarkSymbol" type="e:LineSymbol"/>
                    <xs:element minOccurs="0" name="DivisionMarkHeight" type="xs:double"/>
                    <xs:element minOccurs="0" name="SubdivisionMarkHeight" type="xs:double"/>
                    <xs:element minOccurs="0" name="MarkPosition" type="e:esriVertPosEnum"/>
                    <xs:element minOccurs="0" name="MarkFrequency" type="e:esriScaleBarFrequency"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="SingleDivisionScaleBar">
        <xs:complexContent>
            <xs:extension base="e:ScaleBar">
                <xs:sequence>
                    <xs:element minOccurs="0" name="FillSymbol" type="e:FillSymbol"/>
                    <xs:element minOccurs="0" name="DivisionMarkSymbol" type="e:LineSymbol"/>
                    <xs:element minOccurs="0" name="SubdivisionMarkSymbol" type="e:LineSymbol"/>
                    <xs:element minOccurs="0" name="DivisionMarkHeight" type="xs:double"/>
                    <xs:element minOccurs="0" name="SubdivisionMarkHeight" type="xs:double"/>
                    <xs:element minOccurs="0" name="MarkPosition" type="e:esriVertPosEnum"/>
                    <xs:element minOccurs="0" name="MarkFrequency" type="e:esriScaleBarFrequency"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="SQLSyntaxInfo">
        <xs:sequence>
            <xs:element minOccurs="0" name="FunctionNames" type="e:PropertySet"/>
            <xs:element minOccurs="0" name="SpecialCharacters" type="e:PropertySet"/>
            <xs:element minOccurs="0" name="SupportedPredicates" type="e:ArrayOfString"/>
            <xs:element minOccurs="0" name="SupportedClauses" type="e:ArrayOfString"/>
            <xs:element name="IdentifierCase" type="xs:boolean"/>
            <xs:element name="DelimitedIdentifierCase" type="xs:boolean"/>
            <xs:element name="StringComparisonCase" type="xs:boolean"/>
            <xs:element minOccurs="0" name="Keywords" type="e:ArrayOfString"/>
            <xs:element name="InvalidCharacters" type="xs:string"/>
            <xs:element name="InvalidStartingCharacters" type="xs:string"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType abstract="true" name="Shadow">
        <xs:sequence/>
    </xs:complexType>
    <xs:complexType abstract="true" name="Background">
        <xs:sequence/>
    </xs:complexType>
    <xs:complexType name="SymbolBackground">
        <xs:complexContent>
            <xs:extension base="e:Background">
                <xs:sequence>
                    <xs:element name="HorizontalGap" type="xs:double">
                        <xs:annotation>
                            <xs:documentation>Horizontal offset or gap between the decoration and the subject in points.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element name="CornerRounding" type="xs:short"/>
                    <xs:element name="VerticalGap" type="xs:double">
                        <xs:annotation>
                            <xs:documentation>Vertical offset or gap between the decoration and the subject in points.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="Symbol" type="e:FillSymbol">
                        <xs:annotation>
                            <xs:documentation>Symbol used to draw the background.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType abstract="true" name="Border">
        <xs:sequence/>
    </xs:complexType>
    <xs:complexType name="SymbolBorder">
        <xs:complexContent>
            <xs:extension base="e:Border">
                <xs:sequence>
                    <xs:element name="HorizontalGap" type="xs:double">
                        <xs:annotation>
                            <xs:documentation>Horizontal offset or gap between the decoration and the subject in points.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element name="CornerRounding" type="xs:short"/>
                    <xs:element name="VerticalGap" type="xs:double">
                        <xs:annotation>
                            <xs:documentation>Vertical offset or gap between the decoration and the subject in points.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="Symbol" type="e:LineSymbol">
                        <xs:annotation>
                            <xs:documentation>Symbol used to draw the border.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="SymbolShadow">
        <xs:complexContent>
            <xs:extension base="e:Shadow">
                <xs:sequence>
                    <xs:element minOccurs="0" name="Symbol" type="e:LineSymbol">
                        <xs:annotation>
                            <xs:documentation>Symbol used to draw the shadow.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element name="CornerRounding" type="xs:short"/>
                    <xs:element name="HorizontalOffset" type="xs:double">
                        <xs:annotation>
                            <xs:documentation>Horizontal offset or gap between the decoration and the subject in points.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element name="VerticalOffset" type="xs:double">
                        <xs:annotation>
                            <xs:documentation>Vertical offset or gap between the decoration and the subject in points.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType abstract="true" name="Element">
        <xs:sequence/>
    </xs:complexType>
    <xs:complexType abstract="true" name="GraphicElement">
        <xs:complexContent>
            <xs:extension base="e:Element">
                <xs:sequence/>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="LineElement">
        <xs:complexContent>
            <xs:extension base="e:GraphicElement">
                <xs:sequence>
                    <xs:element minOccurs="0" name="Name" type="xs:string"/>
                    <xs:element minOccurs="0" name="Type" type="xs:string"/>
                    <xs:element minOccurs="0" name="AutoTransform" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="ReferenceScale" type="xs:double"/>
                    <xs:element minOccurs="0" name="Symbol" type="e:Symbol"/>
                    <xs:element name="Line" type="e:Geometry">
                        <xs:annotation>
                            <xs:documentation>Shape of the element as a geometry, in this case it is a PolyLine.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="Locked" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="FixedAspectRatio" type="xs:boolean"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="CircleElement">
        <xs:complexContent>
            <xs:extension base="e:GraphicElement">
                <xs:sequence>
                    <xs:element name="Rectangle" type="e:Geometry">
                        <xs:annotation>
                            <xs:documentation>Shape of the element as a geometry, in this case it is a Polygon or an Envelope.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="Locked" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="FixedAspectRatio" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="Name" type="xs:string"/>
                    <xs:element minOccurs="0" name="Type" type="xs:string"/>
                    <xs:element minOccurs="0" name="AutoTransform" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="ReferenceScale" type="xs:double"/>
                    <xs:element minOccurs="0" name="Symbol" type="e:Symbol"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="EllipseElement">
        <xs:complexContent>
            <xs:extension base="e:GraphicElement">
                <xs:sequence>
                    <xs:element name="Rectangle" type="e:Geometry">
                        <xs:annotation>
                            <xs:documentation>Shape of the element as a geometry, in this case it is a Polygon or an Envelope.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="Locked" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="FixedAspectRatio" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="Name" type="xs:string"/>
                    <xs:element minOccurs="0" name="Type" type="xs:string"/>
                    <xs:element minOccurs="0" name="AutoTransform" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="ReferenceScale" type="xs:double"/>
                    <xs:element minOccurs="0" name="Symbol" type="e:Symbol"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="GroupElement">
        <xs:complexContent>
            <xs:extension base="e:Element">
                <xs:sequence>
                    <xs:element minOccurs="0" name="Name" type="xs:string"/>
                    <xs:element minOccurs="0" name="Type" type="xs:string"/>
                    <xs:element minOccurs="0" name="AutoTransform" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="ReferenceScale" type="xs:double"/>
                    <xs:element name="Elements" type="e:ArrayOfGraphicElement"/>
                    <xs:element minOccurs="0" name="Rectangle" type="e:Geometry">
                        <xs:annotation>
                            <xs:documentation>Shape of the element as a geometry.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="Locked" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="FixedAspectRatio" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="Border" type="e:Border"/>
                    <xs:element minOccurs="0" name="Background" type="e:Background"/>
                    <xs:element minOccurs="0" name="DraftMode" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="Shadow" type="e:Shadow"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="MarkerElement">
        <xs:complexContent>
            <xs:extension base="e:GraphicElement">
                <xs:sequence>
                    <xs:element minOccurs="0" name="Name" type="xs:string"/>
                    <xs:element minOccurs="0" name="Type" type="xs:string"/>
                    <xs:element minOccurs="0" name="AutoTransform" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="ReferenceScale" type="xs:double"/>
                    <xs:element minOccurs="0" name="Symbol" type="e:Symbol"/>
                    <xs:element name="Point" type="e:Point">
                        <xs:annotation>
                            <xs:documentation>Shape of the element as a geometry, in this case it is a Point.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="Locked" type="xs:boolean"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="ParagraphTextElement">
        <xs:complexContent>
            <xs:extension base="e:GraphicElement">
                <xs:sequence>
                    <xs:element minOccurs="0" name="Name" type="xs:string"/>
                    <xs:element minOccurs="0" name="Type" type="xs:string"/>
                    <xs:element minOccurs="0" name="AutoTransform" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="ReferenceScale" type="xs:double"/>
                    <xs:element minOccurs="0" name="Text" type="xs:string"/>
                    <xs:element minOccurs="0" name="Scale" type="xs:double">
                        <xs:annotation>
                            <xs:documentation>Should have been boolean type. Indicates if the text scales with the map.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="Symbol" type="e:Symbol"/>
                    <xs:element name="TextGeometry" type="e:Geometry">
                        <xs:annotation>
                            <xs:documentation>Shape of the element as a geometry, in this case it is a .</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="Locked" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="FrameBorder" type="e:Border">
                        <xs:annotation>
                            <xs:documentation>Frame border used by this element.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="FrameBackground" type="e:Background">
                        <xs:annotation>
                            <xs:documentation>Frame background used by this element.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="FrameShadow" type="e:Shadow">
                        <xs:annotation>
                            <xs:documentation>"Frame shadow used by this element.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="ColumnGap" type="xs:double">
                        <xs:annotation>
                            <xs:documentation>Gap between columns in points.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="ColumnCount" type="xs:int">
                        <xs:annotation>
                            <xs:documentation>Number of columns.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="Margin" type="xs:double">
                        <xs:annotation>
                            <xs:documentation>Value for the margin.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="PolygonElement">
        <xs:complexContent>
            <xs:extension base="e:GraphicElement">
                <xs:sequence>
                    <xs:element minOccurs="0" name="Name" type="xs:string"/>
                    <xs:element minOccurs="0" name="Type" type="xs:string"/>
                    <xs:element minOccurs="0" name="AutoTransform" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="ReferenceScale" type="xs:double"/>
                    <xs:element minOccurs="0" name="Symbol" type="e:Symbol"/>
                    <xs:element name="Polygon" type="e:Geometry">
                        <xs:annotation>
                            <xs:documentation>Shape of the element as a geometry, in this case it is a Polygon.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="Locked" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="FixedAspectRatio" type="xs:boolean">
                        <xs:annotation>
                            <xs:documentation>Indicates if the bounds has a fixed aspect ratio.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="RectangleElement">
        <xs:complexContent>
            <xs:extension base="e:GraphicElement">
                <xs:sequence>
                    <xs:element name="Rectangle" type="e:Geometry">
                        <xs:annotation>
                            <xs:documentation>Shape of the element as a geometry, in this case it is a Polygon.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="Locked" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="FixedAspectRatio" type="xs:boolean">
                        <xs:annotation>
                            <xs:documentation>Indicates if the bounds has a fixed aspect ratio.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="Name" type="xs:string"/>
                    <xs:element minOccurs="0" name="Type" type="xs:string"/>
                    <xs:element minOccurs="0" name="AutoTransform" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="ReferenceScale" type="xs:double"/>
                    <xs:element minOccurs="0" name="Symbol" type="e:Symbol"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="TextElement">
        <xs:complexContent>
            <xs:extension base="e:GraphicElement">
                <xs:sequence>
                    <xs:element minOccurs="0" name="Name" type="xs:string"/>
                    <xs:element minOccurs="0" name="Type" type="xs:string"/>
                    <xs:element minOccurs="0" name="AutoTransform" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="ReferenceScale" type="xs:double"/>
                    <xs:element minOccurs="0" name="Text" type="xs:string"/>
                    <xs:element minOccurs="0" name="Scale" type="xs:boolean">
                        <xs:annotation>
                            <xs:documentation>Indicates if the text scales with the map.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="Symbol" type="e:Symbol"/>
                    <xs:element name="TextGeometry" type="e:Geometry"/>
                    <xs:element minOccurs="0" name="Locked" type="xs:boolean"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="Patch">
        <xs:sequence>
            <xs:element minOccurs="0" name="Name" type="xs:string"/>
            <xs:element minOccurs="0" name="PreserveAspectRatio" type="xs:boolean"/>
            <xs:element minOccurs="0" name="Geometry" type="e:Geometry">
                <xs:annotation>
                    <xs:documentation>Patch geometry sized to fit the specified bounds.</xs:documentation>
                </xs:annotation>
            </xs:element>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="TileImageInfo">
        <xs:sequence>
            <xs:element name="CacheTileFormat" type="xs:string">
                <xs:annotation>
                    <xs:documentation>The cache tile format.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element name="CompressionQuality" type="xs:int">
                <xs:annotation>
                    <xs:documentation>The cache tile image compression quality.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element name="Antialiasing" type="xs:string"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="CacheStorageInfo">
        <xs:sequence>
            <xs:element name="StorageFormat" type="e:esriMapCacheStorageFormat">
                <xs:annotation>
                    <xs:documentation>The tile storage format.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element name="PacketSize" type="xs:int">
                <xs:annotation>
                    <xs:documentation>The cache tile packet size.</xs:documentation>
                </xs:annotation>
            </xs:element>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ImageQueryFilter">
        <xs:complexContent>
            <xs:extension base="e:TimeQueryFilter">
                <xs:sequence>
                    <xs:element name="PixelSize" type="e:Point"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="LayerCacheInfo">
        <xs:sequence>
            <xs:element name="LayerID" type="xs:int"/>
            <xs:element name="HasCache" type="xs:boolean"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ArrayOfLayerCacheInfo">
        <xs:sequence>
            <xs:element name="LayerCacheInfo" type="e:LayerCacheInfo"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="CacheDescriptionInfo">
        <xs:sequence>
            <xs:element name="TileCacheInfo" type="e:TileCacheInfo"/>
            <xs:element name="TileImageInfo" type="e:TileImageInfo"/>
            <xs:element name="LayerCacheInfos" type="e:ArrayOfLayerCacheInfo"/>
            <xs:element name="CacheControlInfo" type="e:CacheControlInfo"/>
            <xs:element name="ServiceType" type="e:esriCachedMapServiceType"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="CacheControlInfo">
        <xs:sequence>
            <xs:element name="ClientCachingAllowed" type="xs:boolean"/>
        </xs:sequence>
    </xs:complexType>
    <xs:simpleType name="esriCachedMapServiceType">
        <xs:annotation/>
        <xs:restriction base="xs:string">
            <xs:enumeration value="esriSingleFusedMapCache"/>
            <xs:enumeration value="esriIndividualLayerCaches"/>
        </xs:restriction>
    </xs:simpleType>
    <xs:simpleType name="esriQueryResultFormat">
        <xs:annotation/>
        <xs:restriction base="xs:string">
            <xs:enumeration value="esriQueryResultRecordSetAsObject"/>
            <xs:enumeration value="esriQueryResultJsonAsMime"/>
            <xs:enumeration value="esriQueryResultJsonAsURL"/>
            <xs:enumeration value="esriQueryResultAmfAsMime"/>
            <xs:enumeration value="esriQueryResultAmfAsURL"/>
            <xs:enumeration value="esriQueryResultKMLAsMime"/>
            <xs:enumeration value="esriQueryResultKMLAsURL"/>
        </xs:restriction>
    </xs:simpleType>
    <xs:complexType name="QueryResultOptions">
        <xs:sequence>
            <xs:element name="Format" type="e:esriQueryResultFormat">
                <xs:annotation>
                    <xs:documentation>The query result format.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element minOccurs="0" name="FormatProperties" type="e:PropertySet">
                <xs:annotation>
                    <xs:documentation>Format properties specific to result format.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element minOccurs="0" name="GeoTransformation" type="e:GeoTransformation">
                <xs:annotation>
                    <xs:documentation>Geographic Transformation.</xs:documentation>
                </xs:annotation>
            </xs:element>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="QueryResult">
        <xs:sequence>
            <xs:element minOccurs="0" name="MimeData" type="xs:base64Binary">
                <xs:annotation>
                    <xs:documentation>Binary data representing the generated result in the requested format.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element name="URL" type="xs:string">
                <xs:annotation>
                    <xs:documentation>The URL of the generated query result in the requested format.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element name="Object" type="xs:anyType">
                <xs:annotation>
                    <xs:documentation>The Object representing generated query result in the requested format.</xs:documentation>
                </xs:annotation>
            </xs:element>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType abstract="true" name="MapTableInfo">
        <xs:sequence/>
    </xs:complexType>
    <xs:complexType abstract="true" name="MapTableDescription">
        <xs:sequence/>
    </xs:complexType>
    <xs:complexType name="StandaloneTableInfo">
        <xs:complexContent>
            <xs:extension base="e:MapTableInfo">
                <xs:sequence>
                    <xs:element name="ID" type="xs:int">
                        <xs:annotation>
                            <xs:documentation>The table identifier. This ID is used throughout to uniquely identify the layer for all requests.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element name="Name" type="xs:string"/>
                    <xs:element minOccurs="0" name="Fields" type="e:Fields"/>
                    <xs:element minOccurs="0" name="RelateInfos" type="e:ArrayOfRelateInfo"/>
                    <xs:element minOccurs="0" name="SubtypeFieldName" type="xs:string"/>
                    <xs:element minOccurs="0" name="DefaultSubtypeCode" type="xs:int"/>
                    <xs:element minOccurs="0" name="SubtypeInfos" type="e:ArrayOfSubtypeInfo"/>
                    <xs:element minOccurs="0" name="SupportsTime" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="StartTimeFieldName" type="xs:string"/>
                    <xs:element minOccurs="0" name="EndTimeFieldName" type="xs:string"/>
                    <xs:element minOccurs="0" name="TimeValueFormat" type="xs:string"/>
                    <xs:element minOccurs="0" name="TrackIDFieldName" type="xs:string"/>
                    <xs:element minOccurs="0" name="TimeReference" type="e:TimeReference"/>
                    <xs:element minOccurs="0" name="FullTimeExtent" type="e:TimeExtent"/>
                    <xs:element default="0.0" minOccurs="0" name="TimeInterval" type="xs:double"/>
                    <xs:element minOccurs="0" name="TimeIntervalUnits" type="e:esriTimeUnits"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="StandaloneTableDescription">
        <xs:complexContent>
            <xs:extension base="e:MapTableDescription">
                <xs:sequence>
                    <xs:element name="ID" type="xs:int">
                        <xs:annotation>
                            <xs:documentation>The table ID. This is a unique ID for the table, and is used to identify the table in a number of method calls.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="DefinitionExpression" type="xs:string"/>
                    <xs:element minOccurs="0" name="SourceID" type="xs:string"/>
                    <xs:element minOccurs="0" name="UseTime" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="TimeDataCumulative" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="TimeOffset" type="xs:double"/>
                    <xs:element minOccurs="0" name="TimeOffsetUnits" type="e:esriTimeUnits"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="RelateInfo">
        <xs:sequence>
            <xs:element name="Name" type="xs:string"/>
            <xs:element name="RelationshipID" type="xs:int"/>
            <xs:element name="RelatedTableID" type="xs:int"/>
        </xs:sequence>
    </xs:complexType>
    <xs:simpleType name="esriRelateResultFormat">
        <xs:annotation/>
        <xs:restriction base="xs:string">
            <xs:enumeration value="esriRelateResultRelatedRecordSetAsObject"/>
            <xs:enumeration value="esriRelateResultJsonAsMime"/>
            <xs:enumeration value="esriRelateResultJsonAsURL"/>
            <xs:enumeration value="esriRelateResultAmfAsMime"/>
            <xs:enumeration value="esriRelateResultAmfAsURL"/>
        </xs:restriction>
    </xs:simpleType>
    <xs:complexType name="RelateDescription">
        <xs:sequence>
            <xs:element name="RelationshipID" type="xs:int"/>
            <xs:element minOccurs="0" name="RelatedTableDefinitionExpression" type="xs:string"/>
            <xs:element minOccurs="0" name="RelatedTableFields" type="xs:string"/>
            <xs:element minOccurs="0" name="OutputSpatialReference" type="e:SpatialReference"/>
            <xs:element minOccurs="0" name="GeoTransformation" type="e:GeoTransformation"/>
            <xs:element default="true" minOccurs="0" name="IncludeGeometry" type="xs:boolean"/>
            <xs:element minOccurs="0" name="GeometryResultOptions" type="e:GeometryResultOptions"/>
            <xs:element name="ResultFormat" type="e:esriRelateResultFormat"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="MapServerForceDeriveFromAnyType">
        <xs:sequence>
            <xs:element name="RelatedRecordSet" type="e:RelatedRecordSet"/>
            <xs:element name="FieldDomainInfo" type="e:FieldDomainInfo"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="RelatedRecordSet">
        <xs:sequence>
            <xs:element name="RelatedRecordFields" type="e:Fields"/>
            <xs:element name="RelatedRecordGroups" type="e:ArrayOfRelatedRecordGroup"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="RelatedRecordGroup">
        <xs:sequence>
            <xs:element name="SourceRowID" type="xs:int"/>
            <xs:element name="Records" type="e:ArrayOfRecord"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="SubtypeInfo">
        <xs:sequence>
            <xs:element name="SubtypeCode" type="xs:int"/>
            <xs:element name="SubtypeName" type="xs:string"/>
            <xs:element name="FieldDomainInfos" type="e:ArrayOfFieldDomainInfo"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="FieldDomainInfo">
        <xs:sequence>
            <xs:element name="FieldName" type="xs:string"/>
            <xs:element name="Domain" type="e:Domain"/>
            <xs:element name="DefaultValue" nillable="true" type="xs:anyType"/>
        </xs:sequence>
    </xs:complexType>
    <xs:simpleType name="esriTimeRelation">
        <xs:annotation/>
        <xs:restriction base="xs:string">
            <xs:enumeration value="esriTimeRelationOverlaps"/>
        </xs:restriction>
    </xs:simpleType>
    <xs:complexType name="TimeQueryFilter">
        <xs:complexContent>
            <xs:extension base="e:SpatialFilter">
                <xs:sequence>
                    <xs:element name="TimeValue" type="e:TimeValue"/>
                    <xs:element name="OutputTimeReference" type="e:TimeReference"/>
                    <xs:element name="TimeRelation" type="e:esriTimeRelation"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="ArrayOfImageResult">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="ImageResult" type="e:ImageResult"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType abstract="true" name="Color">
        <xs:sequence>
            <xs:element minOccurs="0" name="UseWindowsDithering" type="xs:boolean"/>
            <xs:element minOccurs="0" name="AlphaValue" type="xs:unsignedByte">
                <xs:annotation>
                    <xs:documentation>The Alpha Blending value. (0 for transparent, 255 for opaque).</xs:documentation>
                </xs:annotation>
            </xs:element>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="GrayColor">
        <xs:complexContent>
            <xs:extension base="e:Color">
                <xs:sequence>
                    <xs:element name="GrayLevel" type="xs:unsignedByte"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="RgbColor">
        <xs:complexContent>
            <xs:extension base="e:Color">
                <xs:sequence>
                    <xs:element name="Red" type="xs:unsignedByte"/>
                    <xs:element name="Green" type="xs:unsignedByte"/>
                    <xs:element name="Blue" type="xs:unsignedByte"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="CmykColor">
        <xs:complexContent>
            <xs:extension base="e:Color">
                <xs:sequence>
                    <xs:element name="Cyan" type="xs:unsignedByte"/>
                    <xs:element name="Magenta" type="xs:unsignedByte"/>
                    <xs:element name="Yellow" type="xs:unsignedByte"/>
                    <xs:element name="Black" type="xs:unsignedByte"/>
                    <xs:element name="Overprint" type="xs:boolean"/>
                    <xs:element name="IsSpot" type="xs:boolean">
                        <xs:annotation>
                            <xs:documentation>Indicates if the color is a spot color.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element name="SpotDescription" type="xs:string"/>
                    <xs:element name="SpotPercent" type="xs:short">
                        <xs:annotation>
                            <xs:documentation>The saturation of the spot plate.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="HlsColor">
        <xs:complexContent>
            <xs:extension base="e:Color">
                <xs:sequence>
                    <xs:element name="Hue" type="xs:short"/>
                    <xs:element name="Lightness" type="xs:unsignedByte"/>
                    <xs:element name="Saturation" type="xs:unsignedByte"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="HsvColor">
        <xs:complexContent>
            <xs:extension base="e:Color">
                <xs:sequence>
                    <xs:element name="Hue" type="xs:short"/>
                    <xs:element name="Saturation" type="xs:unsignedByte"/>
                    <xs:element name="Value" type="xs:unsignedByte"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType abstract="true" name="Symbol">
        <xs:sequence/>
    </xs:complexType>
    <xs:simpleType name="esriSimpleFillStyle">
        <xs:annotation/>
        <xs:restriction base="xs:string">
            <xs:enumeration value="esriSFSSolid"/>
            <xs:enumeration value="esriSFSNull"/>
            <xs:enumeration value="esriSFSHorizontal"/>
            <xs:enumeration value="esriSFSVertical"/>
            <xs:enumeration value="esriSFSForwardDiagonal"/>
            <xs:enumeration value="esriSFSBackwardDiagonal"/>
            <xs:enumeration value="esriSFSCross"/>
            <xs:enumeration value="esriSFSDiagonalCross"/>
        </xs:restriction>
    </xs:simpleType>
    <xs:simpleType name="esriSimpleLineStyle">
        <xs:annotation/>
        <xs:restriction base="xs:string">
            <xs:enumeration value="esriSLSSolid"/>
            <xs:enumeration value="esriSLSDash"/>
            <xs:enumeration value="esriSLSDot"/>
            <xs:enumeration value="esriSLSDashDot"/>
            <xs:enumeration value="esriSLSDashDotDot"/>
            <xs:enumeration value="esriSLSNull"/>
            <xs:enumeration value="esriSLSInsideFrame"/>
        </xs:restriction>
    </xs:simpleType>
    <xs:simpleType name="esriSimpleMarkerStyle">
        <xs:annotation/>
        <xs:restriction base="xs:string">
            <xs:enumeration value="esriSMSCircle"/>
            <xs:enumeration value="esriSMSSquare"/>
            <xs:enumeration value="esriSMSCross"/>
            <xs:enumeration value="esriSMSX"/>
            <xs:enumeration value="esriSMSDiamond"/>
        </xs:restriction>
    </xs:simpleType>
    <xs:simpleType name="esriTextHorizontalAlignment">
        <xs:annotation/>
        <xs:restriction base="xs:string">
            <xs:enumeration value="esriTHALeft"/>
            <xs:enumeration value="esriTHACenter"/>
            <xs:enumeration value="esriTHARight"/>
            <xs:enumeration value="esriTHAFull"/>
        </xs:restriction>
    </xs:simpleType>
    <xs:simpleType name="esriTextVerticalAlignment">
        <xs:annotation/>
        <xs:restriction base="xs:string">
            <xs:enumeration value="esriTVATop"/>
            <xs:enumeration value="esriTVACenter"/>
            <xs:enumeration value="esriTVABaseline"/>
            <xs:enumeration value="esriTVABottom"/>
        </xs:restriction>
    </xs:simpleType>
    <xs:simpleType name="esriTextPosition">
        <xs:annotation/>
        <xs:restriction base="xs:string">
            <xs:enumeration value="esriTPNormal"/>
            <xs:enumeration value="esriTPSuperscript"/>
            <xs:enumeration value="esriTPSubscript"/>
        </xs:restriction>
    </xs:simpleType>
    <xs:simpleType name="esriTextCase">
        <xs:annotation/>
        <xs:restriction base="xs:string">
            <xs:enumeration value="esriTCNormal"/>
            <xs:enumeration value="esriTCLowercase"/>
            <xs:enumeration value="esriTCAllCaps"/>
            <xs:enumeration value="esriTCSmallCaps"/>
        </xs:restriction>
    </xs:simpleType>
    <xs:simpleType name="esriTextDirection">
        <xs:annotation/>
        <xs:restriction base="xs:string">
            <xs:enumeration value="esriTDHorizontal"/>
            <xs:enumeration value="esriTDAngle"/>
            <xs:enumeration value="esriTDVertical"/>
        </xs:restriction>
    </xs:simpleType>
    <xs:simpleType name="esriMaskStyle">
        <xs:annotation/>
        <xs:restriction base="xs:string">
            <xs:enumeration value="esriMSNone"/>
            <xs:enumeration value="esriMSHalo"/>
        </xs:restriction>
    </xs:simpleType>
    <xs:complexType name="SimpleFillSymbol">
        <xs:complexContent>
            <xs:extension base="e:FillSymbol">
                <xs:sequence>
                    <xs:element name="Style" type="e:esriSimpleFillStyle"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="SimpleLineSymbol">
        <xs:complexContent>
            <xs:extension base="e:LineSymbol">
                <xs:sequence>
                    <xs:element name="Style" type="e:esriSimpleLineStyle"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="SimpleMarkerSymbol">
        <xs:complexContent>
            <xs:extension base="e:MarkerSymbol">
                <xs:sequence>
                    <xs:element name="Outline" type="xs:boolean"/>
                    <xs:element name="OutlineSize" type="xs:double"/>
                    <xs:element name="OutlineColor" type="e:Color"/>
                    <xs:element name="Style" type="e:esriSimpleMarkerStyle"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="TextSymbol">
        <xs:complexContent>
            <xs:extension base="e:Symbol">
                <xs:sequence>
                    <xs:element minOccurs="0" name="Color" type="e:Color">
                        <xs:annotation>
                            <xs:documentation>Text color."</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element name="BreakCharIndex" type="xs:int">
                        <xs:annotation>
                            <xs:documentation>Character to be interpreted as text line end.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element name="VerticalAlignment" type="e:esriTextVerticalAlignment">
                        <xs:annotation>
                            <xs:documentation>Vertical alignment style.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element name="HorizontalAlignment" type="e:esriTextHorizontalAlignment">
                        <xs:annotation>
                            <xs:documentation>Horizontal alignment style.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element name="Clip" type="xs:boolean"/>
                    <xs:element name="RightToLeft" type="xs:boolean">
                        <xs:annotation>
                            <xs:documentation>Indicates if the text is drawn from right to left.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element name="Angle" type="xs:double">
                        <xs:annotation>
                            <xs:documentation>Text baseline angle.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element name="XOffset" type="xs:double"/>
                    <xs:element name="YOffset" type="xs:double"/>
                    <xs:element minOccurs="0" name="ShadowColor" type="e:Color"/>
                    <xs:element name="ShadowXOffset" type="xs:double"/>
                    <xs:element name="ShadowYOffset" type="xs:double"/>
                    <xs:element name="TextPosition" type="e:esriTextPosition">
                        <xs:annotation>
                            <xs:documentation>The text position.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element name="TextCase" type="e:esriTextCase">
                        <xs:annotation>
                            <xs:documentation>The text case.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element name="CharacterSpacing" type="xs:double"/>
                    <xs:element default="100.0" name="CharacterWidth" type="xs:double"/>
                    <xs:element default="100.0" name="WordSpacing" type="xs:double"/>
                    <xs:element name="Kerning" type="xs:boolean"/>
                    <xs:element name="Leading" type="xs:double"/>
                    <xs:element name="TextDirection" type="e:esriTextDirection">
                        <xs:annotation>
                            <xs:documentation>The text direction.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element name="FlipAngle" type="xs:double"/>
                    <xs:element name="TypeSetting" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="TextPathClass" type="xs:string">
                        <xs:annotation>
                            <xs:documentation>Path of text baseline.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="FillSymbol" type="e:Symbol"/>
                    <xs:element name="Text" type="xs:string">
                        <xs:annotation>
                            <xs:documentation>Text to draw.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element name="Size" type="xs:double">
                        <xs:annotation>
                            <xs:documentation>Text size.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element name="MaskStyle" type="e:esriMaskStyle"/>
                    <xs:element name="MaskSize" type="xs:double"/>
                    <xs:element minOccurs="0" name="MaskSymbol" type="e:Symbol"/>
                    <xs:element minOccurs="0" name="FontName" type="xs:string">
                        <xs:annotation>
                            <xs:documentation>The name of the font family.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="FontItalic" type="xs:boolean">
                        <xs:annotation>
                            <xs:documentation>Indicates whether the font is italicized.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="FontUnderline" type="xs:boolean">
                        <xs:annotation>
                            <xs:documentation>Indicates whether the font is underlined.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="FontStrikethrough" type="xs:boolean">
                        <xs:annotation>
                            <xs:documentation>
                Indicates whether the font is strikethrough.
              </xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="FontWeight" type="xs:int">
                        <xs:annotation>
                            <xs:documentation>
                The boldness or weight of the font.
              </xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="FontCharset" type="xs:int">
                        <xs:annotation>
                            <xs:documentation>
                The character set used in the font, such as ANSI_CHARSET, DEFAULT_CHARSET, or SYMBOL_CHARSET.
              </xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="FontSizeHi" type="xs:int">
                        <xs:annotation>
                            <xs:documentation>
                Point size of the font expressed in a 64-bit CY variable whose upper 32-bits contains the integer point size.
              </xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="FontSizeLo" type="xs:int">
                        <xs:annotation>
                            <xs:documentation>
                Point size of the font expressed in a 64-bit CY variable whose lower 32-bits contains the fractional point size.
              </xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="TextParserClass" type="xs:string">
                        <xs:annotation>
                            <xs:documentation>Text Parser Class ID</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="CharacterMarkerSymbol">
        <xs:complexContent>
            <xs:extension base="e:CartographicMarkerSymbol">
                <xs:sequence>
                    <xs:element name="CharacterIndex" type="xs:int"/>
                    <xs:element minOccurs="0" name="FontName" type="xs:string">
                        <xs:annotation>
                            <xs:documentation>
                The name of the font family.
              </xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="FontItalic" type="xs:boolean">
                        <xs:annotation>
                            <xs:documentation>
                Indicates whether the font is italicized.
              </xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="FontUnderline" type="xs:boolean">
                        <xs:annotation>
                            <xs:documentation>
                Indicates whether the font is underlined.
              </xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="FontStrikethrough" type="xs:boolean">
                        <xs:annotation>
                            <xs:documentation>
                Indicates whether the font is strikethrough.
              </xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="FontWeight" type="xs:int">
                        <xs:annotation>
                            <xs:documentation>
                The boldness or weight of the font.
              </xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="FontCharset" type="xs:int">
                        <xs:annotation>
                            <xs:documentation>
                The character set used in the font, such as ANSI_CHARSET, DEFAULT_CHARSET, or SYMBOL_CHARSET.
              </xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="FontSizeHi" type="xs:int">
                        <xs:annotation>
                            <xs:documentation>
                Point size of the font expressed in a 64-bit CY variable whose upper 32-bits contains the integer point size.
              </xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="FontSizeLo" type="xs:int">
                        <xs:annotation>
                            <xs:documentation>
                Point size of the font expressed in a 64-bit CY variable whose lower 32-bits contains the fractional point size.
              </xs:documentation>
                        </xs:annotation>
                    </xs:element>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="PictureMarkerSymbol">
        <xs:complexContent>
            <xs:extension base="e:CartographicMarkerSymbol">
                <xs:sequence>
                    <xs:element minOccurs="0" name="BgColor" type="e:Color">
                        <xs:annotation>
                            <xs:documentation>
                Background color of the picture for 1 bit images.
              </xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="BitmapTransColor" type="e:Color">
                        <xs:annotation>
                            <xs:documentation>
                Color within bitmap indicating transparency.
              </xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="Picture" type="xs:base64Binary"/>
                    <xs:element minOccurs="0" name="PictureUri" type="xs:string"/>
                    <xs:element minOccurs="0" name="Width" type="xs:double"/>
                    <xs:element minOccurs="0" name="FgColor" type="e:Color">
                        <xs:annotation>
                            <xs:documentation>
                Foreground color of the picture for 1 bit images.
              </xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="Swap1BitColor" type="xs:boolean">
                        <xs:annotation>
                            <xs:documentation>
                Indicates if foreground and background colors are swapped on 1 Bit Images Only.
              </xs:documentation>
                        </xs:annotation>
                    </xs:element>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="PictureFillSymbol">
        <xs:complexContent>
            <xs:extension base="e:FillSymbol">
                <xs:sequence>
                    <xs:element minOccurs="0" name="Picture" type="xs:base64Binary"/>
                    <xs:element minOccurs="0" name="PictureUri" type="xs:string"/>
                    <xs:element minOccurs="0" name="Width" type="xs:double"/>
                    <xs:element minOccurs="0" name="Height" type="xs:double"/>
                    <xs:element minOccurs="0" name="BgColor" type="e:Color">
                        <xs:annotation>
                            <xs:documentation>
                Fill background color.
              </xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="FgColor" type="e:Color">
                        <xs:annotation>
                            <xs:documentation>
                Fill foreground color.
              </xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="BitmapTransColor" type="e:Color">
                        <xs:annotation>
                            <xs:documentation>
                Color within bitmap indicating transparency.
              </xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="XSeparation" type="xs:double"/>
                    <xs:element minOccurs="0" name="YSeparation" type="xs:double"/>
                    <xs:element minOccurs="0" name="Swap1BitColor" type="xs:boolean">
                        <xs:annotation>
                            <xs:documentation>
                Indicates if the foreground and background colors are swapped on 1 Bit Images Only.
              </xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="Angle" type="xs:double"/>
                    <xs:element minOccurs="0" name="XOffset" type="xs:double"/>
                    <xs:element minOccurs="0" name="YOffset" type="xs:double"/>
                    <xs:element default="1.0" minOccurs="0" name="XScale" type="xs:double"/>
                    <xs:element default="1.0" minOccurs="0" name="YScale" type="xs:double"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType abstract="true" name="FillSymbol">
        <xs:complexContent>
            <xs:extension base="e:Symbol">
                <xs:sequence>
                    <xs:element minOccurs="0" name="Color" type="e:Color">
                        <xs:annotation>
                            <xs:documentation>
                Fill color.
              </xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="Outline" type="e:LineSymbol">
                        <xs:annotation>
                            <xs:documentation>
                Line symbol of fill outline.
              </xs:documentation>
                        </xs:annotation>
                    </xs:element>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType abstract="true" name="LineSymbol">
        <xs:complexContent>
            <xs:extension base="e:Symbol">
                <xs:sequence>
                    <xs:element minOccurs="0" name="Color" type="e:Color">
                        <xs:annotation>
                            <xs:documentation>
                Line symbol color.
              </xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element name="Width" type="xs:double">
                        <xs:annotation>
                            <xs:documentation>
                Line symbol width.
              </xs:documentation>
                        </xs:annotation>
                    </xs:element>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType abstract="true" name="MarkerSymbol">
        <xs:complexContent>
            <xs:extension base="e:Symbol">
                <xs:sequence>
                    <xs:element name="Angle" type="xs:double">
                        <xs:annotation>
                            <xs:documentation>
                Marker symbol angle.
              </xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element minOccurs="0" name="Color" type="e:Color">
                        <xs:annotation>
                            <xs:documentation>
                Marker symbol color.
              </xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element name="Size" type="xs:double">
                        <xs:annotation>
                            <xs:documentation>
                Marker symbol size.
              </xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element name="XOffset" type="xs:double">
                        <xs:annotation>
                            <xs:documentation>
                Symbol X-axis offset from point location.
              </xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element name="YOffset" type="xs:double">
                        <xs:annotation>
                            <xs:documentation>
                Symbol Y-axis offset from point location.
              </xs:documentation>
                        </xs:annotation>
                    </xs:element>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType abstract="true" name="CartographicMarkerSymbol">
        <xs:complexContent>
            <xs:extension base="e:MarkerSymbol">
                <xs:sequence>
                    <xs:element default="1.0" name="XScale" type="xs:double"/>
                    <xs:element default="1.0" name="YScale" type="xs:double"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="XMLBinarySymbol">
        <xs:complexContent>
            <xs:extension base="e:Symbol">
                <xs:sequence>
                    <xs:element name="Data" type="e:XMLPersistedObject"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="XMLBinaryFillSymbol">
        <xs:complexContent>
            <xs:extension base="e:FillSymbol">
                <xs:sequence>
                    <xs:element name="Data" type="e:XMLPersistedObject"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="PropertySetProperty">
        <xs:sequence>
            <xs:element name="Key" type="xs:string"/>
            <xs:element minOccurs="0" name="Value" nillable="true" type="xs:anyType"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ArrayOfPropertySetProperty">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="PropertySetProperty" type="e:PropertySetProperty"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="PropertySet">
        <xs:sequence>
            <xs:element name="PropertyArray" type="e:ArrayOfPropertySetProperty"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="XMLPersistedObject">
        <xs:sequence>
            <xs:element name="Bytes" type="xs:base64Binary"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="NumericFormat">
        <xs:sequence>
            <xs:element minOccurs="0" name="RoundingOption" type="e:esriRoundingOptionEnum"/>
            <xs:element minOccurs="0" name="RoundingValue" type="xs:int"/>
            <xs:element minOccurs="0" name="AlignmentOption" type="e:esriNumericAlignmentEnum"/>
            <xs:element minOccurs="0" name="AlignmentWidth" type="xs:int"/>
            <xs:element minOccurs="0" name="UseSeparator" type="xs:boolean"/>
            <xs:element minOccurs="0" name="ZeroPad" type="xs:boolean"/>
            <xs:element minOccurs="0" name="ShowPlus" type="xs:boolean"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ArrayOfInt">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="Int" type="xs:int"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ArrayOfString">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="String" type="xs:string"/>
        </xs:sequence>
    </xs:complexType>
    <xs:simpleType name="esriUnits">
        <xs:annotation/>
        <xs:restriction base="xs:string">
            <xs:enumeration value="esriUnknownUnits"/>
            <xs:enumeration value="esriInches"/>
            <xs:enumeration value="esriPoints"/>
            <xs:enumeration value="esriFeet"/>
            <xs:enumeration value="esriYards"/>
            <xs:enumeration value="esriMiles"/>
            <xs:enumeration value="esriNauticalMiles"/>
            <xs:enumeration value="esriMillimeters"/>
            <xs:enumeration value="esriCentimeters"/>
            <xs:enumeration value="esriMeters"/>
            <xs:enumeration value="esriKilometers"/>
            <xs:enumeration value="esriDecimalDegrees"/>
            <xs:enumeration value="esriDecimeters"/>
        </xs:restriction>
    </xs:simpleType>
    <xs:simpleType name="esriRoundingOptionEnum">
        <xs:annotation/>
        <xs:restriction base="xs:string">
            <xs:enumeration value="esriRoundNumberOfDecimals"/>
            <xs:enumeration value="esriRoundNumberOfSignificantDigits"/>
        </xs:restriction>
    </xs:simpleType>
    <xs:simpleType name="esriNumericAlignmentEnum">
        <xs:annotation/>
        <xs:restriction base="xs:string">
            <xs:enumeration value="esriAlignRight"/>
            <xs:enumeration value="esriAlignLeft"/>
        </xs:restriction>
    </xs:simpleType>
    <xs:simpleType name="esriTimeUnits">
        <xs:annotation/>
        <xs:restriction base="xs:string">
            <xs:enumeration value="esriTimeUnitsUnknown"/>
            <xs:enumeration value="esriTimeUnitsMilliseconds"/>
            <xs:enumeration value="esriTimeUnitsSeconds"/>
            <xs:enumeration value="esriTimeUnitsMinutes"/>
            <xs:enumeration value="esriTimeUnitsHours"/>
            <xs:enumeration value="esriTimeUnitsDays"/>
            <xs:enumeration value="esriTimeUnitsWeeks"/>
            <xs:enumeration value="esriTimeUnitsMonths"/>
            <xs:enumeration value="esriTimeUnitsYears"/>
            <xs:enumeration value="esriTimeUnitsDecades"/>
            <xs:enumeration value="esriTimeUnitsCenturies"/>
        </xs:restriction>
    </xs:simpleType>
    <xs:complexType name="TimeReference">
        <xs:sequence>
            <xs:element name="TimeZoneNameID" type="xs:string"/>
            <xs:element minOccurs="0" name="RespectsDaylightSavingTime" type="xs:boolean"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="TimeValue">
        <xs:sequence>
            <xs:element minOccurs="0" name="TimeReference" type="e:TimeReference"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="TimeInstant">
        <xs:complexContent>
            <xs:extension base="e:TimeValue">
                <xs:sequence>
                    <xs:element name="Time" type="xs:dateTime"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="TimeExtent">
        <xs:complexContent>
            <xs:extension base="e:TimeValue">
                <xs:sequence>
                    <xs:element name="StartTime" type="xs:dateTime"/>
                    <xs:element name="EndTime" type="xs:dateTime"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:simpleType name="esriGeometryType">
        <xs:annotation/>
        <xs:restriction base="xs:string">
            <xs:enumeration value="esriGeometryPoint"/>
            <xs:enumeration value="esriGeometryMultipoint"/>
            <xs:enumeration value="esriGeometryPolyline"/>
            <xs:enumeration value="esriGeometryPolygon"/>
            <xs:enumeration value="esriGeometryMultiPatch"/>
        </xs:restriction>
    </xs:simpleType>
    <xs:complexType name="GeoTransformation">
        <xs:sequence>
            <xs:element minOccurs="0" name="WKT" type="xs:string"/>
            <xs:element minOccurs="0" name="WKID" type="xs:int"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType abstract="true" name="SpatialReference">
        <xs:sequence>
            <xs:element minOccurs="0" name="WKT" type="xs:string"/>
            <xs:element minOccurs="0" name="XOrigin" type="xs:double"/>
            <xs:element minOccurs="0" name="YOrigin" type="xs:double"/>
            <xs:element minOccurs="0" name="XYScale" type="xs:double"/>
            <xs:element minOccurs="0" name="ZOrigin" type="xs:double"/>
            <xs:element minOccurs="0" name="ZScale" type="xs:double"/>
            <xs:element minOccurs="0" name="MOrigin" type="xs:double"/>
            <xs:element minOccurs="0" name="MScale" type="xs:double"/>
            <xs:element minOccurs="0" name="XYTolerance" type="xs:double"/>
            <xs:element minOccurs="0" name="ZTolerance" type="xs:double"/>
            <xs:element minOccurs="0" name="MTolerance" type="xs:double"/>
            <xs:element minOccurs="0" name="HighPrecision" type="xs:boolean"/>
            <xs:element minOccurs="0" name="LeftLongitude" type="xs:double"/>
            <xs:element minOccurs="0" name="WKID" type="xs:int"/>
            <xs:element minOccurs="0" name="VCSWKID" type="xs:int"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ProjectedCoordinateSystem">
        <xs:complexContent>
            <xs:extension base="e:SpatialReference"/>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="GeographicCoordinateSystem">
        <xs:complexContent>
            <xs:extension base="e:SpatialReference"/>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="UnknownCoordinateSystem">
        <xs:complexContent>
            <xs:extension base="e:SpatialReference"/>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="Geometry"/>
    <xs:complexType abstract="true" name="Curve">
        <xs:complexContent>
            <xs:extension base="e:Geometry"/>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType abstract="true" name="Segment">
        <xs:complexContent>
            <xs:extension base="e:Curve">
                <xs:sequence>
                    <xs:element name="FromPoint" type="e:Point"/>
                    <xs:element name="ToPoint" type="e:Point"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType abstract="true" name="Polycurve">
        <xs:complexContent>
            <xs:extension base="e:Curve"/>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType abstract="true" name="Envelope">
        <xs:complexContent>
            <xs:extension base="e:Geometry"/>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="EnvelopeN">
        <xs:complexContent>
            <xs:extension base="e:Envelope">
                <xs:sequence>
                    <xs:element name="XMin" type="xs:double"/>
                    <xs:element name="YMin" type="xs:double"/>
                    <xs:element name="XMax" type="xs:double"/>
                    <xs:element name="YMax" type="xs:double"/>
                    <xs:element minOccurs="0" name="ZMin" type="xs:double"/>
                    <xs:element minOccurs="0" name="ZMax" type="xs:double"/>
                    <xs:element minOccurs="0" name="MMin" type="xs:double"/>
                    <xs:element minOccurs="0" name="MMax" type="xs:double"/>
                    <xs:element minOccurs="0" name="SpatialReference" type="e:SpatialReference"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="EnvelopeB">
        <xs:complexContent>
            <xs:extension base="e:Envelope">
                <xs:sequence>
                    <xs:element name="Bytes" type="xs:base64Binary"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType abstract="true" name="Point">
        <xs:complexContent>
            <xs:extension base="e:Geometry"/>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="PointN">
        <xs:complexContent>
            <xs:extension base="e:Point">
                <xs:sequence>
                    <xs:element name="X" type="xs:double"/>
                    <xs:element name="Y" type="xs:double"/>
                    <xs:element minOccurs="0" name="M" type="xs:double"/>
                    <xs:element minOccurs="0" name="Z" type="xs:double"/>
                    <xs:element minOccurs="0" name="ID" type="xs:int"/>
                    <xs:element minOccurs="0" name="SpatialReference" type="e:SpatialReference"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="PointB">
        <xs:complexContent>
            <xs:extension base="e:Point">
                <xs:sequence>
                    <xs:element name="Bytes" type="xs:base64Binary"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType abstract="true" name="Multipoint">
        <xs:complexContent>
            <xs:extension base="e:Geometry"/>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="MultipointB">
        <xs:complexContent>
            <xs:extension base="e:Multipoint">
                <xs:sequence>
                    <xs:element name="Bytes" type="xs:base64Binary"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="MultipointN">
        <xs:complexContent>
            <xs:extension base="e:Multipoint">
                <xs:sequence>
                    <xs:element name="HasID" type="xs:boolean"/>
                    <xs:element name="HasZ" type="xs:boolean"/>
                    <xs:element name="HasM" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="Extent" type="e:Envelope"/>
                    <xs:element minOccurs="0" name="PointArray" type="e:ArrayOfPoint"/>
                    <xs:element minOccurs="0" name="SpatialReference" type="e:SpatialReference"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="Line">
        <xs:complexContent>
            <xs:extension base="e:Segment"/>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="EllipticArc">
        <xs:complexContent>
            <xs:extension base="e:Segment">
                <xs:sequence>
                    <xs:element name="EllipseStd" type="xs:boolean"/>
                    <xs:element name="CenterPoint" type="e:Point"/>
                    <xs:element name="Rotation" type="xs:double"/>
                    <xs:element name="MinorMajorRatio" type="xs:double"/>
                    <xs:element name="IsCounterClockwise" type="xs:boolean"/>
                    <xs:element name="IsMinor" type="xs:boolean"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="CircularArc">
        <xs:complexContent>
            <xs:extension base="e:Segment">
                <xs:sequence>
                    <xs:element name="CenterPoint" type="e:Point"/>
                    <xs:element minOccurs="0" name="FromAngle" type="xs:double"/>
                    <xs:element minOccurs="0" name="ToAngle" type="xs:double"/>
                    <xs:element name="IsCounterClockwise" type="xs:boolean"/>
                    <xs:element name="IsMinor" type="xs:boolean"/>
                    <xs:element name="IsLine" type="xs:boolean"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="BezierCurve">
        <xs:complexContent>
            <xs:extension base="e:Segment">
                <xs:sequence>
                    <xs:element name="Degree" type="xs:int"/>
                    <xs:element name="ControlPointArray" type="e:ArrayOfPoint"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="Path">
        <xs:complexContent>
            <xs:extension base="e:Curve">
                <xs:sequence>
                    <xs:element minOccurs="0" name="PointArray" type="e:ArrayOfPoint"/>
                    <xs:element minOccurs="0" name="SegmentArray" type="e:ArrayOfSegment"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="Ring">
        <xs:complexContent>
            <xs:extension base="e:Path"/>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType abstract="true" name="Polygon">
        <xs:complexContent>
            <xs:extension base="e:Polycurve"/>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="PolygonN">
        <xs:complexContent>
            <xs:extension base="e:Polygon">
                <xs:sequence>
                    <xs:element name="HasID" type="xs:boolean"/>
                    <xs:element name="HasZ" type="xs:boolean"/>
                    <xs:element name="HasM" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="Extent" type="e:Envelope"/>
                    <xs:element name="RingArray" type="e:ArrayOfRing"/>
                    <xs:element minOccurs="0" name="SpatialReference" type="e:SpatialReference"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="PolygonB">
        <xs:complexContent>
            <xs:extension base="e:Polygon">
                <xs:sequence>
                    <xs:element name="Bytes" type="xs:base64Binary"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType abstract="true" name="Polyline">
        <xs:complexContent>
            <xs:extension base="e:Polycurve"/>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="PolylineN">
        <xs:complexContent>
            <xs:extension base="e:Polyline">
                <xs:sequence>
                    <xs:element name="HasID" type="xs:boolean"/>
                    <xs:element name="HasZ" type="xs:boolean"/>
                    <xs:element name="HasM" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="Extent" type="e:Envelope"/>
                    <xs:element name="PathArray" type="e:ArrayOfPath"/>
                    <xs:element minOccurs="0" name="SpatialReference" type="e:SpatialReference"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="PolylineB">
        <xs:complexContent>
            <xs:extension base="e:Polyline">
                <xs:sequence>
                    <xs:element name="Bytes" type="xs:base64Binary"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="ArrayOfPoint">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="Point" type="e:Point"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ArrayOfPath">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="Path" type="e:Path"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ArrayOfRing">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="Ring" type="e:Ring"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ArrayOfSegment">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="Segment" type="e:Segment"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType abstract="true" name="MultiPatch">
        <xs:complexContent>
            <xs:extension base="e:Geometry"/>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="MultiPatchB">
        <xs:complexContent>
            <xs:extension base="e:MultiPatch">
                <xs:sequence>
                    <xs:element name="Bytes" type="xs:base64Binary"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="MultiPatchN">
        <xs:complexContent>
            <xs:extension base="e:MultiPatch">
                <xs:sequence>
                    <xs:element name="HasID" type="xs:boolean"/>
                    <xs:element name="HasZ" type="xs:boolean"/>
                    <xs:element name="HasM" type="xs:boolean"/>
                    <xs:element name="Extent" type="e:Envelope"/>
                    <xs:element name="SurfacePatchArray" type="e:ArrayOfSurfacePatch"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="ArrayOfSurfacePatch">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="SurfacePatch" type="e:Geometry"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="TriangleFan">
        <xs:complexContent>
            <xs:extension base="e:Geometry">
                <xs:sequence>
                    <xs:element minOccurs="0" name="PointArray" type="e:ArrayOfPoint"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="TriangleStrip">
        <xs:complexContent>
            <xs:extension base="e:Geometry">
                <xs:sequence>
                    <xs:element minOccurs="0" name="PointArray" type="e:ArrayOfPoint"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:simpleType name="esriFieldType">
        <xs:annotation>
            <xs:documentation>Field Types.</xs:documentation>
        </xs:annotation>
        <xs:restriction base="xs:string">
            <xs:enumeration value="esriFieldTypeInteger">
                <xs:annotation>
                    <xs:documentation>Long Integer.</xs:documentation>
                </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="esriFieldTypeSmallInteger">
                <xs:annotation>
                    <xs:documentation>Integer.</xs:documentation>
                </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="esriFieldTypeDouble">
                <xs:annotation>
                    <xs:documentation>Double-precision floating-point number.</xs:documentation>
                </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="esriFieldTypeSingle">
                <xs:annotation>
                    <xs:documentation>Single-precision floating-point number.</xs:documentation>
                </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="esriFieldTypeString">
                <xs:annotation>
                    <xs:documentation>Character string.</xs:documentation>
                </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="esriFieldTypeDate">
                <xs:annotation>
                    <xs:documentation>Date.</xs:documentation>
                </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="esriFieldTypeGeometry">
                <xs:annotation>
                    <xs:documentation>Geometry.</xs:documentation>
                </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="esriFieldTypeOID">
                <xs:annotation>
                    <xs:documentation>Long Integer representing an object identifier.</xs:documentation>
                </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="esriFieldTypeBlob">
                <xs:annotation>
                    <xs:documentation>Binary Large Object.</xs:documentation>
                </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="esriFieldTypeGlobalID">
                <xs:annotation>
                    <xs:documentation>ESRI Global ID.</xs:documentation>
                </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="esriFieldTypeRaster">
                <xs:annotation>
                    <xs:documentation>Raster.</xs:documentation>
                </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="esriFieldTypeGUID">
                <xs:annotation>
                    <xs:documentation>Globally Unique Identifier.</xs:documentation>
                </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="esriFieldTypeXML">
                <xs:annotation>
                    <xs:documentation>XML Document</xs:documentation>
                </xs:annotation>
            </xs:enumeration>
        </xs:restriction>
    </xs:simpleType>
    <xs:complexType name="GeometryDef">
        <xs:sequence>
            <xs:element name="AvgNumPoints" type="xs:int">
                <xs:annotation>
                    <xs:documentation>Estimated average number of points per feature.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element name="GeometryType" type="e:esriGeometryType">
                <xs:annotation>
                    <xs:documentation>The enumerated geometry type.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element name="HasM" type="xs:boolean">
                <xs:annotation>
                    <xs:documentation>Indicates if the feature class has measure (M) values.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element name="HasZ" type="xs:boolean">
                <xs:annotation>
                    <xs:documentation>Indicates if the featureClass has Z values.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element name="SpatialReference" type="e:SpatialReference">
                <xs:annotation>
                    <xs:documentation>The spatial reference for the dataset.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element minOccurs="0" name="GridSize0" type="xs:double"/>
            <xs:element minOccurs="0" name="GridSize1" type="xs:double"/>
            <xs:element minOccurs="0" name="GridSize2" type="xs:double"/>
        </xs:sequence>
    </xs:complexType>
    <xs:simpleType name="esriMergePolicyType">
        <xs:annotation>
            <xs:documentation>Merge policy types.</xs:documentation>
        </xs:annotation>
        <xs:restriction base="xs:string">
            <xs:enumeration value="esriMPTSumValues">
                <xs:annotation>
                    <xs:documentation>Sum the values merge policy.</xs:documentation>
                </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="esriMPTAreaWeighted">
                <xs:annotation>
                    <xs:documentation>Area weighted merge policy.</xs:documentation>
                </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="esriMPTDefaultValue">
                <xs:annotation>
                    <xs:documentation>Default value merge policy.</xs:documentation>
                </xs:annotation>
            </xs:enumeration>
        </xs:restriction>
    </xs:simpleType>
    <xs:simpleType name="esriSplitPolicyType">
        <xs:annotation>
            <xs:documentation>Split policy types.</xs:documentation>
        </xs:annotation>
        <xs:restriction base="xs:string">
            <xs:enumeration value="esriSPTGeometryRatio">
                <xs:annotation>
                    <xs:documentation>Geometry-ratioed split policy.</xs:documentation>
                </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="esriSPTDuplicate">
                <xs:annotation>
                    <xs:documentation>Duplicate split policy.</xs:documentation>
                </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="esriSPTDefaultValue">
                <xs:annotation>
                    <xs:documentation>Default value split policy.</xs:documentation>
                </xs:annotation>
            </xs:enumeration>
        </xs:restriction>
    </xs:simpleType>
    <xs:complexType abstract="true" name="Domain">
        <xs:sequence>
            <xs:element name="DomainName" type="xs:string">
                <xs:annotation>
                    <xs:documentation>
            The ID of the domain.
          </xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element name="FieldType" type="e:esriFieldType">
                <xs:annotation>
                    <xs:documentation>The field type of the field.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element name="MergePolicy" type="e:esriMergePolicyType">
                <xs:annotation>
                    <xs:documentation>The merge policy.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element name="SplitPolicy" type="e:esriSplitPolicyType">
                <xs:annotation>
                    <xs:documentation>The split policy.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element minOccurs="0" name="Description" type="xs:string">
                <xs:annotation>
                    <xs:documentation>The description of the domain.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element minOccurs="0" name="Owner" type="xs:string">
                <xs:annotation>
                    <xs:documentation>The owner of the domain.</xs:documentation>
                </xs:annotation>
            </xs:element>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="Field">
        <xs:sequence>
            <xs:element name="Name" type="xs:string">
                <xs:annotation>
                    <xs:documentation>The name of the field.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element name="Type" type="e:esriFieldType">
                <xs:annotation>
                    <xs:documentation>The type of the field.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element name="IsNullable" type="xs:boolean">
                <xs:annotation>
                    <xs:documentation>Indicates if the field can contain null values.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element name="Length" type="xs:int">
                <xs:annotation>
                    <xs:documentation>The maximum length, in bytes, for values described by the field.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element name="Precision" type="xs:int">
                <xs:annotation>
                    <xs:documentation>The precision for field values.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element name="Scale" type="xs:int">
                <xs:annotation>
                    <xs:documentation>The scale for field values.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element minOccurs="0" name="Required" type="xs:boolean">
                <xs:annotation>
                    <xs:documentation>Indicates if the field is required.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element minOccurs="0" name="Editable" type="xs:boolean">
                <xs:annotation>
                    <xs:documentation>Indicates if the field is editable.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element minOccurs="0" name="DomainFixed" type="xs:boolean">
                <xs:annotation>
                    <xs:documentation>Indicates if the field's domain is fixed.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element minOccurs="0" name="GeometryDef" type="e:GeometryDef">
                <xs:annotation>
                    <xs:documentation>The geometry definition for the field if IsGeometry is TRUE.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element minOccurs="0" name="AliasName" type="xs:string">
                <xs:annotation>
                    <xs:documentation>The alias name of the field.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element minOccurs="0" name="ModelName" type="xs:string">
                <xs:annotation>
                    <xs:documentation>The model name of the field.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element minOccurs="0" name="DefaultValue" type="xs:anyType">
                <xs:annotation>
                    <xs:documentation>The default value of the field.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element minOccurs="0" name="Domain" type="e:Domain">
                <xs:annotation>
                    <xs:documentation>The default domain of the field.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element minOccurs="0" name="RasterDef" type="e:RasterDef">
                <xs:annotation>
                    <xs:documentation>The raster column definition.</xs:documentation>
                </xs:annotation>
            </xs:element>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ArrayOfField">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="Field" type="e:Field"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="Fields">
        <xs:sequence>
            <xs:element name="FieldArray" type="e:ArrayOfField"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ArrayOfValue">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="Value" nillable="true" type="xs:anyType"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="Record">
        <xs:sequence>
            <xs:element name="Values" type="e:ArrayOfValue"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ArrayOfRecord">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="Record" type="e:Record"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="RecordSet">
        <xs:sequence>
            <xs:element name="Fields" type="e:Fields">
                <xs:annotation>
                    <xs:documentation>returns the fields for the recordset</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element name="Records" type="e:ArrayOfRecord"/>
        </xs:sequence>
    </xs:complexType>
    <xs:simpleType name="esriSearchOrder">
        <xs:annotation>
            <xs:documentation>Spatial Filter Search Order.</xs:documentation>
        </xs:annotation>
        <xs:restriction base="xs:string">
            <xs:enumeration value="esriSearchOrderSpatial">
                <xs:annotation>
                    <xs:documentation>Spatial query is applied first.</xs:documentation>
                </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="esriSearchOrderAttribute">
                <xs:annotation>
                    <xs:documentation>Attribute query is applied first.</xs:documentation>
                </xs:annotation>
            </xs:enumeration>
        </xs:restriction>
    </xs:simpleType>
    <xs:simpleType name="esriSpatialRelEnum">
        <xs:annotation>
            <xs:documentation>Queryable Spatial Relationships.</xs:documentation>
        </xs:annotation>
        <xs:restriction base="xs:string">
            <xs:enumeration value="esriSpatialRelUndefined">
                <xs:annotation>
                    <xs:documentation>No Defined Spatial Relationship.</xs:documentation>
                </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="esriSpatialRelIntersects">
                <xs:annotation>
                    <xs:documentation>Query Geometry Intersects Target Geometry.</xs:documentation>
                </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="esriSpatialRelEnvelopeIntersects">
                <xs:annotation>
                    <xs:documentation>Envelope of Query Geometry Intersects Envelope of Target Geometry.</xs:documentation>
                </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="esriSpatialRelIndexIntersects">
                <xs:annotation>
                    <xs:documentation>Query Geometry Intersects Index entry for Target Geometry (Primary Index Filter).</xs:documentation>
                </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="esriSpatialRelTouches">
                <xs:annotation>
                    <xs:documentation>Query Geometry Touches Target Geometry.</xs:documentation>
                </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="esriSpatialRelOverlaps">
                <xs:annotation>
                    <xs:documentation>Query Geometry Overlaps Target Geometry.</xs:documentation>
                </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="esriSpatialRelCrosses">
                <xs:annotation>
                    <xs:documentation>Query Geometry Crosses Target Geometry.</xs:documentation>
                </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="esriSpatialRelWithin">
                <xs:annotation>
                    <xs:documentation>Query Geometry is Within Target Geometry.</xs:documentation>
                </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="esriSpatialRelContains">
                <xs:annotation>
                    <xs:documentation>Query Geometry Contains Target Geometry.</xs:documentation>
                </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="esriSpatialRelRelation">
                <xs:annotation>
                    <xs:documentation>Query geometry IBE(Interior-Boundary-Exterior) relationship with target geometry.</xs:documentation>
                </xs:annotation>
            </xs:enumeration>
        </xs:restriction>
    </xs:simpleType>
    <xs:complexType name="FIDSet">
        <xs:sequence>
            <xs:element name="FIDArray" type="e:ArrayOfInt"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="QueryFilter">
        <xs:sequence>
            <xs:element minOccurs="0" name="SubFields" type="xs:string">
                <xs:annotation>
                    <xs:documentation>The comma delimited list of field names for the filter.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element name="WhereClause" type="xs:string">
                <xs:annotation>
                    <xs:documentation>The where clause for the filter.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element minOccurs="0" name="SpatialReferenceFieldName" type="xs:string">
                <xs:annotation>
                    <xs:documentation>
            The field name of the output spatial reference.
          </xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element name="Resolution" type="xs:double">
                <xs:annotation>
                    <xs:documentation>
            The spatial resolution in which to output geometry.
          </xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element minOccurs="0" name="OutputSpatialReference" type="e:SpatialReference">
                <xs:annotation>
                    <xs:documentation>The spatial reference in which to output geometry for a given field.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element minOccurs="0" name="FIDSet" type="e:FIDSet"/>
            <xs:element minOccurs="0" name="PostfixClause" type="xs:string">
                <xs:annotation>
                    <xs:documentation>A clause that will be appended to the end of the where clause. Most commonly used for clauses like ORDER BY.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element minOccurs="0" name="FilterDefs" type="e:ArrayOfFilterDef">
                <xs:annotation>
                    <xs:documentation>The filter definitions specified for this query filter.</xs:documentation>
                </xs:annotation>
            </xs:element>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="SpatialFilter">
        <xs:complexContent>
            <xs:extension base="e:QueryFilter">
                <xs:sequence>
                    <xs:element name="SearchOrder" type="e:esriSearchOrder">
                        <xs:annotation>
                            <xs:documentation>The search order used by the filter.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element name="SpatialRel" type="e:esriSpatialRelEnum">
                        <xs:annotation>
                            <xs:documentation>The spatial relationship  checked by the filter.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element name="SpatialRelDescription" type="xs:string">
                        <xs:annotation>
                            <xs:documentation>The array elements which describe the spatial relation between the query geometry and the requested geometries. There are 9 chars in this string which can be either 'F', 'T' or '*'; e.g., TT*FFT***' represents CONTAIN.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element name="FilterGeometry" type="e:Geometry">
                        <xs:annotation>
                            <xs:documentation>
                The query geometry used to filter results.
              </xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element name="GeometryFieldName" type="xs:string">
                        <xs:annotation>
                            <xs:documentation>
                The name of the Geometry field to which the filter applies.
              </xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element name="FilterOwnsGeometry" type="xs:boolean">
                        <xs:annotation>
                            <xs:documentation>Indicates whether the filter owns the query geometry.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType abstract="true" name="FilterDef"/>
    <xs:complexType name="XMLFilterDef">
        <xs:complexContent>
            <xs:extension base="e:FilterDef">
                <xs:sequence>
                    <xs:element name="FieldName" type="xs:string"/>
                    <xs:element name="Expression" type="xs:string"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="ArrayOfFilterDef">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="FilterDef" type="e:FilterDef"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="RangeDomain">
        <xs:complexContent>
            <xs:extension base="e:Domain">
                <xs:sequence>
                    <xs:element name="MaxValue" type="xs:anyType">
                        <xs:annotation>
                            <xs:documentation>The maximum value for the associated attribute.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                    <xs:element name="MinValue" type="xs:anyType">
                        <xs:annotation>
                            <xs:documentation>The minimum value for the associated attribute.</xs:documentation>
                        </xs:annotation>
                    </xs:element>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="CodedValue">
        <xs:sequence>
            <xs:element name="Name" type="xs:string"/>
            <xs:element name="Code" type="xs:anyType"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ArrayOfCodedValue">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="CodedValue" type="e:CodedValue"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="CodedValueDomain">
        <xs:complexContent>
            <xs:extension base="e:Domain">
                <xs:sequence>
                    <xs:element name="CodedValues" type="e:ArrayOfCodedValue"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="BitMaskCodedValueDomain">
        <xs:complexContent>
            <xs:extension base="e:CodedValueDomain"/>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="RasterDef">
        <xs:sequence>
            <xs:element minOccurs="0" name="Description" type="xs:string">
                <xs:annotation>
                    <xs:documentation>The raster column description.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element minOccurs="0" name="IsByRef" type="xs:boolean">
                <xs:annotation>
                    <xs:documentation>
            Indicates if the Raster column value is to be managed by GeoDatabase.
          </xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element minOccurs="0" name="SpatialReference" type="e:SpatialReference">
                <xs:annotation>
                    <xs:documentation>The SpatialReference of the raster.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element minOccurs="0" name="IsByFunction" type="xs:boolean">
                <xs:annotation>
                    <xs:documentation>
            Indicates if the Raster column value is of type function raster dataset.
          </xs:documentation>
                </xs:annotation>
            </xs:element>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="GeometryResultOptions">
        <xs:sequence>
            <xs:element default="false" minOccurs="0" name="DensifyGeometries" type="xs:boolean">
                <xs:annotation>
                    <xs:documentation>if true, MaximumSegmentLength and MaximumDeviation will be honored to densify geometry in the results</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element default="-1.0" minOccurs="0" name="MaximumSegmentLength" type="xs:double">
                <xs:annotation>
                    <xs:documentation>.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element default="0.0" minOccurs="0" name="MaximumDeviation" type="xs:double">
                <xs:annotation>
                    <xs:documentation>.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element default="false" minOccurs="0" name="GeneralizeGeometries" type="xs:boolean">
                <xs:annotation>
                    <xs:documentation>if true, MaximumAllowableOffset will be honored to generalize the geometry in the results.</xs:documentation>
                </xs:annotation>
            </xs:element>
            <xs:element default="0.0" minOccurs="0" name="MaximumAllowableOffset" type="xs:double">
                <xs:annotation>
                    <xs:documentation>.</xs:documentation>
                </xs:annotation>
            </xs:element>
        </xs:sequence>
    </xs:complexType>
</xs:schema>
;
			 var xsdSchema0:Schema = new Schema(xsdXML0);
			schemas.push(xsdSchema0);
			targetNamespaces.push(new Namespace('','http://www.esri.com/schemas/ArcGIS/9.4'));
		}
	}
}