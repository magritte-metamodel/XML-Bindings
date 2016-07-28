accessing
forElementNamed: aString notFound: aNotFoundBlock
	self withAllConcreteClassesDo: [ :each |
		| element |
		element := each new.
		(element magritteDescription xmlElementName = aString)
			ifTrue: [ ^ element ] ].
		
	^ aNotFoundBlock value