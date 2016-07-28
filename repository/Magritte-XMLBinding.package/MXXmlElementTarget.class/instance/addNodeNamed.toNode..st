writing
addNodeNamed: aString toNode: aContainerNode
	"Create and answer a new element node. Add it to ==aContainerNode=="
	
	| node |
	node := XMLElement named: aString.
	aContainerNode addNode: node.
	^ node