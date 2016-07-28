testing
testTextNamedElementCData

	| target |
	
	target := MXXmlNamedElementTarget new
		elementName: 'pipo';
		setUseCDATASection.
		
	self doTestText: target.
	self assert: (self element elementAt: 'pipo') contentString = 'text'.
	self assert: ((self element elementAt: 'pipo') firstNode isKindOf: XMLCData)