writing
addNodeTo: aContainerNode
	"Create and answer a new element node. Add it to ==aContainerNode=="
	
	self isInlined ifTrue: [ ^ aContainerNode ].
	^ self addNodeNamed: self elementName toNode: aContainerNode 
