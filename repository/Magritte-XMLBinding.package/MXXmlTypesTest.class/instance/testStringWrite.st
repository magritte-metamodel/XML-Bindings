testing
testStringWrite
	| object xml |
	object := MXTypesObject new
		string: 'a string'.
	xml := object toXml.
	self assert: (xml attributeAt: 'string') = 'a string'