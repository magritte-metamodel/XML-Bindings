visiting-description
visitElementDescription: aDescription

	| text |
	
	text := self readText: aDescription.
	self object: (text isNil
		ifTrue: [ nil ]
		ifFalse: [ aDescription fromString: text ])
	