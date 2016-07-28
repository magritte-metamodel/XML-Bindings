printing
printXMLOn: aStream
	self greaseDeprecatedApi: 'MXObject>>printXMLOn:' details: 'use #writeXMLOn: instead'.
	self writeXMLOn: aStream