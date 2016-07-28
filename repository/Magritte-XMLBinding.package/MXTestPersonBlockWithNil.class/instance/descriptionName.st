accessing-description
descriptionName
	^ super descriptionName
		xmlReadBlock: [ :elem | elem attributeAt: 'blck' ifAbsent: [ nil ] ]
			writeBlock: [ :elem :object | object notNil ifTrue: [ elem attributeAt: 'blck' put: object ] ]
		yourself