testing
testNodeNamedElementEmpty

	| target resultNode |
	
	target := MXXmlNamedElementTarget new
		elementName: 'pipo'.
		
	resultNode := target getNodeFrom: self element.
	self assert: resultNode isNil.
	