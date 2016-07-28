testing
testNodeContentWrite
	| object xmlString |
	object := MXSimpleObject new
		abstract: 'Some words as abstract'.
	xmlString := String streamContents: [:stream|
		object writeXMLOn: stream].
	self assert: xmlString = '<simpleobject><abstract>Some words as abstract</abstract></simpleobject>'