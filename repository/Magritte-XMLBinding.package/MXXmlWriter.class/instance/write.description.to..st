public
write: anObject description: aDescription to: aNode

	self 
		containerNode: aNode;
		object: anObject;
		visit: aDescription.
	^self node