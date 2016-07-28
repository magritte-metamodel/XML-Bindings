testing
testTextAttributeEmpty

	| target |
	
	target := MXXmlAttributeTarget new
		attributeName: 'pipo'.
		
	self doTestTextEmpty: target