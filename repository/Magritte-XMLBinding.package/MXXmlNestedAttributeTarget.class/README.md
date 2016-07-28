MXXmlNestedAttributeTarget stores and reads text from xml attributes. For example:

	<container><elementName attributeName="value" /></container>

Instance Variables:
	elementName	<String>
	useExisting	<Boolean> - If the container elements already contains an element with the correct name and useExisting is true, 
		the attribute will be added to the existing element. Otherwise a new element is created.