testing
testChildNodeAttributeWrite
	| object xml |
	object := MXSimpleObject new
		token: 'a subelement attribute'.
	xml := object toXml.
	"<simpleobject><token type='a subelement attribute'/> </simpleobject>"
	self assert: (xml elementAt: 'token') notNil.
	self assert: ((xml elementAt: 'token') attributeAt: 'type') = 'a subelement attribute'