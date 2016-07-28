visiting-description
visitToOneRelationDescription: aDescription

	| containerNode |
	
	containerNode := aDescription xmlTarget getNodeFrom: self node.
	containerNode notNil
		ifTrue: [ | value |
			(aDescription reference notNil and: [aDescription reference xmlTarget isKindOf: MXXmlNamedElementTarget]) 
				ifTrue: [ | elem |
					elem := (aDescription reference xmlTarget getNodeFrom: containerNode ).
					elem ifNotNil: [
						value := aDescription reference xmlReader read: elem description: aDescription reference ]]
				ifFalse: [ 
					containerNode elementsDo: [ :elem |
						value := aDescription reference xmlReader read: elem description: aDescription reference ]].
			value notNil
				ifTrue: [
					self object: value.
					^ self ]].
	self object: nil