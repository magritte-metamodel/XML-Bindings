testing
testEmbedWrite
	| object xmlString |
	object := self embedObject.
	xmlString := String streamContents: [:stream|
		object writeXMLOn: stream].
	self assert: (xmlString indexOfSubCollection: 'embedTargetName="A name"') > 0.
	self assert: (xmlString indexOfSubCollection: 'title="A title"') > 0