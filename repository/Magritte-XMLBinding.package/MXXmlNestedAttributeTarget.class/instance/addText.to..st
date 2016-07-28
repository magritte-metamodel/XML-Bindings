writing
addText: aString to: aContainerNode
	"Store ==aString== as an attribute in the element ==aContainerNode==."
	
	| childElement |

	childElement := self useExisting 
		ifTrue: [ aContainerNode elementAt: self elementName ]
		ifFalse: [ nil ].
	childElement isNil
		ifTrue: [
			childElement := XMLElement named: self elementName.
			aContainerNode 
				addNode: childElement ].
	^childElement
		attributeAt: self attributeName put: aString;
		yourself
