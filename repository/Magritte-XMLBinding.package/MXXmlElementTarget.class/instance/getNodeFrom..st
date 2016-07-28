reading
getNodeFrom: aContainerNode
	self isInlined ifTrue: [
		^ aContainerNode ].
	^aContainerNode elementAt: self elementName