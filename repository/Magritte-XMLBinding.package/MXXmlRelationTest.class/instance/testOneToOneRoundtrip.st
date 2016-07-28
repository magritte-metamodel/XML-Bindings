testing
testOneToOneRoundtrip
	| object xmlString created |
	object := self onoToOne.
	xmlString := String streamContents: [:stream|
		object writeXMLOn: stream].
	created := MXOneToOneSource fromXml: xmlString.
	self assert: object label = created label.
	self assert: created target notNil.
	self assert: object target title = created target title.
	self assert: object inlineTarget title = created inlineTarget title.
