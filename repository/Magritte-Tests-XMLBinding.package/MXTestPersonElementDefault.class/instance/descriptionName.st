accessing-description
descriptionName
	^ MAStringDescription new
		accessor: #name;
		label: 'Name';
		beXmlElement;
		yourself