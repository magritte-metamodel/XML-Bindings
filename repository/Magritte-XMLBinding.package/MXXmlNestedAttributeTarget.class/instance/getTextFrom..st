reading
getTextFrom: anElement

	| childElement |
	childElement := anElement elementAt: self elementName.
	^childElement isNil
		ifTrue: [ nil ]
		ifFalse: [ childElement attributeAt: self attributeName ]