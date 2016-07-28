*magritte-xmlbinding
xmlElementName: anElementName classAttribute: anAttributeName

	self beXmlExportable.
	self xmlTarget: (MXXmlClassNameAttributeTarget new
		elementName: anElementName;
		classAttributeName: anAttributeName)