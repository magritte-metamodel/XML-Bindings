*magritte-xmlbinding
beXmlElementCData
	"Store objects as the contents of a child element. If the contents is Text than a CDATA
	section will be used."
	"example: <container><child><![CDATA[ ... ]]></child></container>"
	
	self beXmlElement.
	self xmlTarget setUseCDATASection