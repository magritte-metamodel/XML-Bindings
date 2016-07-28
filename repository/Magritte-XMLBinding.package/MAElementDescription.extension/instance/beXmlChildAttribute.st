*magritte-xmlbinding
beXmlChildAttribute
	"Store objects as an attribute of a child element."
	"example: <container><elementName attributeName='stringValue' /></container>"
	self 
		beXmlExportable;
		xmlTarget: (MXXmlNestedAttributeTarget new 
			elementName: self defaultXmlElementName;
			attributeName: self defaultXmlAttributeName)