reading
getTextFrom: anElement

	^anElement attributeAt: self attributeName ifAbsent: [ nil ]