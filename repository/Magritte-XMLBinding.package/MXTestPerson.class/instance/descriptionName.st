accessing-description
descriptionName
	<magritteDescription>
	^ MAStringDescription new
		accessor: #name;
		label: 'Name';
		beXmlAttribute;
		priority: 10;
		yourself