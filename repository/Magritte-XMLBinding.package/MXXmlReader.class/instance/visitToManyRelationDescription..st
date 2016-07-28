visiting-description
visitToManyRelationDescription: aDescription

	| containerNode |
	
	containerNode := aDescription xmlTarget getNodeFrom: self node.
	containerNode isNil
		ifTrue: [ ^self ].

	self object: (OrderedCollection  streamContents: [ :stream |
		containerNode elementsDo: [ :element |
			| value |
			value := aDescription reference xmlReader read: element description: aDescription reference.
			value notNil
				ifTrue: [ stream nextPut: value ]]])
