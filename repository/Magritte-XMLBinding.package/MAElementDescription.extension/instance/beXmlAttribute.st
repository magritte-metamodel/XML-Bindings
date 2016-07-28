*magritte-xmlbinding
beXmlAttribute
	"Store objects as an attribute of the parent node."
	"example: <container attributeName='stringValue' />"
	self 
		beXmlExportable;
		xmlTarget: (MXXmlAttributeTarget new attributeName: self defaultXmlAttributeName)