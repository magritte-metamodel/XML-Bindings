testing
testNumberWrite
	| object xml |
	object := MXTypesObject new
		number: 12345.
	xml := object toXml.
	self assert: (xml attributeAt: 'number') = '12345'