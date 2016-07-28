testing
testNodeNamedElement

	| target node resultNode |
	
	target := MXXmlNamedElementTarget new
		elementName: 'pipo'.
		
	node := target addNodeTo: self element.
	self assert: (node isKindOf: XMLElement).
	self assert: node name = 'pipo'.
	
	resultNode := target getNodeFrom: self element.
	self assert: node = resultNode.
	