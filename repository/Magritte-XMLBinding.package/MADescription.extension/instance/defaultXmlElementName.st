*magritte-xmlbinding
defaultXmlElementName
	"Answer a default xml element name. Use the readSelector if present.
	Otherwise convert the label to a valid element name."

	| name |
	
	(self accessor respondsTo: #readSelector)
		ifTrue: [ ^self accessor readSelector greaseString ].
		
	name := self label select: [ :char | char isAlphaNumeric ].
	name size > 0
		ifTrue: [ name at: 1 put: name first asLowercase ].
	^name