private
writeText: aString description: aDescription

	self node: (
		aString isNil
			ifTrue: [ aDescription xmlTarget addUndefinedTo: self containerNode ]
			ifFalse: [ aDescription xmlTarget addText: aString to: self containerNode ])