reading
getCollectionTextFrom: aContainerNode
	^ (aContainerNode elementsAt: self elementName) collection
		collect: [ :each |
			each contentString ]
