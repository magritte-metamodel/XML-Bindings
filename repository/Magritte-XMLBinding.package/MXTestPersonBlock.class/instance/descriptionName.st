accessing-description
descriptionName
	^ super descriptionName
		xmlReadBlock: [ :elem | elem attributeAt: 'blck' ]
			writeBlock: [ :elem :object | elem attributeAt: 'blck' put: object ]
		yourself