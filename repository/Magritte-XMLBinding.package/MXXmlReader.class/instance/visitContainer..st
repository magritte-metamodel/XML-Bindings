visiting-description
visitContainer: aDescription
	"Create a new instance using the current node and ==aDescription== and read all the children.
	Note that we cannot use ==aDescription== for the children because the object might be an instance
	of a subclass and this subclass may have another description."
	
	| trueDescription |
	
	self object: (aDescription xmlTarget getInstanceFrom: self node description: aDescription).
	
	trueDescription := aDescription shouldBePreserved 
		ifTrue: [ aDescription ] 
		ifFalse: [ self descriptionFor: self object] .
	(((trueDescription = aDescription)
		ifTrue: [ aDescription ]
		ifFalse: [ trueDescription ])
			children select: [ :each | each isXmlExportable ]) do: [ :each | | value |
				value := each xmlReader read: self node description: each.
				self object write: value using: each ]