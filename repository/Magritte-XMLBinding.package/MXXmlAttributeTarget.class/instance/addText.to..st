writing
addText: aString to: aContainerNode
	"Store ==aString== as an attribute in the element ==aContainerNode==."
	

	^aContainerNode
		attributeAt: self attributeName put: aString;
		yourself