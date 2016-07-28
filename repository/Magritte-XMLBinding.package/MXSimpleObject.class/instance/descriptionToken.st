as yet unclassified
descriptionToken
	<magritteDescription>
	^ MAStringDescription new
		accessor: #token;
		priority: 180;
		label: 'Token';
		beXmlChildAttribute;
		xmlAttributeName: 'type';
		yourself