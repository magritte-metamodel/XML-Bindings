testing
testTextNamedElement

	| target |
	
	target := MXXmlNamedElementTarget new
		elementName: 'pipo'.
		
	self doTestText: target.
	self assert: (self element elementAt: 'pipo') notNil.
	self assert: (self element elementAt: 'pipo') contentString = 'text'.