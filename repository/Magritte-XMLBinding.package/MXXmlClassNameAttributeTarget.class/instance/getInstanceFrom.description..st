reading
getInstanceFrom: anElement description: aDescription

	| name class |
	name := anElement attributeAt: self classAttributeName.
	class := Smalltalk 
		at: name asSymbol
		ifAbsent: [ ^nil ].
	^class new