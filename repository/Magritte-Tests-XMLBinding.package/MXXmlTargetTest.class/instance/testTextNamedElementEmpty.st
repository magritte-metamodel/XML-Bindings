testing
testTextNamedElementEmpty

	| target |
	
	target := MXXmlNamedElementTarget new
		elementName: 'pipo'.
		
	self doTestTextEmpty: target