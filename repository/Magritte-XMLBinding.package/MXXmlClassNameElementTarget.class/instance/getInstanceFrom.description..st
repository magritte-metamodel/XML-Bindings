reading
getInstanceFrom: anElement description: aDescription

	| class |
	class := Smalltalk 
		at: anElement name asSymbol
		ifAbsent: [ ^nil ].
	^class new