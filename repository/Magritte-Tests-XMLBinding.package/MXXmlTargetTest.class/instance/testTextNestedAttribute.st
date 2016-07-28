testing
testTextNestedAttribute

	| target |
	
	target := MXXmlNestedAttributeTarget new
		elementName: 'e-pipo';
		attributeName: 'pipo'.
		
	self doTestText: target.
	self assert: (self element elementAt: 'e-pipo') notNil.
	self assert: ((self element elementAt: 'e-pipo') attributeAt: 'pipo') = 'text'.