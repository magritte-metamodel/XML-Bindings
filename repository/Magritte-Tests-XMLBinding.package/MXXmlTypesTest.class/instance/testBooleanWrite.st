testing
testBooleanWrite
	| object xml |
	object := MXTypesObject new
		boolean: true.
	xml := object toXml.
	"<typesobject boolean='true'/>"
	self assert: (xml attributeAt: 'boolean') = 'true'