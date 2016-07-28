reading
getTextFrom: aContainerNode

	^(self getNodeFrom: aContainerNode)
		ifNotNilDo: [ :elem | elem contentString ]