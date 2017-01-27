/* file			formattedlabel.as
date			oct 2009
author			andrew cottam
description		descendent of the label class that adds in custom rendering of numbers to include a thousand separator
				THIS IS CURRENTLY NOT WORKING
*/
package wcmc.classes
{
	import mx.controls.Label;
	import mx.core.ClassFactory;
	import mx.formatters.NumberFormatter;

	public class FormattedLabel extends Label
	{
		public function FormattedLabel()
		{
			super();
		}
        override public function set data(value:Object):void 
        {
        	if (!(value is ClassFactory))//workaround 
        	{
	        	super.data = value;
				var numFormatter:NumberFormatter = new NumberFormatter();
				numFormatter.useThousandsSeparator=true;
				numFormatter.thousandsSeparatorTo=",";
				value = numFormatter.format(value.abundance);
        	}
        }
		
	}
}