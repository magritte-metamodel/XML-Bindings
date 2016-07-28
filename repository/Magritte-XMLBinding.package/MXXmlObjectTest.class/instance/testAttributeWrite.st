testing
testAttributeWrite
	| object xml |
	object := MXSimpleObject new
		title: 'A title'.
	xml := object toXml.
	self assert: (xml attributeAt: 'title') = 'A title'