testing
testNodeInlineElement

	| target node resultNode |
	
	target := MXXmlElementTarget new beInlined.
		
	node := target addNodeTo: self element.
	self assert: (node isKindOf: XMLElement).
	self assert: node = self element.
	
	resultNode := target getNodeFrom: self element.
	self assert: node = resultNode.
	