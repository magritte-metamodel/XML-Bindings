accessing
forElementNamed: aString
	self forElementNamed: aString notFound: [ self error: 'unknown element name: ', aString ]
	