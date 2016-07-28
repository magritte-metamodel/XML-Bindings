as yet unclassified
testXmlDocumentCreationFromDescription
	| object |
	object := self simpleObject.
	
	self assert: ((object magritteDescription toXmlNode: object) class = XMLElement).
	self assert: ((object magritteDescription toXmlDocument: object) class = XMLDocument ).
