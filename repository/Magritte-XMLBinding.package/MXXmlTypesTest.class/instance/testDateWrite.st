testing
testDateWrite
	| object xml |
	object := MXTypesObject new
		date: (DateAndTime year: 2010 month: 3 day: 10 hour: 4 minute: 4 second: 4 offset: Duration zero).
	xml := object toXml.
	" '<typesobject date='2010-03-10T04:04:04+00:00'/> "
	self assert: (xml attributeAt: 'date') = '2010-03-10T04:04:04+00:00'