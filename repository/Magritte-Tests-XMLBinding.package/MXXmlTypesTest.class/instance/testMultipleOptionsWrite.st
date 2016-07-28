testing
testMultipleOptionsWrite

	| object xmlString |
	object := MXTypesObject new
		colors: #( yellow green ).
		
	xmlString := String streamContents: [ :stream |
		object writeXMLOn: stream].
	self assert: xmlString = '<typesobject><colors>yellow</colors><colors>green</colors></typesobject>'