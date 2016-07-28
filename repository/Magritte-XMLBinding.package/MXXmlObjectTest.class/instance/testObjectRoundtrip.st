testing
testObjectRoundtrip
	| object xmlString created |
	object := self simpleObject.
	xmlString := String streamContents: [:stream|
		object writeXMLOn: stream].
	created := MXSimpleObject fromXml: xmlString.

	self assert: (object title = created title).
	self assert: (object index = created index).
	self assert: (object date = created date).
	self assert: (object abstract = created abstract).
	self assert: (object token = created token)