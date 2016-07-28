testing
doTestTextEmpty: aXmlTarget

	| value |
	
	value := aXmlTarget getTextFrom: self element.
	self assert: value isNil
