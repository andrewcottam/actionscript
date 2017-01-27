package wcmc.classes
{
	import com.google.maps.overlays.MarkerOptions;
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.geom.Point;
	import flash.utils.getQualifiedClassName;
	import mx.collections.ArrayCollection;
	import mx.containers.Canvas;
	import mx.controls.List;
	import mx.controls.Text;
	import mx.core.Application;
	import mx.core.ClassFactory;
	import wcmc.components.LegendRenderer;
	import wcmc.components.ToolControl;
	public class NewLegend extends Canvas
	{
		public function NewLegend() 
		{
			super();
		}
		private var _tool:ToolControl;
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
		{
			var _list:List=new List();
			_list.itemRenderer=new ClassFactory(LegendRenderer);
			_list.dataProvider=legendItems;
			addChild(_list);
			var _text:Text=new Text();
			addChild(_text);
		}
		[Bindable]private var legendItems:ArrayCollection=new ArrayCollection();
		[Bindable]public var Right:Number=60;
		[Bindable]private var verticalCentre:Number=0;
		public function get tool():ToolControl
		{
			return _tool;
		}
		public function set tool(_Tool:ToolControl):void
		{
			_tool=_Tool;
			if (_tool)
			{
				_tool.addEventListener("EndDataLoad",endDataLoad);
			}
		}
		private function endDataLoad(event:Event):void
		{
			getUniqueLegendItems(_tool.markers);
		}
		private function setPosition():void
		{
			var point:Point= _tool.localToGlobal(new Point(0,0)); //get the stage position of the tool control
			verticalCentre=point.y+(_tool.height/2);
		}
		private function getUniqueLegendItems(markers:Array):void
		{
			var legendItem:LegendItem;
			var i:int=1;
			for each (var marker:myMarker in markers)
			{
				var markerOptions:MarkerOptions= marker.getOptions();
				if (!legendItemExists(markerOptions.icon))
				{
					var bitmap:Bitmap=Application.application.getBitmap(markerOptions.icon);
					legendItem=new LegendItem();
					legendItem.legendIcon=bitmap;
					legendItem.legendClassName= getQualifiedClassName(markerOptions.icon);
					switch (tool.markerType)
					{
						case (EnumMarkerType.TOP10):
						{
							legendItem.legendDescription="";
							break;
						}
						case (EnumMarkerType.PRODUCTIVITY):
						{
							switch (legendItem.legendClassName)
							{
								case ("wcmc.components::ToolControl_red"): //hack!!
								{
									legendItem.legendDescription="<0.10 chicks/nest site for the nest sites counted for that colony";
									break;
								}
								case ("wcmc.components::ToolControl_yellow"):
								{
									legendItem.legendDescription=">0.10 chicks/nest site to 50% above the long-term mean chicks/nest site for that colony";
									break;
								}
								case ("wcmc.components::ToolControl_green"):
								{
									legendItem.legendDescription=">50% above the long-term chicks/nest site for that colony";
									break;
								}
							}
							minWidth=600;
							break;
						}
						case (EnumMarkerType.ABUNDANCE):
						{
							switch (i)
							{
								case tool.classValues.length:
								{
									legendItem.legendDescription="> " + tool.classValues[i].toString();
									break;
								}
								default:
								{
									legendItem.legendDescription=tool.classValues[i-1].toString() + " to " + tool.classValues[i].toString();
									break;
								}
							}
							break;
						}
						default:
						{
							legendItem.legendDescription="Position of survey site";
							break;
						}
					}
					legendItems.addItem(legendItem);
					i++;
				}
			}
		}
		private function legendItemExists(object:Object):Boolean
		{
			if (object is Sprite) return false; //sprites are assumed to be unique, e.g. the top 10 renderer
			for each (var legendItem:LegendItem in legendItems)
			{
				if (legendItem.legendClassName==getQualifiedClassName(object)) return true;
			}
			return false;
		}
	}
}