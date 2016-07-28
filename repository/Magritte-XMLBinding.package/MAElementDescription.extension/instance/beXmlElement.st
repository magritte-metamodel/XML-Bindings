*magritte-xmlbinding
beXmlElement
	"Store objects as the contents of a child element."
	"example: <container><child>....</child></container>"
	
	self 
		beXmlExportable;
		xmlTarget: (MXXmlNamedElementTarget new elementName: self defaultXmlElementName)