writing
addNodeForInstance: anObject to: aContainerNode
	"Create and answer a new element node that represents ==anObject==."

	^(super addNodeForInstance: anObject to: aContainerNode)
		attributeAt: self classAttributeName put: anObject class name;
		yourself