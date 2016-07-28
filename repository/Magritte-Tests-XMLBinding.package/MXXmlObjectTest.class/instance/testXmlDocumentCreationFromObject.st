testing
testXmlDocumentCreationFromObject
	| object |
	object := self simpleObject.
	
	self assert: (object toXml class = XMLElement).
	self assert: ((object toXmlDocument) class = XMLDocument ).
