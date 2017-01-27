/* file			top10mapsymbol.as
date			oct 2009
author			andrew cottam
description		this file is a class derived from a sprite to render a map point symbol with text in it and is used to show the top 10 sites 
 */
package wcmc.classes
{
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;

	public class Top10MapSymbol extends Sprite 
	{
		//constructor - the l
		public function Top10MapSymbol(label:String,alpha:Number) 
		{
			graphics.beginFill(0xff0000,alpha);
			graphics.drawCircle(8,8,8);
			graphics.endFill();
			var radius:int = 60;
			var labelMc:TextField = new TextField();
			labelMc.autoSize = TextFieldAutoSize.LEFT;
			labelMc.selectable = false;
			labelMc.border = false;
			labelMc.embedFonts = false;
			labelMc.mouseEnabled = false;
			labelMc.width = radius;
			labelMc.height = radius;
			labelMc.text = label;
			labelMc.textColor=0xFFFFFF;
			if (label.length>1)
			{
				labelMc.x=-1;	
			}
			else
			{
				labelMc.x=3;
			}
			labelMc.y=2;
			addChild(labelMc);
			cacheAsBitmap = true;
		}
	}
}