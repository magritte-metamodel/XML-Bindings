*magritte-xmlbinding
beXmlInlineElement
	"Store related objects directly in the container node."
	
	self 
		beXmlExportable;
		xmlTarget: (MXXmlElementTarget new) beInlined  