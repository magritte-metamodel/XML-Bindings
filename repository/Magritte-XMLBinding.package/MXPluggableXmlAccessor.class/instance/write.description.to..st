model
write: anObject description: aDescription to: aNode
	self writeBlock 
		value: aNode value: (anObject readUsing: aDescription)