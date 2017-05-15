reading
getTextFrom: aContainerNode
	^ (self getNodeFrom: aContainerNode)
		ifNotNil: [ :elem | elem contentString ]