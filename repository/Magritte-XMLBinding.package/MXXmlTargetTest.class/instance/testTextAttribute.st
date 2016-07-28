testing
testTextAttribute

	| target |
	
	target := MXXmlAttributeTarget new
		attributeName: 'pipo'.
		
	self doTestText: target.
	self assert: (self element attributeAt: 'pipo') = 'text'.