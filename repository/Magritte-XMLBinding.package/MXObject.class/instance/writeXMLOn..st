printing
writeXMLOn: aStream
	self toXml writeXMLOn: (XMLWriter on: aStream)