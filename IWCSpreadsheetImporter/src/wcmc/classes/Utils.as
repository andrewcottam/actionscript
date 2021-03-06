package wcmc.classes
{
	import flash.utils.describeType;

	public class Utils
	{
		public function Utils()
		{
		}
		public static function copyObject(sourceObject:Object, destinationObject:Object):void
		{
			// check if the objects are not null
			if((sourceObject) && (destinationObject)) {
				try
				{
					//retrive information about the source object via XML
					var sourceInfo:XML = describeType(sourceObject);
					var objectProperty:XML;
					var propertyName:String;
					
					// loop through the properties
					for each(objectProperty in sourceInfo.variable)
					{
						propertyName = objectProperty.@name;
						if(sourceObject[objectProperty.@name] != null)
						{
							if(destinationObject.hasOwnProperty(objectProperty.@name)) {
								destinationObject[objectProperty.@name] = sourceObject[objectProperty.@name];
							}
						}
					}
					//loop through the accessors
					for each(objectProperty in sourceInfo.accessor) {
						if(objectProperty.@access == "readwrite") {
							propertyName = objectProperty.@name;
							if(sourceObject[objectProperty.@name] != null)
							{
								if(destinationObject.hasOwnProperty(objectProperty.@name)) {
									destinationObject[objectProperty.@name] = sourceObject[objectProperty.@name];
								}
							}
						}
					}
				}
				catch (err:*) {
					;
				}
			}}
	}
}