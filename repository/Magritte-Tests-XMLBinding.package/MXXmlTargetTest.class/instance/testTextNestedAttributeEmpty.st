testing
testTextNestedAttributeEmpty

	| target |
	
	target := MXXmlNestedAttributeTarget new
		elementName: 'e-pipo';
		attributeName: 'pipo'.
		
	self doTestTextEmpty: target