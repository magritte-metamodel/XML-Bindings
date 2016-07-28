testing
testSingleOptionWrite

	| object xml |
	object := MXTypesObject new
		magnitudeClass: Integer.
	xml := object toXml.
	self assert: (xml attributeAt: 'magnitudeClass') = 'Integer'