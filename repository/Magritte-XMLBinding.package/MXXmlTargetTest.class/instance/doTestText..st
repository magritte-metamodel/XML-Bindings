testing
doTestText: aXmlTarget

	| value |
	
	aXmlTarget addText: 'text' to: self element.
	value := aXmlTarget getTextFrom: self element.
	self assert: (value = 'text')
