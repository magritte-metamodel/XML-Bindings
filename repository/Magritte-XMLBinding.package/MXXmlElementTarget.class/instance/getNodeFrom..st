reading
getNodeFrom: aContainerNode
	self isInlined ifTrue: [
		^ aContainerNode ].
	
	"ensure the element return is named as expected eg an RSS feed can contain both <atom:link> and <link>. 
	#elementAt: returns the first node which might not be what we expect."
	^ (aContainerNode elementsAt: self elementName) detect: [ :each | each name =  self elementName ] ifNone: [ nil ]