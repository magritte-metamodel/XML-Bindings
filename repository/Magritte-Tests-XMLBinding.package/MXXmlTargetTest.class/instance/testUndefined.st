testing
testUndefined

	| target |
	
	target := MXXmlAttributeTarget new
		attributeName: 'pipo'.
		
	target addUndefinedTo: self element.
	self assert: (self element elementAt: 'pipo') isNil