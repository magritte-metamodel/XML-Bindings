writing
addText: aString to: aContainerNode
	"Create a new element with ==aString== as the contents. Add the new element to ==aContainerNode== if present.
	Answer the newly created element."

	| node |
	
	node := self addNodeTo: aContainerNode.
	
	self useCDATASection 
		ifTrue: [ node addNode: (XMLCData string: aString) ]
		ifFalse: [ node addContent: aString ].
	^node