writing
addNodeForInstance: anObject to: aContainerNode
	"Create and answer a new element node that represents ==anObject==."
	
	self isInlined ifTrue: [ ^ aContainerNode ].
	^ self addNodeNamed: (self elementNameFor: anObject) toNode: aContainerNode
