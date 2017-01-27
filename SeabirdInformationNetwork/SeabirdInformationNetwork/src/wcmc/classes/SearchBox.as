package wcmc.classes
{
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	
	import mx.controls.Image;
	import mx.controls.TextInput;
	public class SearchBox extends TextInput
	{
		[Embed(source='/images/clearSearch.png')]
		private var searchIcon:Class;   
		[Embed(source='/images/clearSearchClick.png')]
		private var searchIconClick:Class;   
		private var searchImg:Image;        
		override protected function createChildren():void
		{
            super.createChildren();
            searchImg = new Image();
            searchImg.source = searchIcon;
            searchImg.width=14;
            searchImg.height=14;
            searchImg.x = 142;
            searchImg.y = 4;
            searchImg.visible=false;
            searchImg.toolTip="Clear search";
			searchImg.addEventListener(MouseEvent.MOUSE_DOWN,mouseDown);
			searchImg.addEventListener(MouseEvent.MOUSE_UP,mouseUp);
            addChild(searchImg);
		}
		public function SearchBox():void
		{
			addEventListener(KeyboardEvent.KEY_UP,keyUp);
		}
		private function keyUp(event:KeyboardEvent):void
		{
			if (text.length>0)
			{
				searchImg.visible=true;
			}
			else
			{
				searchImg.visible=false;
			}
		}
		private function mouseDown(event:MouseEvent):void
		{
            searchImg.source = searchIconClick;
		}
		private function mouseUp(event:MouseEvent):void
		{
            searchImg.source = searchIcon;
            text="";
			dispatchEvent(new KeyboardEvent("keyUp"));
		}
	}
}